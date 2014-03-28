library(grid)
library(reshape2)
library(ggplot2)
library(plyr)
library(stringr)

chart_multi_bar <- function(raw_file, opt) {

    mydata <- read.table(raw_file, header=opt$header, sep=opt$sep)
    myd <- melt(mydata,id=opt$label)
    myd$legend <- ordered(myd$variable, levels = opt$legend)
    myd$label <- ordered(myd[,opt$label])

    p <- ggplot(myd, 
                aes(x=label, y=value, group=legend, fill=legend)
                ) + 
ggtitle(opt$title) +
xlab(opt$xlab) +
ylab(opt$ylab) +

geom_bar(stat="identity", position=position_dodge()) + 

scale_fill_manual(values = opt$color)  +
scale_x_discrete(expand = c(0, 0)) +  
coord_cartesian(ylim=c(0,1)) +
theme(axis.text.x  = element_text(angle=opt$x_text_angle, vjust=1, hjust=1),
      plot.margin = unit(c(1,1,1,1), "cm")
      )

ggsave(p, filename=opt$file, width=opt$width , height=opt$height)

}

chart_stacked_bar <- function(raw_file, opt) {

    mydata <- read.table(raw_file, header=opt$header, sep=opt$sep)
    myd <- melt(mydata,id=opt$label)
    myd$legend <- ordered(myd$variable, levels = opt$legend)
    myd$label <- ordered(myd[,opt$label])

    p <- ggplot(myd, 
                aes(x=label, y=value, group=legend, fill=legend)
                ) + 
ggtitle(opt$title) +

geom_bar(stat="identity", position="fill") + 

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

chart_stacked_area <- function(raw_file, opt) {

    mydata <- read.table(raw_file, header=opt$header, sep=opt$sep)
    myd <- melt(mydata,id=opt$label)
    myd$legend <- ordered(myd$variable, levels = opt$legend)
    myd$label <- ordered(myd[,opt$label])

    p <- ggplot(myd, 
                aes(x=label, y=value, group=legend, fill=legend)) + 
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

chart_bar <- function(raw_file, opt){
    mydata <- read.table(raw_file, header=opt$header, sep=opt$sep)
    mydata$value <- mydata[,opt$value]
    mydata$label <- ordered(mydata[,opt$label])

    p <- ggplot(mydata, aes(x = label, y = value, fill=label)) + 
    ggtitle(opt$title) +
    xlab(opt$xlab) +
    ylab(opt$ylab) +
    geom_bar(stat = "identity") 

    ggsave(p, filename=opt$file, width=opt$width , height=opt$height)
}

chart_line_rate <- function(raw_file, opt) {
    mydata <- read.table(raw_file, header=opt$header, sep=opt$sep)
    mydata$value <- mydata[,opt$value]
    mydata$label <- mydata[,opt$label]
    mydata$y_label <- mydata[,opt$y_label]

    p <- ggplot(mydata, 
                aes(x=label, y=value,
                    label=y_label, group ='main'
                    )
                ) + 
ggtitle(opt$title) +
geom_point(colour=opt$point_color) +
geom_line(color=opt$color) + 
xlab(opt$xlab) +
ylab(opt$ylab) +
scale_y_continuous(labels = percent_format())  + 
    geom_text(hjust = 1.2 )

ggsave(p, filename=opt$file, width=opt$width , height=opt$height)
}
