library(ggplot2)

# Set-up your script ------------------------------------------------------

install.packages(c("tidyverse", "gapminder", "pacman"))
pacman::p_load(tidyverse, gapminder)

# Load your Data into R ---------------------------------------------------

data(gapminder)
head(gapminder)

# Clean your Data ---------------------------------------------------------

gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)


# Section  ----------------------------------------------------------------


# new branch --------------------------------------------------------------

#This is part of my new branch idea
ggplot(gapminder_clean, aes(x = gdp_per_cap, y = life_exp)) +
  geom_point(mapping = aes(color = continent))

