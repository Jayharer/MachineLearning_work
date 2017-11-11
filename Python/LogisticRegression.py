# logistic regression
from sklearn import datasets                   # mnist datasets
from sklearn import linear_model               # module for linear and logistic regression

iris = datasets.load_iris()
iris_x , iris_y = iris.data , iris.target

iris_x_train = iris_x[:-10]
iris_x_test  = iris_x[-10:]
iris_y_train = iris_y[:-10]
iris_y_test  = iris_y[-10:]

lm_model = linear_model.LogisticRegression()     # create logistic regression object

lm_model.fit(iris_x_train,iris_y_train)          # train model

print(lm_model.predict(iris_x_test))              # predict output
print(iris_y_test)
print(lm_model.score(iris_x_test,iris_y_test))    # show accurecy of model
