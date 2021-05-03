#!/usr/bin/python3                                                                                                                 

from gnn.stop_watch import StopWatch, print_times
from gnn.parallel_environment import GameState
from gnn.graph_data import GraphData
from gnn.network import Network

import os
import sys
import random
import numpy as np
from sklearn.model_selection import train_test_split
from itertools import cycle, islice

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

def load_mcts_data(fnames):
    pos, neg = 0, 0
    result_pos = []
    result_neg = []
    for fname in fnames:
        with open(fname) as f:
            for line in f:
                value, probs, graph = line.strip().split('|')
                state = GameState(graph)
                state.value = float(value)
                state.action = np.array(list(map(float, probs.split())))
                if state.value > 0:
                    result_pos.append(state)
                else:
                    result_neg.append(state)
    print("{} positive, {} negative".format(len(result_pos), len(result_neg)))

    return result_pos, result_neg

def rem_duplicates(data):
    dict_arr={}
    for d in data:
        s = str(d.graph_data)
        if s in dict_arr:
            if d.value > dict_arr[s].value:
                dict_arr[s] = d
        else:
            dict_arr[s] = d
    data2 = []
    for d in data:
        s=str(d.graph_data)
        if dict_arr[s].value == d.value:
            data2.append(d)
    print("Removing duplicates: {} -> {}".format(len(data), len(data2)))
    return data2
                



class DataBatcher:
    def __init__(self, data_pos, data_neg, batch_size = 50, max_epoch = None, balance=True):
        if balance:
            maxlen = max(len(data_pos), len(data_neg))
            data_pos = list(islice(cycle(data_pos), maxlen))
            data_neg = list(islice(cycle(data_neg), maxlen))
        self.data = data_pos + data_neg
        random.shuffle(self.data)
        self.index = 0
        self.batch_size = batch_size
        self.epoch = 0
        self.max_epoch = max_epoch

    def get_batch(self, batch_size = None):
        if self.max_epoch is not None and self.epoch == self.max_epoch:
            return []
        if batch_size is None: batch_size = self.batch_size
        result = self.data[self.index : self.index+batch_size]
        self.index += batch_size
        if len(result) == batch_size: return result
        else:
            self.epoch += 1
            if self.max_epoch is not None and self.epoch == self.max_epoch:
                self.index = 0
                return result

            random.shuffle(self.data)
            self.index = batch_size - len(result)
            return result + self.data[:self.index]

def eval_epoch(network, data_pos, data_neg, balance, batch_size, train=False):
    batcher = DataBatcher(data_pos, data_neg, batch_size = batch_size, max_epoch = 1, balance=False)
    total_len, loss_pol_total, loss_val_total, loss_ent_total = 0, 0, 0, 0
    if train:
        phase = "Training"
    else:
        phase = "Evaluation"
    with StopWatch(phase):
        while True:
            states = batcher.get_batch()
            if len(states) == 0: break

            if train:
                loss_pol, loss_val, loss_ent = network.train_supervised(states)
            else:
                loss_pol, loss_val, loss_ent = network.get_loss_supervised(states)
            
            total_len += len(states)
            loss_pol_total += len(states)*loss_pol
            loss_val_total += len(states)*loss_val
            loss_ent_total += len(states)*loss_ent

        train_loss_pol = loss_pol_total / total_len
        train_loss_val = loss_val_total / total_len
        train_loss_ent = loss_ent_total / total_len
    return train_loss_pol, train_loss_val, train_loss_ent


def train(train_dirs, model_file, epochs, batch_size, remove_duplicates, early_stopping=True, model_type="both", entcoeff=-0.1):

    if model_type == "both":
        balance=True
    elif model_type == "value":
        balance=True
    elif model_type == "policy":
        balance=False
    else:
        assert False


    files = listdir_multiple(train_dirs)
    print("Training from {} files".format(len(files)))

    with StopWatch("Loading data"):
        print("loading test data")
        sys.stdout.flush()
        data_pos, data_neg = load_mcts_data(files)
        if remove_duplicates:
            data_pos = rem_duplicates(data_pos)
            data_neg = rem_duplicates(data_neg)
        if early_stopping:
            if len(data_pos) > 1:
                data_pos_train, data_pos_test = train_test_split(data_pos, test_size=0.2)
            else:
                data_pos_train, data_pos_test = data_pos, data_pos
            if len(data_neg) > 1:
                data_neg_train, data_neg_test = train_test_split(data_neg, test_size=0.2)
            else:
                data_neg_train, data_neg_test = data_neg, data_neg

    print("constructing network")
    sys.stdout.flush()
    with StopWatch("Network construction"):
        network = Network(model_type=model_type, entcoeff=entcoeff)

    if early_stopping:
        loss_pol_train, loss_val_train, loss_ent_train = eval_epoch(network, data_pos_train, data_neg_train, balance=balance, batch_size=batch_size, train=False)
        loss_pol_test, loss_val_test, loss_ent_test = eval_epoch(network, data_pos_test, data_neg_test, balance=balance, batch_size=batch_size, train=False)
        print("policy {} / {}  -  value {} / {}  -  ent {} / {}\n".format(loss_pol_train, loss_pol_test, loss_val_train, loss_val_test, loss_ent_train, loss_ent_test))

        early_stopping_epochs = 5
        previous_val_loss = 1000
        no_improve_epochs = 0
    else:
        loss_pol, loss_val, loss_ent = eval_epoch(network, data_pos, data_neg, balance=balance, batch_size=batch_size, train=False)
        print("policy {}  -  value {}  -  ent {}".format(loss_pol,loss_val, loss_ent))
    for epoch in range(epochs):

        if early_stopping:
            loss_pol_train, loss_val_train, loss_ent_train = eval_epoch(network, data_pos_train, data_neg_train, balance=balance, batch_size=batch_size, train=True)
            loss_pol_test, loss_val_test, loss_ent_test = eval_epoch(network, data_pos_test, data_neg_test, balance=balance, batch_size=batch_size, train=False)
            print("Epoch {}: policy {} / {}  -  value {} / {}  -  ent {} / {}".format(epoch+1, loss_pol_train, loss_pol_test, loss_val_train, loss_val_test, loss_ent_train, loss_ent_test))
            sys.stdout.flush()

            if model_type == "both":
                current_val_loss = loss_pol_test + loss_val_test + loss_ent_test
            elif model_type == "value":
                current_val_loss = loss_val_test
            elif model_type == "policy":
                current_val_loss = loss_pol_test + loss_ent_test
            else:
                assert False

            if current_val_loss > previous_val_loss:
                no_improve_epochs +=1
                if no_improve_epochs >= early_stopping_epochs:
                    break
            else:
                no_improve_epochs = 0
                previous_val_loss = current_val_loss
        else:
            loss_pol, loss_val, loss_ent = eval_epoch(network, data_pos, data_neg, balance=balance, batch_size=batch_size, train=True)
            print("Epoch {}: policy {}  -  value {}  -  ent {}".format(epoch+1, loss_pol,loss_val, loss_ent))
            

        network.save(model_file)
        # network.save("{}_epoch{}".format(model_file, epoch+1))
        # print_times()

