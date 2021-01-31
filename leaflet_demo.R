# Leaflet demo
# https://rstudio.github.io/leaflet/

# install.packages("leaflet")

library(leaflet)
library(tidyverse)

# Making a leaflet with tiles and markers as described
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m  # Print the map

# Manually doing each step
m <- leaflet()
m <- addTiles(m)
m <- addMarkers(m, lng=174.768, lat=-36.852, popup="The birthplace of R")
m # same as before




library(readr)
library(tidyverse)
seattle <- read_csv('https://raw.githubusercontent.com/Stat534/DataViz/main/SeattlePolice.csv')

#unique(seattle$Event.Clearance.Description)
#str(seattle)

seattle = seattle %>% filter(Event.Clearance.Description == "TRESPASS")

head(seattle)

leaflet(seattle) %>%
  addTiles() %>%
  addCircles(lng = ~Longitude, lat = ~Latitude)
