import os
from util import AttrDict


# save params to ini_file
def dumpParams(params, ini_file):
    if not os.path.exists(os.path.dirname(ini_file)):
        os.makedirs(os.path.dirname(ini_file))
    f = open(ini_file, "w+")
    for k in sorted(params.keys()):
        v = params[k]
        if isinstance(v, (tuple,)):
            v = ",".join([str(x) for x in v])
        print(k+"\t"+str(v), file=f)

# parse boolean, int and float out of string
# is a string is comma separated, turn it into a list
def heuristicCast(s):
    if not isinstance(s, str):
        return s
    s_orig = s.strip() # Don't let some stupid whitespace fool you.
    s = s_orig.lower()

    if "," in s: # apply recursively to lists separated by ","
        s_list = s.split(",")
        return tuple([heuristicCast(s2) for s2 in s_list])

    if "|" in s: # apply recursively to lists separated by "|"
        s_list = s.split("|")
        return tuple([heuristicCast(s2) for s2 in s_list])
    
    if s=="none":
        return None
    elif s in ("true", "yes"):
        return True
    elif s in ("false", "no"):
        return False
    try:
        return int(s)
    except ValueError:
        pass
    try:
        return float(s)
    except ValueError:
        pass
    return s_orig


# read ini_file line by line and get paramters 
def paramsFromIni(ini_file):
    params = AttrDict()
    f = open(ini_file)
    for l in f:
        l = l.strip()
        if l.startswith("#"):
            continue
        try:
            k, v = l.split(None, 1)
        except:
            print("SKIPPING MALFORMED CONFIG LINE: " + l)
            continue
        try:
            v = heuristicCast(v)
        except ValueError:
            assert False, "Malformed value for parameter {}: {}".format(k, v)
        params[k] = v
    return params

def mergeParamsWithInis(args_param, ini_files_param="ini_file"):

    args = AttrDict()

    args_param_dict = vars(args_param)

    for k in args_param_dict:
        args[k] = heuristicCast(args_param_dict[k])

    if args_param_dict[ini_files_param]:
        for ini_file in args_param_dict[ini_files_param]:
            args_ini_dict = paramsFromIni(ini_file)
            for k in args_ini_dict:
                args[k] = args_ini_dict[k]
                    
    return args
