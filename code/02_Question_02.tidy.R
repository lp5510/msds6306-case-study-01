## @knitr Question_02.tidy

# Merge data frames
beerbrew <- dplyr::inner_join(beer, brewery, by = "Brew_ID")

# Sort columns (one option)
beerbrew <- beerbrew[c("Beer_ID", "Beer", "Style", "Ounces", "ABV", "IBU", "Brew_ID", "Brewery", "City", "State")]
