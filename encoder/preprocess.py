import tensorflow as tf
import unicodedata
import re
import io
from sklearn.model_selection import train_test_split

import params

'''
Utilities for creating and pre-processing a dataset
'''


def create_datasets(
    input_tensor,
    target_tensor,
    buffer_size=None
):

    # Creating training and validation sets using an 80-20 split
    input_tensor_train, input_tensor_val, target_tensor_train, target_tensor_val \
        = train_test_split(input_tensor, target_tensor, test_size=0.2)

    train_size = len(input_tensor_train)
    eval_size = len(input_tensor_val)

    if buffer_size is None:
        buffer_size = len(input_tensor_train) * params.BUFFER_SIZE_MULT

    train_dataset = tf.data.Dataset.from_tensor_slices(
        (input_tensor_train, target_tensor_train)).shuffle(buffer_size)
    eval_dataset = tf.data.Dataset.from_tensor_slices(
        (input_tensor_val, target_tensor_val)).shuffle(buffer_size)
    train_dataset = train_dataset.batch(params.BATCH_SIZE, drop_remainder=True)
    eval_dataset = eval_dataset.batch(params.BATCH_SIZE, drop_remainder=True)

    return (train_dataset, eval_dataset, train_size, eval_size)


def load_dataset(path, num_examples=None):
    # creating cleaned input, output pairs
    targ_lang, inp_lang = create_raw_dataset(path, num_examples)

    input_tensor, inp_lang_tokenizer = tokenize(inp_lang)
    target_tensor, targ_lang_tokenizer = tokenize(targ_lang)

    return input_tensor, target_tensor, inp_lang_tokenizer, targ_lang_tokenizer


def unicode_to_ascii(s):
    # Converts the unicode file to ascii
    return ''.join(c for c in unicodedata.normalize('NFD', s)
                   if unicodedata.category(c) != 'Mn')


def preprocess_sentence(w):
    w = unicode_to_ascii(w.lower().strip())

    # Remove the number at the beginning of the line
    w = " ".join(w.split(' ')[1:])

    # creating a space between a word and the punctuation following it
    # eg: "he is a boy." => "he is a boy ."
    # Reference:- https://stackoverflow.com/questions/3645931/python-padding-punctuation-with-white-spaces-keeping-punctuation
    w = re.sub(r'([.,!?()])', r' \1 ', w)
    w = re.sub(r'\s{2,}', ' ', w)

    # replacing everything with space except (a-z, A-Z, ".", "?", "!", ",")
    w = re.sub(r"[^a-zA-Z0-9_(),]+", " ", w)

    w = w.strip()

    # adding a start and an end token to the sentence
    # so that the model know when to start and stop predicting.
    w = '<start> ' + w + ' <end>'
    return w


def num_tokens(w):
    return len(w.split(' '))


def create_raw_dataset(path, num_examples):
    # 1. Remove the accents
    # 2. Clean the sentences
    # 3. Return word pairs in the format: [ENGLISH, SPANISH]
    #    For autoencoding (same lang), it will be [WORDS, WORDS]
    lines = io.open(path).read().strip().split('\n')[:num_examples]

    # Since we are using autoencoding, we need to duplicate the word
    word_pairs = [[preprocess_sentence(w) for _ in range(2)] for w in lines]

    print(f"Original number of word_pairs: {len(word_pairs)}")
    word_pairs = [a for a in word_pairs if num_tokens(
        a[0]) <= params.MAX_LENGTH]
    print(f"Filtered number of word_pairs: {len(word_pairs)}")

    return zip(*word_pairs)


def tokenize(lang):
    lang_tokenizer = tf.keras.preprocessing.text.Tokenizer(
        filters='')
    lang_tokenizer.fit_on_texts(lang)

    tensor = lang_tokenizer.texts_to_sequences(lang)

    tensor = tf.keras.preprocessing.sequence.pad_sequences(tensor,
                                                           padding='post')

    return tensor, lang_tokenizer


def _test_preprocessing():
    # Quickly test preprocessing
    en_sentence = u"May I borrow this book?"
    sp_sentence = u"¿Puedo tomar prestado este libro?"
    print(preprocess_sentence(en_sentence))
    print(preprocess_sentence(sp_sentence).encode('utf-8'))


def _test_dataset_compilation(path_to_file):
    # Testing dataset compilation
    en, sp = create_raw_dataset(path_to_file, None)
    print(en[-1])
    print(sp[-1])
