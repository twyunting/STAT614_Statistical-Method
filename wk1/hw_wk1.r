# title: "hw_wk1"
# author: "Yunting Chiu"
# date: "8/28/2020"

# 1. Ans: I discussed with Sihyuan Han.
# 2. Ans: In Case Study 1.2, it has allocated two segments: male and female in the initial stage.
          #Compared to Case study 1.1, it is randomly sampled and not classified at the beginning.

# 3. Using R find numerical and graphical summaries of this data. 
#Use these to describe the distribution of the starting salaries for both males and females.

# Libraies and read Data
  
library(readr)
library(tidyverse)
library(ggplot2)
library(mosaic)
SDE <- read_csv(file = "../data/case0102.csv")
tail(SDE)

# 3a.	Give and interpret the mean salary and standard deviation of salaries for females. 
#Do this also for males.
#mean salary of female and male
SDE %>%
  filter(Sex == "Female") -> SDE_Female
mean(SDE_Female$Salary)  
SDE %>%
  filter(Sex == "Male") -> SDE_Male
mean(SDE_Male$Salary)

# SD
sd(SDE_Female$Salary)  #SD for Female
sd(SDE_Male$Salary) # SD for Male


# 3b.	Give and interpret the median salary and the IQR of salaries for females. 
# Do this also for males.
# find interquartile range of female in R
summary(SDE_Female$Salary)  

# find interquartile range of male in R
summary(SDE_Female$Salary)  


# 3c.	Give a histogram of salaries for each group. 
hist(SDE_Female$Salary)
hist(SDE_Male$Salary)


# 3d.	Give side-by-side boxplots of salaries.
SDE %>%
  ggplot(mapping = aes(x = Sex, y = Salary, fill = Sex))+
  geom_boxplot()+
  theme_bw()

# 3e. Use a. to d. to describe the distribution of salaries for each group.
favstats(Salary ~ Sex, data = SDE)
histogram(~Salary | Sex, data = SDE, col = "red")

# 3f. Ans: Female group’s salaries are larger since the sample size is bigger, 
      #but male’s average salaries are larger, 
      #because 5956.875 (male’s mean salaries) > 5138.852 (female’s mean salaries)

# 4. Ans: No errors on my R code

# 5. Ans: There are still some other factors we should consider, 
    # such as male may have had more years of previous experience.



