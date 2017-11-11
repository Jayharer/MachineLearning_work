# load dependency
import tflearn as tf
from tflearn import mnist

# load data
mnist_data = mnist.read_data_set( one_hot = True)
data_train = mnist_data.train
data_validation = mnist_data.validation
data_test  = mnist_data.test

x , y = data_train._images, data_train._labels

# make model
# resource requirement for program
tflearn.init_graph( run_cores= 4)
net = tflearn.input(shape =[None,784])
net = tflearn.fully_connected(net,100,activation = "relu")
# 100 is no of units in hidden layer
# activation function rectifier linear unit whoes output
# is 0 if sum(wixi)<= 0 else output = sum(wixi)

net = tflearn.fully_connected(net,10,activation = "softmax")
""" require 10 no units in output layer because each class
 represent by single vector e.g 0 represented by
 [1,0,0,0,0,0,0,0,0,0] 
 1 represented by [0,1,0,0,0,0,0,0,0,0] and similar others """

""" define loss function, gradient descent to optimize
 learning algorithms """
 net = tflearn.regression(net, loss ='categorial_crossentropy', optimiser= "sgd")
 
 # define model
 model = tflearn.DNN(net)
 
 # train model
 model.fit(x,y,n_epoch=1, batch_size =10,
 show_metric = True
 )
 
# n_epoch means no of times model performance is show
""" show_metric = True means showing accuracy of model
while training model """



