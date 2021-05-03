import numpy as np
from collections import OrderedDict
from itertools import chain
import pyswip


def flatten_data(data, *keys):
    res = { key: [] for key in keys }
    for d in chain.from_iterable(data):
        for key in keys:
            res[key].append(d[key])
    res['lens'] = list(map(len, data))
    return res

class TermGraph:
    def __init__(self, decoder):
        self.fun_d = OrderedDict()
        self.node_d = OrderedDict()
        self.decoder = decoder

    def get_fun(self, f, ar):
        assert(self.decoder.is_constant(f))
        f_str = self.decoder.get_f_str(f)
        return self.fun_d.setdefault((f_str, ar), len(self.fun_d))
    def get_var(self, v):
        assert(self.decoder.is_variable(v))
        v_str = self.decoder.get_v_str(v)
        return self.node_d.setdefault(v_str, len(self.node_d))

    def get_term(self, term, sgn = 1):
        if self.decoder.is_variable(term): return self.get_var(term)
        else: term_l = self.decoder.to_list(term)

        arity = len(term_l)-1
        args = tuple(self.get_term(t) for t in term_l[1:])
        fun = self.get_fun(term_l[0], arity)
        key = (fun,sgn)+args
        return self.node_d.setdefault(key, len(self.node_d))

    def export_indices(self):
        term_edges = []
        for key,val in self.node_d.items():
            if isinstance(key, str): continue
            fun,sgn,*args = key
            if len(args) == 0: term_edges.append([val,-1,-1,fun,sgn])
            elif len(args) == 1: term_edges.append([val,args[0],-1,fun,sgn])
            else:
                for a,b in zip(args, args[1:]):
                    term_edges.append([val,a,b,fun,sgn])

        symbol_inputs = [[] for _ in range(len(self.fun_d))]
        node_inputs = [
            [[] for _ in range(len(self.node_d))]
            for _ in range(3)
        ]
        for val,a,b,fun,sgn in term_edges:
            node_inputs[0][val].append({ 'symbols': fun, 'nodes': [a,b], 'sgn': sgn })
            if a >= 0: node_inputs[1][a].append({ 'symbols': fun, 'nodes': [val,b], 'sgn': sgn })
            if b >= 0: node_inputs[2][b].append({ 'symbols': fun, 'nodes': [val,a], 'sgn': sgn })
            symbol_inputs[fun].append({ 'nodes': [val,a,b], 'sgn': sgn })

        node_inputs = [ flatten_data(x, 'symbols', 'nodes', 'sgn') for x in node_inputs]
        symbol_inputs = flatten_data(symbol_inputs, 'nodes', 'sgn')
        return node_inputs, symbol_inputs

class PrologDecoder:
    def __init__(self, prolog):
        self.prolog = prolog
    def is_constant(self, x):
        return isinstance(x, pyswip.easy.Atom)
    def is_variable(self, x):
        return isinstance(x, pyswip.easy.Variable)
    def to_list(self, x):
        if isinstance(x, list): return x
        else: return [x]
    def get_f_str(self, x):
        return x.chars.decode('ascii')
    def get_v_str(self, x):
        return x.chars

import pyswip
prolog = pyswip.Prolog()
prolog.consult("term2list.pl")

graph = TermGraph(PrologDecoder(prolog))

def gnn_test_policy(State, Score):
    #res = next(prolog.query("term2list(f(a)+X+X*Y-f(a), TermEncoding)"))["TermEncoding"]
    res = State
    #print('root index', graph.get_term(res))
    #print('fun_d', graph.fun_d)
    #print('node_d', graph.node_d)
    node_inputs, symbol_inputs = graph.export_indices()
    for i,d in enumerate(node_inputs):
        name = "node_inputs{}/".format(i+1)
        for key, val in d.items():
            print(name+key, val)
    name = "symbol_inputs/"
    for key, val in symbol_inputs.items():
        print(name+key, val)
    result = int(1)
    Score.unify(result)
    return True
gnn_test_policy.arity=2
        
pyswip.registerForeign(gnn_test_policy)

