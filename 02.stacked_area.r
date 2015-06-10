
source(file ='chart_ggplot2.r')

raw_file <- '02.chart_stacked_area.csv'
opt <- list(
            header = TRUE, 
            sep =',',
            label = 'time', 
legend = c('good','normal', 'bad', 'fail'), 
color =  c('lightblue', 'lightgreen','yellow','red'), 
            x_text_angle = 60, 
            width = 10, 
            height= 5, 
            title = '测试', 
            xlab = '时间', 
            ylab = '取值', 
            file = '02.chart_stacked_area.png'
            )
chart_stacked_area(raw_file, opt)
