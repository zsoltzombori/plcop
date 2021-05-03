import tensorflow as tf
import numpy as np
from tensorflow.contrib.layers import fully_connected
from gnn.stop_watch import StopWatch
from gnn.tf_helpers import *

import gnn.debug_node
from gnn.debug_node import tf_debug
from gnn.parallel_environment import GameState
from gnn.graph_placeholder import GraphPlaceholder
from gnn.graph_conv import graph_start, graph_conv
from gnn.segments import Segments

class NetworkConfig:
    def __init__(self):
        self.threads = 4
        self.start_shape = (4,1,4)
        self.next_shape = (32,64,32)
        #self.next_shape = (11,12,13)
        self.layers = 10
        self.hidden_val = 64
        self.hidden_act = 64
        self.entropy_regularization = -1.0

def graphs_to_values_logits(graph_ph, config):

    x = graph_start(graph_ph, config.start_shape)
    for n in range(config.layers):
        x = graph_conv(x, graph_ph,
                       output_dims = config.next_shape)

    nodes, symbols, clauses = x

    # values
    x = fully_connected(clauses, config.hidden_val)
    x = graph_ph.clause_nums.collapse(x, [tf.math.segment_max, tf.math.segment_mean])
    x = fully_connected(x, config.hidden_val)
    x = tf_linear_sq(x, activation_fn = tf.sigmoid)
    values = x

    # actions
    cur_goals = graph_ph.clause_nums.gather(clauses, 0)
    ci = graph_ph.clause_inputs
    ax_segments = Segments(
        graph_ph.clause_nums.segment_sum(
            ci.segments.lens
        ),
        nonzero = True,
    )
    mask = graph_ph.axiom_mask
    ax_segments_masked, clauses_i_masked = ax_segments.mask_data(
        ci.segments.segment_indices,
        mask, nonzero = True,
    )
    lit_i_masked = tf.boolean_mask(ci.data, tf.cast(mask, bool))
    clauses_masked = tf.gather(clauses, clauses_i_masked)
    literals_masked = tf.gather(nodes, lit_i_masked)
    action_inputs = tf.concat(
        [clauses_masked, literals_masked, ax_segments_masked.fill(cur_goals)],
        axis = 1,
    )
    hidden = fully_connected(action_inputs, config.hidden_act)
    logits = tf_linear_sq(hidden)

    return values, ax_segments_masked, logits

def actor_critic_loss(val_est, act_segments, log_probs, actions, values, config, model_type="both"):

    policy_loss = act_segments.sparse_cross_entropy(
        log_probs, actions,
        weights = values - tf.stop_gradient(val_est)
    )
    value_loss = tf.compat.v1.losses.mean_squared_error(val_est, values)

    entropy_reg = act_segments.entropy(log_probs = log_probs) \
        * config.entropy_regularization

    loss = entropy_reg
    if model_type in ("both", "value"):
        loss += value_loss
    if model_type in ("both", "policy"):
        loss += policy_loss
    
    return loss
    

