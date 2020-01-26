import numpy as np
from sklearn.feature_selection import VarianceThreshold
import hashlib

FEATURES_MODULO = 262139 # this is given in features.ml line 32

# return a vector of length dim with prefix from datalist
# if dim > len(datalist) then zero pad
def get_fixed_dim(dim, datalist):
    result = np.zeros((dim,))
    maxindex = min(len(datalist), dim)
    result[:maxindex] = datalist[:maxindex]
    return result



# input is a vector, returns softmax probabilities
def softmax(x):
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()

# TODO
# def get_hash(size):
#     cheap_hash = lambda input: hashlib.md5(input).hexdigest()[:size]
#     return cheap_hash

# TODO do it better
# turn index into a onehot vector of length classes
def get_onehot(index, classes):
    index = index % classes
    return np.eye(classes)[index]
def get_onehot_list(index_list, classes):
    result = np.zeros(classes)
    for i in index_list:
        result[i % classes] += 1
    return result
    # if len(index_list) == 0:
    #     return np.zeros(classes)
    # return np.sum([get_onehot(i, classes) for i in index_list], axis=0)

def get_state_embedding(goal, path, S_DIM, embed_separately=False):
    if embed_separately:
        goal = get_onehot_list(goal, S_DIM)
        path = get_onehot_list(path, S_DIM)
        state = np.array((goal, path))
    else:
        assert (S_DIM % 2) == 0, "S_DIM should be even"
        goal = get_onehot_list(goal, S_DIM//2)
        path = get_onehot_list(path, S_DIM//2)
        state = np.concatenate((goal, path))
    return state
def get_action_embedding(action, A_DIM):
    return get_onehot_list(action, A_DIM)
def get_actions_embedding(action_list, A_DIM):
    result_list = [get_onehot_list(action, A_DIM) for action in action_list]
    return result_list

def densify_features(vector):
    features_np = np.zeros(len(FEATURE_MAP))
    features_np[[FEATURE_MAP[key] for key in vector]] = 1
    return features_np

def sparseToDense(vector, len=None):
    if len == None:
        len = max(vector) + 1
    result = np.zeros(len)
    for elem in vector:
        index = elem % len
        result[index] = result[index]+1
    return result

def map_and_densify(vector, feature_list):
    feature_list = feature_list.tolist()
    mapped_vector = [feature_list.index(v) for v in vector]
    return sparseToDense(mapped_vector, len(feature_list))


# keep track of different states and actions and enumerate them
class Indexer(object):
    def __init__(self, S_DIM, A_DIM, embed_separately=False, feature_file=None):
        self.S_DIM = S_DIM
        self.A_DIM = A_DIM
        self.embed_separately = embed_separately
        self.state_list = []
        self.goal_list = []
        self.path_list = []
        self.action_list = []
        self.embedded_action_list = []
        self.children_list = []

        if feature_file is None:
            self.feature_list = None
        else:
            self.feature_list = np.load(feature_file)
            self.S_DIM = len(self.feature_list)
            self.A_DIM = len(self.feature_list)

        
    def store_state(self, goal, path):
        goal = np.array(goal)
        path = np.array(path)
        l = len(self.goal_list)
        for i in range(l):
            if np.array_equal(goal, self.goal_list[i]) and np.array_equal(path, self.path_list[i]):
                return i, self.state_list[i] # the given state has already been stored
        self.goal_list.append(goal)
        self.path_list.append(path)
        if self.feature_list is None:
            state = get_state_embedding(goal, path, self.S_DIM, self.embed_separately)
        else:
            goal_emb = map_and_densify(goal, self.feature_list)
            path_emb = map_and_densify(path, self.feature_list)
            state = np.array((goal_emb, path_emb))
        self.state_list.append(state)
        self.children_list.append([])
        return l, state        

    def store_action(self, action):
        action = np.array(action)
        l = len(self.action_list)
        for i in range(l):
            if np.array_equal(action, self.action_list[i]):
                return i, self.embedded_action_list[i] # the given action has already been stored
        self.action_list.append(action)
        if self.feature_list is None:
            embedded_action = get_action_embedding(action, self.A_DIM)
        else:
            embedded_action = map_and_densify(action, self.feature_list)
        self.embedded_action_list.append(embedded_action)
        return l, embedded_action
    def get_state(self, index):
        assert index < len(self.state_list)
        return self.state_list[index]
    def get_embedded_action(self, index):
        assert index < len(self.action_list)
        return self.embedded_action_list[index]
    def get_state_count(self):
        return len(self.state_list)
    def get_action_count(self):
        return len(self.action_list)
    def add_child(self, state_id, action_id, new_state_id):
        assert len(self.children_list) > state_id
        item = [action_id, new_state_id]
        if not item in self.children_list[state_id]:
            self.children_list[state_id].append(item)
    def get_children(self, state_id):
        return self.children_list[state_id]
    def display_children(self):
        print("Explored search space:")
        for i in range(len(self.children_list)):
            print("State: {}, children: {}".format(i,self.children_list[i]))
    def get_dense_actions(self, variance_threshold=None):
        result = np.array([sparseToDense(a, FEATURES_MODULO) for a in self.action_list])
        mask = np.ones(FEATURES_MODULO)
        if variance_threshold != None:
            sel = VarianceThreshold(threshold=variance_threshold)
            result = sel.fit_transform(result)
            mask = sel.get_support()
        return result, mask
            
def display_progress(indexer, ppo):
    # get values learned by the critic
    all_states = [indexer.get_state(i) for i in range(indexer.get_state_count())]
    all_states = np.array(all_states)
    all_values = ppo.get_v(all_states)
    
    # get probs learned by the actor
    # actions = [indexer.get_embedded_action(i) for i in range(indexer.get_action_count())]
    for i, s in enumerate(all_states):
        print("state: {}, value: {}".format(i, all_values[i]))
        children = indexer.get_children(i)
        if len(children) > 0:
            action_ids = [c[0] for c in children]
            next_state_ids = [c[1] for c in children]
            actions = [indexer.get_embedded_action(id) for id in action_ids]
            probs = ppo.get_action_probs(s, actions)
            probs_normed = softmax(probs)
            for p,ns in zip(probs_normed, next_state_ids):
                print("  ---> {} ---> state {}".format(p, ns))

class ClausePrinter(object):
    def __init__(self):
        self.pred_list = []
        self.var_limit = 262139
        self.modulo = 262141

        self.holstep_map = {
            159725: "#",
            257246: "eq",
            259374: "div",
            142875: "s",
            110914: "o",
            133115: "neg",
            41205: "plus",
            7683: "mul",
        }

    def collapse_vars(self, clause):
        results = []
        for c in clause:
            if c > self.var_limit:
                results.append(self.var_limit+1)
            else:
                results.append(c)
        return results



    def get_pred_name(self, pred):
        if pred in self.holstep_map:
            return self.holstep_map[pred]
        neg_pred = (self.modulo - pred)
        if neg_pred in self.holstep_map:
            return "-" + self.holstep_map[neg_pred]
        
        if neg_pred in self.pred_list: # its negation is already stored
            i = self.pred_list.index(neg_pred)
            return "-g_" + chr(i + ord("A"))
            
        if not pred in self.pred_list:
            self.pred_list = self.pred_list + [pred]
        i = self.pred_list.index(pred)
        return "g_" + chr(i + ord("a"))

    def get_token(self, clause):
        assert len(clause) > 0

        if clause[0] == 0: # application
            assert len(clause) >= 3
            if clause[1] == 0: # two arguments
                assert len(clause) >= 5
                pred = self.get_pred_name(clause[2])
                arg1, rest1 = self.get_token(clause[3:])
                arg2, rest2 = self.get_token(rest1)
                token = "{}({},{})".format(pred, arg1, arg2)
                return token, rest2
            else:
                pred = self.get_pred_name(clause[1])
                arg, rest = self.get_token(clause[2:])
                token = "{}({})".format(pred, arg)
                return token, rest
        elif clause[0] > self.var_limit: # variable
            token = "X{}".format(clause[0] - self.var_limit)
            return token, clause[1:]
        else: # atom
            token = self.get_pred_name(clause[0]).lower()
            return token, clause[1:]

    def stringify(self, clause):
        literals = []
        while len(clause) > 0:
            token, clause = self.get_token(clause)
            literals.append(token)
        return "|".join(literals)

    
class AttrDict(dict):
    def __init__(self, *args, **kwargs):
        super(AttrDict, self).__init__(*args, **kwargs)
        self.__dict__ = self

def print_proofs(children_list):
    parents = AttrDict()
    for i in range(len(children_list)):
        for (action, successor) in children_list[i]:
            if not successor in parents:
                parents[successor] = []
            parents[successor].append((i, action))

    # proofs = get_proofs('success', parents)
    proofs = get_proofs(parents)
    for proof in proofs:
        print("Proof: ", proof)

# def get_proofs(state, parents):
#     prev_states = parents[state]

#     proofs = []
#     for (state2, action2) in prev_states:
#         if state2 == 0:
#             proofs.append([])
#         else:
#             proofs += get_proofs(state2,parents)
#         for p in proofs:
#             p.append((state2, action2))
#     return proofs

def get_proofs(parents):
    partial_proofs = [[('success', -1)]]
    proofs = []    
    while (len(partial_proofs) > 0):
        suffix = partial_proofs.pop()
        (last_state, _last_action) = suffix[-1]
        prev_states = parents[last_state]
        for (state2, action2) in prev_states:
            new_suffix = suffix + [(state2, action2)]
            if state2 == 0:
                proof = list(reversed(new_suffix))
                proofs.append(proof)
            else:
                partial_proofs.append(new_suffix)
    return proofs

def format_time(sec):
    if sec < 60:
        return "{:.3f} sec".format(sec)

    minute = int(sec // 60)
    sec = sec % 60
    if minute < 60:
        return "{} min {:.3f} sec".format(minute, sec)
    
    hour = int(minute // 60)
    minute = minute % 60
    return "{} hour {} min {:.3f} sec".format(hour, minute, sec)

def print_problemdict(problemdict):
    print("Proofs found for the following problems:")
    counter = 0
    missing_counter = 0
    for file in problemdict:
        dict = problemdict[file]
        if dict["proof"] is not None:
            counter += 1
            if len(dict["success"]) == 0:
                success_ratio = 0.0
            else:
                success_ratio = sum(dict["success"]) * 1.0 / len(dict["success"])
            print("{}, steps_to_remain {}, success ratio {}, proof {}".format(file, dict["steps_to_remain"], success_ratio, dict["proof"]))
        else:
            missing_counter += 1
    print("Found {} proofs, missed {} proofs".format(counter, missing_counter))

    
# features for peano arithmetic as collected by Henryk
FEATURE_MAP = {
 18: 15,
 4618: 43,
 4894: 1,
 7682: 2,
 12972: 55,
 13475: 56,
 13728: 17,
 23510: 64,
 25764: 79,
 29918: 37,
 32308: 18,
 32706: 72,
 37755: 16,
 39413: 49,
 40543: 33,
 41195: 3,
 41204: 19,
 41418: 4,
 43983: 5,
 51956: 27,
 56344: 38,
 66228: 66,
 70804: 50,
 72935: 44,
 73592: 86,
 74065: 39,
 77505: 20,
 79750: 85,
 79774: 34,
 80794: 47,
 82562: 68,
 86952: 74,
 89269: 73,
 89866: 21,
 100625: 22,
 106288: 28,
 107114: 76,
 108196: 69,
 110913: 6,
 113272: 84,
 113821: 75,
 115398: 7,
 116084: 53,
 117556: 42,
 122791: 67,
 136377: 60,
 137634: 8,
 140422: 70,
 140962: 71,
 141511: 45,
 141718: 24,
 142874: 9,
 144299: 77,
 147669: 25,
 150457: 78,
 150481: 40,
 159724: 0,
 164067: 32,
 166855: 31,
 167898: 59,
 169408: 10,
 173944: 26,
 174605: 29,
 175735: 35,
 176115: 23,
 178903: 51,
 179175: 11,
 183979: 48,
 186233: 41,
 191536: 12,
 204953: 30,
 207741: 65,
 208784: 83,
 212425: 46,
 213899: 81,
 213923: 63,
 214942: 82,
 215491: 62,
 216711: 36,
 217754: 57,
 224461: 54,
 233235: 52,
 238047: 13,
 241263: 61,
 242345: 14,
 243388: 58,
 247421: 80
}

ACTION_MAP = {
 -2003204404148686279 : 0,
 -1989356063770320071 : 1,
 3545286421226010726 : 2,
 3763098583011768420 : 3,
 3834872697031308342 : 4,
 3905853662302724450 : 5
}
