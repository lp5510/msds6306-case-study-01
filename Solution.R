# R Script to run the Case Study 01 solution
# Clean the workspace, remove all existing Objects
rm(list=ls())

# Load the needed libraries
library(knitr)
library(dplyr)
library(ggplot2)
library(doBy)
library(stringr)
library(reshape2)


# Run the code for each question
source('code/00_LoadAndPrepare.R')
source('code/01_Question_01.R')
source('code/02_Question_02.R')
source('code/03_Question_03.R')
source('code/04_Question_04.R')
source('code/05_Question_05.R')
source('code/06_Question_06.R')
source('code/07_Question_07.R')
