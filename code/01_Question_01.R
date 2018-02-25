## @knitr Question_01

#
#
# Case Study 01 : Question 01) Breweries per state?
# Requires the library: 'ggplot2'

# The source path MUST include the "code" directory because the context
#   when the source statement executes is within the RMarkdown file and that
# is one directory 'up' from here
source('code/01_Question_01.tidy.R')

summary(BreweryByState)

ggplot(BreweryByState, aes(x=reorder(State, Breweries), y=(Breweries), fill = "red")) + geom_bar(stat='identity') + coord_flip() + labs(title ="Breweries Per State", x = "State", y = "Number of Breweries") + theme(legend.position="none")
