library(readxl)

demographics <- read_excel("data/Web_Analytics.xls", sheet = "Demographics")

# Mostrar datos
head(demographics)

# Sumar visitas por categoría
summary(demographics)

# Ejemplo gráfico si se estructura la tabla
library(ggplot2)

ggplot(demographics, aes(x = reorder(`All Traffic Sources`, Visits), y = Visits)) +
  geom_bar(stat="identity") +
  coord_flip() +
  labs(
    title="Traffic Sources",
    x="Source",
    y="Visits"
  )
