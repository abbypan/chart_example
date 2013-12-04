library(grid)
library(reshape2)
library(ggplot2)

chart_stacked_area <- function(raw_file, opt) {

    mydata <- read.table(raw_file, header=opt$header, sep=opt$sep)
    myd <- melt(mydata,id=opt$label)
    myd$legend <- ordered(myd$variable, levels = opt$legend)
    myd$label <- ordered(myd[,opt$label])

    p <- ggplot(myd, 
                aes(x=label, y=value, group=legend, fill=legend)
                ) + 
ggtitle(opt$title) +
geom_area(position="fill") + 
scale_fill_manual(values = opt$color)  +
scale_x_discrete(expand = c(0, 0)) +  
coord_cartesian(ylim=c(0,1)) +
xlab(opt$xlab) +
ylab(opt$ylab) +
theme(axis.text.x  = element_text(angle=opt$x_text_angle, vjust=1, hjust=1),
      plot.margin = unit(c(1,1,1,1), "cm")
      )

ggsave(p, filename=opt$file, width=opt$width , height=opt$height)

}


chart_line <- function(raw_file, opt) {

    mydata <- read.table(raw_file, header=opt$header, sep=opt$sep)
    myd <- melt(mydata,id=opt$label)
    myd$legend <- ordered(myd$variable, levels = opt$legend)
    myd$label <- ordered(myd[,opt$label])

    p <- ggplot(myd, 
                aes(x=label, y=value, group=legend, colour=legend)
                ) + 
ggtitle(opt$title) +
geom_line() + 
scale_colour_manual(values = opt$color)  +
geom_point() +
xlab(opt$xlab) +
ylab(opt$ylab) +
theme(axis.text.x  = element_text(angle=opt$x_text_angle, vjust=1, hjust=1),
      plot.margin = unit(c(1,1,1,1), "cm")
      )

ggsave(p, filename=opt$file, width=opt$width , height=opt$height)

}
