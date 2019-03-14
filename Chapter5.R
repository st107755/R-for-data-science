#Imports
library(tidyverse)

# Two Categorical Variables 

diamonds %>%
  count (color ,cut)

diamonds %>%
  count (color ,cut) %>%
  ggplot(mapping = aes(x = color, y = cut))+
  geom_tile(mapping = aes(width = n))

