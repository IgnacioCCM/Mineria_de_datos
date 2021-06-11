# EVALUATIVE PRACTICE 

### Loaduing dataset
dataset = read.csv(file.choose())
###Select data
dataset = dataset[3:5]
###we pushed data factor 
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

#install.packages('e1071')
library(e1071)
classifier = naiveBayes(formula = Purchased ~ .,
                        data = training_set,
                        type = 'C-classification',
                        kernel = 'linear')
