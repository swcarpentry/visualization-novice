### Solution code for summative assessment of the visualization-novice lesson
### Uses Gapminder data to produce four figures from 'Choosing a Good Chart'

# 0. Setup

library(dplyr)
library(tidyr)
library(ggplot2)

data <- read.csv("gapminder_all.csv")

# 1. Line histogram - single variable distribution with many data points
#        - Most recent population distribution in Asia

Europe <- filter(data, continent=="Europe")
ggplot(data, aes(pop_2007)) +
  geom_freqpoly(binwidth=50)
# 2. Bubble chart - relationship with three variables
# 3. Faceted bar chart - comparison among many items/categories
# 4. Stacked column/area chart - composition changing over time
