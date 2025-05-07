# Normal Distribution

Data may be distributed (spread out) in different ways, but in many cases the data tends to group around a central value, with no bias left or right, getting close to what is called a normal distribution which has the shape of a bell, and is thus also known as the Bell curve, when plotted as a histogram.

Many things closely follow a normal distribution:
- heights of people
- size of manufactured products
- measurement errors
- blood pressure
- test scores

Normal distribution properties
- mean = median = mode
- symmetry about the center
- 50% of values are less than the mean
- 50% of values are greater than the mean

The *standard deviation* is a measure of how much a distribution deviates from the normal distribution. The standard deviation is denoted by `σ` and calculated as the square root of variance. *Variance* is defined as the average of the squared differences from the *mean*.

To calculate the variance, first calculate the mean value, then, for each number, subtract the mean and square the result - this is called the *squared difference*. Finally, calculate the average of the squared differences.

For example, consider a data set that are measures of the heights of a group of various dog breeds (in mm): 600, 470, 170, 430, 300. First we find the mean of the data set. Then we calculate the difference from the mean for each data point. To calculate the variance, we take each difference, square it, and then average the result.

```js
dataset A = {600, 470, 170, 430, 300}

       600 + 470 + 170 + 430 + 300   1970
mean = --------------------------- = ----- = 394
                  5                    5

Difference from the mean for each data point:

  600      470      170      430      300
- 394    - 394    - 394    - 394    - 394
-----    -----    -----    -----    -----
= 206    = 76     =-224    =  36    = -94

Variance is the average of the squared differences from the mean:

     206² + 76² + (−224)² + 36² + (−94)²   42436 + 5776 + 50176 + 1296 + 8836
σ² = ----------------------------------- = ----------------------------------
                   5                                         5

     108520
σ² = ------ = 21704
        5

Standard deviation:

σ = √21704 = 147.32 ≈ 147 mm
```

Now we can show, e.g. which heights are within one Standard Deviation (147 mm) of the Mean.

In general ,with normal distribution, we expect about 68% of values to be within ±1 standard deviation.

https://www.mathsisfun.com/data/standard-deviation.html
https://www.mathsisfun.com/data/standard-deviation-calculator.html
https://www.mathsisfun.com/data/standard-normal-distribution.html
https://www.mathsisfun.com/mode.html
https://www.mathsisfun.com/median.html
https://www.mathsisfun.com/mean.html
https://www.mathsisfun.com/data/binomial-distribution.html
https://www.mathsisfun.com/combinatorics/combinations-permutations.html
https://www.mathsisfun.com/pascals-triangle.html
https://www.mathsisfun.com/data/standard-normal-distribution-table.html
https://www.mathsisfun.com/data/central-measures.html
https://www.mathsisfun.com/data/outliers.html

https://www.mathsisfun.com/data/probability-shared-birthday.html
https://www.mathsisfun.com/data/probability-events-conditional.html

Probability and Statistics
https://www.mathsisfun.com/data/index.html
