library(tidyverse)
library(readxl)
library(ggplot2)

weekly <- read_excel("data/Web_Analytics.xls", sheet = "Weekly Visits")

# Tendencia de visitas
ggplot(weekly, aes(x = `Week (2008-2009)`, y = Visits)) +
  geom_line(color="blue") +
  labs(
    title="Weekly Website Visits",
    x="Week",
    y="Visits"
  )

# Pageviews vs visitas
ggplot(weekly, aes(x = Visits, y = Pageviews)) +
  geom_point() +
  geom_smooth(method="lm") +
  labs(
    title="Relationship between Visits and Pageviews"
  )

# Distribución de visitas
ggplot(weekly, aes(x = Visits)) +
  geom_histogram(bins=20, fill="lightblue") +
  labs(
    title="Distribution of Website Visits"
  )
