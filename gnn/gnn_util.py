from collections import OrderedDict
from itertools import chain
import pyswip

from gnn.graph_data import GraphData

def flatten_data(data, *keys):
    res = { key: [] for key in keys }
    for d in chain.from_iterable(data):
        for key in keys:
            res[key].append(d[key])
    res['lens'] = list(map(len, data))
    return res

class TermGraph:
    def __init__(self, decoder):
        self.symb_d = OrderedDict()
        self.node_d = OrderedDict()
        self.vars = set()
        self.decoder = decoder
        self.clauses = []
        self.ini_nodes = []
        self.ini_symbols = []
        self.ini_clauses = []
        self.ini_var = 2

    def get_fun(self, f, ar, t):
        assert(self.decoder.is_constant(f))
        f_str = self.decoder.get_f_str(f)
        key = (f_str, ar, t)
        res = self.symb_d.get(key, None)
        if res is None:
            res = len(self.symb_d)
            self.symb_d[key] = res
            self.ini_symbols.append(t)
        return res
    def get_var(self, v):
        assert(self.decoder.is_variable(v))
        v_str = self.decoder.get_v_str(v)
        res = self.node_d.get(v_str, None)
        if res is None:
            res = len(self.ini_nodes)
            self.vars.add(v_str)
            self.node_d[v_str] = res
            self.ini_nodes.append(self.ini_var)
        return res

    def reset_vars(self):
        for v in self.vars: del self.node_d[v]
        self.vars = set()

    def get_term(self, term, sgn = 1, top_rel = 0):
        if self.decoder.is_variable(term): return self.get_var(term)
        else: term_l = self.decoder.to_list(term)

        arity = len(term_l)-1
        args = tuple(self.get_term(t) for t in term_l[1:])
        fun = self.get_fun(term_l[0], arity, top_rel)
        key = (fun,sgn)+args
        res = self.node_d.get(key, None)
        if res is None:
            res = len(self.ini_nodes)
            self.node_d[key] = res
            self.ini_nodes.append(1-top_rel)
        return res

    def get_pred(self, pred_term):
        term, sgn = self.decoder.separate_sgn(pred_term)
        return self.get_term(term, sgn = sgn, top_rel = 1)

    def add_clause(self, cl, t):
        cli = len(self.clauses)
        cll = list(map(self.get_pred, cl))
        self.clauses.append(cll)
        self.ini_clauses.append(t)
        return cli, cll

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
                    
        symbol_inputs = [[] for _ in range(len(self.symb_d))]
        node_inputs = [
            [[] for _ in range(len(self.ini_nodes))]
            for _ in range(3)
        ]
        # print(term_edges)
        for val,a,b,fun,sgn in term_edges:
            node_inputs[0][val].append({ 'symbols': fun, 'nodes': [a,b], 'sgn': sgn })
            if a >= 0: node_inputs[1][a].append({ 'symbols': fun, 'nodes': [val,b], 'sgn': sgn })
            if b >= 0: node_inputs[2][b].append({ 'symbols': fun, 'nodes': [val,a], 'sgn': sgn })
            symbol_inputs[fun].append({ 'nodes': [val,a,b], 'sgn': sgn })

        node_c_inputs = [[] for _ in range(len(self.ini_nodes))]
        for cli,cll in enumerate(self.clauses):
            for n in cll: node_c_inputs[n].append({ 'data' : cli })
        clause_inputs = [[{'data' : l} for l in cl] for cl in self.clauses]

        node_inputs = [ flatten_data(x, 'symbols', 'nodes', 'sgn') for x in node_inputs]
        symbol_inputs = flatten_data(symbol_inputs, 'nodes', 'sgn')
        node_c_inputs = flatten_data(node_c_inputs, 'data')
        clause_inputs = flatten_data(clause_inputs, 'data')
        d = dict()
        def add_to_d(name, data):
            for key,val in data.items():
                d[name+'/'+key] = val
        for i,x in enumerate(node_inputs):
            add_to_d('node_inputs_'+str(i+1), x)
        add_to_d('symbol_inputs', symbol_inputs)
        add_to_d('node_c_inputs', node_c_inputs)
        add_to_d('clause_inputs', clause_inputs)
        d['ini_nodes'] = self.ini_nodes
        d['ini_symbols'] = self.ini_symbols
        d['ini_clauses'] = self.ini_clauses

        return d

class PrologDecoder:
    def __init__(self, prolog):
        self.prolog = prolog
    def is_constant(self, x):
        return isinstance(x, (int, pyswip.easy.Atom))
    def is_variable(self, x):
        return isinstance(x, pyswip.easy.Variable)
    def to_list(self, x):
        if isinstance(x, list): return x
        else: return [x]
    def get_f_str(self, x):
        if isinstance(x, int): return str(x)
        return x.chars.decode('ascii')
    def get_v_str(self, x):
        return x.chars
    def separate_sgn(self, pred_term):
        if isinstance(pred_term, list) and len(pred_term) == 2 and self.get_f_str(pred_term[0]) == '-':
            return pred_term[1], -1
        else: return pred_term, 1

def prolog_to_str(x):
    if isinstance(x, list):
        return '['+', '.join(prolog_to_str(y) for y in x)+']'
    elif isinstance(x, (pyswip.easy.Variable, pyswip.easy.Term, pyswip.easy.Atom)):
        x = x.chars
        if isinstance(x, bytes): return x.decode('ascii')
        else: return x
    else: return str(x)

def input2graph(prolog, gnn_input):
    curr_lit, path, all_goals, action_clauses, action_mask, _action_perm = gnn_input
    graph = TermGraph(PrologDecoder(prolog))
    
    graph.add_clause([curr_lit], 0)
    mask = [0]
    graph.add_clause(all_goals, 1)
    mask += [0] * len(all_goals)
    for p in path:
        graph.add_clause([p], 2)
        mask += [0]
    graph.ini_var = 3
    for axiom in action_clauses:
        graph.reset_vars()
        graph.add_clause(axiom, 3)
    mask += action_mask
    data = graph.export_indices()
    data = GraphData(data)
    data.axiom_mask = mask
    return data        


