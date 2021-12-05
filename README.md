# MechaCar_Statistical_Analysis
The purpose of this analysis is to review the production data of the MechaCar for insights that may help the manufacturing team overcome production issues.
In this we are looking at 4 things:
1. Performing a multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Running t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.
## Linear Regression to Predict MPG
<img src=Images\linregres.png>

**Q:** Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

**A:** Both vehicle length and ground cleaarance appear to provide a non-random amount of variance to mpg

**Q:** Is the slope of the linear model considered to be zero? Why or why not?

**A:** No, the slope would not be considered zero because there is not a constant relationship between x and y. The P-value is well below the significance level.

**Q:** Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

**A:** With the R-Squared value being 0.7149, this model does predict the mpg of the prototypes effectively.


## Summary Statistics on Suspension Coils

This total summary dataframe shows the mean, median, variance, and standard deviation of all lots.

<img src=Images\total_summary.png>

The lot summary dataframe below shows the same metrics divided by lot

<img src=Images\lot_summary.png>

Note: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

**Q:** With that in mind, does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

**A:** The total summary dataframe shows that across all lots, as a whole, the coils meet the design specifications of within 100 PSI(total variance = 62.29). However, when you break it down by lots, lot 1 and lot 2 are well within range at 0.98 and 7.47 variance respectively, but Lot 3 has an excessive 170.87 variance, well above the expected design specifications.

## T-Tests on Suspension Coils

A t-test was perfomed to determine if the mean of the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. Then follow up t-tests were performed on the individual lots.

All lots:

<img src=Images\t-test.png>

The t-test on all lots shows the means are  similar to the population mean of 1,500, with the 0.06 p-value being just above the significance level of 0.05, so no statistical difference



Lot 1:

<img src=Images\Lot1.png>

Lot 1 has a p-value of 1, so it has a mean that is similar to the population mean. No statistical difference.

Lot 2:

<img src=Images\Lot2.png>

Lot 2 also has a mean that is similar to the population mean(p-value=.61), so no statistical difference

Lot 3:

<img src=Images\Lot3.png>

Lot 3 on the other han has a p-value of 0.042, which is below the significance level 0.05. There is a statistical difference.


## Study Design: MechaCar vs Competition

There are many factors that a consumer looks at when considering which vehicle to buy, most of them are connected to $$$. One of those factors are printed and on a sheet that is attached to every vehicle on the show room. We briefly looked at the MPG of the prototypes based on certain variables, but how does MechaCar's City and Highway MPG compare with the competition?

**What metrics to test?** 

Both City and Highway Miles per Gallon on vehicles of comparable weight and number of cylinders in the engine.

**What is the null hypothesis and alternative hypothesis?**

H₀= There is no statistical difference between MechaCar's MPG and their competitors MPG when measuring like weights and number of cylinders.

Hₐ=There is a statistical difference between MechaCar's MPG and their competitors MPG when measuring like weights and number of cylinders.

**What statistical test to test the hypothesis?**

A two sample t-test would be used to measure to see if there is a statistical difference between the samples.

**What data is needed to run the statistical test?**

We would need data from all of MechaCar's competitors that included the vehicle's weight, number of cylinders, highway MPG, and city MPG.
