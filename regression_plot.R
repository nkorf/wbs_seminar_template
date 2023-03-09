library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE) +
  labs(title = "Regression Plot of Weight and Miles per Gallon",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon")
ggsave("regression_plot.png")
