## @knitr Question_03

#
#
# Case Study 01 : Question 03) Report NA in each column
q3_out <- capture.output(sapply(beerbrew, function(x) sum(is.na(x))))
q3_out

#
source('code/03_Question_03.tidy.R')