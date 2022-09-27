library(dplyr)
(customers <- data.frame(customer_id=1:4,
                         name=c('Anne', 'John', 'Tom', 'Lucy')))
(invoices <- data.frame(invoice_id=1:3,
                        total=c(100, 200, 300),
                        customer_id=c(1, 2, 2)))

semi_join(customers, invoices, by = 'customer_id')
anti_join(customers, invoices, by = 'customer_id')
customers
