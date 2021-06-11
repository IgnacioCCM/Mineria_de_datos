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
