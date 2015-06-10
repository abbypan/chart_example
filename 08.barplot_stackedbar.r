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

        main="²âÊÔ",
        names.arg=c('OBJ_A','OBJ_B'),

        xlim=c(0,3),
        legend.text = c("ÓÅ","Á¼","²î"), 
        args.legend = list(x = 3, y = 50)
        ) 
