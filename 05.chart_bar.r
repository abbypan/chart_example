
source(file='chart_ggplot2.r')

raw_file <- 'word_freq.csv'

opt <- list( header=TRUE, sep =',', value = 'freq', label = 'word',
            xlab = '��', ylab = 'Ƶ', title = '����', 
          file= '05.chart_bar.png',  width = 8, height = 10)

chart_bar(raw_file, opt);
