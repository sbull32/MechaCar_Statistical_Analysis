# MechaCar_Statistical_Analysis
Module 15

## Linear Regression to Predict MPG
Using linear regression modules we were able to determine that vehicle length and ground clearance provided a non-random amount of variance to the mpg values in our dataset, in other words they had the most significant impact on a vehicles mpg across the variables we used. In addition the y-intercept coefficient was statistically significant signaling we may need to include other variables or scale our current variables in order to most accurately predict our mpg.

In this test our slope was not considered to be zero due to the coefficients of each of our variables not being equal to zero. While our test does have a statistically significant p-value of <.01, I do have concerns about the number of variables we could be missing, inferred by our low intercept coefficient. In addition our multiple R-squared value of .71 shows a moderate to strong measure of our modules correlation.

![Regression_Analyis](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/linear_regression_output.png)

## Summary Statistics on Suspension Coils
The current manufacturing data we have shows that the coils meet the design specification of a variance less than 100 PSI when taking all three manufacturing lots in total, with a variance of about 62 PSI. 

![Total Summary](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/total_summary_df.png)

However, when we took all three lots and tested them individually we noticed that while Lot 1 and Lot 2 had very low PSI variance figures of 1 and 7.5 respectively, Lot 3 had a variance of 170 PSI which greatly exceeds our required design specification of a variance under 100 PSI.

![Lot Summary](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/lot_summary_df.png)

## T-Tests on Suspension Coils
For the first test, we created a sample dataset of 25 randomly chosen vehicles and then performed a one-sided t-test comparing the sample vehicles PSI measures to the overall population mean of 1,500 PSI. Our test indicated we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![T-Test](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/ttest_samplevspop.png)

For the second test we needed to create three sample tables, using vehicles from each individual lot to test their PSI's against our population mean of 1,500 PSI. When we did this, we determined that while lot 2 had a statistically significant p-value, the other two lot samples had p-values which were not statistically significant (higher than .05). This means that while lot 2 did not reject the null hypothesis showing the means are statistically similar, lots 1 and 3 were not able to 

![Lot T-tests](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/ttest_lotsvspop.png)

## Study Design: MechaCar vs Competition
In order to determine how MechaCar performs against the competetion we will be testing a cars overall fuel efficiency, initial cost and average maintenance costs, as well as consumer ratings to determine whether our cars are affordable and have a lower cost for the same average consumer rating.

Our null hypothesis is that overall vehicle costs will not effect average consumer rating while our alternate hypothesis is that higher costs do have an effect on the overall consumer ratings for the vehicle.

To test our hypothesis we will be performing a multiple linear regression analysis in order to determine whether each individual cost (fuel efficiency, price, maintenance costs) has a significant impact on overall consumer ratings. We chose this method due to its flexibilty and the abiltiy to adjust the independent variables as needed in order to see what may or may not have an effect on the consumer rating.

In order to perform this test we would need to obtain a large sample of vehicles (inculding both MechaCar and competitor models) and have the fuel efficiency (mpg), initial cost (price), maintaince costs (avg costs over first 3 years), as well as the consumer ratings for each vehicle (must be unbiased and standardized). 
