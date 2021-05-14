## Evaluative Practice

A code will be created that will recreate the same table making it look as close as possible to the original Genre and Gross explanatory graph, since the review website lost a part of the code in R Studio.

It provides us with a set of data which is given in this link:
https://github.com/jcromerohdz/DataMining/blob/master/Datasets/Project-Data.csv

- All Genres (Genre) and studies (Studio) will be used.
- The dataframe will be filtered after importing the csv file.

If you want to experiment and see the results on the screen, you can visit this link for the corresponding explanation:
https://www.youtube.com/watch?v=DyESMZ3bJTE&t=21s

#### We load the data from the dataframe into a variable to execute its values and give it the corresponding view
#### Project-Data.csv
```R
dataset <- read.csv(file.choose())
```

#### We will give a structure of the data with summary for a better analysis and observation.
```R
summary(dataset)
```

#### We will load the missing libraries for data manipulation.
```R
library(ggplot2)
```

#### We will use the dplyr library to generate the filters
#### install.packages("dplyr")
```R
library(dplyr)
```

#### To change the font we need, we install the library
#### install.packages("extrafont")

#### the font library is loaded
```R
library(extrafont)
```
#### Visualize fonts and be able to recognize them.
```R
fonts()
```

#### Make a data frame to filter the data to add only the requested genres
```R
GenreF<-filter(dataset, Genre %in% c("action","adventure","animation","comedy", "drama"))
```

#### Visualization of our plot
```R
graph2
```
![185545517_245426947332815_1843318512017519154_n](https://user-images.githubusercontent.com/60414250/118205676-b8a3fd80-b415-11eb-8631-f97b54cf4cab.png)

#### We add boxplot to group by gender and Gross placing a medium transparency
```R
graphfull <- graph2 + geom_boxplot(alpha=0.2,  outlier.colour = NA)
```

#### Visualization of our plot
```R
graphfull
```

#### We place the title of our plot.
```R
titlegraph <- graphfull + ggtitle("Domestic Gross % by Genre")
```

#### Visualization of our plot.
```R
titlegraph
```

![185897226_273610521142997_8136201509227686471_n](https://user-images.githubusercontent.com/60414250/118205657-aa55e180-b415-11eb-9f4b-6f49806e6fe7.png)

#### We put the name of the X and Y axes.
```R
titlegraph_name  <- titlegraph + xlab("Genre") + ylab("Gross % US") 
```

#### Visualization of our plot.
```R
titlegraph_name 
```

#### We add the theme for the labels.
```R
graph_theme <-titlegraph_name  + theme(axis.title.x = element_text(color = "Purple", size=14),
                                      axis.title.y = element_text(color = "Purple", size=14),
                                      plot.title= element_text(size = 20,hjust=0.5)
                                      ,text = element_text(family ="Comic Sans MS")
) + labs(size="Budget $ M")
```

#### Visualization of our theme plot.
```R
graph_theme
```

![185359361_1577504309119122_6672474166011888382_n](https://user-images.githubusercontent.com/60414250/118205624-99a56b80-b415-11eb-989c-052d1def13fa.png)

#### Conclution

Although in the instructions that they left us nothing came from the facilities or the data states, we had the idea of incorporating other libraries which made the analysis and data structure possible in a more visual way. And as can be seen, the most generalized Gross guidelines are for Action films by Fox, Wb and Universal. And the lowest of all the drama ones, indicating that the population is not so popular in its region, but its data is stable with a percentage of approximately 45%. Those of adventure variation, since they are outside the percentage range established in the candlestick chart.
