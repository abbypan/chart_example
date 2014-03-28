
source(file='chart_ggplot2.r')

raw_file <- '05.chart_bar.csv'

opt <- list( header=TRUE, sep =',', value = 'freq', label = 'word',
            xlab = '´Ê', ylab = 'Æµ', title = '²âÊÔ', 
          file= '05.chart_bar.png',  width = 8, height = 10)

chart_bar(raw_file, opt);
