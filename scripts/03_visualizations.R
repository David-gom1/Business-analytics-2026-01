# Renombrar columna para facilitar uso
weekly <- weekly %>%
  rename(Week = `Week (2008-2009)`)

# Crear índice numérico de semana
weekly$Week_Number <- 1:nrow(weekly)

# Gráfico de tendencia de visitas
ggplot(weekly, aes(x = Week_Number, y = Visits)) +
  geom_line(color = "blue", size = 1) +
  geom_point() +
  labs(
    title = "Weekly Website Visits",
    x = "Week",
    y = "Visits"
  ) +
  theme_minimal()

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
