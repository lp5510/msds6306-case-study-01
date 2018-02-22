## @knitr Question_01

#
#
# Case Study 01 : Question 01) Breweries per state?
# Requires the library: 'ggplot2'
# Count breweries per state

BreweryByState <- count(brewery, State)

# in beer df rename column "Brewery_id"" to "Brew_ID" 
BreweryByState <- rename(BreweryByState, Breweries = n)

summary(BreweryByState)
utils::View(BreweryByState)

# Sort by most to least
BreweryByState <- arrange(BreweryByState, desc(Breweries))

ggplot(BreweryByState, aes(x=reorder(State, Breweries), y=(Breweries), fill = "red")) + geom_bar(stat='identity') + coord_flip() + labs(title ="Breweries Per State", x = "State", y = "Number of Breweries") + theme(legend.position="none")