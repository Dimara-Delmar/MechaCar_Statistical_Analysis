# MechaCar Analysis

## Overview

### Purpose
AutoRU's newest prototype MechCar is suffering from production issues, so we will be reviewing the production data to gain insights into the manufacturing problems. We will do this by completing the following tasks:

- Preform linear regressions to identify which variables in the data predict mpg of the MechaCar.
- Collect summary statistics on the pounds per inch (PSI) of the MechaCar's suspension coils.
- Run t-tests to determine if manufacturing lots have any statistically significant differences for the mean population.
- Design a study to compare the prototype MechaCar vehicles to other vehicles from different manufacturers. 

## Resources

- Data Source: `MechaCar_mpg.csv` and `Suspension_Coil.csv`
- Software: R version 4.2.2

## Linear Regression to Predict MPG

Using Linear Regression, we used the following metrics provided by the dataset to determine if any of them have a significant impact on the MechaCar’s MPG (miles per gallon). 

<img width="422" alt="Summary_Stats" src="https://user-images.githubusercontent.com/108738297/216226357-c7f40793-c0e1-4c17-a14c-18b5b1e1c3d7.PNG">

The results show that both the vehicle’s length and ground clearance have a statistically significant effect (P ≤ 0.05) on the vehicle’s MPG. In this case, the slope of the linear model cannot be zero since the data shows at least two dependent variables that have an impact on MPG. The current model as it stands can effectively predict the vehicle’s MPG based on the vehicle’s length and the ground clearance. 

## Summary Statistics on Suspension Coils

It is important to consider that the design specifications for the MechaCar suspension coils should not exceed 100 PSI (pounds per square inch). Running summary statistics for all manufacturing lots in total shows us that the mean sits around 1498.78 pounds, a median of 1500, with a variance of 62.29 and a standard deviation of 7.89.  

<img width="198" alt="total_summary" src="https://user-images.githubusercontent.com/108738297/216261082-b8a1ec01-bec4-44f6-89fd-39b13b740f97.PNG">

Breaking the data down even further between the three lots reveals the differences in their production.

<img width="304" alt="lot_summary" src="https://user-images.githubusercontent.com/108738297/216261098-443ae8a4-377f-4008-a1dc-d9924b29fa42.PNG">

Between the three results, Lot 3 differs the most with a mean PSI of 1996.14, a variance of 170.28 and a standard deviation of 13.04. Lot 2’s data sits more regularly in the middle, having more variance in it’s spread than Lot 1, but less than Lot 3’s. Finally, Lot 1’s production is the most consistent with their coil production, having the lowest variance and SD in its results.

## T-Tests on Suspension Coils

### Total T-Test

If our hypothesis is that PSI of all manufacturing lots is similar to the population mean, and the null hypothesis is that the PSI is /not/ statistically similar to the population mean, than we can use the P-value from the resulting one sample t-test to confirm if there is a statistical significance in comparing the mean PSI. 

<img width="336" alt="t_test" src="https://user-images.githubusercontent.com/108738297/216269428-b87a1764-370a-4cbe-9ba0-bce92f40d779.PNG">

The results show that the p-value across all manufacturing lots is 0.06, making the outcome statistically significant enough to reject the null hypothesis, but it’s close enough to the threshold of 0.05 to warrant further testing between the individual lots. 

### Lot 1

<img width="339" alt="psi_lot1" src="https://user-images.githubusercontent.com/108738297/216229465-200a5a64-b067-4d0f-b8bf-f03c5405a62f.PNG">

The p-value of lot 1 is the most comparable to the population mean (1 < 0.05).

### Lot 2

<img width="334" alt="psi_lot2" src="https://user-images.githubusercontent.com/108738297/216229478-3e935b88-da26-4f63-a4de-a755be8aa908.PNG">

Lot 2 has a lower p-value than the Lot 1, but still exceeds the threshold needed for statistical significance to the population mean (0.60 < 0.05).

### Lot 3

<img width="332" alt="psi_lot3" src="https://user-images.githubusercontent.com/108738297/216229489-1fe50808-faf9-48a6-945c-ef4680c23456.PNG">

Out of all the manufacturing lots, Lot 3 is the only one to fall below the significance threshold, meaning it’s PSI is not comparable to the population mean, and likely poses an issue with the PSI manufacturing process (0.04 > 0.05).
