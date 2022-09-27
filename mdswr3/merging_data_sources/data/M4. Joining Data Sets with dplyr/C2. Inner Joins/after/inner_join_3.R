(names <- data.frame(first.name=c('Helena','Helena','Tom'),
                     last.name= c('Jones', 'Troy',  'Jones'),
                     age=       c(20,      30,      40)))

(countries <- data.frame(fn=     c('Helena','Helena','Tom'),
                         ln=     c('Jones', 'Troy',  'Jones'),
                         country=c('USA',   'UK',    'USA')))

merge(names, countries, by.x = c('first.name', 'last.name'),
                        by.y = c('fn',         'ln'))
inner_join(names, countries, by = c('first.name'='fn', 
                                    'last.name'='ln'))
