# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

FARSday <- function( data, day){
  data %>% filter(DAY_WEEK == day) %>%
    ggplot(aes(x=HOUR, y=n, color=dd)) +
    geom_point() +
    scale_color_manual(values=c("red", "blue"))
}

