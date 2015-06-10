library(ggplot2)
library(grid)
library(plyr)
library(reshape2)
library(scales)
library(stringr)

raw_file <- '01.chart_line.csv'
opt <- list(
            header = TRUE, 
            sep =',',
            label = 'day', 
            value = 'ok_rate', 
            y_label= 'ok_percent', 
            width = 12, 
            height= 8, 
            title = '����', 
            color = 'red', 
            point_color = 'green', 
            xlab = '����', 
            ylab = 'ȡֵ', 
            file = '06.chart_line_rate.png'
            )
chart_line_rate(raw_file, opt)
