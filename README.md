# MechaCar_Statistical_Analysis
Module 15

## Linear Regression to Predict MPG
x

![Regression_Analyis](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/linear_regression_output.png)

## Summary Statistics on Suspension Coils
x

![Total Summary](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/total_summary_df.png)

![Lot Summary](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/lot_summary_df.png)

## T-Tests on Suspension Coils
Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![T-Test](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/ttest_samplevspop.png)

x
![Lot T-tests](https://github.com/sbull32/MechaCar_Statistical_Analysis/blob/main/ttest_lotsvspop.png)

## Study Design: MechaCar vs Competition
In order to determine how MechaCar performs against the competetion we will be testing a cars overall fuel efficiency, initial cost and average maintenance costs, as well as consumer ratings to determine whether our cars are affordable and have a lower cost for the same average consumer rating.

Our null hypothesis is that overall vehicle costs will not effect average consumer rating while our alternate hypothesis is that higher costs do have an effect on the overall consumer ratings for the vehicle.

To test our hypothesis we will be performing a multiple linear regression analysis in order to determine whether each individual cost (fuel efficiency, price, maintenance costs) has a significant impact on overall consumer ratings. We chose this method due to its flexibilty and the abiltiy to adjust the independent variables as needed in order to see what may or may not have an effect on the consumer rating.

In order to perform this test we would need to obtain a large sample of vehicles (inculding both MechaCar and competitor models) and have the fuel efficiency (mpg), initial cost (price), maintaince costs (avg costs over first 3 years), as well as the consumer ratings for each vehicle (must be unbiased and standardized). 
