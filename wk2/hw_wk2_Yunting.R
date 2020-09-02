# add libraries
library(tidyverse)
library(readr)
library(dplyr)

# read homework's data
bloodlead <- read_csv(file = "../data/lead.csv")
head(bloodlead)

# How many individuals are in the data set?
nrow(bloodlead)

# How many variables are in this data set?
ncol(bloodlead)

# How many individuals have MAXFT scores measured? 
bloodlead %>%
  filter(!is.na(MAXFT)) -> MAXFTrm
nrow(MAXFTrm)

# How many have IQF scores measured?
bloodlead %>%
  filter(!is.na(iqf)) -> iqf
nrow(iqf)

# compare MAXFT and GROUP
MAXFTrm %>%
  select(MAXFT, GROUP) -> mg
head(mg)
# Group1: children with elevated blood-lead levels >= 40 g/ml
# Group2: children with elevated blood-lead levels < 40 g/ml

# What are the mean and median of the outcome for each group?
mg %>%
  filter(GROUP == 1) -> group1
mean(group1$MAXFT)
median(group1$MAXFT)

mg %>%
  filter(GROUP == 2) -> group2
mean(group2$MAXFT)
median(group2$MAXFT)

# Describe the shape of the distribution (i.e. histogram) of the outcome for each GROUP.
hist(group1$MAXFT)
hist(group2$MAXFT)

# What information can we get from the Boxplot of the outcome for each GROUP?
mg %>%
  mutate(GROUP = as.character(GROUP)) -> mg
qplot(x = mg$GROUP,y = mg$MAXFT, geom = "boxplot", 
      fill = I("dark green"),
      color = I("black")) 