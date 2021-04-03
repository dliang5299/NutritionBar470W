# libraries
library(tidyverse)
library(emmeans)

# visual options
theme_set(theme_bw())

# load data
nb <- readRDS("Data/nb.rds")

# gender diff. in glucose
ggplot(nb, aes(x = Gender, y = Glucose)) +
  geom_boxplot()
  
# brand diff. in glucose
ggplot(nb, aes(x = NutritionBar, y = Glucose)) +
  geom_boxplot()

# brand stability
ggplot(nb, aes(x = NutritionBar, y = Glucose, fill = Minutes)) +
  geom_boxplot()

# minute diff. in glucose
ggplot(nb, aes(x = Minutes, y = Glucose)) +
  geom_boxplot()

# 15 to 45 change
nb1 <- nb %>%
  pivot_wider(id_cols = c(Participant, NutritionBar, Gender), names_from = Minutes, values_from = Glucose) %>%
  mutate(Change = `45` - `15`)
ggplot(nb1, aes(x = NutritionBar, y = Change)) +
  geom_boxplot() +
  ylab("Change in Blood Glucose from 15 to 45 Minutes")

# save condensed data
saveRDS(nb1, "Data/nb_condensed.RDS")
  
