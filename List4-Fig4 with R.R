x <- as.matrix(iris[51:100,1:4])

pcat <- prcomp(x,scale=T)
pcat$x

pcat$sdev

pcat$rotation

pcat$center

summary(pcat)