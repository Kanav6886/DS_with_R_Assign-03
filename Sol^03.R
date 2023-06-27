#Assignment-03
library(ggplot2)
library(dataset)
library(datasets)
library(tidyverse)


##Q1.
data <- data.frame(iris)
ggplot(data, aes(x = Sepal.Length, y = Petal.Length ,
        shape = Species , col = Species)) +
  geom_point()+
  labs(caption = "This plot gives us a detailed information about the sepal length and petal length of three species. From this plot of observations we can conclude that species 'setosa' has smallest length of sepals and petals among all three. And species 'virginica' has largest petal and sepals.")

#______________________________________________________________

##Q2.

info <- data.frame(txhousing)
info <- info[complete.cases(info),]
ggplot(info, aes(x = year , y = sales , size = volume , col = city))+
  geom_point()


#______________________________________________________________

##Q3.
table = read.csv("titanic.csv")
survived = table$Survived==1
died = table$Survived==0

table[survived,2] = "Survived"
table[died,2] = "Died"

ggplot(table, aes(x = Fare , y = Survived , col = Sex)) +
  geom_boxplot()+
  labs(title = "Fare vs Survival")

#______________________________________________________________
