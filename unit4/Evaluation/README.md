
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