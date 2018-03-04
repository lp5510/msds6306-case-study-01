## @knitr Question_03.tidy

#Preserve copy of merged data with NA values
beerbrew_NA <- beerbrew

#NA removal (all)
beerbrew <- beerbrew[complete.cases(beerbrew), ]
