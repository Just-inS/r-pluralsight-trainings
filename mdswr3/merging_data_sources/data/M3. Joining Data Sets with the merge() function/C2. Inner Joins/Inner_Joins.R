customer.names <- data.frame(id=1:3,
+                              name=c('Helena', 'Astrid', 'Eduardo'))

customer.countries <- data.frame(customer_id=2:4,
+                                  country=c('USA', 'Spain', 'USA'))

customer.names
customer.countries

cbind(customer.names, customer.countries)

?merge

merge(customer.names, customer.countries)

merge(customer.names, customer.countries, by.x = 'id', by.y = 'customer_id')

customer.names <- data.frame(id=c(1, 2, 2, 3),
+                              name=c('Helena', 'Astrid', 'John', 'Eduardo'))

customer.names

customer.emails <- data.frame(customer_id=2:3, 
+                               email=c('astrid@globomantics.com', 'eduardo@globomantics.com'))

merge(customer.names, customer.emails, by.x = 'id', by.y = 'customer_id')

names <- data.frame(first.name=c('Helena', 'Helena', 'Tom'),
+                     last.name=c('Jones', 'Troy', 'Jones'),
+                     age=c(20, 30, 40))

countries <- data.frame(first.name=c('Helena', 'Helena', 'Tom'),
+                         last.name=c('Jones', 'Troy', 'Jones'),
+                         country=c('USA', 'UK', 'USA'))

merge(names, countries, by.x = 'first.name', by.y = 'first.name')

merge(names, countries, by.x = c('first.name', 'last.name'),
+                         by.y = c('first.name', 'last.name'))

merge(names, countries)

merge(names, countries, by = c('first.name', 'last.name'))
