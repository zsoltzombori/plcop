def build_model_01():
    #params
    max_tokens=50000
    value_dimension=8
    key_dimension=32
    
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    
    feature_vectors = tf.keras.layers.Embedding(max_tokens, value_dimension)(features)
    
    values=layers.Conv1D(value_dimension,1,activation=None, use_bias=True)(input_values)
    V=layers.multiply([feature_vectors,values])
    
    y=layers.GlobalAveragePooling1D()(V)
    #y=layers.Dense(512)(y)
    #y=layers.BatchNormalization()(y)
    #y=tf.keras.activations.relu(y)
    #y=layers.Dropout(0.2)(y)
    y=layers.Dense(256)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(128)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent
def build_model_0():
    #params
    max_tokens=50000
    dimension=128
    # Variable-length int sequences.
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    # Embedding lookup.
    token_embedding = tf.keras.layers.Embedding(max_tokens, dimension)
    # Query embeddings of shape [batch_size, Tq, dimension].
    feature_tokens = token_embedding(features)

    y=layers.GlobalAveragePooling1D()(feature_tokens)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent
def build_model_1():
    #params
    max_tokens=50000
    dimension=128
    # Variable-length int sequences.
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    # Embedding lookup.
    token_embedding = tf.keras.layers.Embedding(max_tokens, dimension)
    # Query embeddings of shape [batch_size, Tq, dimension].
    feature_tokens = token_embedding(features)

    values=layers.Conv1D(dimension,1,activation=None, use_bias=False)(input_values)
    tokens=layers.multiply([feature_tokens,values])+feature_tokens

    y=layers.GlobalAveragePooling1D()(feature_tokens)
    y=layers.Dense(256,activation="relu")(y)
    y=layers.Dense(128,activation='relu')(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent

def build_model_2():
    #params
    max_tokens=50000
    value_dimension=32
    key_dimension=32
    
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    
    feature_vectors = tf.keras.layers.Embedding(max_tokens, value_dimension)(features)
    
    values=layers.Conv1D(value_dimension,1,activation=None, use_bias=False)(input_values)
    V=layers.multiply([feature_vectors,values])+feature_vectors
    
    Q=tf.keras.layers.Embedding(max_tokens, key_dimension)(features)

    A=layers.Attention(use_scale=True)([V,Q])
    
    y=layers.GlobalAveragePooling1D()(A)
    y=layers.Dense(256,activation="relu")(y)
    y=layers.Dense(128,activation='relu')(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent

def build_model_3():
    #params
    max_tokens=50000
    value_dimension=32
    key_dimension=32
    
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    
    feature_vectors = tf.keras.layers.Embedding(max_tokens, value_dimension)(features)
    
    values=layers.Conv1D(value_dimension,1,activation=None, use_bias=False)(input_values)
    V=layers.multiply([feature_vectors,values])+feature_vectors
    
    Q=tf.keras.layers.Embedding(max_tokens, key_dimension)(features)

    A=layers.Attention(use_scale=True)([V,Q])
    
    y=layers.GlobalAveragePooling1D()(A)
    #y=layers.Dense(512)(y)
    #y=layers.BatchNormalization()(y)
    #y=tf.keras.activations.relu(y)
    #y=layers.Dropout(0.2)(y)
    y=layers.Dense(256)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(128)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent
    
def build_model_4():
    #params
    max_tokens=50000
    value_dimension=32
    key_dimension=32
    
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    
    feature_vectors = tf.keras.layers.Embedding(max_tokens, value_dimension)(features)
    
    values=layers.Conv1D(value_dimension,1,activation=None, use_bias=True)(input_values)
    V=layers.multiply([feature_vectors,values])
    
    Q=tf.keras.layers.Embedding(max_tokens, key_dimension)(features)

    A=layers.Attention(use_scale=True)([V,Q])
    
    y=layers.GlobalAveragePooling1D()(V)
    y=layers.Dense(512)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(256)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(128)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam(),
                  metrics=[tf.keras.metrics.RootMeanSquaredError(name='rmse')])
    return agent
agent=build_model_4()


#----------------------------------------------------------------------------------------------------------
def build_model_01():
    #params
    max_tokens=50000
    value_dimension=8
    key_dimension=32
    
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    
    feature_vectors = tf.keras.layers.Embedding(max_tokens, value_dimension)(features)
    
    values=layers.Conv1D(value_dimension,1,activation=None, use_bias=True)(input_values)
    V=layers.multiply([feature_vectors,values])
    
    y=layers.GlobalAveragePooling1D()(V)
    #y=layers.Dense(512)(y)
    #y=layers.BatchNormalization()(y)
    #y=tf.keras.activations.relu(y)
    #y=layers.Dropout(0.2)(y)
    y=layers.Dense(256)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(128)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent
def build_model_0():
    #params
    max_tokens=50000
    dimension=128
    # Variable-length int sequences.
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    # Embedding lookup.
    token_embedding = tf.keras.layers.Embedding(max_tokens, dimension)
    # Query embeddings of shape [batch_size, Tq, dimension].
    feature_tokens = token_embedding(features)

    y=layers.GlobalAveragePooling1D()(feature_tokens)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent
def build_model_1():
    #params
    max_tokens=50000
    dimension=128
    # Variable-length int sequences.
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    # Embedding lookup.
    token_embedding = tf.keras.layers.Embedding(max_tokens, dimension)
    # Query embeddings of shape [batch_size, Tq, dimension].
    feature_tokens = token_embedding(features)

    values=layers.Conv1D(dimension,1,activation=None, use_bias=False)(input_values)
    tokens=layers.multiply([feature_tokens,values])+feature_tokens

    y=layers.GlobalAveragePooling1D()(feature_tokens)
    y=layers.Dense(256,activation="relu")(y)
    y=layers.Dense(128,activation='relu')(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent

def build_model_2():
    #params
    max_tokens=50000
    value_dimension=32
    key_dimension=32
    
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    
    feature_vectors = tf.keras.layers.Embedding(max_tokens, value_dimension)(features)
    
    values=layers.Conv1D(value_dimension,1,activation=None, use_bias=False)(input_values)
    V=layers.multiply([feature_vectors,values])+feature_vectors
    
    Q=tf.keras.layers.Embedding(max_tokens, key_dimension)(features)

    A=layers.Attention(use_scale=True)([V,Q])
    
    y=layers.GlobalAveragePooling1D()(A)
    y=layers.Dense(256,activation="relu")(y)
    y=layers.Dense(128,activation='relu')(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam()   )
    return agent

def build_model_3():
    #params
    max_tokens=50000
    value_dimension=128
    key_dimension=128
    
    features = tf.keras.Input(shape=(None,), dtype='int32')
    input_values = tf.keras.Input(shape=(None,1))

    
    feature_vectors = tf.keras.layers.Embedding(max_tokens, value_dimension)(features)
    
    values=layers.Conv1D(value_dimension,1,activation=None, use_bias=False)(input_values)
    V=layers.multiply([feature_vectors,values])+feature_vectors
    
    Q=tf.keras.layers.Embedding(max_tokens, key_dimension)(features)

    A=layers.Attention(use_scale=True)([Q,V])
    
    y=layers.GlobalAveragePooling1D()(A)
    #y=layers.Dense(512)(y)
    #y=layers.BatchNormalization()(y)
    #y=tf.keras.activations.relu(y)
    #y=layers.Dropout(0.2)(y)
    y=layers.Dense(256)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(128)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[features,input_values],outputs=y)
    #agent.compile(loss='mean_squared_error',
    #                  optimizer=tf.keras.optimizers.Adam(learning_rate=0.01),
    #              metrics=[tf.keras.metrics.RootMeanSquaredError(name='rmse')])
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.compat.v1.train.AdamOptimizer(learning_rate=0.01),
                  metrics=[tf.keras.metrics.RootMeanSquaredError(name='rmse')])
    return agent
    
