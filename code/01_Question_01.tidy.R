## @knitr Question_01.tidy

# Count breweries per state
BreweryByState <- count(brewery, State)

# Remove Washington DC
BreweryByState <- BreweryByState[- grep("DC", BreweryByState$State), ]

# in beer df rename column "Brewery_id"" to "Brew_ID" 
BreweryByState <- rename(BreweryByState, Breweries = n)

# Sort by most to least
BreweryByState <- arrange(BreweryByState, desc(Breweries))