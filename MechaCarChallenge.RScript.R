#Use the library() function to load the dplyr package.
library(dplyr)
#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar <- read.csv("MechaCar_mpg.csv")
#The Suspension_Coil.csv file is imported and read into a dataframe
susCoil <- read.csv("Suspension_Coil.csv")
#Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
linRegModel <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar) #generate multiple linear regression model
linRegModel

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(linRegModel)

#Suspension Coil
#An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots
total_summary <- summarize(susCoil, Mean = mean(PSI), Median = median(PSI), SD = sd(PSI), Variation = var(PSI))

#An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot
lot_summary <- summarize(group_by(susCoil, Manufacturing_Lot), Mean = mean(PSI), Median = median(PSI), SD = sd(PSI), Variation = var(PSI))


#There is a summary that addresses the design specification requirement for all the manufacturing lots and each lot individually
#Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
total_Ttest <- t.test(susCoil$PSI, mu = 1500)

#Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot_1_Ttest <- t.test(subset(susCoil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
lot_2_Ttest <- t.test(subset(susCoil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
lot_3_Ttest <- t.test(subset(susCoil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)