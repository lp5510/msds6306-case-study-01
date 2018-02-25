## @knitr Question_02

#
#
# Case Study 01 : Question 02) Merge beer and brewery data. Print first and last 
#                 6 observations
# QC

source('code/02_Question_02.tidy.R')

summary(beerbrew)
str(beerbrew)

# Check beerbrew

head(beerbrew,6)
tail(beerbrew,6)
