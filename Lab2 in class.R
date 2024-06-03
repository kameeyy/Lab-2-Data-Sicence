getwd()

setwd("C:/Users/Lenovo_User/Documents/SEMESTER 5/Data science Lab/Lab 2")

list.files()

churn=read.csv('Churn_Train.csv',header = TRUE)

library(tidyverse)
library(dplyr)
library(dlookr)

view(churn)

# Calculate descriptive statistics
descriptive_stats <- describe(churn)
print(descriptive_stats)


# Test of normality
normality_test <- normality(churn)
print(normality_test)

# Visualization of normality
plot_normality(churn)

# Calculation of correlation coefficient using correlate()
correlation_matrix <- correlate(churn)
print(correlation_matrix)

# Visualization of the correlation matrix using plot.correlate()
plot.correlate(correlation_matrix)

categ<-target_by(churn, Internet.Service)

cat_num <- relate(categ,Tenure)

plot(cat_num)

install.packages('vcd')

library(vcd)
mosaic(Internet.Service ~ Gender, data = churn)

# Create dynamic EDA report
eda_web_report(churn)

# Create static EDA report
eda_paged_report(churn)

