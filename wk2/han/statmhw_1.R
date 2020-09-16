
# hw_1
# by Sihyuan Han 

library(readr)
library(tidyverse)
library(mosaic)
library(ggplot2)
library(dplyr)

lead <- read_csv(file = "../data/lead.csv")
head(lead)

# 1. How many individuals are in the data set?
length(lead$id)

# 2. How many variables are in this data set? 
ncol(lead)

# 5. How many individuals have MAXFT scores measured? How many have IQF scores measured?
length(na.omit(lead$MAXFT))
length(na.omit(lead$iqf))

# 6-a
library(dplyr)
lead %>%
  filter(GROUP == "1") -> lead_gone
mean(lead_gone$iqf, na.rm = TRUE)

lead %>%
  filter(GROUP == "2") -> lead_gtwo
mean(lead_gtwo$iqf, na.rm = TRUE)

# 6-b
hist(lead_gone$iqf)
hist(lead_gtwo$iqf)





