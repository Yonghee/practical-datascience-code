library('rpart')
load('GCDData.RData')
model <- rpart(Good.Loan ~
                    Duration.in.month +
                    Installment.rate.in.percentage.of.disposable.income +
                    Credit.amount  +
                    Other.installment.plans,
                data=d,
                control=rpart.control(maxdepth=4),
                method="class")



resultFrame <- data.frame(Good.loan = creditdata$Good.Loan, pred=predict(model, type='class'))
dim(resultframe)
head(resultframe)
rtab <- table(resultframe)
rtab

sum(diag(rtab)) / sum(rtab)
sum(rtab[1,1]) / sum(rtab[,1])
sum(rtab[2,1]) / sum(rtab[2,])
