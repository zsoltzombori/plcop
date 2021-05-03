import os
import xgboost as xgb
from sklearn.datasets import load_svmlight_files, load_svmlight_file
import numpy as np
from itertools import accumulate
import re

from gnn.parallel_environment import GameState
from gnn.graph_data import GraphData
from gnn.network import Network, NetworkConfig

TEMP=2
N_FEATURES=30016

evaldirs = [
    "/local1/zombori/leancop_ml/data_dist/m2np/plcop_paramodulation/stage0/train_policy",
    # "data_dist/m2np/plcop_paramodulation_neibval/stage0/train_policy",
    "/local1/zombori/leancop_ml/results/gnn_paramodulation_0.7ent/stage0/train_policy",
]
gnndir="gnn"
xgboostdir="svmlight"

modelfiles_xgb = [
    "/local1/zombori/leancop_ml2/results/plcop_paramodulation/policy_xgb",
]
modelfiles_gnn = [
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_0.1ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_0.2ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_0.3ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_0.5ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_0.6ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_0.7ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_0.8ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_1.0ent/policy_gnn",
    "/local1/zombori/leancop_ml2/results/gnn_paramodulation_2.0ent/policy_gnn",
]

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


def load_models():
    models_gnn = []
    for f in modelfiles_gnn:
        model = Network(NetworkConfig(), model_type="policy")
        model.load(f)
        models_gnn.append(model)

    models_xgb = []
    for f in modelfiles_xgb:
        model = xgb.Booster()
        model.load_model(f)
        models_xgb.append(model)
    return models_gnn, models_xgb

def eval_model_xgb(model, file_xgboost, action_counts):
    d = load_svmlight_file(file_xgboost, n_features=N_FEATURES, zero_based=True)
    x = d[0]
    # y = d[1]
    # print("xgboost datapoints: ", x.shape[0])
    # print("xgb targets:")
    # print(y)
    d_state = xgb.DMatrix(x)
    scores = model.predict(d_state)
    scores = [scores[x - y: x] for x, y in zip(accumulate(action_counts), action_counts)]
    expScores = [np.exp(score/TEMP) for score in scores]
    sumExpScores = [np.sum(expScore) for expScore in expScores]
    probs = [expScore / sumExpScore for expScore, sumExpScore in zip(expScores, sumExpScores)]
    return probs
    
def eval_model_gnn(model, file_gnn):
    x = []
    action_counts = []
    cnt = 0
    with open(file_gnn) as f:
        for line in f:
            cnt+= 1
            value, probs, graph = line.strip().split('|')
            if len(probs) > 0:
                state = GraphData(graph)
                x.append(state)
                # print("mask: ", state.axiom_mask)
                action_counts.append(np.sum(state.axiom_mask))
            else:
                print("Skipping line ", cnt)

    # print("gnn datapoints: ", len(x), action_counts)
    actions, _ = model.predict(x, non_destructive = False)
    probs = [actions[x - y: x] for x, y in zip(accumulate(action_counts), action_counts)]
    return probs, action_counts

def compare_probs(probs1, probs2):
    assert len(probs1) == len(probs2)

    samebest = 0
    sameorder = 0
    kl12_sum = 0
    kl21_sum = 0

    for p1, p2 in zip(probs1, probs2):
        order1 = np.argsort(p1)
        order2 = np.argsort(p2)
        if order1[-1]  == order2[-1]:
            samebest += 1
        if all(order1 == order2):
            sameorder += 1
        kl12_sum += np.sum(np.where(p1 != 0, p1 * np.log(p1 / p2), 0))
        kl21_sum += np.sum(np.where(p2 != 0, p2 * np.log(p2 / p1), 0))

    return samebest, sameorder, kl12_sum, kl21_sum, len(probs1)


models_gnn, models_xgb = load_models()

probs_gnn_list=[]
probs_xgb_list=[]
for evaldir in evaldirs:
    print("Evaldir: ", evaldir)
    evaldir_gnn = "{}/{}".format(evaldir, gnndir)
    evaldir_xgboost = "{}/{}".format(evaldir, xgboostdir)
    files_xgb = listdir_multiple([evaldir_xgboost])
    files_xgb.sort()
    files_gnn = [file_xgb.replace(evaldir_xgboost, evaldir_gnn) for file_xgb in files_xgb]

    probs_gnn = []
    for model_gnn in models_gnn:
        ps, acs = [], []
        for file_gnn in files_gnn:
            probs, action_counts = eval_model_gnn(model_gnn, file_gnn)
            ps += probs
            acs.append(action_counts)
        probs_gnn.append(ps)
    probs_gnn_list.append(probs_gnn)

    probs_xgb = []
    for model_xgb in models_xgb:
        ps = []
        for file_xgb, action_counts in zip(files_xgb, acs):
            probs = eval_model_xgb(model_xgb, file_xgb, action_counts)
            ps += probs
        probs_xgb.append(ps)
    probs_xgb_list.append(probs_xgb)

tabledata=[]
for i in range(len(modelfiles_gnn)):
    name1 = modelfiles_gnn[i]
    ent_matches = re.findall("_(\d+\.\d+)ent", name1)
    if len(ent_matches) > 0:
        line = ent_matches[0]
    else:
        line = " 0 "
        
    for j in range(len(modelfiles_xgb)):
        name2 = modelfiles_xgb[j]

        for k in range(len(evaldirs)):
            probs1 = probs_gnn_list[k][i]
            probs2 = probs_xgb_list[k][j]
        
            samebest, sameorder, kl12, kl21, cnt = compare_probs(probs1, probs2)
            samebest = round(samebest/cnt, 2)
            sameorder = round(sameorder/cnt, 2)
            kl12 = round(kl12/cnt, 2)
            kl21 = round(kl21/cnt, 2)

            print("\n\n{}\n{}".format(name1, name2))
            print("Same best:  ", samebest)
            print("Same order: ", sameorder)
            print("KL12:       ", kl12)
            print("KL21:       ", kl21)
            print("Samples:    ", cnt)

            line += "& {} & {} & {} & {}".format(samebest, sameorder, kl12, kl21)

        line += "\\\\"
    tabledata.append(line)

for line in tabledata:
    print(line)
