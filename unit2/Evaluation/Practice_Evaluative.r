
# We load the data from the dataframe into a variable to execute its values and give it the corresponding view
# Project-Data.csv
dataset <- read.csv(file.choose())

# We will give a structure of the data with summary for a better analysis and observation.
summary(dataset)

# We will load the missing libraries for data manipulation.
library(ggplot2)

# We will use the dplyr library to generate the filters
# install.packages("dplyr")
library(dplyr)

# To change the font we need, we install the library
# install.packages("extrafont")

# the font library is loaded
library(extrafont)

# We import the font
font_import()

# Visualize fonts and be able to recognize them.
fonts()