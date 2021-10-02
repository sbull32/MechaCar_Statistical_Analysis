library(jsonlite)
library(tidyverse)

MechaCar_df <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df))

suspension_coil_table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary_df <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI), .groups = 'keep')
lot_summary_df <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI), .groups = 'keep')

sample_table <- suspension_coil_table %>% sample_n(25) #randomly sample 25 data points
t.test((sample_table$PSI),mu=mean(suspension_coil_table$PSI)) #compare sample versus population means

lot1 <- subset(suspension_coil_table, Manufacturing_Lot=="Lot1") #select only data points in Lot1
lot1_sample <- lot1 %>% sample_n(20)
lot2 <- subset(suspension_coil_table, Manufacturing_Lot=="Lot2") #select only data points in Lot1
lot2_sample <- lot2 %>% sample_n(20)
lot3 <- subset(suspension_coil_table, Manufacturing_Lot=="Lot3") #select only data points in Lot1
lot3_sample <- lot3 %>% sample_n(20)

t.test(lot1_sample$PSI, suspension_coil_table$PSI, replace = FALSE, prob = NULL) #compare sample of lot 1 vs overall population mean
t.test(lot2_sample$PSI, suspension_coil_table$PSI, replace = FALSE, prob = NULL) #compare sample of lot 2 vs overall population mean
t.test(lot3_sample$PSI, suspension_coil_table$PSI, replace = FALSE, prob = NULL) #compare sample of lot 3 vs overall population mean





