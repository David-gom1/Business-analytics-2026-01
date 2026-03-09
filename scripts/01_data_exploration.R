library(tidyverse)
library(readxl)

# Ver hojas del archivo
excel_sheets("data/Web_Analytics.xls")

# Cargar datos
weekly <- read_excel("data/Web_Analytics.xls", sheet = "Weekly Visits")
financials <- read_excel("data/Web_Analytics.xls", sheet = "Financials")

# Revisar estructura
str(weekly)
str(financials)

# Primeras filas
head(weekly)
head(financials)

# Resumen estadístico
summary(weekly)
summary(financials)
