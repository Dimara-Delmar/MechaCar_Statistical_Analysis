# Load the dplyr package.
library(tidyverse)

# Import/read the MechaCar_mpg.csv as a dataframe.
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

# Generate summary statistics.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

# Import/read the Suspension_Coil.csv as a dataframe.
Suspension_table <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe.
total_summary <- Suspension_table %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# Create a lot_summary table.
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
  