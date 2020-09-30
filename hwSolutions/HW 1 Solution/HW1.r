# HW1.R
# Betty Malloy
# 9.11.2020
# Code I used for HW 1 problem 1.

library(mosaic)
library(ggplot2)

lead <- read.csv("lead.csv",header=T)
dim(lead) # number of observations by number of variables
summary(lead$MAXFT) # note the NA's are missing values!
summary(lead$iqf) # no NA's so no missing values

# MAXFT
favstats(MAXFT ~ factor(GROUP), data = lead) # also gives missing values
histogram(~MAXFT | factor(GROUP), data = lead,col="light blue")
qplot(x = factor(lead$GROUP),y = lead$MAXFT, geom = "boxplot",xlab='exposure group',
      ylab='MAXFT')  # the warning you get reiterates there are missing values!

# iqf
favstats(iqf ~ factor(GROUP), data = lead)
histogram(~iqf | factor(GROUP), data = lead,col="light blue")
qplot(x = factor(lead$GROUP),y = lead$iqf, geom = "boxplot",xlab='exposure group',
      ylab='iqf')
