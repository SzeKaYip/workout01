workout01-Sze Ka-Yip.Rmd
================
Sze Ka Yip
3/9/2019

<img src="gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" />

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
dat <- read.csv(file='../data/shots-data.csv')
pt2t <- as.data.frame(table(dat$name, dat$shot_type=="2PT Field Goal"))
names(pt2t)[1] <-"name"
names(pt2t)[3] <-"total"
pt2t <- pt2t[pt2t[2] == TRUE, c(1,3)]
a<- ((dat$shot_made_flag=="shot_yes")  & (dat$shot_type=="2PT Field Goal") )
pt2m <- as.data.frame(table(dat$name, a))
pt2m <- pt2m[pt2m[2] == TRUE, 3]
table_pt2 <- data.frame(
  pt2t,
  made=pt2m)
table_pt2$perc_made <- table_pt2$made/table_pt2$total
table_pt2 <- arrange(table_pt2, desc(perc_made))
table_pt2_effective_shooting_by_player <- table_pt2
table_pt2_effective_shooting_by_player 
```

    ##             name total made perc_made
    ## 1 Andre Iguodala   210  134 0.6380952
    ## 2   Kevin Durant   643  390 0.6065319
    ## 3  Stephen Curry   563  304 0.5399645
    ## 4  Klay Thompson   640  329 0.5140625
    ## 5 Graymond Green   346  171 0.4942197
