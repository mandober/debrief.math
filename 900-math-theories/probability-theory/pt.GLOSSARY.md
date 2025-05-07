# Probability theory :: Glossary

https://en.wikipedia.org/wiki/Glossary_of_probability_and_statistics

<!-- TOC -->

- [Atomic event](#atomic-event)
- [Almost surely](#almost-surely)
- [Bias](#bias)
- [Binary data](#binary-data)
- [Bivariate analysis](#bivariate-analysis)
- [Blocking](#blocking)
- [Causal study](#causal-study)
- [Computational statistics](#computational-statistics)
- [Concomitants](#concomitants)
- [Conditional distribution](#conditional-distribution)
- [Conditional Probability](#conditional-probability)
- [Confidence interval](#confidence-interval)
- [Confidence level](#confidence-level)
- [Confounder](#confounder)
- [Correlation](#correlation)
- [Count data](#count-data)
- [Covariance](#covariance)
- [Data set](#data-set)
- [Data point](#data-point)
- [Elementary Event](#elementary-event)
- [Estimation theory](#estimation-theory)
- [Estimator](#estimator)
- [Expected value](#expected-value)
- [Experiment](#experiment)
- [Event](#event)
- [Histogram](#histogram)
- [Interquartile range (IQR)](#interquartile-range-iqr)
- [Joint distribution](#joint-distribution)
- [Joint probability](#joint-probability)
- [Kurtosis](#kurtosis)
- [Law of large numbers](#law-of-large-numbers)
- [Likelihood function](#likelihood-function)
- [Marginal distribution](#marginal-distribution)
- [Marginal probability](#marginal-probability)
- [Mean](#mean)
- [Moving average](#moving-average)
- [Multivariate random variable](#multivariate-random-variable)
- [Mutual independence](#mutual-independence)
- [Null hypothesis](#null-hypothesis)
- [Pairwise independence](#pairwise-independence)
- [Parameter](#parameter)
- [Probability](#probability)
- [Prior probability](#prior-probability)
- [Population parameter](#population-parameter)
- [Posterior probability](#posterior-probability)
- [Probability density](#probability-density)
- [Probability density function](#probability-density-function)
- [Probability distribution](#probability-distribution)
- [Probability measure](#probability-measure)
- [Probability space](#probability-space)
- [Quantile](#quantile)
- [Quartile](#quartile)
- [Random variable](#random-variable)
- [Range](#range)
- [Regression analysis](#regression-analysis)
- [Response variable](#response-variable)
- [Sample mean](#sample-mean)
- [Sample](#sample)
- [Sample space](#sample-space)
- [Sampling](#sampling)
- [Sampling distribution](#sampling-distribution)
- [Statistical independence](#statistical-independence)
- [Statistical inference](#statistical-inference)
- [Statistical population](#statistical-population)
- [Statistical dispersion](#statistical-dispersion)
- [Statistical parameter](#statistical-parameter)
- [Skewness](#skewness)
- [Standard deviation](#standard-deviation)
- [Statistic](#statistic)
- [Tidy data](#tidy-data)
- [Treatment](#treatment)
- [Trial](#trial)
- [Units](#units)
- [Variance](#variance)

<!-- /TOC -->

## Atomic event
see elementary event.

## Almost surely
In probability theory, an event is said to happen *almost surely* if it happens with probability 1 (with respect to the probability measure). In other words, the set of outcomes on which the event does not occur has probability 0, even though the set might not be empty. The concept is analogous to the concept of "almost everywhere" in measure theory.

## Bias
1. Any feature of a sample that is not representative of the larger population.
2. The difference between the expected value of an estimator and the true value.

## Binary data
Data that can take only two values, usually represented by the binary digits 0 and 1.

## Bivariate analysis
A type of quantitative statistical analysis in which exactly two variables are analyzed, for the purpose of determining the empirical relationship between them (contrasted by multivariate analysis).

## Blocking
In experimental design, the arranging of experimental units in groups ("blocks") that are similar to one another. Blocking is often used to manage *the problem of pseudoreplication*.

## Causal study
A statistical study in which the objective is to measure the effect of some variable on the outcome of a different variable. For example, a causal study might ask the question: "How will my headache feel if I take aspirin, versus if I do not take aspirin?" Causal studies may be either experimental or observational.

## Computational statistics
The study of statistical methods that are enabled by using computational methods, at the interface of statistics and computer science.

## Concomitants
In a statistical study, any variables whose values are unaffected by experimental treatments, such as a unit's age, gender, and cholesterol level before starting an experimental diet.

## Conditional distribution
Given two jointly distributed random variables X and Y, the conditional probability distribution of Y given X (written `Y|X`) is the probability distribution of Y when X is known to be a particular value.

## Conditional Probability
Probability of some event `A` occurring, assuming event `B` has occurred, is conditional probability, written `P(A|B)`, read "probability of A given B".

## Confidence interval
In inferential statistics, confidence interval (CI) is a range of plausible values for some unknown parameter, such as a population mean, defined as an interval with a lower bound and an upper bound. The precise values of these bounds are calculated from a pre-determined confidence level, chosen by the researcher. 

The confidence level represents the frequency of intervals that, over the long run, capture the true value of the unknown parameter; i.e. 95% of confidence intervals computed at the 95% confidence level contain the true value, and likewise for other confidence levels.

For example, based on a study of sleep habits among a random sample of 100 people, a researcher may estimate at the 95% confidence level that the overall population sleeps somewhere between 5 and 9 hours per night. There is a 95% chance that the true population mean falls within this interval, because 95% of random samples taken from this same population will yield 95% confidence intervals that contain the true mean.

## Confidence level
Confidence level, aka confidence coefficient, is a number indicating the probability that the confidence interval (range) captures the true population mean.

For example, a confidence interval with a 95% confidence level has a 95% chance of capturing the population mean. Technically, this means that, if the experiment were repeated many times, 95% of the CIs computed at this level would contain the true population mean.

## Confounder
A variable that influences both the dependent variable and the independent variable, causing a *spurious association*. The existence of *hidden confounding variables* is an important quantitative explanation why correlation does not imply causation: if changes in two variables appear to be correlated, it is risky to presume that one change causes the other because it is possible that one or more unidentified confounders has in fact caused the changes in both variables.

A classic example is the correlation between increased consumption of ice cream and increased crime in the summer. It is irrational to assume that eating more ice cream makes people commit more crime, or vice versa; it is more likely that one or more additional variables, e.g. warmer weather, increase both ice cream consumption and crime simultaneously. In this example, warmer weather is the confounder.

## Correlation
Correlation, or correlation coefficient, is a numeric measure of the strength of a linear relationship between two random variables (one can use it to quantify, for example, how shoe size and height are correlated in the population).

An example is the *Pearson product-moment correlation coefficient*, which is found by dividing the covariance of the two variables by the product of their standard deviations. 

Independent variables, by definition, have a correlation of 0. A *population correlation* is often represented by the symbol `ρ`, and a *sample correlation* by `r`.

## Count data
Data arising from counting, and which can therefore take only non-negative integer values.

## Covariance
Given two random variables X and Y, with expected values `E(X)=μ` and `E(Y)=ν`, the expected value of random variable `(X−μ)(Y−ν)`, written in statistical notation as `cov(X,Y)`. The covariance is used for measuring correlation; it can be interpreted as the degree to which the two variables change simultaneously with each other or "co-vary".

## Data set
A sample and the associated data points.

## Data point
A typed measurement - it can be a Boolean value, a real number, a vector (in which case it is also called a data vector), etc.

## Elementary Event
An elementary event, aka atomic event or sample point, is an event which contains only a single outcome in the sample space. For example, getting `2♡` when picking a card from a deck is an elementary event, while getting a face card (J, Q or K) is not.

## Estimation theory
The branch of statistics concerned with estimating the values of parameters based on measured empirical data with a random component. The parameters describe an underlying physical setting in such a way that their values affect the distribution of the measured data; an estimator attempts to use the measurements to approximate the unknown parameters.

## Estimator
A function of the known data that is used to estimate an unknown parameter; an estimate is the result of the actual application of the function to a particular set of data. For example, the mean can be used as an estimator.

## Expected value
Expected value (aka expectation, mathematical expectation, first moment, or simply mean or average) is the sum of the probabilities of each possible outcome of an experiment multiplied by their corresponding payoff or "value".

Thus, it represents the average amount, one "expects" to win per bet if bets with identical odds are repeated many times.

For example, the expected value of rolling a die is 3.5 (sum of all values from 1 to 6 divided by 6, 21 ÷ 6 = 3.5).

The concept is, intuitively, a generalization of the weighted average of all possible outcomes of a particular procedure or experiment, and can be viewed as the *arithmetic mean* of a large number of independent realizations of the experiment.

The expected value of random variable `X` is typically written as `E(X)` for the expectation operator, and `μ` for the parameter.

## Experiment
Any procedure which can be infinitely repeated and which has a well-defined set of outcomes.

## Event
An event is a subset of the sample space of an experiment (i.e. a possible outcome) to which a probability can be assigned. For example, on rolling a die, "getting a 3" is an event (with a probability of 1⁄6 if the die is fair), as is "getting a 5 or 6" (with a probability of 1⁄3).

## Histogram
An approximate graphical representation of the distribution of numerical data. A histogram displays this distribution by dividing the entire range of values into a series of consecutive, non-overlapping intervals and then counting how many instances of the dataset fall into each interval.

## Interquartile range (IQR)
Interquartile range (IQR) (aka midspread, middle 50%, H-spread) is a measure of the statistical dispersion or spread of a dataset, defined as the difference between the 25th and 75th percentiles of the data. To calculate the IQR, the dataset is divided into four rank-ordered even parts or quartiles, the boundaries between which, at the 25th, 50th, and 75th percentiles, are denoted `Q₁`, `Q₂`, and `Q₃`, respectively; the `IQR = Q₃ − Q₁`.

## Joint distribution
Given two random variables X and Y, the joint distribution of X and Y is the probability distribution of X and Y together.

## Joint probability
The probability of two events occurring together. The joint probability of A and B is written `P(A ∩ B)` or `P(A, B)`.

## Kurtosis
A measure of the "tailedness" of the probability distribution of a real-valued random variable. There are different ways of quantifying, estimating, and interpreting kurtosis, but a common interpretation is that kurtosis represents the degree to which the shape of the distribution is influenced by infrequent extreme observations (outliers); in this case, higher kurtosis means more of the variance is due to infrequent extreme deviations, as opposed to frequent modestly sized deviations.

## Law of large numbers
The law of large numbers (LLN) is a theorem according to which the average of the results obtained from performing the same experiment a large number of times should be close to the experiment's expected value, and tends to become closer to the expected value as more trials are performed. The law suggests that a sufficiently large number of trials is necessary for the results of any experiment to be considered reliable, and by extension that performing only a small number of trials may produce an incomplete or misleading interpretation of the experiment's outcomes.

## Likelihood function
A conditional probability function considered as a function of its second argument with its first argument held fixed.

For example, imagine pulling a numbered ball with a number `k` from a bag of `n` balls, numbered 1 to n; a likelihood function for the random variable N could be described as the probability of pulling `k` given that there are `n` balls: likelihood will be `1/n` for `n≥k`, and 0 for `n < k`. 

Unlike a *probability distribution function*, this likelihood function will not sum up to 1 on the sample space.

## Marginal distribution
Given two jointly distributed random variables X and Y, the marginal distribution of X is simply the probability distribution of X when information about Y is ignored.

## Marginal probability
The probability of a given event, ignoring any information about other events. The marginal probability of `A` is written `P(A)`. (contrast conditional probability).

## Mean
1. The expected value of a random variable.
2. The arithmetic mean, i.e. the mathematical average of a set of numerical values, calculated by dividing the sum of the values by the number of values.

## Moving average
Moving average (aka moving mean, rolling mean) is a series of mathematical averages or means of different subsets of a larger data set, usually computed so as to understand trends in the data set over time.

## Multivariate random variable
A vector whose components are random variables on the same probability space.

## Mutual independence
A collection of events is said to be mutually independent if for any subset of the collection, the joint probability of all events occurring is equal to the product of the joint probabilities of the individual events. Think of the result of a series of coin-flips. This is a stronger condition than *pairwise independence*.

## Null hypothesis
Null hypothesis (H0) is the statement being tested in a test of statistical significance; usually a statement of "no effect" or "no difference".

For example, in a test of whether light has an effect on sleep, the null hypothesis would be that light has no effect on sleep (i.e. sleep patterns are the same regardless of the lighting conditions).

The null hypothesis is an expression of the expectation that the dependent variable will not change significantly as the independent variable is modified; statistical significance is measured and reported according to the degree to which this expectation is met. (Contrast alternative hypothesis).

## Pairwise independence
A set of random variables, any two of which are independent.

## Parameter
Any measured quantity of a statistical population that summarizes or describes an aspect of the population, e.g. a mean or a standard deviation; often a quantity to be estimated based on the corresponding quantity calculated by drawing random samples from the population. Can be a population parameter, a distribution parameter, or an unobserved parameter.

## Probability
Probability is a measure of the likeliness that an event will occur. Probability, as a numerical measure, is a real number between 0 and 1 inclusive, with 0 meaning impossibility and 1 meaning certainty.

## Prior probability
In Bayesian inference, prior beliefs or other information that is available before new data or observations are taken into account.

## Population parameter
See parameter.

## Posterior probability
The result of a Bayesian analysis that encapsulates the combination of prior beliefs or information (the prior probability) with observed data.

## Probability density
The probability in a continuous probability distribution. For example, you can't say that the probability of a man being six feet tall is 20%, but you can say he has 20% of chances of being between five and six feet tall. Probability density is given by a probability density function. Contrast probability mass.

## Probability density function
The probability distribution for a continuous random variable.

## Probability distribution
A function that gives the probability of all elements in a given space; (see List of probability distributions).

## Probability measure
The probability of events in a probability space.

## Probability space
A sample space over which a probability measure has been defined.

## Quantile
A particular point or value at which the range of a probability distribution is divided into continuous intervals with equal probabilities, or at which the observations in a sample are divided in the same way. The number of groups into which the range is divided is always one greater than the number of quantiles dividing them. Commonly used quantiles include quartiles (which divide a range into four groups), deciles (ten groups), and percentiles (one hundred groups). The groups themselves are termed halves, thirds, quarters, etc., though the terms for the quantiles are sometimes used to refer to the groups, rather than to the cut points.

## Quartile
A type of quantile which divides a range of data points into four groups, termed quarters, of equal size. For any quartile-divided dataset, there are exactly three quartiles or cut points that create the four groups. The first quartile (Q₁) is defined as the middle data point or value that is halfway between the smallest value (minimum) and the median of the dataset, such that 25 percent of the data lies below this quartile. The second quartile (Q₂) is the median itself, with 50 percent of the data below this point. The third quartile (Q₃) is defined as the middle value halfway between the median and the largest value (maximum) of the dataset, such that 75 percent of the data lies below this quartile. Because the data must be ordered from smallest to largest in order to compute them, quartiles are a type of order statistic.

## Random variable
A measurable function on a probability space, often real-valued. The distribution function of a random variable gives the probability of the different values of the variable. The mean and variance of a random variable can also be derived. (See also discrete random variable and continuous random variable).

## Range
The length of the smallest interval which contains all of the data in a dataset, calculated as the arithmetic difference between the largest and smallest values contained in the dataset and expressed in the same units used for the data. The range provides a measure of the statistical dispersion of the dataset.

## Regression analysis
A data analysis or statistical model that employs a set of statistical methods which estimate the relationships between a dependent variable and one or more error-free independent variables. The most common example of such a model is a linear regression, in which the equation of a line that most closely fits a set of data points according to a specific mathematical criterion is calculated and plotted on a graph of the data points; other forms of regression use related methods to estimate alternative parameters or to estimate conditional expectations from various non-linear models.

## Response variable
Any variable whose value is or is expected to be affected by an experimental treatment, or by changes in one or more other variables; e.g. cholesterol levels after following a particular diet for six months. Response variables are those that change or respond to some phenomenon under study. The term is often used interchangeably with dependent variable.

## Sample mean
The arithmetic mean of a sample of values drawn from a population, commonly denoted by `x̅`. An example is the average test score of a subset of 10 students from a class. On the assumption that the sample is representative of the larger population, the sample mean is often used as an estimator of the population mean, which in this example would be the average test score of all of the students in the class.

## Sample
That part of a population which is actually observed or measured.

## Sample space
The set of all possible outcomes of an experiment. For example, the sample space for rolling a six-sided die is {1, 2, 3, 4, 5, 6}.

## Sampling
The process of only using a fraction of observations (samples) selected from a larger *population* in order to study and estimate characteristics of the larger population without having to actually measure every single data point in the population (which may be difficult). Sampling relies on the assumption that a sufficiently sized subset of data points chosen from a larger set of data points, when chosen according to appropriate criteria, is *representative of the larger set as a whole*.

## Sampling distribution
The probability distribution, obtained by repeated sampling of the population, of a given statistic.

## Statistical independence
Two events are independent if the outcome of one does not affect that of the other (for example, getting a 1 on a single die roll does not affect the probability of getting a 1 on a second roll). Similarly, when we assert that two random variables are independent, we intuitively mean that knowing something about the value of one of them does not yield any information about the value of the other.

## Statistical inference
Inference about a population based on a random sample drawn from that population or, more generally, about a random process from its observed behavior during a finite period of time.

## Statistical population
A set of entities about which statistical inferences are to be drawn, often based on random sampling. One can also talk about a population of measurements or values.

## Statistical dispersion
A measure of the diversity within a set of data, expressed by the variance or the standard deviation.

## Statistical parameter
A parameter that indexes a family of probability distributions.

## Skewness
A measure of the asymmetry of the probability distribution of a real-valued random variable about its mean. Roughly speaking, a distribution has positive skew (right-skewed) if the higher tail is longer, and negative skew (left-skewed) if the lower tail is longer. Perfectly symmetrical distributions always have zero skewness, though zero skewness does not necessarily imply a symmetrical distribution.

## Standard deviation
The most commonly used measure of statistical dispersion. It is the square root of the variance, and is generally denoted with the lowercase Greek letter `σ`.

## Statistic
The result of applying a statistical algorithm to a data set. It can also be described as an observable random variable.

## Tidy data
Standard for structuring data such that "each variable is a column, each observation is a row, and each type of observational unit is a table". It is equivalent to Codd's third normal form.

## Treatment
Treatments are variables in a statistical study that are conceptually manipulable. For example, in a health study, following a certain diet is a treatment whereas age is not.

## Trial
A trial can refer to each individual repetition when talking about an experiment composed of any fixed number of them. As an example, one can think of an experiment being any number from one to n coin tosses, say 17. In this case, one toss can be called a trial to avoid confusion, since the whole experiment is composed of 17 ones.

## Units
In a statistical study, the objects to which treatments are assigned. For example, in a study examining the effects of smoking cigarettes, the units would be people.

## Variance
A measure of its statistical dispersion of a random variable, indicating how far from the expected value its values typically are. The variance of random variable `X` is typically designated as `var(X)`, `σ²x`, or simply `σ²`.
