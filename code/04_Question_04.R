## @knitr Question_04

#
#
# Case Study 01 : Question 04) Median ABV and IBU by state. Plot barchart.
# Requires the library:  'doBy'

# Calculate median values for each obs of ABV and IBU by state using DoBy

MedianABV <- summaryBy(ABV ~ State, data = beerbrew, FUN = median)
MedianIBU <- summaryBy(IBU ~ State, data = beerbrew, FUN = median)

# Merge into one df
ABV_IBU_median <- dplyr::inner_join(MedianABV, MedianIBU, by = "State")

summary(ABV_IBU_median)
str(ABV_IBU_median)

# Normalize ABV and IBU values for direct comparison
ABV_IBU_median_norm <- as.data.frame(apply(ABV_IBU_median[, 2:3], 2, function(x) (x - min(x))/(max(x)-min(x))))

# Add back State column
ABV_IBU_median_norm <- cbind(State = ABV_IBU_median$State, ABV_IBU_median_norm)
                                           
# Melt data frame (ABV and IBU in one column) for ggplot
ABV_IBU_median_long <- melt(ABV_IBU_median_norm)
                                       
# Plot dual barplots with ggplot2
q4_plot <- ggplot(ABV_IBU_median_long,aes(x = reorder(State,value), y = value,fill=variable)) + geom_bar(stat="identity",position="dodge") + labs(title = "Median Alcohol By Volume vs. Median International Bitterness Unit by State") + labs(x = "State") + labs(y = "Normalized Values") 
                                           

grid::grid.draw(q4_plot)
ggsave(q4_plot, filename="tmp/q4_plot.png")