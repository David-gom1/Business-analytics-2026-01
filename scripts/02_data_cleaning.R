library(tidyverse)
library(readxl)

weekly <- read_excel("data/Web_Analytics.xls", sheet = "Weekly Visits")

# Revisar valores faltantes
sum(is.na(weekly))

# Eliminar valores NA
weekly_clean <- na.omit(weekly)

# Guardar dataset limpio
write.csv(weekly_clean, "data/weekly_clean.csv", row.names = FALSE)
