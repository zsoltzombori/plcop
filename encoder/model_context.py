import tensorflow as tf

from models import Encoder, Decoder

'''
This is a class containing all the information about the training process
(e.g. models, optimizer, metadata, ...)
The class follows the singleton design pattern
'''


class ModelContext():

    __instance = None

    @staticmethod
    def create_context(
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
    ):
        ModelContext(
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

    @ staticmethod
    def get_context():
        if ModelContext.__instance != None:
            return ModelContext.__instance
        else:
            raise Exception("Please initialise the context before using")

    def __init__(
        self,
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
    ):
        if ModelContext.__instance != None:
            raise Exception(
                "The context is a singleton; the constructor should never be called")
        else:
            self.encoder = encoder
            self.decoder = decoder
            self.optimizer = optimizer
            self.train_dataset = train_dataset
            self.train_size = train_size
            self.val_dataset = val_dataset
            self.val_size = val_size
            self.checkpoint = checkpoint
            self.inp_lang = inp_lang
            self.targ_lang = targ_lang
            self.steps_per_epoch = steps_per_epoch
            self.val_steps_per_epoch = val_steps_per_epoch

            ModelContext.__instance = self
