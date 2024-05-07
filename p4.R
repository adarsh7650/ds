library(ggplot2)

data(iris)

#linear regression 
m <- lm(Sepal.Length ~ Petal.Length , data = iris)
summary(m)

#plot 
ggplot(iris , aes(x=Sepal.Length , y = Petal.Length , colour = "Species")) +
  geom_point() +
  geom_smooth(color="green" , method = "lm" )


#multtiple regression

model <- lm(Sepal.Length ~ Petal.Length + Petal.Width , data= iris)
summary(model)

ggplot(iris , aes(x = Sepal.Width , y= Petal.Width , colour = "Species")) +
  geom_point() +
  geom_smooth(method = "lm" , color = "green" , se = FALSE
              )
ggplot(iris , aes(x=Sepal.Length , y = Petal.Width , colour = "Species")) + 
  geom_point() + 
  geom_smooth(method = "lm" , color = "green" , se = FALSE)
