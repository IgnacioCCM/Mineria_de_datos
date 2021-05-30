### What is the goal of the Euclidean distance for the K-Nearest Neighbors (K-NN) machine learning model?

To answer the meaning and objective of the question, we must ask ourselves in what way it is and how it works, in order to be able to give the understanding prior to the answer.
What is the k-Nearest Neighbor algorithm?
It is a method that simply searches the closest observations to the one you are trying to predict and classifies the point of interest based on most of the data around you. As we said before, it is an algorithm:
Supervised: this - briefly - means that we have labeled our training dataset, with the class or expected result given "a row" of data.
Instance Based: This means that our algorithm does not explicitly learn a model (such as Logistic Regression or decision trees). Instead, it memorizes the training instances that are used as the "knowledge base" for the prediction phase.
How does K-NN work?
Calculate the distance between the item to be classified and the rest of the items in the training dataset. Select the closest “k” elements (with less distance, depending on the function used). Carry out a “majority vote” between the k points: those of a class / label that <<dominen>> will decide their final ranking.
KNN is performed both at a cost of memory, since we must store a potentially huge data set, and a computational cost during the test time, since the classification of a given observation requires an exhaustion of the entire data set. In practice, this is undesirable, as we usually want quick responses.

...

Suppose that Z is the point which needs to be predicted. First, the point K closest to Z is found and then the points for the majority vote of its K neighbors are ranked. Each object votes for its class and the class with the most votes is taken as a prediction. To find the closest similar points, the distance between points is found using distance measures.
Distance has been the metric from one piece of data to another, so the analysis of this whole set can determine to which it belongs.
This example will return the Euclidean distance.
The distance between the new case to be classified, x, and each of the cases xr, r = 1,. . . , N already classified belonging to the case file D, gives the same weight to each and every one of the n variables, X1,. . . , Xn. That is, the distance d (x, xr) between x and xr is calculated

...
...

For example by means of the Euclidean distance, as follows:
...

This way of calculating the distance, that is, giving the same importance to all the variables, can be dangerous for the K-NN paradigm in the case that some of the variables are irrelevant for the class C variable. This is the reason why the one that is interesting to use distances between cases that weight each variable in an appropriate way. That is, the distance between x and xr
With which the variable Xj has an associated weight wj that will have to be determined. To clarify the idea, suppose the data.
...

In this figure it can be seen that the variable X1 is irrelevant for the variable C, since the 6 times in which X1 takes the value 0, in three of them C takes the value 1, and in the other three the value 1, while of the 6 times in which X1 takes the value 1, in three of them C takes the value 0, and the remaining three take the value 1. This situation is totally opposite to the situation with the variable X2. Of the 6 times that X2 takes the value 0, in 5 cases C is worth 1, being worth 0 in the remaining case, while of the 6 times in which X2 takes the value 1, in 5 cases C is worth 0 being worth 1 in the remaining case.
The contribution of the variable X2 outweighs the contribution of the variable X1. One way to calculate the weight wi of each variable Xi is from the minimum information measure I (Xi, C) between said variable Xi and the class variable C, defined as follows:

...

This measure of mutual information between two variables is interpreted as the reduction in uncertainty about one of the variables when the value of the other variable is known. The greater the measure of mutual information between two variables, the greater the dependency between them. For the matter that concerns us in this section, the weight wi associated with the variable Xi will be proportional to the measure of mutual information l (Xi, C) between Xi and C. With the data in Figure 8 we calculate I (X1, C ) and I (X2, C).

...


Conclution

In conclusion, to the question we must say that the K-NN is a supervised learning algorithm, that is, that from an initial data set its objective will be to correctly classify all new instances. The typical data set for this type of algorithm consists of several descriptive attributes and a single target attribute (also called a class).


 #### Referencias
https://www.merkleinc.com/es/es/blog/algoritmo-knn-modelado-datos
https://aprendeia.com/k-vecinos-mas-cercanos-teoria-machine-learning/
https://soldai.com/metodo-k-nearest-neighbors/
http://www.sc.ehu.es/ccwbayes/docencia/mmcc/docs/t9knn.pdf
