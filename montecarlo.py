import sys
import os
import pyswip
import numpy as np
from scipy.sparse import dok_matrix
import time
from itertools import accumulate 
from scipy.stats import entropy

import params
from util import get_max_fea

# divide GPUs, by randomly selecting one for each process
gpus = os.environ["CUDA_VISIBLE_DEVICES"].split(',')
gpu_count = len(gpus)
gpu = gpus[np.random.randint(0, gpu_count)]
os.environ["CUDA_VISIBLE_DEVICES"] = gpu

# load parameters
args = params.getArgs()
# print("\n\n")
# for k in args.keys():
#     print(k, ": ", args[k])
# print("\n\n")

if args.model_type in ("gnn", "nn"):    
    import tensorflow as tf
    print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))
    gpus = tf.config.experimental.list_physical_devices('GPU')
    if gpus:
        try:
            for gpu in gpus:
                tf.config.experimental.set_memory_growth(gpu, True)
        except RuntimeError as e:
            print(e)
      

# make sure training data dir exists
value_train_dir = "{}/stage{}/train_value".format(args.outdir, args.stage)
policy_train_dir = "{}/stage{}/train_policy".format(args.outdir, args.stage)
clause_dir = "{}/stage{}/clauses".format(args.outdir, args.stage)
proof_dir = "{}/stage{}/proofs".format(args.outdir, args.stage)
os.makedirs(value_train_dir, exist_ok=True)
os.makedirs(policy_train_dir, exist_ok=True)
os.makedirs(clause_dir, exist_ok=True)
os.makedirs(proof_dir, exist_ok=True)

if args.modeldir == None:
    args.modeldir = args.outdir

prolog = pyswip.Prolog()
if (args.model_type == "gnn") or ("gnn" in args.output_format):
    from gnn.gnn_util import *

if args.guided > 0:
    if args.model_type == "xgboost":
        value_modelfile = "{}/value_xgb".format(args.modeldir)
        policy_modelfile = "{}/policy_xgb".format(args.modeldir)
        if args.guided == 1: # using python to access xgboost    
            import xgboost as xgb
            value_model = xgb.Booster() 
            value_model.load_model(value_modelfile)
            policy_model = xgb.Booster()
            policy_model.load_model(policy_modelfile)
    elif args.model_type == "gnn":
        from gnn.network import Network, NetworkConfig
        if args.gnn_separate_value_policy == 1:
            network_value = Network(NetworkConfig(), model_type="value")
            network_policy = Network(NetworkConfig(), model_type="policy")
            value_modelfile = "{}/value_gnn".format(args.modeldir)
            policy_modelfile = "{}/policy_gnn".format(args.modeldir)
            network_value.load(value_modelfile)
            network_policy.load(policy_modelfile)
        else:
            network = Network(NetworkConfig())
            modelfile = "{}/value_gnn".format(args.modeldir)
            value_modelfile = modelfile
            policy_modelfile = modelfile
            network.load(modelfile)
    elif args.model_type == "nn":
        from Tensorflow_models.train_NN import sparse_to_dense
        value_modelfile = "{}/value_nn.h5".format(args.modeldir)
        policy_modelfile = "{}/policy_nn.h5".format(args.modeldir)
        value_model = tf.keras.models.load_model(value_modelfile)
        policy_model = tf.keras.models.load_model(policy_modelfile)

    
n_features = get_max_fea(args)

def python_xgboost_predict(State, Actions, Temp, Value, Probs):
    state = dok_matrix((1, n_features), dtype=np.float32)
    for (k,v) in State:
        state[0, k] = v
    d_state = xgb.DMatrix(state)
    value = value_model.predict(d_state)[0]
    Value.unify(str(value))

    acount = len(Actions)
    state = dok_matrix((acount, n_features), dtype=np.float32)
    for (k,v) in State:
        state[:, k] = v
    for (i, a) in enumerate(Actions):
        for (k, v) in a:
            state[i, k] = v

    d_state = xgb.DMatrix(state)
    scores = policy_model.predict(d_state)
    expScores = np.exp(scores/Temp)
    sumExpScores = np.sum(expScores)
    probs = expScores / sumExpScores
    Probs.unify(",".join([str(p) for p in probs]))
    
    # print("value: ", value)
    # print("policy: " , probs)

python_xgboost_predict.arity=5
pyswip.registerForeign(python_xgboost_predict)

