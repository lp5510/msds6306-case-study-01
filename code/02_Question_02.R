## @knitr Question_02

#
#
# Case Study 01 : Question 02) Merge beer and brewery data. Print first and last 
#                 6 observations
# QC

str(beer)
summary(beer)
str(brewery)
summary(brewery)

# Merge data frames
beerbrew <- dplyr::inner_join(beer, brewery, by = "Brew_ID")
summary(beerbrew)

# Sort columns (one option)
beerbrew <- beerbrew[c("Beer_ID", "Beer", "Style", "Ounces", "ABV", "IBU", "Brew_ID", "Brewery", "City", "State")]

summary(beerbrew)
str(beerbrew)
utils::View(beerbrew)

# Check beerbrew

head(beerbrew,6)
tail(beerbrew,6)