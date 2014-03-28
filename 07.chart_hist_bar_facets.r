require(reshape2)
library(plyr)
library(ggplot2)

raw_data <- read.table('07.chart_hist_bar_facets.csv',header=TRUE, sep=',')
p <- qplot(calc_a,  #值
           data=raw_data,
           facets = . ~ hkey + ukey + pkey,  #分组
           binwidth=3,
           color=pkey)
ggsave(p, filename="07.chart_hist_bar_facets.png" , width = 8)