def build_model_4():
    #params
    max_tokens=50000
    value_dimension=256
    key_dimension=32
    
    
    feature_index=tf.keras.Input(shape=(None,),dtype='int32')
    feature_value=tf.keras.Input(shape=(None,1))
    #Az indexet value_dimension nagyságú vektorokká alakítja
    feature_vector=tf.keras.layers.Embedding(max_tokens,value_dimension)(feature_index)
    #Előfordulhat, hogy a feature value-k nagyon nagyok, ezért kénytelenek vagyunk valahogy korlátozni őket.
    #t_feature_value=tf.keras.activations.tanh(feature_value)

    #A feature_vector-ok besúlyozva a feature_value-kal. Az így kapott tensor: shape=(None,value_dimension)
    V=tf.keras.layers.multiply([feature_vector,feature_value])
    #V=tf.reduce_sum(V,axis=-2)
    
    #Q=tf.keras.layers.Embedding(max_tokens, key_dimension)(feature_index)

    #V=layers.Attention(use_scale=True)([V,Q])
    
    y=layers.GlobalAveragePooling1D()(V)
    #y=tf.reduce_sum(V,axis=-2)
    #y=layers.Dense(512)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(256)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(128)(y)
    y=layers.BatchNormalization()(y)
    y=tf.keras.activations.relu(y)
    y=layers.Dropout(0.3)(y)
    y=layers.Dense(1, activation='tanh')(y)

    agent=tf.keras.Model(inputs=[feature_index,feature_value],outputs=y)
    agent.compile(loss='mean_squared_error',
                      optimizer=tf.keras.optimizers.Adam(learning_rate=0.01),
                  metrics=[tf.keras.metrics.RootMeanSquaredError(name='rmse')])
    return agent
agent=build_model_3()