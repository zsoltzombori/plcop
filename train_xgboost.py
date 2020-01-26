import time
import os
import numpy as np
import xgboost as xgb
from sklearn.model_selection import train_test_split
from sklearn.datasets import load_svmlight_files, load_svmlight_file
from scipy.sparse import vstack
from datetime import datetime

import params
import util

# load parameters
args = params.getArgs()

# if oversample=True then make sure that values >0 and =0 are balanced
def train(train_dir, modelfile, n_features, objective="reg:linear", oversample=False):
    files = listdir_fullpath(train_dir)
    print("Training from {} files".format(len(files)))

    if True:
        xs=[]
        ys=[]
        for f in files:
            try:
                d = load_svmlight_file(f, n_features=n_features, zero_based=True)
                xs.append(d[0])
                ys.append(d[1])
            except:
                pass
        x = vstack(xs)
        y = np.concatenate(ys)
    else:
        data = load_svmlight_files(files, zero_based=True)
        x = vstack(data[0::2])
        y = np.concatenate(data[1::2])
        
    print("Input shape: ", x.shape) 
    print("Output shape: ", y.shape)
    print("Avg output: ", np.mean(y))

    if args.remove_duplicates == 1:
        x, y = remove_duplicates(x, y)
    
    if oversample:
        pos = x[y>0]
        neg = y[y<=0]
        pos_count = pos.shape[0]
        neg_count = neg.shape[0]
        if pos_count > 0:
            scale_pos_weight = neg_count * 1.0 / pos_count
        else:
            scale_pos_weight = 1
    else:
        scale_pos_weight = 1

    x_train = x
    y_train = y

    # data format for xgboost
    d_train = xgb.DMatrix(x_train, label=y_train)

    # TODO better understand all these parameters
    par = {}
    par['objective'] = objective #'reg:linear' / 'binary:logistic'
    par['eval_metric'] = ['mae','rmse']
    par['eta'] = args.lr # learning rate
    par['max_depth'] = 9 # max tree depth
    par['n_job'] = 4
    par['lambda'] = 1.5 # L2 weight decay
    par['silent'] = 1
    par['scale_pos_weight'] = scale_pos_weight
    num_round = args.num_rounds
    evallist = [(d_train, 'train')]

    bst = xgb.train(par, d_train, num_round, evallist, early_stopping_rounds=50, verbose_eval=10)

    bst.save_model(modelfile)
    now = datetime.now()
    bst.save_model(modelfile + now.strftime("%Y%m%d_%H%M%S"))
    
def listdir_fullpath(d):
    return [os.path.join(d, f) for f in os.listdir(d)]

def remove_duplicates(x, y):
    global xs, ys
    dict = {}
    for i in range(x.shape[0]):
        s = str(x[i])
        if s in dict:
            if y[i] > dict[s]:
                dict[s] = y[i]
        else:
            dict[s] = y[i]

    xs = []
    ys = []
    for i in range(x.shape[0]):
        s = str(x[i])
        if dict[s] == y[i]:
            xs.append(x[i])
            ys.append(y[i])

    xs = vstack(xs)
    ys = np.array(ys)

    print("Reduced shapes {} and {} to {} and {}".format(x.shape, y.shape, xs.shape, ys.shape))
    return xs, ys

if args.lemma_features == 1:
    value_n_features = 4 * args.n_dim + 9
    policy_n_features = 5 * args.n_dim + 9
else:
    value_n_features = 2 * args.n_dim + 9
    policy_n_features = 3 * args.n_dim + 9

value_train_dir = "{}/train_value".format(args.outdir)
value_modelfile = "{}/value_xgb".format(args.outdir)
policy_train_dir = "{}/train_policy".format(args.outdir)
policy_modelfile = "{}/policy_xgb".format(args.outdir)

T0 = time.time()

if args.target_model == "value":
    print("\n\nTraining value model ONLY")
    train(value_train_dir, value_modelfile, value_n_features, objective="reg:linear", oversample=True)
elif args.target_model == "policy":
    print("\n\nTraining policy model ONLY")
    train(policy_train_dir, policy_modelfile, policy_n_features, objective="reg:linear", oversample=True)
elif args.target_model == "all":
    print("\n\nTraining value model")
    train(value_train_dir, value_modelfile, value_n_features, objective="reg:linear", oversample=True)
    print("\n\nTraining policy model")
    train(policy_train_dir, policy_modelfile, policy_n_features, objective="reg:linear", oversample=True)
else:
    assert False, "Unknown target_model value: " + args.target_model

    
T1 = time.time()
print("Xgboost training took {:.2f} sec".format(T1-T0))
