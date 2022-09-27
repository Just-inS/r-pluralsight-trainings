library(dplyr)
listing <- ls('package:dplyr')
listing[grep('join', listing)]
?inner_join
