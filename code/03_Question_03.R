## @knitr Question_03

#
#
# Case Study 01 : Question 03) Report NA in each column
sapply(beerbrew, function(x) sum(is.na(x)))