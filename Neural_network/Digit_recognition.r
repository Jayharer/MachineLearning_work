library("nnet")
library("caret")
digits.train =read.csv("train.csv")

#convert to factor
digits.train$label = factor(digits.train$label, levels=0:9)
i <- 1:5000

digits.x = digits.train[i,-1]
digits.y = digits.train[i,1]


digits.m1 <- train( x= digits.x , y=digits.y,
             method = "nnet" ,
			 tuneGrid = expand.grid(
			 .size = c(5),
			 .decay = 0.1),
			 trControl = trainControl(method="none"),
			 MaxNWts = 10000,
			 maxit = 100)
			 
# x is input feature
# y is output variable
# .size = no of units in hidden layer
# .decay = learning rate 
# maxNwts = maximum no of weights assign
# maxit = maximum no of iteration 