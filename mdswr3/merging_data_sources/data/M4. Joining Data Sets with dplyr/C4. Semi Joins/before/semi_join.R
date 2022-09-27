library(dplyr)
(customers <- data.frame(customer_id=1:3,
                         name=c('Anne', 'John', 'Tom')))
(invoices <- data.frame(invoice_id=1:3,
                        total=c(100, 200, 300),
                        customer_id=c(1, 2, 2)))

inner_join(customers, invoices, by = 'customer_id')

semi_join(customers, invoices, by = 'customer_id')
