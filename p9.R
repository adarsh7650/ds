library(factoextra)
library(cluster) 
library(ggplot2)


data(iris)

fviz_nbclust(iris[,1:4] , kmeans , method = "silhouette") +
  labs( tilte = " this is methods to sho it ")


set.seed(123)
kmean_result <- kmeans(iris[,1:4] , centers = 3)

iris$Cluster <- as.factor(kmeans_result$cluster)

ggplot(iris , aes(x = Petal.Length , y= Petal.Width , color = Cluster )) + 
  geom_point()+
  labs(color = "green" , methods= "cluster ")
