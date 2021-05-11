## Evaluative Practice

A code will be created that will recreate the same table making it look as close as possible to the original Genre and Gross explanatory graph, since the review website lost a part of the code in R Studio.

It provides us with a set of data which is given in this link:
https://github.com/jcromerohdz/DataMining/blob/master/Datasets/Project-Data.csv

- All Genres (Genre) and studies (Studio) will be used.
- The dataframe will be filtered after importing the csv file.

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

# We will use the dplyr library to generate the filters
# install.packages("dplyr")
```R
library(dplyr)
```

# To change the font we need, we install the library
# install.packages("extrafont")

# the font library is loaded
```R
library(extrafont)
```



