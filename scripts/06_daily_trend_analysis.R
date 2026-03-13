daily <- read_excel("Web_Analytics.xls", sheet = "Daily Visits")

head(daily$Day)

Sys.setlocale("LC_TIME", "C")

daily$Day <- as.Date(daily$Day, format="%A, %B %d, %Y")
daily_1 <- daily %>% arrange(Day)

# Tendencia diaria de visitas
ggplot(daily_1, aes(x = Day, y = Visits)) +
  geom_line(color="darkgreen") +
  labs(
    title="Daily Website Traffic",
    x="Day",
    y="Visits"
  )

# Distribución de visitas diarias
ggplot(daily_1, aes(x = Visits)) +
  geom_histogram(bins=30, fill="orange") +
  labs(
    title="Distribution of Daily Visits"
  )
