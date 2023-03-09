library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE) +
  labs(title = "Regression Plot of Weight and Miles per Gallon",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon")

this_filename_date <- as.character(Sys.Date())
# format the Sys.time() to show only hours and minutes 
this_filename_time <- as.character(format(Sys.time(), format = "%H_%M"))
ggsave(paste0("figures/regression_plot_",
              this_filename_date,"_",
              this_filename_time,".png"))
