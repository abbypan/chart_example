
source(file ='chart_ggplot2.r')

raw_file <- 'stacked_area.csv'
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
            file = '04.chart_multi_bar.png'
            )
chart_multi_bar(raw_file, opt)
