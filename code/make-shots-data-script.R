title: shots-data
description:data_prepation_that_contain_the_variables.
input(s):the_raw_5_fata_csv_file_for_each_player
output(s):to_create_a_global_table
getwd()
curry <- read.csv("~/Desktop/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE)
andre <- read.csv("~/Desktop/workout01/data/andre-iguodala.csv",stringsAsFactors = FALSE)
green <- read.csv("~/Desktop/workout01/data/draymond-green.csv",stringsAsFactors = FALSE)
thompson<- read.csv("~/Desktop/workout01/data/klay-thompson.csv",stringsAsFactors = FALSE)
kevin <- read.csv("~/Desktop/workout01/data/kevin-durant.csv",stringsAsFactors = FALSE)

curry$name <- c("Stephen Curry")
andre$name <- c("Andre Iguodala")
green$name <- c("Graymond Green")
thompson$name <- c("Klay Thompson")
kevin$name <- c("Kevin Durant")

curry$shot_made_flag[curry$shot_made_flag == "n"] <- "shot_no"
andre$shot_made_flag[andre$shot_made_flag == "n"] <- "shot_no"
green$shot_made_flag[green$shot_made_flag == "n"] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] <- "shot_no"
kevin$shot_made_flag[kevin$shot_made_flag == "n"] <- "shot_no"

curry$shot_made_flag[curry$shot_made_flag == "y"] <- "shot_yes"
andre$shot_made_flag[andre$shot_made_flag == "y"] <- "shot_yes"
green$shot_made_flag[green$shot_made_flag == "y"] <- "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] <- "shot_yes"
kevin$shot_made_flag[kevin$shot_made_flag == "y"] <- "shot_yes"


curry$minute <- (12*curry$period - curry$minutes_remaining)
andre$minute <- (12*andre$period - andre$minutes_remaining)
green$minute <- (12*green$period - green$minutes_remaining)
thompson$minute <- (12*thompson$period - thompson$minutes_remaining)





