import os
import numpy as np
from datetime import datetime

#A modellek
import tensorflow as tf
from Tensorflow_models.model import models, model_class
print(tf.__version__)

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

def sparse_to_dense(indices, values, length):
    data_size = len(indices)
    result = np.zeros((data_size, length), dtype=np.float32)
    for j in range(data_size):
        for i, v in zip(indices[j], values[j]):
            result[j,i % length] += v
    return result

def train(train_dirs, modelfile, n_features, epochs=20, batch_size=256, target='value', network_type = 'Simple Dense Medium', densify=False):
    files = listdir_multiple(train_dirs)
    print("Training from {} files".format(len(files)))
    print("Network type: ", network_type)

    x_tokens=[]
    x_values=[]
    y=[]

    # read data
    for f in files:
        d=open(f).read().split("\n")[:-1]
        for e in d:
            ee=e.split(" ")
            y.append(float(ee[0]))
            tokens=[]
            values=[]
            for x in ee[1:-1]:
                xx=x.split(":")
                tokens.append(int(xx[0]))
                # cap feature values at 10 (TODO do we really want to do that?)
                curr_value = min(float(xx[1]), 10)
                values.append(curr_value)
            x_tokens.append(tokens)
            x_values.append(values)


    # remove duplicates
    dict_arr={}
    for i in range(len(x_values)):
        s=str(x_tokens[i])+str(x_values[i])
        if s in dict_arr:
            if y[i] > dict_arr[s]:
                dict_arr[s] = y[i]
        else:
            dict_arr[s] = y[i]
    xs0 = []
    xs1 = []
    ys = []
    for i in range(len(x_values)):
        s=str(x_tokens[i])+str(x_values[i])
        if dict_arr[s] == y[i]:
            xs0.append(x_tokens[i])
            xs1.append(x_values[i])
            ys.append(y[i])
                
    x_tokens, x_values, y=xs0, xs1, np.array(ys)

    # scaling targets to [-1, 1]
    if (target=='value'):
        y= y/3
    elif (target=='prob'):
        y= y/6

    model_param=models[network_type]
    model_param["input_layer"]["max_tokens"]=n_features


    if densify:
        input_dim = model_param["input_layer"]["value_dimension"]
        x_train = sparse_to_dense(x_tokens, x_values, input_dim)
    else:
        print(len(x_tokens))
        x_tokens=tf.keras.preprocessing.sequence.pad_sequences(x_tokens,padding='post')
        x_values=tf.keras.preprocessing.sequence.pad_sequences(x_values,padding='post')
        x_train=[x_tokens,x_values]

    

    #No validation
    y_train = y
        
    #Training
    agent=model_class(models[network_type])
    agent.build(densify)
    agent.agent.summary()
    agent.agent.fit(x_train, y_train, batch_size=batch_size, epochs=epochs, verbose=2)
    agent.agent.save(modelfile)
    now = datetime.now()
    # agent.agent.save(modelfile + now.strftime("%Y%m%d_%H%M%S"))
    agent.agent.save(modelfile)
