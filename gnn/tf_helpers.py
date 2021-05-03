import tensorflow as tf
from tensorflow.contrib.layers import fully_connected

def tf_linear(x, num_outputs, activation_fn = None):
    return fully_connected(
        x,
        num_outputs = num_outputs,
        activation_fn = activation_fn,
    )

def tf_linear_nob(x, num_outputs, activation_fn = None):
    return fully_connected(
        x,
        num_outputs = num_outputs,
        activation_fn = activation_fn,
        biases_initializer = None,
    )

def tf_linear_sq(x, activation_fn = None):
    return tf.squeeze(
        fully_connected(
            x,
            num_outputs = 1,
            activation_fn = activation_fn,
        ),
        axis = 1
    )

def nan_to_zero(has_nans):
    return tf.where(tf.is_nan(has_nans),
                    tf.zeros_like(has_nans),
                    has_nans)

def mean_or_zero(data):
    return tf.cond(
        tf.equal(tf.size(data), 0),
        lambda: 0.,
        lambda: tf.reduce_mean(data),
    )

def concatenate_layer(xl, num_outputs, activation_fn = tf.nn.relu, add_bias = True):
    res = None
    for x in xl:
        if res is None:
            if add_bias: res = tf_linear(x, num_outputs)
            else: res = tf_linear_nob(x, num_outputs)
        else: res = res + tf_linear_nob(x, num_outputs)

    if activation_fn is not None: res = activation_fn(res)
    return res

def layer_norm_layer(x, num_outputs, activation_fn = tf.nn.relu, add_bias = True):
    with tf.variable_scope(None, "layer_norm"):
        gain = tf.get_variable(
            "gain",
            initializer = tf.ones([num_outputs]))
        if add_bias:
            bias = tf.get_variable(
                "bias",
                initializer = tf.zeros([num_outputs]))

    if isinstance(x, (list, tuple)):
        matrix_out_sum = None
        for matrix_in in x:
            matrix_out = tf_linear_nob(matrix_in, num_outputs)
            if matrix_out_sum is None: matrix_out_sum = matrix_out
            else: matrix_out_sum = matrix_out_sum + matrix_out
        x = matrix_out_sum
    else:
        x = tf_linear_nob(x, num_outputs)

    x = x - tf.reduce_mean(x, axis = -1, keep_dims = True)
    variance = tf.maximum(0.001, tf.sqrt(tf.reduce_mean(tf.square(x), axis = -1, keep_dims = True)))
    x = x * gain / variance
    if add_bias: x = x + bias
    if activation_fn is not None: x = activation_fn(x)
    return x
