require(reshape2)
library(plyr)
library(ggplot2)

raw_data <- read.table('hist_bar.csv',header=TRUE, sep=',')
p <- qplot(calc_a,data=raw_data,facets = . ~ hkey + ukey + pkey,
           binwidth=3,color=pkey)
ggsave(p, filename="hist_bar-facets-ggplot2.png" , width = 8)

#qplot(value, data=ffm, geom="histogram", facets= . ~ variable, binwidth=1)
