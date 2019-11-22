# K means Clustering Algorithm

x <- runif(100)
x
y<-runif(100)
y
data<-cbind(x,y)
dim(data) #dimension of data
windows()
plot(x,y) #scatter plot

plot(data,type="n") # making scatter plot null
text(data,rownames(data))#numbering of data in scatter plot

# K means Clustering
km<-kmeans(data,4)
km$cluster#to display cluster of each data
str(km) # to display internal structure of km

#animation
#it randowmly selects 4 centroids & finds the distance to data points
#whichever is min cluster will be formed. It will go for n iterations & stop at a point
#whivh is feasible
install.packages("animation")
library(animation)
windows()
km<-kmeans.ani(data,4)

#for example
d<-dist(data,method = 'euclidian')
d
fit<- hclust(d,method = 'complete')
plot(fit)
# Hence dendogram is not feasible in non hierarchial clustering
