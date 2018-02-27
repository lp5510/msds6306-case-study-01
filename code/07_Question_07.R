## @knitr Question_07

#
#
# Case Study 01 : Question 07) Is there an apparent relationship between the 
#                              bitterness of the beer and its alcoholic content? 
#                              Draw a scatter plot.

ggplot(beerbrew, aes(x=IBU, y=ABV)) +
    geom_point(shape=1) +    # Use hollow circles
    geom_smooth(method=lm) +  # Add linear regression line (by default includes 95% confidence region)
    labs(title = "Alcohol by Volume (ABV) vs. International Bitterness Unit (IBU)") + labs(x = "International Bitterness Unit (IBU)") + labs(y = "Alcohol by Volume (ABV)")                         
