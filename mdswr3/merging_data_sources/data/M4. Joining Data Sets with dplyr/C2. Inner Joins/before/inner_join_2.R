(customers <- data.frame(customer_id=1:3,
                         name=c('Anna', 'Bill', 'Cliff')))

(invoices <- data.frame(invoice_id=1:5,
                        total=  c(100, 200, 300, 400, 500),
                        cust_id=c(2,   3,   1,   NA,  3)))

merge(invoices, customers, by.x = 'cust_id', by.y = 'customer_id')
