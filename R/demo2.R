library(dplyr)

mtcars %>% 
  group_by(cyl) %>% 
  summarise(total=n()) %>% 
  arrange(desc(total))