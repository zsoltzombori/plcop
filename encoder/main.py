import os
# os.environ["CUDA_VISIBLE_DEVICES"]="-1"
import tensorflow as tf

import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from sklearn.model_selection import train_test_split

import numpy as np
import io
import time

import dataset
import params
import predict
import preprocess
import training
import utils
from model_context import ModelContext
from models import Encoder, Decoder


def init_context():

    # Need to know the input / target language size
    # Loading the dataset
    input_tensor, target_tensor, inp_lang, targ_lang = preprocess.load_dataset(
        params.PATH_TO_FILE, params.NUM_EXAMPLES)

    # Creating dataset
    train_dataset, val_dataset, train_size, val_size = preprocess.create_datasets(
        input_tensor,
        target_tensor
    )

    # Calculate steps per epoch
    vocab_inp_size = len(inp_lang.word_index) + 1
    vocab_tar_size = len(targ_lang.word_index) + 1

    steps_per_epoch = train_size // params.BATCH_SIZE
    val_steps_per_epoch = val_size // params.BATCH_SIZE

    encoder = Encoder(
        vocab_inp_size,
        params.EMBEDDING_DIM,
        params.UNITS,
        params.BATCH_SIZE
    )
    decoder = Decoder(
        vocab_tar_size,
        params.EMBEDDING_DIM,
        params.UNITS,
        params.BATCH_SIZE
    )

    optimizer = tf.keras.optimizers.Adam()

    # Checkpointing config
    checkpoint = tf.train.Checkpoint(optimizer=optimizer,
                                     encoder=encoder,
                                     decoder=decoder)

    encoder = ModelContext.create_context(
        encoder,
        decoder,
        optimizer,
        train_dataset,
        train_size,
        val_dataset,
        val_size,
        checkpoint,
        inp_lang,
        targ_lang,
        steps_per_epoch,
        val_steps_per_epoch
    )


def main():
    init_context()
    context = ModelContext.get_context()

    # training.perform_training()

    utils.restore_checkpoint(context.checkpoint)
    clause = "51 [v1_xboole_0(u1_struct_0(SKLM)), m1_subset_1(u1_struct_0(SKLM),k1_zfmisc_1(u1_struct_0(SKLM))), v12_waybel_0(u1_struct_0(SKLM),SKLM), v1_waybel_0(u1_struct_0(SKLM),SKLM)]"

    enc_out, enc_hidden = predict.encode_clause(clause)
    result = predict.decode_clause(enc_out, enc_hidden)
    print(result)


if __name__ == "__main__":
    main()
