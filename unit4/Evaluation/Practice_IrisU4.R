### K-Means 

#### we will load the dataset to follow up the process and analysis of k means
dataset = read.csv(choose.files())

#### The data to be evaluated will be taken, letting you know the selected columns that will be needed 
dataset = dataset[1:4]

# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 4)
y_kmeans = kmeans$cluster