require(reshape2)
require(rCharts)

mydata <- read.csv('stacked_area.csv', header=TRUE, sep=',')

rpic <- mPlot(x = 'time', y = c('good','normal','bad','fail'), 
            type = 'Area',
            data = mydata)
rpic$set(lineColors = c('blue', 'green', 'yellow', 'red'))
rpic

