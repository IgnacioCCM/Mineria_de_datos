

# we call the data frame to be used
DateWikipedia <- read.csv(file.choose())
DateWikipedia

# We will show the first 10 data
head(DateWikipedia)

# create columns with corresponding names
colnames(DateWikipedia) <- c("User","Name","Date","changes")

# Show head 
head(DateWikipedia)

# We will verify the status of the data frame

tail(DateWikipedia)
str(DateWikipedia)
summary(DateWikipedia)

# Summary of file 
summary(DateWikipedia)

str(DateWikipedia)

# --- #Install library ggplot2 --- # 
library(ggplot2)

# Summary of file 
summary.data.frame(DateWikipedia)
 
# Create Graph
newgraph<- ggplot(data=DateWikipedia, aes(x=Date, y=Name))

# Generate point
newgraph +  geom_point()

# Color with names
ggplot(DateWikipedia, aes(x=Date, y=changes, color=Name)) + 
  geom_point()

#-----------------------------------------------------------------------#
# Using Facets

# We plot the data set
graph2 <- ggplot(data=DateWikipedia)

# Faceted graph
graph2 + geom_point(mapping = aes(x= changes, y=Name, color = Name)) 
                    + facet_wrap(~Data, nrow = 2)

#-------------- Theme ---------------------------------------------#

graph3 <- ggplot(data=DateWikipedia)
graph_Theme <- graph3 + geom_bar(mapping = aes(x= changes , fill = Name))
graph_Theme

graph_Theme +
  xlab("changes") + xlab("Names") +
  ylab("Number of changes") +
  ggtitle("changes Distribution") +
  theme(axis.title.x = element_text(color = "DarkGreen", size=5),
        plot.title = element_text(color = "DarkBlue",
                                  size = 5,
                                  )

