# libraries
library(tidyverse)
library(data.table)

# read data and save as RDS
nb <- fread("Data/NutritionBarData.csv")
saveRDS(nb, file = "Data/nb.rds")
