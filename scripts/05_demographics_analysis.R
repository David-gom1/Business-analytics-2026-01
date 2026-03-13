# -------------------------
# TRAFFIC SOURCES
# -------------------------

traffic_sources <- data.frame(
  Source = c("Referring Sites", "Search Engines", "Direct Traffic", "Other"),
  Visits = c(38754, 20964, 9709, 4)
)

ggplot(traffic_sources, aes(x=reorder(Source, Visits), y=Visits)) +
  geom_bar(stat="identity", fill="steelblue") +
  coord_flip() +
  labs(
    title="Traffic Sources",
    x="Source",
    y="Visits"
  ) +
  theme_minimal()


# -------------------------
# SEARCH ENGINES
# -------------------------

search_engines <- data.frame(
  Engine = c("Google","Yahoo","Search","MSN","AOL","Ask","Live","Bing","Voila","Netscape"),
  Visits = c(17681,1250,592,424,309,268,145,122,63,26)
)

ggplot(search_engines, aes(x=reorder(Engine, Visits), y=Visits)) +
  geom_bar(stat="identity", fill="darkgreen") +
  coord_flip() +
  labs(
    title="Top Search Engines",
    x="Search Engine",
    y="Visits"
  ) +
  theme_minimal()


# -------------------------
# GEOGRAPHIC SOURCES
# -------------------------

regions <- data.frame(
  Region=c("South America","Northern America","Central America","Western Europe",
           "Eastern Asia","Northern Europe","Southern Asia","South-Eastern Asia",
           "Southern Europe","Eastern Europe"),
  Visits=c(22616,17509,6776,5214,3228,2721,2589,1968,1538,1427)
)

ggplot(regions, aes(x=reorder(Region, Visits), y=Visits)) +
  geom_bar(stat="identity", fill="purple") +
  coord_flip() +
  labs(
    title="Visits by Region",
    x="Region",
    y="Visits"
  ) +
  theme_minimal()


# -------------------------
# BROWSERS
# -------------------------

browsers <- data.frame(
  Browser=c("Internet Explorer","Firefox","Opera","Safari","Chrome","Mozilla",
            "Netscape","Konqueror","SeaMonkey","Camino"),
  Visits=c(53080,13142,938,850,792,478,47,31,24,9)
)

ggplot(browsers, aes(x=reorder(Browser, Visits), y=Visits)) +
  geom_bar(stat="identity", fill="orange") +
  coord_flip() +
  labs(
    title="Browsers Used",
    x="Browser",
    y="Visits"
  ) +
  theme_minimal()


# -------------------------
# OPERATING SYSTEMS
# -------------------------

os <- data.frame(
  OS=c("Windows","Macintosh","Linux","Not Set","iPhone","SymbianOS","FreeBSD",
       "iPod","Playstation 3","Playstation Portable"),
  Visits=c(67063,1184,1045,48,29,20,18,8,4,3)
)

ggplot(os, aes(x=reorder(OS, Visits), y=Visits)) +
  geom_bar(stat="identity", fill="red") +
  coord_flip() +
  labs(
    title="Operating Systems Used",
    x="Operating System",
    y="Visits"
  ) +
  theme_minimal()
