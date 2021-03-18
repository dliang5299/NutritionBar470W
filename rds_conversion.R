# libraries
library(tidyverse)
library(data.table)

# read data and save as RDS
nb <- fread("Data/NutritionBarData.csv")
nb1 <- nb %>%
  mutate(Minutes = as.factor(Minutes),
         Participant = as.factor(Participant))
saveRDS(nb1, file = "Data/nb.rds")
