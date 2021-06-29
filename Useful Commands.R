
# Harmanjeet Singh
# Student Id c0790083
system("whoami")

# time and date
Sys.time()

# Tidyverse library
library(tidyverse)

# dataset we use
Murder_Death

# getting info for dataset
?Murder_Death
glimpse(Murder_Death)
head(Murder_Death)
tail(Murder_Death)
dim(Murder_Death) 
view(Murder_Death)
#Selecting the required coloumns of dataset
Required_coloumn<- select(relig_income,religion,`>150k`)

# Arrange the data in ascending order 
Ascending_data<-Required_coloumn%>%arrange(`>150k`)

# Filter the rows which are reuired
Filter_data<-Ascending_data%>%filter(`>150k`>200)
Filter_data<-Ascending_data%>%filter(class=="2seater")

# Get the summary for the particular variable 
summary(c$hwy)

#####GGPLOT to show the data in frequency
ggplot(mpg,aes(x=class,fill=manufacturer))+geom_bar()

###### GGPLOT to find the relationship
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class))+ggtitle("Plot of length \n by dose") +
  xlab("Dose (mg)") + ylab("Teeth length")

#######Comparing two variables at the asmae time
############# considering two variables on same time
ggplot(mpg,aes(x=hwy,y=cty,fill=displ))+geom_tile(colour="white")
ggplot(esoph,aes(x=alcgp,y=tobgp,fill=ncases/(ncases+ncontrols)))+geom_tile(colour="white")


########Showing Boxplot to find the solution
qplot(y=hwy,data=mpg,geom='boxplot',fill=class)
qplot(y=ncases/(ncases+ncontrols),data=esoph,geom='boxplot',fill=alcgp)

#########Showing Histogram 
hist(mpg$displ)

############mutate
aa<-mutate(a, cty_hwy =cty+hwy )

#### Grouping the data and then finding the average  
Grouping_data<-mpg %>% group_by(manufacturer)%>%summarise(Average=mean(hwy))%>%filter(Average>25)
ggplot(Grouping_data) + geom_point(mapping = aes(x = manufacturer, y= Average))
ggplot(Grouping_data) + geom_point(mapping = aes(x = manufacturer, y= Average,colour=manufacturer))

######  Grouping the data and then  arrange in ascending form then apply filter 
relig_income %>% group_by(religion)%>%select(religion,`$10-20k`)%>%arrange(`$10-20k`)
a<-relig_income %>% group_by(religion)%>%select(religion,`$10-20k`)%>%arrange(`$10-20k`)%>%filter(`$10-20k`>200)
ggplot(a) + geom_point(mapping = aes(x = religion, y= `$10-20k`,colour=religion))
ggplot(a) + geom_point(mapping = aes(x = religion, y= `$10-20k`))

################