def python_nn_predict(StateV, StateP, Actions, Temp, Value, Probs):
    # t0 = time.time()
    value_dimension = 128
    state = np.array(StateV)
    keys = np.array([state[:,0]])
    vals = np.array([state[:,1]])
    vals = np.minimum(vals, np.ones_like(vals) * 10)

    if args.densify == 1:
        model_input = sparse_to_dense(keys, vals, value_dimension)
    else:
        model_input = [keys, vals]
    # t1 = time.time()
    value = value_model(model_input, training=False).numpy().squeeze()
    # t2 = time.time()
    value *= 3
    Value.unify(str(value))

    ########################################################
    
    state = np.array(StateP)
    keys = np.array([state[:,0]])
    vals = np.array([state[:,1]])
    vals = np.minimum(vals, np.ones_like(vals) * 10)
    
    acount = len(Actions)
    input_keys = []
    input_vals = []
    for a in Actions:
        a = np.array(a)
        a_keys = np.array(a[:,0])
        a_vals = np.array(a[:,1])
        a_vals = np.minimum(a_vals, np.ones_like(a_vals) * 10)
        curr_keys = np.concatenate((keys[0], a_keys))
        curr_vals = np.concatenate((vals[0], a_vals))
        input_keys.append(curr_keys)
        input_vals.append(curr_vals)

    if args.densify:
        model_input = sparse_to_dense(input_keys, input_vals, value_dimension)
    else:
        input_keys = [np.pad(x, (0, n_features - len(x))) for x in input_keys]
        input_vals = [np.pad(x, (0, n_features - len(x))) for x in input_vals]
                  
        input_keys = np.array(input_keys)
        input_vals = np.array(input_vals)
        model_input = [input_keys, input_vals]
        
    # t3 = time.time()
    scores = policy_model(model_input,training=False).numpy().squeeze(axis=1)
    # t4 = time.time()
    scores *= 6
    expScores = np.exp(scores/Temp)
    sumExpScores = np.sum(expScores)
    probs = expScores / sumExpScores
    Probs.unify(",".join([str(p) for p in probs]))
    # print("nn time: ", t4 - t0, t2-t1, t4-t3)
    
python_nn_predict.arity=6
pyswip.registerForeign(python_nn_predict)

def python_gnn_predict(gnn_input, Value, Policy):
    t0 = time.time()
    data = input2graph(prolog, gnn_input)
    if args.gnn_separate_value_policy == 1:
        t1 = time.time()
        a0, [value] = network_value.predict([data], non_destructive = False)
        value_time = time.time() - t1

        action_count = len(gnn_input[5])
        if action_count == 1:
            actions=[1.0]
            policy_time = 0
        else:
            t1 = time.time()
            actions, [v0] = network_policy.predict([data], non_destructive = False)
            policy_time = time.time() - t1
    else:
        actions, [value] = network.predict([data], non_destructive = False)
    action_perm = gnn_input[5]
    actions = [actions[action_perm[i]] for i in range(len(actions))]
    
    Value.unify(str(value))
    Policy.unify(",".join([str(a) for a in actions]))
    # print("Inference time: ", time.time() - t0, value_time, policy_time)
    return True
python_gnn_predict.arity=3
pyswip.registerForeign(python_gnn_predict)

def python_gnn_prepare(gnn_input, Value, Policy, Output):
    data = input2graph(prolog, gnn_input)
    graph_string = data.__str__()
    output = "{}|{}|{}\n".format(Value, " ".join([str(p) for p in Policy]), graph_string)
    Output.unify(output)
    return True
python_gnn_prepare.arity=4
pyswip.registerForeign(python_gnn_prepare)

def python_gnn_predict_with_swap(gnn_inputs, SwapIndex, Value, Policy):
    graphData = [input2graph(prolog, gi) for gi in gnn_inputs]
    action_counts = [np.sum(gi[4]) for gi in gnn_inputs]

    if args.gnn_separate_value_policy == 1:
        _, values = network_value.predict(graphData, non_destructive = False)
        actions, _ = network_policy.predict(graphData, non_destructive = False)
    else:
        actions, values = network.predict(graphData, non_destructive = False)

    actions = [actions[x - y: x] for x, y in zip(accumulate(action_counts), action_counts)]
    entropies = [entropy(a) for a in actions]
    swap_index = np.argmin(entropies)
    curr_actions = actions[swap_index]
    curr_value = values[swap_index]

    curr_action_perm = gnn_inputs[swap_index][5]
    curr_actions = [curr_actions[curr_action_perm[i]] for i in range(len(curr_actions))]
    
    # print("actions ", actions)
    # print("values ", values)
    # print("entropies: ", entropies)
    # print("swap: ", swap_index)
    # print("curr actions ", curr_actions)
    # print("curr value: ", curr_value)
        
    SwapIndex.unify(int(swap_index))
    Value.unify(str(curr_value))
    Policy.unify(",".join([str(a) for a in curr_actions]))
    return True
