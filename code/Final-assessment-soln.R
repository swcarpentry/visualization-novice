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
  geom_histogram() +
  labs(x = "Log10( 2007 Population )", y = "Count")

# Good
ggplot(Africa, aes(log10(pop_2007), ..count..)) +
  geom_density() +
  labs(x = "Log10( 2007 Population )", y = "Count") +
  theme_classic(base_size = 24, base_family = "Helvetica") +
  theme(axis.title = element_text(size = 36))

# 2. Bubble chart - relationship with three variables
# Bad
ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, size = pop_2007)) +
  geom_smooth() +
  geom_point() +
  labs(x = "gdpPercap", y = "lifeExp", size = "pop", title = "2007") +
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
  theme(axis.title = element_text(size = 36))

# 3. Faceted bar chart - comparison among many items/categories

pop_by_continent <- data %>%
  gather(year, population, pop_1952:pop_2007) %>%
  separate(year, c("pop", "year"), sep = "_") %>%
  select(continent, country, year, population)

pop_2007 <- filter(pop_by_continent, year==2007)

# Bad
ggplot(pop_2007, aes(log10(population))) +
  geom_histogram() +
  facet_grid(. ~ continent)

# Good
ggplot(pop_2007, aes(population/1000000)) +
  geom_histogram(binwidth = 0.5) +
  scale_x_log10(limits = c(0.1, 1000)) +
  facet_grid(. ~ continent) +
  labs(x = "Population [millions]", y = "Number of countries", title = "2007") +
  theme_bw(base_size = 24, base_family = "Helvetica") +
  theme(axis.title = element_text(size = 36))

# Alternate 'off-target' example
ggplot(pop_2007, aes(x = population/1000000, y = ..count.., fill = continent)) +
  geom_density(alpha = 0.6) +
  geom_histogram(data=filter(pop_2007, continent=="Oceania"), alpha = 0.6) +
  scale_x_log10(limits = c(0.1, 1000)) +
  labs(x = "Population [millions]", y = "Number of countries", title = "2007") +
  theme_bw(base_size = 24, base_family = "Helvetica") +
  theme(axis.title = element_text(size = 36))

# 4. Stacked column/area chart - composition changing over time

total_pop_continent<- pop_by_continent %>%
  group_by(continent, year) %>%
  summarize(tot_pop = sum(population)/1000000000)

# Bad
ggplot(total_pop_continent, aes(as.numeric(year), tot_pop, group = continent)) +
  geom_line(position = "stack")

# Good
ggplot(total_pop_continent, aes(as.numeric(year), tot_pop, fill = continent)) + 
  geom_area() +
  labs(x = "Year", y = "Population [billions]", 
       fill = "Continent") +
  theme_classic(base_size = 24, base_family = "Helvetica") +
  theme(axis.title = element_text(size = 36))