import traceback as tb

debug_nodes = []
debug_names = []

def tf_debug(x, name = None):

    if name is None:
        #line = tb.extract_stack()[-2].line.strip()
        line = tb.extract_stack()[-2][-1].strip()
        ini_str = "tf_debug("
        end_str = ")"
        if line.startswith(ini_str) and line.endswith(end_str):
            name = (line[len(ini_str):-len(end_str)]).strip()
        else: name = line
            
    global debug_nodes, debug_names
    if name in debug_names: return
    debug_names.append(name)
    debug_nodes.append(x)

def tf_debug_print(data):
    for name, d in zip(debug_names, data):
        print("{} = ".format(name))
        print(d)
