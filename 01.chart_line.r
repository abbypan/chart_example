
source(file='chart_ggplot2.r')

raw_file <- 'symbol_line.csv'
opt <- list(
            header = TRUE, 
            sep =',',
            label = 'day', 
            legend = c('users','ok_users'), 
            color = c('green', 'red'), 
            x_text_angle = 60, 
            width = 10, 
            height= 5, 
            title = '测试', 
            xlab = '日期', 
            ylab = '取值', 
            file = '01.chart_line.png'
            )
chart_line(raw_file, opt)
