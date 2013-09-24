library('plyr')
library('stringr')
library(reshape2)
library(plyr)
library(ggplot2)

x <- readLines('word.csv')
f <- table(x)
d <- melt(f)
names(d) <- c('word','freq')
sort_d <- d[order(d$freq) , ]

p <- ggplot(sort_d, aes(x = word, y = freq, fill=word)) + 
        geom_bar(stat = "identity")

ggsave(p, filename="multi_color_bar-ggplot2.png" , width = 8)
