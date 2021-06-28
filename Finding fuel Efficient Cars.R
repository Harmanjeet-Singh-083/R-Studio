# use the tidyverse library
library(tidyverse)

# create a dataframe out of tidyverse's mpg data
datampg <- mpg

# create vectors to access various variables
x_displ <- datampg$displ
y_cty <- datampg$cty
z_year <- datampg$year

# question 1: what are the mean, median and first & third quartiles for 
# each of these variables?
summary(x_displ)
summary(y_cty)
summary(z_year)
# question 2: are displacement and fuel economy correlated? Please
# provide a quantitative answer
cor(y_cty,x_displ)
# question 3: 
#are engines getting smaller each year? How can you show
# the relationship between engine size and model year?

# question 4: is manual transmission more fuel efficient than automatic 
# transmission?
 mpg2 <- mpg
 mpg2$is.automatic <- startsWith(mpg2$trans, 'auto')
 mpg2$transmission <- ifelse(mpg2$is.automatic, 'auto', 'man')
 qplot(transmission, cty, data=mpg2, geom='boxplot', fill=transmission)

