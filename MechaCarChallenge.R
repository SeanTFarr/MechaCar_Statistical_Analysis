# load tidyverse package
library(tidyverse)
# Deliverable 1
# read MechaCar_mpg.csv file as a dataframe
Mecha <- read.csv('Resources/MechaCar_mpg.csv')
# Perform linear regression using the 'lm()' function and then the "summary()' function
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, Mecha) %>% summary()
# Deliverable 2
# read Suspension_Coil.csv file as a table
suspension <- read.csv('Resources/Suspension_Coil.csv') 
# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- summarize(suspension, Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, var, and sd of the suspension coil's PSI column
psi_grouping <- group_by(suspension, Manufacturing_Lot)
lot_summary <- summarize(psi_grouping, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Deliverable 3
# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
sample_susp <- suspension %>% sample_n(25)
t.test(sample_susp$PSI,mu=1500)
# write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different 
#from the population mean of 1,500 pounds per square inch
# Lot 1
lot1 <- subset(suspension, Manufacturing_Lot =="Lot1")
t.test(lot1$PSI, mu=1500)
# Lot 2
lot2 <- subset(suspension, Manufacturing_Lot =="Lot2")
t.test(lot2$PSI, mu=1500)
# Lot 3
lot3 <- subset(suspension, Manufacturing_Lot =="Lot3")
t.test(lot3$PSI, mu=1500)
