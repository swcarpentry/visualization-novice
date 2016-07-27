### Solution code for summative assessment of the visualization-novice lesson
### Uses Gapminder data to produce four figures from 'Choosing a Good Chart'

# 0. Setup

library(dplyr)
library(tidyr)
library(ggplot2)

data <- read.csv("gapminder_all.csv")

# 1. Line histogram - single variable distribution with many data points
#        - Most recent population distribution in Asia

Africa <- filter(data, continent=="Africa")

# Bad
ggplot(Africa, aes(log10(pop_2007))) +
  geom_histogram()

# Good
ggplot(Africa, aes(log10(pop_2007), ..count..)) +
  geom_density() +
  labs(x = "Log10( 2007 Population )", y = "Density") +
  theme_classic(base_size = 24, base_family = "Helvetica") +
  theme(axis.title=element_text(size=36))

# 2. Bubble chart - relationship with three variables
# Bad
ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, size = pop_2007)) +
  geom_smooth() +
  geom_point() +
  labs(x = "gdpPercap", y = "lifeExp", 
       size = "Population", title = "2007") +
  theme_classic()

# Good
ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, 
                 size = pop_2007/1000000)) +
  geom_smooth(method = "lm", color = "black", size = 2) +
  geom_point() +
  scale_size(range = c(2, 20)) +
  scale_x_log10() +
  labs(x = "GDP/capita [adjusted US$]", y = "Life Expectancy [years]", 
       size = "Population [millions]", title = "2007") +
  theme_classic(base_size = 24, base_family = "Helvetica") +
  theme(axis.title=element_text(size=36))

# 3. Faceted bar chart - comparison among many items/categories
# 4. Stacked column/area chart - composition changing over time
