require(reshape2)
require(ggplot2)
require(grid)

mydata <- read.csv('stacked_area.csv', header=TRUE, sep=',')
myd <- melt(mydata, id = "time")

p <- ggplot(myd,aes(x=factor(time),y=value,fill=factor(variable))) + 
    geom_bar(stat="identity", position=position_dodge()) + 
theme(axis.text.x  = element_text(angle=60, vjust=1, hjust=1),
      plot.margin = unit(c(1,1,1,1), "cm")
      )

ggsave(p, filename="multi_bar-ggplot2.png", width=12)
