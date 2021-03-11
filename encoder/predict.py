import tensorflow as tf
import numpy as np

import params
import preprocess
from model_context import ModelContext


def encode_clause(clause):

    context = ModelContext.get_context()
    clause = preprocess.preprocess_sentence(clause)

    inputs = [context.inp_lang.word_index[i] for i in clause.split(' ')]
    inputs = tf.keras.preprocessing.sequence.pad_sequences(
        [inputs],
        maxlen=params.PRED_MAX_LEN,
        padding='post'
    )
    inputs = tf.convert_to_tensor(inputs)

    hidden = [tf.zeros((1, params.UNITS))]
    enc_out, enc_hidden = context.encoder(inputs, hidden)

    return enc_out, enc_hidden


def decode_clause(enc_out, hidden, show_attention=False):

    context = ModelContext.get_context()
    result = ''
    attention_plot = np.zeros(
        (params.PRED_MAX_LEN, params.PRED_MAX_LEN)) if show_attention else None

    dec_hidden = hidden
    dec_input = tf.expand_dims([context.targ_lang.word_index['<start>']], 0)

    for t in range(params.PRED_MAX_LEN):
        predictions, dec_hidden, attention_weights \
            = context.decoder(dec_input,
                              dec_hidden,
                              enc_out)

        # storing the attention weights to plot later on
        if not attention_plot is None:
            attention_weights = tf.reshape(attention_weights, (-1, ))
            attention_plot[t] = attention_weights.numpy()

        predicted_id = tf.argmax(predictions[0]).numpy()

        result += context.targ_lang.index_word[predicted_id] + ' '

        if context.targ_lang.index_word[predicted_id] == '<end>':
            return result, attention_plot

        # the predicted ID is fed back into the model
        dec_input = tf.expand_dims([predicted_id], 0)

    return result, attention_plot
