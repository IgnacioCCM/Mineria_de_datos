## Practice 3 Desicion tree

#### We load the data from the dataframe in a variable to execute its values and give it the corresponding view and it will take those that we will need in reference to its columns.

# Decision Tree Classification

# Importing the dataset
```R
dataset = read.csv(file.choose())
dataset = dataset[3:5]
```

# Encoding the target feature as factor
```R
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
```R

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
```R
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```

# Feature Scaling
```R
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

# Fitting Decision Tree Classification to the Training set
# install.packages('rpart')
```R
library(rpart)
classifier = rpart(formula = Purchased ~ .,
                   data = training_set)
```

# Predicting the Test set results
```R
y_pred = predict(classifier, newdata = test_set[-3], type = 'class')
y_pred
# Making the Confusion Matrix
cm = table(test_set[, 3], y_pred)
cm
```
# Visualising the Training set results
```R
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3],
     main = 'Decision Tree Classification (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

# Visualising the Test set results
```R
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3], main = 'Decision Tree Classification (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

# Plotting the tree
```R
plot(classifier)
text(classifier, cex=0.6)
```
![image](https://user-images.githubusercontent.com/60414250/120239721-c0d0ab00-c213-11eb-8b99-bcd06df4d62f.png)


#### Conclution
Visualize data if it is necessary to group and see the flow of decisions made by the tree so that it can perform automatic groupings and in this case a few parameters were needed to the structure of the decision tree model to arrive at the estimated price that can be analyzed for draw our conclusions.

