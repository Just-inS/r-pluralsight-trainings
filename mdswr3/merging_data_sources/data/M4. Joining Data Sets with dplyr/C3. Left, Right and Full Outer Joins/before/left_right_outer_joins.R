library(dplyr)

customer.names <- data.frame(id=1:3, 
                             name=c('Helena','Astrid','Eduardo'))
customer.countries <- data.frame(customer_id=2:4, 
                                 country=c('USA','Spain','USA'))

merge(customer.names, customer.countries, 
      by.x = 'id', by.y = 'customer_id', all.x = TRUE)

merge(customer.names, customer.countries, 
      by.x = 'id', by.y = 'customer_id', all.y = TRUE)

merge(customer.names, customer.countries, 
      by.x = 'id', by.y = 'customer_id', all = TRUE)
