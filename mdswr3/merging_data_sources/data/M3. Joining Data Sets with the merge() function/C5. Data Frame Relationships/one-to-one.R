# one-to-one relationship
(countries <- data.frame(id=1:3, 
                         name=c('USA', 'UK', 'Spain')))

(capitals <- data.frame(city=c('London', 'Washington', 'Madrid'),
                        country_id=c(2, 1, 3)))

merge(countries, capitals, by.x = 'id', by.y = 'country_id')
