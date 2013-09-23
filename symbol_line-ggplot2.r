library(ggplot2)

mydata <- read.table('symbol_line.csv', header=TRUE, sep=',')
myd <- melt(mydata,id='day')

opt <- list()
opt$variable = c('users','ok_users')
opt$color = c('green', 'red')

myd$variable <- ordered(myd$variable, levels = opt$variable)

p <- ggplot(myd, aes(x=day, y=value, group=variable,
                     colour=variable)) + 
geom_line() + 
scale_colour_manual(values = opt$color)  +
geom_point() +
theme(axis.text.x  = element_text(angle=60, vjust=1, hjust=1),
      plot.margin = unit(c(1,1,1,1), "cm")
      )

ggsave(p, filename="symbol_line-ggplot2.png", width=8)

