#注意文件编码必须为本地系统编码

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

png("08.barplot_stackedbar.png")

barplot(
        data_m, 
        angle=c(45,90,135),  #填充的斜线角度
        density=c(10,10,10),  #填充的斜线密度

        main="测试",
        names.arg=c('OBJ_A','OBJ_B'),

        xlim=c(0,3),  #x轴宽度
        legend.text = c("优","良","差"), 
        args.legend = list(x = 3, y = 50)  #图例位置
        ) 

dev.off()
