import time
import glob

import params
args = params.getArgs()

from util import get_max_fea
n_features = get_max_fea(args)
print("feature count: ", n_features)


if args.train_from_stage is not None:
    value_train_dirs = ["{}/stage{}/train_value".format(args.outdir, args.train_from_stage)]
    policy_train_dirs = ["{}/stage{}/train_policy".format(args.outdir, args.train_from_stage)]
else:
    value_train_dir = "{}/stage*/train_value".format(args.outdir)
    policy_train_dir = "{}/stage*/train_policy".format(args.outdir)
    value_train_dirs = glob.glob(value_train_dir)
    policy_train_dirs = glob.glob(policy_train_dir)

T0 = time.time()
if args.model_type == "xgboost":
    value_train_dirs = [d + "/svmlight" for d in value_train_dirs]
    policy_train_dirs = [d + "/svmlight" for d in policy_train_dirs]
    from train_xgboost import train
    if args.target_model in ("value", "all"):
        value_modelfile = "{}/value_xgb".format(args.outdir)
        print("\n\nTraining value model")
        train(args, value_train_dirs, value_modelfile, n_features, objective="reg:squarederror", oversample=True)
    if args.target_model in ("policy", "all"):
        policy_modelfile = "{}/policy_xgb".format(args.outdir)
        print("\n\nTraining policy model")
        train(args, policy_train_dirs, policy_modelfile, n_features, objective="reg:squarederror", oversample=True)

elif args.model_type == "nn":
    value_train_dirs = [d + "/svmlight" for d in value_train_dirs]
    policy_train_dirs = [d + "/svmlight" for d in policy_train_dirs]
    import Tensorflow_models.model
    from Tensorflow_models.train_NN import train
    epochs = args.num_rounds
    batch_size = 256
    densify = bool(args.densify)
    network_type = "Simple Dense Small"
    if args.target_model in ("value", "all"):
        value_modelfile = "{}/value_nn.h5".format(args.outdir)
        print("\n\nTraining value model")
        train(value_train_dirs, value_modelfile, n_features, epochs, batch_size, 'value', network_type = network_type, densify=densify)
    if args.target_model in ("policy", "all"):
        policy_modelfile = "{}/policy_nn.h5".format(args.outdir)
        print("\n\nTraining policy model")
        train(policy_train_dirs, policy_modelfile, n_features, epochs, batch_size, 'prob', network_type = network_type, densify=densify)

elif args.model_type == "gnn":
    value_train_dirs = [d + "/gnn" for d in value_train_dirs]
    policy_train_dirs = [d + "/gnn" for d in policy_train_dirs]
    epochs = args.num_rounds
    batch_size = 256
    from gnn.train_gnn import train
    if args.target_model in ("value", "all"):
        value_modelfile = "{}/value_gnn".format(args.outdir)
        if args.gnn_separate_value_policy == 1:
            print("\n\nTraining gnn value model")
            train(value_train_dirs, value_modelfile, epochs, batch_size, args.remove_duplicates, model_type="value", entcoeff=args.gnn_entcoeff)
        else:        
            print("\n\nTraining gnn (value and policy) model")
            train(value_train_dirs, value_modelfile, epochs, batch_size, args.remove_duplicates, model_type="both", entcoeff=args.gnn_entcoeff)

    if args.target_model in ("policy", "all"):
        policy_modelfile = "{}/policy_gnn".format(args.outdir)
        if args.gnn_separate_value_policy == 1:
            print("\n\nTraining gnn policy model")
            train(policy_train_dirs, policy_modelfile, epochs, batch_size, args.remove_duplicates, model_type="policy", entcoeff=args.gnn_entcoeff)
else:
    assert False, "Unknown model type: "+ args.model_type
    

    
T1 = time.time()
print("Training {} model took {:.2f} sec".format(args.model_type, T1-T0))
