
install.packages('goalp')
library('goalp')
goals <- "cost: 87*x1 + 81*x2+ 77*x3 <= 2500
staff_hrs: 10*x1 + 7*x2 + 5*x3 = 250
orders: 9*x1+ 6*x2+ 4*x3 >= 95
x1 lBound 5
x2 lBound 5
x3 lBound 5
"
goals

gp <- goalp(goals)
summary(gp)
############################################################################
##part-2 task-1
install.packages('corrgram')
library(dplyr)
library(ggplot2)
library(corrgram)
install.packages("gridExtra")
library(gridExtra)




customer_data=read.csv("Transactions_Customer.csv")
customer_data
customer_data[is.na(customer_data$Advertisement_Channel),]
cor(customer_data)
corrgram(customer_data)


ggplot(data=customer_data) + geom_point(aes(Estimated_Age,Revenue,color=Seen_Voucher))+
  labs(title = "Estimated_Age and Revenue Plot with Seen_Voucher Information", caption = "Customer data",
       tag = "Figure 1",x = "Estimated_Age",y = "Revenue")


ggplot(data=customer_data) + geom_point(aes(Estimated_Income,Revenue,color=Seen_Voucher))+geom_abline(slope = 0.0028994, intercept = -3.264182825 )
labs(title = "Estimated_Income and Revenue Plot with Seen_Voucher Information", caption = "Customer data",
     tag = "Figure 1",x = "Estimated_Income",y = "Revenue")


ggplot(data=customer_data) + geom_point(aes(Time_On_Site,Revenue,color=Seen_Voucher))+
  labs(title = "Time_On_Site and Revenue Plot with Seen_Voucher Information", caption = "Customer data",
       tag = "Figure 1",x = "Time_On_Site",y = "Revenue")


boxplot(Revenue ~ Advertisement_Channel, data=customer_data)




model <- lm(customer_data$Revenue ~ ., data=customer_data)
summary(model)