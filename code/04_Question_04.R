## @knitr Question_04

#
#
# Case Study 01 : Question 04) Median ABV and IBU by state. Plot barchart.
# Requires the library:  'doBy'
#NA removal (all)
beerbrew <- beerbrew[complete.cases(beerbrew), ]

utils::View(beerbrew)

# Calculate median values for each obs of ABV and IBU by state using DoBy

MedianABV <- summaryBy(ABV ~ State, data = beerbrew, FUN = median)
MedianIBU <- summaryBy(IBU ~ State, data = beerbrew, FUN = median)
utils::View(MedianABV)
utils::View(MedianIBU)

# Merge into one df
ABV_IBU_median <- dplyr::inner_join(MedianABV, MedianIBU, by = "State")

summary(ABV_IBU_median)
str(ABV_IBU_median)

# TODO: normalize and dual barplot ggplot here *********************************