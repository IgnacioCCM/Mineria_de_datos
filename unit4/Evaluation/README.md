
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

Results

![image](https://user-images.githubusercontent.com/60414250/122657868-051ce000-d11c-11eb-9567-c6727101edd4.png)

![image](https://user-images.githubusercontent.com/60414250/122657878-1c5bcd80-d11c-11eb-9f26-46acef28de2e.png)


conclusion

Se puede concluir que gracias a este método de estructura K-means se observó un análisis detallado por categoría en la intervención de la data set de Iris, por lo que cada conjunto es muy similar entre ellos; pero excepto el de color morado ya que este demuestra una calidez baja menor en sus características  demostrando aparte su cantidad de racismo es mas estable que todos los demás, en lo cual no comparte ninguno de sus miembros, ya que esta muy separado. 


