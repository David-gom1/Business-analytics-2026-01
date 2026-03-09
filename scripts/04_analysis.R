library(tidyverse)
library(readxl)

weekly <- read_excel("data/Web_Analytics.xls", sheet = "Weekly Visits")
financials <- read_excel("data/Web_Analytics.xls", sheet = "Financials")

# Correlación
correlation <- cor(financials$Visits, financials$Revenue)

print(correlation)

# Scatter plot
library(ggplot2)

ggplot(financials, aes(x = Visits, y = Revenue)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "Relationship between Visits and Revenue")
