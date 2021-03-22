# libraries
library(tidyverse)

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

# 75 min. glucose - not needed; answered by brand stability plot
# nb75 <-
#   nb %>%
#   filter(Minutes == "75")
# ggplot(nb75, aes(x = NutritionBar, y = Glucose)) +
#   geom_boxplot() +
#   ylab("Glucose at 75 Minutes")

# tukey plots


