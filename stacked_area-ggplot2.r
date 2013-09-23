require(reshape2)
require(ggplot2)
require(plyr)
require(grid)

mydata <- read.csv('stacked_area.csv', header=TRUE, sep=',')
myd <- melt(mydata, id = "time")

opt <- list()
opt$variable = c('good','normal', 'bad', 'fail')
opt$color = c('lightblue', 'lightgreen','yellow','red')

myd$variable <- ordered(myd$variable, levels = opt$variable)

p <- ggplot(myd, aes(x=time,y=value,group=variable,fill=variable)) + 
geom_area(position="fill") +
scale_fill_manual(values = opt$color)  +
ggtitle("mytest") +
scale_x_discrete(expand = c(0, 0)) +  
coord_cartesian(ylim=c(0,1)) +
theme(axis.text.x  = element_text(angle=60, vjust=1, hjust=1),
      plot.margin = unit(c(1,1,1,1), "cm")
      )


ggsave(p, filename="stacked_area-ggplot2.png", width=12)
