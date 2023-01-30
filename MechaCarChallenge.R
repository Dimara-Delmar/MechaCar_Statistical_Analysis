# Deliverable 1:
# Load the dplyr package.
library(tidyverse)

# Import/read the MechaCar_mpg.csv as a dataframe.
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

# Generate summary statistics.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))


# Deliverable 2:
# Import/read the Suspension_Coil.csv as a dataframe.
Suspension_table <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe.
total_summary <- Suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# Create a lot_summary table.
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')


# Deliverable 3:
# Use the t.test() function on PSI.
t.test(Suspension_table$PSI, mu=1500)

# Use the subset() arguments to divide the three lots. 
psi_lot1 <- Suspension_table %>% subset(Manufacturing_Lot=='Lot1')
psi_lot2 <- Suspension_table %>% subset(Manufacturing_Lot=='Lot2')
psi_lot3 <- Suspension_table %>% subset(Manufacturing_Lot=='Lot3')

# Run t.tests on the subsets.
t.test(psi_lot1$PSI, mu=1500)
t.test(psi_lot2$PSI, mu=1500)
t.test(psi_lot3$PSI, mu=1500)
