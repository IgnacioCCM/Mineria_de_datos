## Practice 1 Logistic Regression

#### We load the data from the dataframe in a variable to execute its values and give it the corresponding view and it will take those that we will need in reference to its columns.
```R
dataset <- read.csv(file.choose())
dataset
dataset <- dataset[, 3:5]
dataset
```
#### Splitting the dataset into the Training set and Test set
#### Divide the data set into the training set and test set. But first you have to install the caTool library.
#### Install.packages('caTools')
```R
library(caTools)
set.seed(123)
split <- sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```
#### Feature scaling , We scale the already trained characteristics and show the same variable but with taking care of the structure of the columns shown from 1 to 2.
```R
training_set[, 1:2] <- scale(training_set[, 1:2])
test_set[, 1:2] <- scale(test_set[, 1:2])
```
#### Adaptation of logistic regression to the training system.
```R
classifier = glm(formula = Purchased ~ .,
family = binomial,
data = training_set)
```
#### We predict the results, if the test is greater than 0.5 or we mark it as the indicated, 1 and if not 0.
```R
prob_pred = predict(classifier, type = 'response', newdata = test_set[-3])
prob_pred
y_pred = ifelse(prob_pred > 0.5, 1, 0)
y_pred
```
#### Making the Confusion Metrix
```R
cm = table(test_set[, 3], y_pred)
cm
```

#### Once the probability is generated, we will release the estimate of the salary and push in the graphs thanks to the glm method.
```R
library(ggplot2)
ggplot(training_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

ggplot(training_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

ggplot(test_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)

ggplot(test_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```

![image](https://user-images.githubusercontent.com/60414250/120239630-86670e00-c213-11eb-95f2-6cb50751b571.png)


#### Visualization the Training set result
```R
install.packages('ElemStatLearn') 
```
#### manual mode. Go to this URL https://cran.r-project.org/src/contrib/Archive/ElemStatLearn/
#### Download with the latest date 2019-08-12 09:20	12M
#### Then follow this page steps https://riptutorial.com/r/example/5556/install-package-from-local-source 

Now we download the Elementat Learn library that was created to give you the
visualization of the most logistics data possible, in giving a format to the creation of
the graphs and the behavior of the data. In the following link I show you that
this liberia has its instructions:
https://web.stanford.edu/~hastie/ElemStatLearn/printings/ESLII_print12.pdf

It only assigns the values of the already trained data set to the axes, X1 Y
X2. Selecting the minimum and maximum of each column. and Expanding.
And at the end of the plot it is printed what is that the structure of x1 and x2 with the concepts and
graph adjustment.
Printing at the end the corresponding to if prob_set is probability is greater than 0.5
or less will print it is Age and Estimated salary. and another part if it will not answer you
with the set of the columns in gree4 if it is has probability of 1 and if not red3.

```R
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
    main = 'Logistic Regression (Training set)',
    xlab = 'Age', ylab = 'Estimated Salary',
    xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![image](https://user-images.githubusercontent.com/60414250/120239699-adbddb00-c213-11eb-8cf5-401f0305776e.png)

#### Visualising the Test set results
```R
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
    main = 'Logistic Regression (Test set)',
    xlab = 'Age', ylab = 'Estimated Salary',
    xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
![image](https://user-images.githubusercontent.com/60414250/120239721-c0d0ab00-c213-11eb-8b99-bcd06df4d62f.png)


#### Conclution
The stability of the code in showing the logistic regression of a dataframe was shown set of their values that were somewhat stable, with the data taken of 70% that your salary is estimated at your age in the main test called Training. And above the rest with the name test_set. indicating that it varies depending of your age.

