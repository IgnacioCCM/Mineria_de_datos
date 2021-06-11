# Practice 1 

we call the data frame to be used
```scala
DateWikipedia <- read.csv(file.choose())
DateWikipedia
```
We will show the first 10 data
```scala
head(DateWikipedia)
```
create columns with corresponding names
```scala
colnames(DateWikipedia) <- c("User","Name","Date","changes")
```
Show head 
```scala
head(DateWikipedia)
```
We will verify the status of the data frame
```scala
tail(DateWikipedia)
str(DateWikipedia)
summary(DateWikipedia)
```
Summary of file 
```scala
summary(DateWikipedia)

str(DateWikipedia)
```
 --- Install library ggplot2 ---  
```scala
library(ggplot2)
```
 Summary of file 
```scala
summary.data.frame(DateWikipedia)
```
Create Graph
```scala
newgraph<- ggplot(data=DateWikipedia, aes(x=Date, y=Name))
```
 Generate point
```scala
newgraph +  geom_point()
```
Color with names
```scala
ggplot(DateWikipedia, aes(x=Date, y=changes, color=Name)) + 
  geom_point()
```
Using Facets

 We plot the data set
```scala
graph2 <- ggplot(data=DateWikipedia)

Faceted graph
graph2 + geom_point(mapping = aes(x= changes, y=Name, color = Name)) 
                    + facet_wrap(~Data, nrow = 2)
```
#-------------- Theme ---------------------------------------------#
```scala
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

```


 













