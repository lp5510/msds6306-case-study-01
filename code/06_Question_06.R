## @knitr Question_06

#

# Remove NA values only for ABV variable
brewbeer_ABV <- beerbrew_NA[complete.cases(brewbeer[ , 5]),]

#
# Case Study 01 : Question 06) Summary Statistics for the ABV variable
summary(beerbrew_ABV$ABV)
