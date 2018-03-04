## @knitr Question_05

#
#
# Case Study 01 : Question 05) State with highest ABV? Highest IBU?
# Most alcoholic beer (Kentucky)
dplyr::top_n(beerbrew_NA, 1, ABV)

# Most bitter beer (Oregon)
dplyr::top_n(beerbrew_NA, 1, IBU)
