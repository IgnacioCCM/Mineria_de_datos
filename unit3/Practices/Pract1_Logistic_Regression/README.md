# Practice 1 Logistic Regression

# Importing the dataset
```R
dataset <- read.csv(file.choose())
dataset
dataset <- dataset[, 3:5]
dataset
```
# Splitting the dataset into the Training set and Test set
# Install.packages('caTools')
```R
library(caTools)
set.seed(123)
split <- sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```
# Feature scaling
```R
training_set[, 1:2] <- scale(training_set[, 1:2])
test_set[, 1:2] <- scale(test_set[, 1:2])
```
# Fitting Logistic Regression to Training set
```R
classifier = glm(formula = Purchased ~ .,
family = binomial,
data = training_set)
```
# Predicting the Test set results
```R
prob_pred = predict(classifier, type = 'response', newdata = test_set[-3])
prob_pred
y_pred = ifelse(prob_pred > 0.5, 1, 0)
y_pred
```
# Making the Confusion Metrix
```R
cm = table(test_set[, 3], y_pred)
cm
```