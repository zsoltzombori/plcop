# Data Parameters
MAX_LENGTH = 200
NUM_EXAMPLES = None
PATH_TO_FILE = './data/clauses.txt'

# Model Parameters
EMBEDDING_DIM = 256
UNITS = 256

# Training Parameters
BUFFER_SIZE_MULT = 1
BATCH_SIZE = 16
EPOCHS = 2

# Checkpointing
CHECKPOINT_FREQ = 2
CHECKPOINT_DIR = './models'
CHECKPOINT_PREFIX = 'ckpt'

# Prediction
PRED_MAX_LEN = MAX_LENGTH
