# R Script to produce the tidy dataset

# Clear or workspace of initial Objects
rm(list=ls())

# Load the needed libraries
library(knitr)
library(dplyr)
library(stringr)

# Run all of the steps to produce the tidy dataset
source('code/00_LoadAndPrepare.R')
source('code/01_Question_01.tidy.R')
source('code/02_Question_02.tidy.R')
source('code/03_Question_03.tidy.R')

# The above code produces the follwoing dataframes:
#    beer
#    beerbrew
#    brewery
#    BreweryByState

#
# Save the tiody datasets to CSV Files
#
maindir <- "data"
subdir <- "tidy"

# Make sure the 'tidy' dataset directory exists
ifelse(!dir.exists(file.path(maindir, subdir)), dir.create(file.path(maindir, subdir)), FALSE)

directory <- paste(maindir, subdir, sep="/")
directory <- paste0(directory, "/")


filename <- paste0(directory, "beer.csv")
write.csv(beer, file = filename, row.names=TRUE)

filename <- paste0(directory, "beerbrew.csv")
write.csv(beerbrew, file = filename, row.names=TRUE)

filename <- paste0(directory, "brewery.csv")
write.csv(brewery, file = filename, row.names=TRUE)

filename <- paste0(directory, "BreweryByState.csv")
write.csv(BreweryByState, file = filename, row.names=TRUE)
