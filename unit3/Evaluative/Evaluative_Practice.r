# EVALUATIVE PRACTICE 

### Loaduing dataset
dataset = read.csv(file.choose())
###Select data
dataset = dataset[3:5]
###we pushed data factor 
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
