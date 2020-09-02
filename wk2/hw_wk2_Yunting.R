# add libraries
library(tidyverse)
library(readr)

# read homework's data
bloodlead <- read_csv(file = "../data/lead.csv")
head(bloodlead)

# How many individuals are in the data set?
nrow(bloodlead)

# How many variables are in this data set?
ncol(bloodlead)

