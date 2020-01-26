import xgboost as xgb
from scipy.sparse import dok_matrix
import numpy as np

ROWS = 10
FEATURES=100
ONES_PER_ROW = 10

sparse = dok_matrix((ROWS, FEATURES), dtype=np.float32)
for r in range(ROWS):
    for _ in range(ONES_PER_ROW):
        k = np.random.choice(FEATURES)
        sparse[r, k] =  1
labels = np.random.choice(2, size=((ROWS)))
d_train = xgb.DMatrix(sparse, label=labels)

par = {}
par['objective'] = 'reg:linear' #'reg:linear' / 'binary:logistic'
par['eval_metric'] = ['mae','rmse']
par['eta'] = 0.3
par['max_depth'] = 2 # max tree depth
par['nthread'] = 1
par['lambda'] = 1.5 # L2 weight decay
par['silent'] = 1
par['booster'] = 'dart'
num_round = 1000
evallist = [(d_train, 'train')]
bst = xgb.train(par, d_train, num_round, evallist)