python_gnn_predict_with_swap.arity=4
pyswip.registerForeign(python_gnn_predict_with_swap)

    

leancop_settings = "conj,nodef"
leancop_settings = "{},comp({})".format(leancop_settings, args.pathlim)
leancop_settings = "{},eager_reduction({})".format(leancop_settings, args.eager_reduction)
leancop_settings = "{},paramodulation({})".format(leancop_settings, args.paramodulation)
leancop_settings = "{},extra_axioms(\"{}\")".format(leancop_settings, args.extra_axioms)
leancop_settings = "{},extra_axioms_plfile(\"{}\")".format(leancop_settings, args.extra_axioms_plfile)
leancop_settings = "{},single_action_optim({})".format(leancop_settings, args.single_action_optim)
leancop_settings = "{},lit_reo({})".format(leancop_settings, args.lit_reo)

Params = "guided({}),cp({}),sim_depth({}),playout_count({}),min_visit_count({}),n_dim({}),playout_time({}), output_format(\"{}\"), leancop_settings([{}])".format(args.guided, args.cp, args.sim_depth, args.playout, args.min_visit_count, args.n_dim, args.playout_time, args.output_format, leancop_settings)
Params = "{},return_to_root({})".format(Params, args.return_to_root)
Params = "{},save_all_proofs({})".format(Params, args.save_all_proofs)
Params = "{},temperature({})".format(Params, args.temperature)
Params = "{},save_all_policy({})".format(Params, args.save_all_policy)
Params = "{},save_all_value({})".format(Params, args.save_all_value)
Params = "{},lemma_features({})".format(Params, args.lemma_features)
Params = "{},subst_features({})".format(Params, args.subst_features)
Params = "{},inference_limit({})".format(Params, args.inference_limit)
Params = "{},collapse_vars({})".format(Params, args.collapse_vars)
Params = "{},alpha_max_error({})".format(Params, args.alpha_max_error)
Params = "{},po_step({})".format(Params, args.po_step)
Params = "{},po_search({})".format(Params, args.po_search)
Params = "{},po_train({})".format(Params, args.po_train)
Params = "{},eager_type({})".format(Params, args.eager_type)
Params = "{},model_type({})".format(Params, args.model_type)
Params = "{},proof_format({})".format(Params, args.proof_format)
Params = "{},swap({})".format(Params, args.swap)
Params = "{},max_mcts_depth({})".format(Params, args.max_mcts_depth)
Params = "{},value_from_bigstep_neighbours({})".format(Params, args.value_from_bigstep_neighbours)
Params = "{},gnn_separate_value_policy({})".format(Params, args.gnn_separate_value_policy)
Params = "{},gnn_entcoeff({})".format(Params, args.gnn_entcoeff)
Params = "{},guidedValue({})".format(Params, args.guidedValue)
Params = "{},guidedPolicy({})".format(Params, args.guidedPolicy)

if args.guided == 2: # using c interface, we need to pass the model files as well
    Params = "{},value_modelfile(\"{}\"),policy_modelfile(\"{}\"),n_features({})".format(Params,value_modelfile, policy_modelfile,n_features)
if args.bigstep_frequency is not None:
    Params = "{},bigstep_frequency({})".format(Params, args.bigstep_frequency)
Params = "[{}]".format(Params)

if args.search_type == "mcts":
    query = 'mc_run("{}",{},"{}","{}","{}","{}",ExecutionTime)'.format(args.problem_file, Params, value_train_dir, policy_train_dir, clause_dir, proof_dir)
    prolog_file = "montecarlo.pl"
elif args.search_type == "eager":
    query = 'eager_eval("{}",{})'.format(args.problem_file, Params)
    prolog_file = "eval_policy.pl"
else:
    assert False, "Unknown search type " + args.search_type

# query = 'profile({},[cumulative(true)])'.format(query)
print("Prolog query: \n", query)

if (args.guided == 1) or (args.model_type=="gnn") or ("gnn" in args.output_format):
    prolog.consult(prolog_file)
    result = list(prolog.query(query))[0] 
    exec_time = result["ExecutionTime"]
    print("Problem {} executed in {} sec".format(args.problem_file, 1.0 * exec_time/1000))
    import sys
    sys.stdout.flush()
else:
    import subprocess
    full_query = 'prolog -g \'["{}"], {}, halt.\''.format(prolog_file, query)
    # print("Full query: \n", full_query)
    subprocess.call(full_query, shell=True)