# model type in {"both", "policy", "value"}
class Network:
    def __init__(self, config = None, model_type="both", entcoeff=-0.1):
        if config is None: config = NetworkConfig()

        graph = tf.Graph()
        graph.seed = 42

        configProto = tf.compat.v1.ConfigProto(inter_op_parallelism_threads=config.threads,
                                          intra_op_parallelism_threads=config.threads)
        configProto.gpu_options.allow_growth = True
        self.session = tf.compat.v1.Session(graph = graph, config=configProto)

        with self.session.graph.as_default():

            self.structure = GraphPlaceholder()

            # predict value and policy from given data
            value_predictions, act_segments, logits = graphs_to_values_logits(self.structure, config)
            self.act_lens = act_segments.lens
            log_probs = act_segments.log_softmax(logits)
            self.probs = tf.exp(log_probs)
            self.value_predictions = value_predictions
            self.sampled_actions = act_segments.sample(self.probs)
            self.max_actions = act_segments.argmax(self.probs)

            # additional placeholders
            actions = tf.compat.v1.placeholder(tf.int32, [None], name="actions")
            values = tf.compat.v1.placeholder(tf.float32, [None], name="values")
            self.actions = actions
            self.values = values

            self.loss = actor_critic_loss(
                val_est = value_predictions,
                act_segments = act_segments,
                log_probs = log_probs,
                actions = actions,
                values = values,
                config = config,
                model_type=model_type
            )

            optimizer = tf.compat.v1.train.AdamOptimizer(learning_rate=0.0005)
            self.training = optimizer.minimize(self.loss)

            target_policy = tf.compat.v1.placeholder(tf.float32, [None], name="actions")
            self.policy_mask = tf.cast(tf.compat.v1.placeholder(tf.int32, [None], name="actions"), bool)
            self.value_mask = tf.cast(tf.compat.v1.placeholder(tf.int32, [None], name="actions"), bool)
            self.target_policy = target_policy
            pol_segments, log_probs_masked = act_segments.mask_segments(log_probs, self.policy_mask)
            self.supervised_policy_loss = pol_segments.kl_divergence(log_probs_masked, target_policy)
            val_est_masked = tf.boolean_mask(value_predictions, self.value_mask)
            self.supervised_value_loss = tf.compat.v1.losses.mean_squared_error(val_est_masked, values)

            self.supervised_entropy_loss = act_segments.entropy(log_probs = log_probs_masked) * entcoeff
            if model_type == "both":
                self.supervised_loss += self.supervised_value_loss + self.supervised_policy_loss + self.supervised_entropy_loss
            elif model_type == "value":
                self.supervised_loss = self.supervised_value_loss
            elif model_type == "policy":
                self.supervised_loss = self.supervised_policy_loss + self.supervised_entropy_loss
            self.supervised_training = optimizer.minimize(self.supervised_loss)

            
            # self.supervised_training = optimizer.minimize(self.supervised_policy_loss
            #                                               + self.supervised_value_loss)

            self.session.run(tf.compat.v1.global_variables_initializer())
            self.saver = tf.compat.v1.train.Saver()

        self.session.graph.finalize()

    def predict(self, batch, non_destructive = True):
        with StopWatch("data preparation"):
            #d = self.structure.feed([s.graph_data for s in batch], non_destructive)
            d = self.structure.feed(batch, non_destructive)
        with StopWatch("network"):
            return self.session.run((self.probs, self.value_predictions), d)

    def best_actions(self, graphs, non_destructive = True):
        with StopWatch("data preparation"):
            d = self.structure.feed(graphs, non_destructive)
        with StopWatch("network"):
            return self.session.run(self.max_actions, d)

    def predict_probs(self, graphs, non_destructive = True):
        with StopWatch("data preparation"):
            d = self.structure.feed(graphs, non_destructive)
        with StopWatch("network"):
            return self.session.run((self.value_predictions, self.act_lens, self.probs), d)

    def get_loss(self, batch, non_destructive = True):

        with StopWatch("data preparation"):
            d = self.structure.feed([s.graph_data for s in batch], non_destructive)
            d[self.values] = [s.value for s in batch]
            d[self.actions] = [s.action for s in batch]
        with StopWatch("network"):
            return self.session.run(self.loss, d)

    def train(self, batch, non_destructive = True):

        with StopWatch("data preparation"):
            d = self.structure.feed([s.graph_data for s in batch], non_destructive)
            d[self.values] = [s.value for s in batch]
            d[self.actions] = [s.action for s in batch]
        with StopWatch("network"):
            return self.session.run((self.loss, self.training), d)[0]

    def feed_supervised(self, batch):
        d = self.structure.feed([s.graph_data for s in batch], non_destructive = True)
        target_policy = [s.action for s in batch if s.action is not None]
        if len(target_policy) == 0: target_policy = np.zeros([0], dtype = float)
        else: target_policy = np.concatenate(target_policy)
        d[self.target_policy] = target_policy
        d[self.values] = [s.value for s in batch if s.value is not None]
        d[self.policy_mask] = [s.action is not None for s in batch]
        d[self.value_mask] = [s.value is not None for s in batch]
        return d

    def train_supervised(self, batch):

        with StopWatch("data preparation"):
            d = self.feed_supervised(batch)
        with StopWatch("network"):
            return self.session.run(
                (self.supervised_training,
                 self.supervised_policy_loss,
                 self.supervised_value_loss,
                 self.supervised_entropy_loss), d)[1:]

    def get_loss_supervised(self, batch):

        with StopWatch("data preparation"):
            d = self.feed_supervised(batch)
        with StopWatch("network"):
            return self.session.run(
                (self.supervised_policy_loss,
                 self.supervised_value_loss,
                 self.supervised_entropy_loss), d)

    def debug(self, batch):

        d = self.structure.feed([s.graph_data for s in batch], non_destructive = True)
        #d[self.values] = [s.value for s in batch]
        d[self.target_policy] = np.concatenate([s.action for s in batch])
        debug_node.tf_debug_print(self.session.run(
            debug_node.debug_nodes, d
        ))

    def save(self, path, step = None):
        self.saver.save(self.session, path, global_step = step, write_meta_graph=False, write_state=False)

    def load(self, path):
        self.saver.restore(self.session, path)

if __name__ == "__main__":
    import traceback_utils
    import sys

    # hide entrails of Tensorflow in error messages
    sys.excepthook = traceback_utils.shadow('/home/mirek/.local/')

    network = Network(NetworkConfig())
    print("loading...")
    network.load("weights/mcts0_2020_7_epoch2")
    print("done")
