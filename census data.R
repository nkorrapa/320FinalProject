library(tidycensus)
library(tidyverse)
census_api_key("67f8db7f125022528fde3dc96a4f78c369e84cc0", install = TRUE)

var<- load_variables(2017, "acs5")
medincomela <- get_acs(geography = "tract", variables = "B06011_001", state = "CA", county = "Los Angeles")
populationla <- get_acs(geography = "tract", variables = "B01003_001", state = "CA", county = "Los Angeles")
laborla <- get_acs(geography = "tract", variables = "B10058_002", state = "CA", county = "Los Angeles")
housingownla <- get_acs(geography = "tract", variables = "B07013_002", state = "CA", county = "Los Angeles")
housingrentla <- get_acs(geography = "tract", variables = "B07013_003", state = "CA", county = "Los Angeles")
#educationla <- deal w/ this later
#maybe break these down some more