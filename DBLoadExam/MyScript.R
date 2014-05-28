
x <- c("lee","kim","choi","kang","heo","park")
names <- sample(x,size=21,replace=T)

y <- c("A","B","C")
y1 <- seq(from=100, to=120)
y1 <- as.character(y1)
values <- paste(y,y1,sep="") 
summary(values)


df <- data.frame(names,values)
dim(df)
head(df)

myMap <- list(
    "A100" = "Value1",
    "A200" = "Value2"
    )

cr <- myMap[df[,2]]
