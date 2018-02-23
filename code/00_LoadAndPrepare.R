## @knitr LoadAndPrepare
#
#
## Load the Beer and Breweries datasets, rename the columns, sort beer dataset

# Define variables to be used throughout the document
# The base/root URL to load the data from
data_root_url <- "https://raw.githubusercontent.com/allthebits/msds6306-case-study-01/master/data/"

# Define the String URL's for the Beer and Brewery datasets
beer_url <- paste(data_root_url, "Beers.csv", sep="");
brewery_url <- paste(data_root_url, "Breweries.csv", sep="");

# Load the Beer and Brewery Datasets
beer <- read.csv(url(beer_url), header = TRUE, sep=",", row.names = NULL)
brewery <- read.csv(url(brewery_url), header = TRUE, sep=",", row.names = NULL)

#===============================================================================

# Replace/remove erroneous special characters present in Dataframes for Beer and Brewery

# Beer file

# Special character replacement/removal

# Replace "â€™" with "'"
beer$Name <- gsub("â€™", "'", beer$Name)

# Replace "Ã¶" with "o"
beer$Name <- gsub("Ã¶", "o", beer$Name)

# Replace "Â°" with "°"
beer$Name <- gsub("Â°", "°", beer$Name)

# Replace "Ã©" with "e'"
beer$Name <- gsub("Ã©", "e'", beer$Name)

# Replace "Ã" with "i'"
beer$Name <- gsub("Ã", "i'", beer$Name)

# Replace "'¼" with "o'"
beer$Name <- gsub("'¼", "o", beer$Name)

# Remove "â„¢" character
beer$Name <- gsub("â„¢", "", beer$Name)

# Replace "Ã¶" with "o"
beer$Style <- gsub("Ã¶", "o", beer$Style)

# Replace "Ã¤" with "a"
beer$Style <- gsub("Ã¤", "a", beer$Style)

# Replace "Ã¨" with "e"
beer$Style <- gsub("Ã¨", "e", beer$Style)

# Brewery file

# Replace "Ã¶" with "o"
brewery$Name <- gsub("Ã¶", "o", brewery$Name)

# ========================================================================================

# Modify column/variable names on the Dataframes for Beer and Brewery

# in beer df rename column "Name" to "Beer" 
beer <- rename(beer, Beer = Name)

# in beer df rename column "Brewery_id"" to "Brew_ID" 
beer <- rename(beer, Brew_ID = Brewery_id)

# in brewery df rename column "Name" to "Brewery" 
brewery <- rename(brewery, Brewery = Name)

# Arrange beer df by Brew_ID
beer <- arrange(beer, (Brew_ID))
