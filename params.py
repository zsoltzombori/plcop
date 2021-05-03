import os
import argparse

import params_parse


def getArgs():
    parser = argparse.ArgumentParser()

    # locations
    parser.add_argument('ini_file', nargs='*', help="Ini file to use for configuration")
    parser.add_argument('--outdir', dest="outdir", default="results/trash", help="Directory for saving output visualizations and models.")
    parser.add_argument('--modeldir', dest="modeldir", default=None, help="Location of the saved model. If none, then same as outdir.")
    parser.add_argument('--stage', dest="stage", default=0, type=int, help="Training stage")
    parser.add_argument('--guidance_dir', dest="guidance_dir", default=None, help="Directory that contains saved guidance model")
    parser.add_argument('--problem_file', dest="problem_file", default="theorems/pelletier21.p", help="File that contains a tptp problem.")
    
    parser.add_argument('--n_dim', dest="n_dim", default=512, help="Size of feature space")
    parser.add_argument('--test_ratio', dest="test_ratio", default=0.2, help="Ratio of test/train split.")
    parser.add_argument('--model_type', dest="model_type", default="xgboost", help="guidance model type")
    parser.add_argument('--guided', dest="guided", default=0, type=int, help="0/1 If 1, then we use learned guidance")
    parser.add_argument('--guidedValue', dest="guidedValue", default=1, type=int, help="0/1 If 0 then don't use value model even if guided")
    parser.add_argument('--guidedPolicy', dest="guidedPolicy", default=1, type=int, help="0/1 If 0 then don't use policy model even if guided")

    # montecarlo parameters
    parser.add_argument('--cp', dest="cp", default=0.2, type=float, help="Confidence penalty")
    parser.add_argument('--sim_depth', dest="sim_depth", default=0, type=float, help="Simulation depth")
    parser.add_argument('--playout', dest="playout", default=100, type=float, help="Playout count")
    parser.add_argument('--min_visit_count', dest="min_visit_count", default=1, type=int, help="Only collect training data from MC nodes with at least this much visit count")
    parser.add_argument('--playout_time', dest="playout_time", default=205, type=int, help="Time limit in sec for playouts")
    parser.add_argument('--bigstep_frequency', dest="bigstep_frequency", default=None, type=int, help="Bigstep frequency")
    parser.add_argument('--output_format', dest="output_format", default="svmlight",  help="svmlight/string")
    parser.add_argument('--save_all_proofs', dest="save_all_proofs", default=0, type=int,  help="if 1, save all proofs not just the first one")
    parser.add_argument('--temperature', dest="temperature", default=2, type=float,  help="softmax temperature")
    parser.add_argument('--save_all_policy', dest="save_all_policy", default=0, type=float,  help="Pobability of saving policy data from a failed proof")
    parser.add_argument('--save_all_value', dest="save_all_value", default=0, type=float,  help="Pobability of saving value data from a failed proof")
    parser.add_argument('--collapse_vars', dest="collapse_vars", default=0, type=int,  help="If 1, then all vars are replaced with 'var' before featurization")
    parser.add_argument('--swap', dest="swap", default=0, type=int,  help="If 1, then it is possible to jump from one open goal to another")
    parser.add_argument('--max_mcts_depth', dest="max_mcts_depth", default=0, type=int,  help="If > 0, mcts exploration is restricted to the given depth (relative to the bigstep root")
    parser.add_argument('--value_from_bigstep_neighbours', dest="value_from_bigstep_neighbours", default=0, type=int,  help="If 1, extract value data from the neighbours of bigstep nodes")

    # leancop parameters
    parser.add_argument('--pathlim', dest="pathlim", default=100, type=int, help="Proof depth limit")
    parser.add_argument('--eager_reduction', dest="eager_reduction", default=0, type=int, help="If 1, apply eager reduction steps")
    parser.add_argument('--paramodulation', dest="paramodulation", default=1, type=int, help="If 1, we allow parmodulation")
    parser.add_argument('--extra_axioms', dest="extra_axioms", default="nofile", help="file location")
    parser.add_argument('--extra_axioms_plfile', dest="extra_axioms_plfile", default="nofile", help="pl file location")
    parser.add_argument('--single_action_optim', dest="single_action_optim", default=0, type=int, help="if 1, eagerly perform single actions")
    parser.add_argument('--proof_format', dest="proof_format", default="connect", help="connect/compact/readable/leantptp")
    parser.add_argument('--lit_reo', dest="lit_reo", default=0, type=int, help="if > 0 reorder literals within each clause")
    
    # xgboost parameters
    parser.add_argument('--num_rounds', dest="num_rounds", default=400, type=int, help="Number of xgboost iterations")
    parser.add_argument('--lr', dest="lr", default=0.3, type=float, help="learning rate")
    parser.add_argument('--remove_duplicates', dest="remove_duplicates", default=0, type=int, help="if 1, remove duplicate training points")
    parser.add_argument('--target_model', dest="target_model", default="all", help="all/value/policy")

    # search type
    parser.add_argument('--search_type', dest="search_type", default="mcts", help="mcts/eager")
    parser.add_argument('--eager_type', dest="eager_type", default="policy", help="policy/value")

    # use exact policy from policy optimization
    parser.add_argument('--alpha_max_error', dest="alpha_max_error", default=0.0001, type=float, help="maximum error for finding alpha")
    parser.add_argument('--po_step', dest="po_step", default=0, type=int, help="whether to use policy optimization for bigsteps")
    parser.add_argument('--po_search', dest="po_search", default=0, type=int, help="whether to use policy optimization for expansion")
    parser.add_argument('--po_train', dest="po_train", default=0, type=int, help="whether to use policy optimization for trainig data")

    # nn model configs
    parser.add_argument('--densify', dest="densify", default=0, type=int, help="If 1, then densify the input")

    # gnn model configs
    parser.add_argument('--gnn_separate_value_policy', dest="gnn_separate_value_policy", default=0, type=int, help="0/1: if 1 train two models for policy and value")
    parser.add_argument('--gnn_entcoeff', dest="gnn_entcoeff", default=-0.1, type=float, help="If negative, then we encourage large entropy")


    # training data selection
    parser.add_argument('--train_from_stage', dest="train_from_stage", default=None, type=int, help="Not none, learn only from that one stage")

    args_param = parser.parse_args()
    args = params_parse.mergeParamsWithInis(args_param)

    # make sure the following params are tuples
    for k in ():
        if k in args.keys():
            args[k] = ensure_tuple(args[k])
        
    
    params_parse.dumpParams(args, args.outdir + "/all_params.ini")
    return args

def ensure_tuple(v):
    if isinstance(v, str):
        return (v, )
    if not isinstance(v, (tuple,)):
        return (v, )
    return v
