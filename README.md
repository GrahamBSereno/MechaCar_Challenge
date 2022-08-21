# MechaCar_Challenge

## Purpose
- MechaCar, an emerging car manufacturing start-up, is suffering from production troubles that are blocking the manufacturing team’s progress.
- Review the production data utilizing R for statistical models that provide valuable insights for the Manufacturing Team.

## Steps
1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression Model: Miles Per Gallon
The below multiple linear regression model was leveraged to predict MPG based on the following variables: 
- All-Wheel Drvining Ability
- Vehicle Length
- Vehicle Weight
- Spoiler Angle
- Ground Clearance

### Linear Regression Model Equation

![Linear Regression Model](https://github.com/GrahamBSereno/MechaCar_Challenge/blob/main/MechaImages/LinearRegressionEquation.png)

### Linear Regression Model Summary

![Linear Regression Model](https://github.com/GrahamBSereno/MechaCar_Challenge/blob/main/MechaImages/LinearRegressionTerminalOutput.png)

### Metadata

![Linear Regression Model](https://github.com/GrahamBSereno/MechaCar_Challenge/blob/main/MechaImages/LinearRegressionModelGlass.png)



# Summary Statistics: Suspension Coils

## Summary
![](https://github.com/GrahamBSereno/MechaCar_Challenge/blob/main/MechaImages/TotalSummary.png)

### Analysis:
Inferences based purely on the above summary are:
- The 100 PSI total variation per suspention coils requirement is met when the lots are looked at in totality.
    
### Lot Dimensioned
![](https://github.com/GrahamBSereno/MechaCar_Challenge/blob/main/MechaImages/LotSummary.png)

Inferences at the lot level are:
- Lot 3 is an outlier in terms of variation at 170 PSI, but Lots 1 and 2 are both sub 10 PSI variation.
   
### Final Decision
The design passes, as the 100 PSI total variation per suspention coils requirement is met when the lots are looked at in totality.
