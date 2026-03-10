library(readxl)
library(ggplot2)

daily <- read_excel("data/Web_Analytics.xls", sheet = "Daily Visits")

# Tendencia diaria de visitas
ggplot(daily, aes(x = Day, y = Visits)) +
  geom_line(color="darkgreen") +
  labs(
    title="Daily Website Traffic",
    x="Day",
    y="Visits"
  )

# Distribución de visitas diarias
ggplot(daily, aes(x = Visits)) +
  geom_histogram(bins=30, fill="orange") +
  labs(
    title="Distribution of Daily Visits"
  )
