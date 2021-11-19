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
setwd("D:/Curiosity/Exp2_sequential/data/Rawdata/preCombi/") # Set working directory to data location

## open up all of the .csv files within the directory
temp = list.files(pattern="*curSpaOneLine.csv")
All <- lapply(temp,function(i){
  read.csv(i, header=TRUE)
})

## create a dataframe with all the data in one
df <- do.call(rbind.data.frame, All)

## save into one big dataframe
write.csv(df,"D:/Curiosity/Exp2_sequential/data/curSpaPreMMNaN.csv", row.names=FALSE)

## empty lists ####
rm(list = ls())

