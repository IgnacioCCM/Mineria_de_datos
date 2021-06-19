
## Practice 4 K-Means in Dataset Iris. 

#### we will load the dataset to follow up the process and analysis of k means
```R
dataset = read.csv(choose.files())
```

#### The data to be evaluated will be taken, letting you know the selected columns that will be needed 
```R
dataset = dataset[1:4]
```
#### Using the elbow method to find the optimal number of clusters
```R
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')
```

#### Fitting K-Means to the dataset
```R
set.seed(29)
kmeans = kmeans(x = dataset, centers = 4)
y_kmeans = kmeans$cluster
```

#### We add the classification graph
```R
library(cluster)
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clasification of iris'),
         xlab = 'features',
         ylab = 'Clusters  ')
         ```