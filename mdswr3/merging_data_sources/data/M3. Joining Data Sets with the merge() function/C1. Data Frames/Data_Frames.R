customers <- data.frame(id=c(1,2,3), name=c('Ann', 'Bill','Charles'), is.vip=c(TRUE,FALSE,TRUE))
customers
is.data.frame(customers)
head(customers)
str(customers)
customers <- data.frame(id=c(1,2,3), name=c('Ann', 'Bill','Charles'), is.vip=c(TRUE,FALSE,TRUE), stringsAsFactors = FALSE)
customers
str(customers)
customers
customers <- read.csv('/home/user/customers.csv')
customers
str(customers)
customers <- read.csv('/home/user/customers.csv', as.is = TRUE)
customers
str(customers)
