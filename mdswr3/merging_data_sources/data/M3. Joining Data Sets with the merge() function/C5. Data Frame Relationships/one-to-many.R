# one-to-many relationship
(customers <- data.frame(id=1:2,
                         name=c('Anne', 'John')))

(invoices <- data.frame(invoice_id=1:3,
                        total=c(100, 200, 300),
                        customer_id=c(1, 2, 2)))

merge(customers, invoices, by.x = 'id', by.y = 'customer_id')
