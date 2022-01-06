## ---------------------------
##
## Script name: CurSpaBring2Gether
##
## Author: Duarte F.M.M. Pereira
##
## Date Created: 17-08-21
## Date Modified: 
##
## Set WD
setwd("<set working directory here>") # Set working directory to data location

## open up all of the .csv files within the directory
temp = list.files(pattern="*<filename>") # the * symbol allows your to ignore all text preceding <filename>, say participant numbers
All <- lapply(temp,function(i){
  read.csv(i, header=TRUE)
})

## create a dataframe with all the data in one and bind them all by rows, rather than columns
df <- do.call(rbind.data.frame, All)

## save into one big dataframe
write.csv(df,"<output file directory/filename.csv>", row.names=FALSE)

## empty lists ####
rm(list = ls())

