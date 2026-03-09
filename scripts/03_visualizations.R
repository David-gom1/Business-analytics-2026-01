library(tidyverse)
library(readxl)
library(ggplot2)

weekly <- read_excel("data/Web_Analytics.xls", sheet = "Weekly Visits")

# Tendencia de visitas
ggplot(weekly, aes(x = Week, y = Visits)) +
  geom_line() +
  labs(title = "Weekly Website Visits", x = "Week", y = "Visits")

# Distribución de visitas
ggplot(weekly, aes(x = Visits)) +
  geom_histogram(bins = 20) +
  labs(title = "Distribution of Website Visits")
