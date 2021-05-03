import os
import numpy as np
import xgboost as xgb
from sklearn.model_selection import train_test_split
from sklearn.datasets import load_svmlight_files, load_svmlight_file
from scipy.sparse import vstack
from datetime import datetime



# if oversample=True then make sure that values >0 and =0 are balanced
def train(args, train_dirs, modelfile, n_features, objective="reg:squarederror", oversample=False):
    files = listdir_multiple(train_dirs)
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
    par['objective'] = objective #'reg:squarederror' / 'binary:logistic'
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
    

def listdir_multiple(dirs):
    files = []
    for dir in dirs:
        for f in listdir_fullpath(dir):
            if os.path.isdir(f):
                files += listdir_multiple([f])
            else:
                files.append(f)
    return files

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
