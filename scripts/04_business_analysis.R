library(readxl)
library(tidyverse)
library(ggplot2)

financials <- read_excel("data/Web_Analytics.xls", sheet = "Financials")

# Relación visitas y revenue
ggplot(financials, aes(x = `Lbs. Sold`, y = Revenue)) +
  geom_point() +
  geom_smooth(method="lm") +
  labs(
    title="Revenue vs Pounds Sold"
  )

# Relación revenue y profit
ggplot(financials, aes(x = Revenue, y = Profit)) +
  geom_point() +
  geom_smooth(method="lm") +
  labs(
    title="Revenue vs Profit"
  )

# Relación inquiries y revenue
ggplot(financials, aes(x = Inquiries, y = Revenue)) +
  geom_point() +
  geom_smooth(method="lm") +
  labs(
    title="Inquiries vs Revenue"
  )

# Correlaciones
cor(financials$Revenue, financials$Profit)
cor(financials$Revenue, financials$`Lbs. Sold`)
