import tensorflow as tf
from gnn.debug_node import tf_debug
from gnn.tf_helpers import *

def gather_opt(params, indices): # if params = -1, uses zero tensor

    zeros = tf.zeros(tf.shape(params)[1:])
    zeros = tf.expand_dims(zeros, 0)
    params_ext = tf.concat([zeros, params], 0)
    return tf.gather(params_ext, indices+1)

def graph_start(graph, start_dims):

    dim_nodes, dim_symbols, dim_clauses = start_dims

    with tf.compat.v1.variable_scope(None, "embeddings"):
        node_emb = tf.compat.v1.get_variable("node_emb", [4, dim_nodes])
        symbol_emb = tf.zeros([2, dim_symbols])
        # symbol_emb = tf.compat.v1.get_variable("symbol_emb", [2, dim_symbols])
        clause_emb = tf.compat.v1.get_variable("clause_emb", [6, dim_nodes])

    nodes = tf.gather(node_emb, graph.ini_nodes)
    symbols = tf.gather(symbol_emb, graph.ini_symbols)
    clauses = tf.gather(clause_emb, graph.ini_clauses)
    tf_debug(nodes, "nodes_start")
    tf_debug(symbols, "symbols_start")
    tf_debug(clauses, "clauses_start")

    return nodes, symbols, clauses    

# similar to segment_max, but being an odd function
def segment_minimax(data, segment_indices):
    a = tf.math.segment_max(data, segment_indices)
    b = tf.math.segment_min(data, segment_indices)
    return a+b

def graph_conv(tensors, s, output_dims = None, use_layer_norm = False):

    if use_layer_norm: layer = layer_norm_layer
    else: layer = concatenate_layer

    nodes, symbols, clauses = tensors
    if output_dims is None:
        out_dim_nodes = int(nodes.shape[-1])
        out_dim_symbols = int(symbols.shape[-1])
        out_dim_clauses = int(clauses.shape[-1])
    else:
        out_dim_nodes, out_dim_symbols, out_dim_clauses = output_dims

    # out_nodes <- nodes, symbols

    in_nodes = []
    for n in s.node_inputs:
        xn = gather_opt(nodes, n.nodes)
        dim = xn.shape[1]*xn.shape[2]
        xn = tf.reshape(xn, [-1, dim])
        xn = tf_linear_nob(xn, out_dim_nodes)
        xs = tf.gather(symbols, n.symbols) * tf.expand_dims(n.sgn, 1)
        xs = tf_linear(xs, out_dim_nodes)

        x = n.segments.collapse_nonzero(tf.nn.relu(xs + xn),
                                        [tf.math.segment_max, tf.math.segment_mean])
        x = n.segments.add_zeros(x)

        in_nodes.append(x)

    # out_nodes <- nodes + biases

    in_nodes.append(nodes)

    # out_nodes <- clauses

    nc = s.node_c_inputs
    x = tf.gather(clauses, nc.data)
    x = nc.segments.collapse_nonzero(x, [tf.math.segment_max, tf.math.segment_mean])
    x = nc.segments.add_zeros(x)

    in_nodes.append(x)
    out_nodes = layer(in_nodes, out_dim_nodes)

    # out_symbols <- symbols, nodes

    sy = s.symbol_inputs
    x = gather_opt(nodes, sy.nodes)
    dim = x.shape[1]*x.shape[2]
    x = tf.reshape(x, [-1, dim])
    x = tf_linear(x, out_dim_symbols)
    x = sy.segments.collapse(x*tf.expand_dims(sy.sgn,1),
                         operations = [tf.math.segment_mean, segment_minimax])

    out_symbols = layer([x, symbols], out_dim_symbols,
                        activation_fn = tf.tanh, add_bias = False)

    # out_clauses <- nodes, clauses

    c = s.clause_inputs
    x = c.segments.collapse(tf.gather(nodes, c.data),
                            [tf.math.segment_max, tf.math.segment_mean])

    tf_debug(clauses)
    tf_debug(x, "in_clauses")
    out_clauses = layer([x, clauses], out_dim_clauses)
    tf_debug(out_clauses)

    return out_nodes, out_symbols, out_clauses
