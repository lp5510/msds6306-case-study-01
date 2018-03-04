## @knitr LoadAndPrepare
#
#

#===============================================================================

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

# Convert UTF-8 format character data in Dataframes for Beer and Brewery

# Beer file

# Convert UTF-8 format in "beer$Name"
beer$Name <- str_conv(beer$Name, "UTF-8")

# Convert UTF-8 format in "beer$Style"
beer$Style <- str_conv(beer$Style, "UTF-8")

# Brewery file

# Convert UTF-8 format in "beer$Style"
brewery$Name <- str_conv(brewery$Name, "UTF-8")

# ==============================================================================

# Modify column/variable names on the Dataframes for Beer and Brewery

# in beer df rename column "Name" to "Beer" 
beer <- rename(beer, Beer = Name)

# in beer df rename column "Brewery_id"" to "Brew_ID" 
beer <- rename(beer, Brew_ID = Brewery_id)

# in brewery df rename column "Name" to "Brewery" 
brewery <- rename(brewery, Brewery = Name)

# Arrange beer df by Brew_ID
beer <- arrange(beer, (Brew_ID))

# Remove duplicates with all columns other than Brew_ID as criteria for removal
beer <- beer[!duplicated(beer[c('Beer', 'ABV', 'IBU', 'Style', 'Ounces')]),]

# Remove row.names column
row.names(beer) <- NULL