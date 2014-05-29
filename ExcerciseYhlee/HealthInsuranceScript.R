custData <- read.table("./data/custdata.tsv", sep="\t",header=T)
dim(custData)
head(custData)
#save(custData,file="./data/custData.rds")


summary(custData)
x <- with(custData, is.na(is.employed))
mean(x)

summary(custData$income)
hist(custData$income)
plot(custData$income)

hist(custData$age)

ggplot(custData) + geom_histogram(aes(x=age),binwidth=5, fill="gray")

library(scales)     
ggplot(custData) + geom_density(aes(x=income)) + scale_x_continuous(labels=dollar)

#log scale
ggplot(custData)  +  geom_density(aes(x=income))  + scale_x_log10(breaks=c(100,1000,10000,100000), labels=dollar)  + annotation_logticks(sides="bt")
