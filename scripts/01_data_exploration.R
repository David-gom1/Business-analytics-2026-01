library(tidyverse)
library(readxl)

# Ver hojas del archivo
excel_sheets("data/Web_Analytics.xls")

# Cargar datos
weekly <- read_excel("data/Web_Analytics.xls", sheet = "Weekly Visits")
financials <- read_excel("data/Web_Analytics.xls", sheet = "Financials")
lbs_sold <- read_excel("data/Web_Analytics.xls", sheet = "Lbs. Sold")
daily <- read_excel("data/Web_Analytics.xls", sheet = "Daily Visits")

# Revisar estructura
str(weekly)
str(financials)

# Primeras filas
head(weekly)
head(financials)
head(lbs_sold)
head(daily)

# Resumen estadístico
summary(weekly)
summary(financials)
