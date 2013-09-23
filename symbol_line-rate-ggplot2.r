library(ggplot2)
library(scales)

x <- read.table('symbol_line.csv', header=TRUE, sep=',')

p <- ggplot(x, aes(x = day, y = ok_users/users,
    label=sprintf("%.2f%%",100*ok_users/users), group="main")) +
    geom_line(colour="red") +
    scale_y_continuous(labels = percent_format()) +
    geom_point(colour="green") +
    geom_text(hjust = 1.2 )

ggsave(p, filename="symbol_line-rate-ggplot2.png", width=8)
