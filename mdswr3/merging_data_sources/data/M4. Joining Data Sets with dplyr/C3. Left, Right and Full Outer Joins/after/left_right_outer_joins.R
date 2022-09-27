library(dplyr)

customer.names <- data.frame(id=1:3, 
                             name=c('Helena','Astrid','Eduardo'))
customer.countries <- data.frame(customer_id=2:4, 
                                 country=c('USA','Spain','USA'))

merge(customer.names, customer.countries, 
      by.x = 'id', by.y = 'customer_id', all.x = TRUE)
left_join(customer.names, customer.countries, 
          by = c('id'='customer_id'))

merge(customer.names, customer.countries, 
      by.x = 'id', by.y = 'customer_id', all.y = TRUE)
right_join(customer.names, customer.countries, 
           by = c('id'='customer_id'))

merge(customer.names, customer.countries, 
      by.x = 'id', by.y = 'customer_id', all = TRUE)
full_join(customer.names, customer.countries, 
          by = c('id'='customer_id'))
