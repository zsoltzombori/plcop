import sys
import os
import pyswip
import numpy as np
import xgboost as xgb
from scipy.sparse import dok_matrix
import tensorflow as tf

import params
from util import get_max_fea

# load parameters
args = params.getArgs()
# print("\n\n")
# for k in args.keys():
#     print(k, ": ", args[k])
# print("\n\n")

# make sure training data dir exists
value_train_dir = "{}/train_value".format(args.outdir)
policy_train_dir = "{}/train_policy".format(args.outdir)
clause_dir = "{}/clauses".format(args.outdir)
proof_dir = "{}/proofs".format(args.outdir)
os.makedirs(value_train_dir, exist_ok=True)
os.makedirs(policy_train_dir, exist_ok=True)
os.makedirs(clause_dir, exist_ok=True)
os.makedirs(proof_dir, exist_ok=True)




if args.model_type == "xgboost" and args.guided > 0:
    assert args.guidance_dir is not None
    value_modelfile = "{}/value_xgb".format(args.guidance_dir)
    policy_modelfile = "{}/policy_xgb".format(args.guidance_dir)
    if args.guided == 1: # using python to access xgboost    
        value_model = xgb.Booster() 
        value_model.load_model(value_modelfile)
        policy_model = xgb.Booster()
        policy_model.load_model(policy_modelfile)
elif args.model_type == "Simple Dense":
    assert args.guidance_dir is not None
    value_modelfile = "{}/value_xgb".format(args.guidance_dir)
    policy_modelfile = "{}/policy_xgb".format(args.guidance_dir)
    if args.guided == 1: # using python to access xgboost    
        value_model = tf.keras.models.load_model(value_modelfile)
        policy_model = tf.keras.models.load_model(policy_modelfile)


n_features = get_max_fea(args)

def conv_state(state):
    return state

def value_NN(state):
    cstate=conv_state(state)
    value = 3*value_model.predict(cstate)#.squeeze()
    return value
def policy_NN(x):
    cstate=conv_state(x)
    scores = 6*policy_model.predict(cstate)#.squeeze()
    return scores

## BEWARE
# you have to pass an integer
# too large integers can overflow (1e9 already does)
def python_value(State,Value):
    sparse = dok_matrix((1, n_features), dtype=np.float32)
    for (k,v) in State:
        sparse[0, k] = v
    if args.model_type == "Simple Dense":
        result = value_NN(sparse)
    result = int(result * 1e8) # current pyswip interface cannot pass floats, so we pass an integer
    Value.unify(result)
    return True
python_value.arity = 2

def python_policy(State, Score):
    sparse = dok_matrix((1, n_features), dtype=np.float32)
    for (k,v) in State:
        sparse[0, k] = v
    if args.model_type == "Simple Dense":
        result = policy_NN(sparse)
    result = int(result * 1e8)
    Score.unify(result)
    return True
python_policy.arity=2

pyswip.registerForeign(python_value)
pyswip.registerForeign(python_policy)

leancop_settings = "conj,def"
leancop_settings = "{},comp({})".format(leancop_settings, args.pathlim)
leancop_settings = "{},eager_reduction({})".format(leancop_settings, args.eager_reduction)
leancop_settings = "{},paramodulation({})".format(leancop_settings, args.paramodulation)
leancop_settings = "{},extra_axioms(\"{}\")".format(leancop_settings, args.extra_axioms)

Params = "guided({}),cp({}),sim_depth({}),playout_count({}),min_visit_count({}),n_dim({}),playout_time({}), output_format({}), leancop_settings([{}])".format(args.guided, args.cp, args.sim_depth, args.playout, args.min_visit_count, args.n_dim, args.playout_time, args.output_format, leancop_settings)
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

# prolog = pyswip.Prolog()
# prolog.consult(prolog_file)
# result = list(prolog.query(query))[0] 
# time = result["ExecutionTime"]
# print("Problem {} executed in {} sec".format(args.problem_file, 1.0 * time/1000))
# import sys
# sys.stdout.flush()

import subprocess
full_query = 'prolog -g \'["{}"], {}, halt.\''.format(prolog_file, query)


# print("Full query: \n", full_query)
subprocess.call(full_query, shell=True)