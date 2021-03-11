import tensorflow as tf
import time
import os

import params
from model_context import ModelContext


def perform_training():

    context = ModelContext.get_context()
    checkpoint_prefix = os.path.join(params.CHECKPOINT_DIR, "ckpt")

    print("Building train step")
    train_step = construct_train_step(
        context.encoder,
        context.decoder,
        context.optimizer,
        context.targ_lang
    )

    for epoch in range(params.EPOCHS):
        start = time.time()

        enc_hidden = context.encoder.initialize_hidden_state()
        total_loss = 0

        for (batch, (inp, targ)) in enumerate(
            context.train_dataset.take(context.steps_per_epoch)
        ):
            print("starting training for batch")
            batch_loss = train_step(inp, targ, enc_hidden)
            total_loss += batch_loss

            if batch % 2 == 0:
                print('Epoch {} Batch {} Loss {:.4f}'.format(epoch + 1,
                                                             batch,
                                                             batch_loss.numpy()))
        # saving (checkpoint) the model every 2 epochs
        if (epoch + 1) % params.CHECKPOINT_FREQ == 0:
            context.checkpoint.save(file_prefix=checkpoint_prefix)
            val_loss = perform_validation()
            normalised_val_loss = val_loss / context.val_steps_per_epoch
            print('Epoch {} Val Loss {:.4f}'.format(
                epoch + 1, normalised_val_loss))

        print('Epoch {} Loss {:.4f}'.format(epoch + 1,
                                            total_loss / context.steps_per_epoch))
        print('Time taken for 1 epoch {} sec\n'.format(time.time() - start))


def perform_validation():

    context = ModelContext.get_context()
    val_step = construct_validation_step(
        context.encoder, context.decoder, context.targ_lang)

    enc_hidden = context.encoder.initialize_hidden_state()

    total_loss = 0
    for (_batch, (inp, targ)) in enumerate(
        context.val_dataset.take(context.steps_per_epoch)
    ):
        batch_loss = val_step(inp, targ, enc_hidden)
        total_loss += batch_loss

    return total_loss


def loss_function(real, pred):
    loss_object = tf.keras.losses.SparseCategoricalCrossentropy(
        from_logits=True, reduction='none')

    mask = tf.math.logical_not(tf.math.equal(real, 0))
    loss_ = loss_object(real, pred)

    mask = tf.cast(mask, dtype=loss_.dtype)
    loss_ *= mask

    return tf.reduce_mean(loss_)


def construct_validation_step(encoder, decoder, targ_lang):

    @tf.function
    def val_step(inp, targ, enc_hidden):
        loss = 0

        enc_output, enc_hidden = encoder(inp, enc_hidden)

        dec_hidden = enc_hidden

        dec_input = tf.expand_dims(
            [targ_lang.word_index['<start>']] * params.BATCH_SIZE, 1)

        # Teacher forcing - feeding the target as the next input
        for t in range(1, targ.shape[1]):
            # passing enc_output to the decoder
            predictions, dec_hidden, _ = decoder(
                dec_input, dec_hidden, enc_output)

            loss += loss_function(targ[:, t], predictions)

            # using teacher forcing
            dec_input = tf.expand_dims(targ[:, t], 1)

        batch_loss = (loss / int(targ.shape[1]))
        return batch_loss

    return val_step


def construct_train_step(encoder, decoder, optimizer, targ_lang):

    @tf.function
    def train_step(inp, targ, enc_hidden):
        loss = 0

        with tf.GradientTape() as tape:
            enc_output, enc_hidden = encoder(inp, enc_hidden)
            print("Encoder calculated")

            dec_hidden = enc_hidden

            dec_input = tf.expand_dims(
                [targ_lang.word_index['<start>']] * params.BATCH_SIZE, 1)

            print(f"Going through decoder, targ shape: {targ.shape}")
            # Teacher forcing - feeding the target as the next input
            for t in range(1, targ.shape[1]):
                print(t)
                # passing enc_output to the decoder
                predictions, dec_hidden, _ = decoder(
                    dec_input, dec_hidden, enc_output)

                loss += loss_function(targ[:, t], predictions)

                # using teacher forcing
                dec_input = tf.expand_dims(targ[:, t], 1)

        batch_loss = (loss / int(targ.shape[1]))

        variables = encoder.trainable_variables + decoder.trainable_variables

        gradients = tape.gradient(loss, variables)

        optimizer.apply_gradients(zip(gradients, variables))

        return batch_loss

    return train_step
