setwd(data)
getwd()  # Verifica que estás en el directorio correcto

install.packages(c("tidyverse", "readxl", "ggplot2"))

library(tidyverse)
library(readxl)
library(ggplot2)

excel_sheets("Web_Analytics.xls")

weekly <- read_excel("Web_Analytics.xls", sheet = "Weekly Visits")
financials <- read_excel("Web_Analytics.xls", sheet = "Financials")
lbs_sold <- read_excel("Web_Analytics.xls", sheet = "Lbs. Sold")
daily <- read_excel("Web_Analytics.xls", sheet = "Daily Visits")


head(weekly)
head(financials)
head(lbs_sold)
head(daily)

str(weekly)
str(financials)

summary(weekly)
summary(financials)
