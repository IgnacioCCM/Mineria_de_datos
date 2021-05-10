
# We load the data from the dataframe into a variable to execute its values and give it the corresponding view
# Project-Data.csv
dataset <- read.csv(file.choose())

# We will give a structure of the data with summary for a better analysis and observation.
summary(dataset)

# We will load the missing libraries for data manipulation.
library(ggplot2)

