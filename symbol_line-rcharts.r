require(reshape2)
require(rCharts)

mydata <- read.csv('symbol_line.csv', header=TRUE, sep=',' )
myd <- melt(mydata, id = "day");

rpic <- hPlot(
              x = "day", y = "value", data = myd, 
              group = "variable",
              type = "line",  title="mytest"
              )

rpic$print("chart5")

rpic
