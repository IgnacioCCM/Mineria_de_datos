
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

# Make a data frame to filter the data to add only the requested genres
GenreF<-filter(dataset, Genre %in% c("action","adventure", 
                                    "animation","comedy", "drama"))

# With the generated graph, the filtered data will be revealed thanks to the instructions with the characteristics specified in R.
StudioF<- filter (GenreF, Studio %in% c ("Buena Vista Studios",
                                        "Fox", "Paramount Pictures",
                                        "Sony", "Universal","WB"))

# We will load the graph of the data it will contain for the X and Y axes that will be generic for the graph.
graph <- ggplot(StudioF, aes(x=Genre, y=Gross...US))

# We add the Jitter geometry for the studies
graph2 <- graph + geom_jitter(aes(color=Studio, size= Budget...mill.)) +
  scale_size_continuous(range = c(2, 5),                         
                        trans = scales::exp_trans(base = 1.2))

# Visualization of our plot
graph2

# We add boxplot to group by gender and Gross placing a medium transparency
graphfull <- graph2 + geom_boxplot(alpha=0.2,  outlier.colour = NA)

# Visualization of our plot
graphfull


