# EVALUATIVE PRACTICE 

#### Calculates the conditional probabilities of each word separately, as if they were independent of each other.

#### Loading dataset
```R
dataset = read.csv(file.choose())
```

#### Select data
```R
dataset = dataset[3:5]
```

#### We pushed data factor 
```R
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```

#### Feature Scaling
```R
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

#### install.packages('e1071')
#### The e1071 library contains implementations for various statistical learning methods, in particular the svm () function, a support vector classifier when using the kernel = "linear" argument. A cost argument allows us to specify the cost of violation to the margin, when the cost argument is small, then the margins will be wide.
```R
library(e1071)
classifier = naiveBayes(formula = Purchased ~ .,
                        data = training_set,
                        type = 'C-classification',
                        kernel = 'linear')
```

#### We predict the result of the tests on a variable to classify it.
```R
y_pred = predict(classifier, newdata = test_set[-3])
y_pred
```

#### Making the Confusion Matrix
```R
cm = table(test_set[, 3], y_pred)
cm
```

#### Visualising training
#### The ranges of the sequences within our filtered data set are marked, which are delimited with the use of the max and min functions and apart from the step of these sequences is marked with a factor of .01 they are finally saved in the variables x1 and x2, which allows us to define the background of our graph.
```R
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
```

#### The ranges of the sequences within our filtered data set are marked, which are delimited with the use of the max and min functions and apart from the step of these sequences is marked with a factor of .01 they are finally saved in the variables x1 and x2, which allows us to define the background of our graph.
```R
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
```

#### Con la función de gráfico, generamos un gráfico de los datos de nuestro conjunto de marcos de datos menos el vector -3. Agregamos una leyenda y sus etiquetas y nombramos sus límites que ya se habían hecho previamente con los nombres de x1 y x2.
```R
plot(set[, -3],
     main = 'Naive Bayes (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

#### Visualising the Test set 
#### In the following code, the exact same thing is done before, but with the difference that the test set is now used instead of the training set.
```R
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'Naive Bayes (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
#### Conclution
As a conclusion I can say that as R code structure in Naives
It is similar to those such as svm or regression, but here it was observed
the status and behavior of the data, separating each part by age and salary.