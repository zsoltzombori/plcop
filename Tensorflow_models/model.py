import tensorflow as tf
from tensorflow.keras import layers

#Előre elkészített modellek
models={
    'Simple Dense Small':{
        'input_layer':{
            'name':'Dense_NN',
            'max_tokens':21000,
            'value_dimension': 128,
            'layer':{ 'dropout':0.3, 'b_norm':True}
        },
        'end_layer':{
            'name':'Dense_NN',
            'layers':[
                {'nodes':128, 'dropout':0.3, 'b_norm':True},
            ]
        }
    },
    'Simple Dense Medium':{
        'input_layer':{
            'name':'Dense_NN',
            'max_tokens':21000,
            'value_dimension': 128,
            'layer':{ 'dropout':0.3, 'b_norm':True}
        },
        'end_layer':{
            'name':'Dense_NN',
            'layers':[
                {'nodes':256, 'dropout':0.3, 'b_norm':True},
                {'nodes':128, 'dropout':0.3, 'b_norm':True},
                {'nodes':128, 'dropout':0.3, 'b_norm':True},
            ]
        }
    },
    'Simple Dense Large':{
        'input_layer':{
            'name':'Dense_NN',
            'max_tokens':21000,
            'value_dimension': 128,
            'layer':{ 'dropout':0.3, 'b_norm':True}
        },
        'end_layer':{
            'name':'Dense_NN',
            'layers':[
                {'nodes':512, 'dropout':0.3, 'b_norm':True},
                {'nodes':512, 'dropout':0.3, 'b_norm':True},
                {'nodes':256, 'dropout':0.3, 'b_norm':True},
                {'nodes':256, 'dropout':0.3, 'b_norm':True},
            ]
        }
    }
}

class model_class:
    
    def __init__(self,model_type):
        self.params=model_type

    
    def build_input(self, densify):
        input_params=self.params['input_layer']
        layer=input_params['layer']

        if densify:
            self.dense_input = tf.keras.Input(shape=(input_params["value_dimension"],), dtype='float32')
            self.y = self.dense_input
        else:
            self.feature_index=tf.keras.Input(shape=(None,),dtype='int64')
            self.feature_value=tf.keras.Input(shape=(None,), dtype='int64')
            feature_value = tf.cast(self.feature_value, tf.float32)
            feature_value = tf.expand_dims(feature_value, -1)
                                    
            #Az indexet value_dimension nagyságú vektorokká alakítja
            feature_vector=tf.keras.layers.Embedding(input_params['max_tokens'],
                                                     input_params['value_dimension'],
                                                     mask_zero=True)(self.feature_index)
            self.y=tf.keras.layers.multiply([feature_vector,feature_value])

            #Ez pontosan olyan, mint egy szimpla Dense NN (b nélkül)
            if(input_params['name']=='Dense_NN'):
                #A feature_vector-ok besúlyozva a feature_value-kal. Az így kapott tensor: shape=(None,value_dimension)
                self.y=tf.reduce_sum(self.y,axis=-2)
            #reduce_sum helyett GlobalAverage 
            elif(input_params['name']=='Dense_NN_avg'):
                # tf2.0 doesn't seem to support his when the collapsed dim is None
                self.y=layers.GlobalAveragePooling1D()(self.y)
                                              
        if(layer['b_norm']):
            self.y=layers.BatchNormalization()(self.y)
        self.y=tf.keras.activations.relu(self.y)
        self.y=layers.Dropout(layer['dropout'])(self.y)


    def build_end(self):
        end_params=self.params['end_layer']
        if(end_params['name']=='Dense_NN'):
            for layer in end_params['layers']:
                self.y=layers.Dense(layer['nodes'])(self.y)
                if(layer['b_norm']):
                    self.y=layers.BatchNormalization()(self.y)
                self.y=tf.keras.activations.relu(self.y)
                self.y=layers.Dropout(layer['dropout'])(self.y)

        self.y=layers.Dense(1, activation='tanh')(self.y)

    def build(self, densify):
        self.build_input(densify)
        self.build_end()
        if densify:
            self.agent=tf.keras.Model(inputs=self.dense_input,outputs=self.y)
        else:
            self.agent=tf.keras.Model(inputs=[self.feature_index,self.feature_value],outputs=self.y)
        self.agent.compile(loss='mean_squared_error',
                           optimizer=tf.keras.optimizers.Adam(),
                           metrics=[tf.keras.metrics.RootMeanSquaredError(name='rmse')])
        return self.agent

        
    
