data_a <- c(
            89,
            3,
            8
            )

data_b <- c(
            7,
            45,
            48
            )

data_m <- matrix(c(data_a,data_b), 3, 2)

barplot(
        data_m, 
        angle=c(45,90,135), 
        density=c(10,10,10), 

        main="测试",
        names.arg=c('OBJ_A','OBJ_B'),

        xlim=c(0,3),
        legend.text = c("优","良","差"), 
        args.legend = list(x = 3, y = 50)
        ) 
