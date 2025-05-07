# Probability :: Intro

```
                                    Number of ways it can happen
Probability of an event happening = ----------------------------
                                      Total number of outcomes
```

The probability of rolling a "4" on a die:
- Number of ways it can happen: 1 (there is only 1 face with a "4" on it)
- Total number of outcomes: 6 (there are 6 faces altogether)
- the probability is 1/6

The probability of drawing a blue marble from a bag with 4 blue and 1 red marble
- Number of ways it can happen: 4 (there are 4 blues)
- Total number of outcomes: 5 (there are 5 marbles in total)
- the probability is 4/5 = 0.8

Probability is the chance that something will happen. It can be shown on a probability line:

```
no way         50%           certain
|---------------|---------------|
0              0.5              1
```

Probability is a real number between 0 and 1 inclusive. It may be presented as an interval [0,1]. When multiplied by 100, the probability is expressed as a percentage (e.g. 0.5 is 50%).

An event with probability 0 cannot happen, even with infinite time. An event with a tiny probability (e.g. 10⁻¹⁰⁰ or way smaller), as long as it is greater then zero, will not occur often, but *given an infinite time, it will occur infinitely many times*. It is thanks to this that we are here.

Probability tells us the chance of tossing a coin to get a head is 0.5, so it "should" happen 50% of the time. However, this does not mean we'll get 100 heads if we toss a coin 200 times, as the ratio between heads and tails obtained may be any number. It means that as the number of tosses approaches an extremely large number (as it tend to infinity), this ratio approaches 1:1,meaning the same number of heads compared to tails. With a small sample size - like with only 200 tosses - the ratio we get may deviate from its true value (at least that is what one of the leading interpretations of probability says).

Some terms have particular meaning in probability theory. *Experiment* is a repeatable procedure with a deterministic set of possible results. Rolling a dice may also be considered an experiment, where the set of all possible outcomes resulting from any single roll is {1,2,3,4,5,6}. This is called a *sample space* - it is the set of all the possible outcomes of an experiment, consisting of sample points. An *outcome* is a possible result ("6" is one of the outcomes of a die roll), also called a *sample point* as it represents one possible outcome. A *trial* is a single performance of an experiment (3 trials resulted in "heads" and one trial had the outcome "tails").

A sample space consists of sample points, which are single outcomes. However, an outcome need not always be single; e.g. `K♡` is a sample point, but `K` alone is not because there are 4 `K`s making up 4 distinct sample points. An outcome may be more complex as well, like saying that a die roll resulted in an even number.

An *event* is one or more outcomes of an experiment. An event can be a single outcome (e.g. getting "tails" on a coin toss), in which case it is called an *elementary or atomic event*. An event may be composed of more than one outcome as well (e.g. rolling an even number with a die), in which case it is called a *complex event*.

The probability of an event `A` occurring is denoted by `P(A)`. The probability of event `A` not occurring is `1 - P(A)`.

Events can be:
- independent (event is not affected by other events)
- dependent (aka conditional, where an event is affected by others)
- mutually exclusive (events that cannot happen at the same time)

With *independent events*, an event is not affected by others. For example, each toss of a coin is a perfectly isolated event; a coin does not know that it came up heads before. Some people think that a coin is overdue for landing on tails, which is called the *gambler's fallicy*. However, the next toss of the coin is completely independent of any previous tosses and the probability to land on tails is the same as always, 50%.

For two *independent events* A and B, the probability of both occurring at the same time is `P(A ∩ B) = P(A) × P(B)`, i.e. the probability of `A` times the probability of `B`.

On the other hand, *dependent events* are affected by others or previous events. For example, drawing two cards from a deck, one after the other, affects the probability that the second card is some specific card since there will be one card less in deck, and so the probabilities changes. In this situation there is also a notion of *replacement*, meaning that the sample space is restored after each experiment; e.g. after drawing a card from a deck, we return the card to the deck before drawing another card. In this case, the two events are independent. Preforming the experiment *without replacement* means one trial affect the next, changing the probabilities, and so the events become dependent.

**Birthday paradox** is a misnomer as it is not a paradox at all, just feels like one. It is about the chances that two people share a birthday. In a group of 30 people, the chances of two people sharing a birthday is 70%. In fact, 25 people is enough for the probability to get to 50%. This is because every person's birthday is compared to every other person's, and with 30 people this amounts to 435 comparisons (vs 356 days in a year).

*Mutually exclusive events* are those that cannot happen at the same time (like rolling a 1 and 6). The probability of two mutually exclusive events A and B occurring at the same time is 0. The probability that one of them occurs, A or B, is the sum of their individual probabilities: `P(A ∪ B) = P(A) + P(B)`.

For events that are not mutually exclusive, the probability of one of them happening is `P(A ∪ B) = P(A) + P(B) - P(A ∩ B)`. Because we overcount, we need to subtract their intersection.

For example
- P(K)     =  4/52 (drawing any king)
- P(♡)     = 13/52 (drawing any heart; there's K♡ among them)
- P(K♡)    =  1/52 (K♡ is the same as drawing a K and a ♡)
- P(K ∩ ♡) =  1/52 (K and ♡ is the same as K♡)
- P(K ∪ ♡) =  4/52 + 13/52 - 1/52 = 16/52

The probability of drawing a card that is a heart and a king, `P(♡ ∩ K)`, is the same as the probability of drawing the king of hearts `P(K♡)`, i.s. it is the same as the probability of drawing any single specific card, 1/52.

The probability of drawing a card that is either a heart or a king, `P(♡ ∪ K)`, is 16/52 as there are 13 hearts in the deck among which is K♡ (so it will be overcounted) and 4 cards that are K. Adding 13 and 4 overcounts the K♡, so we need to subtract 1 to get the probability of 16/50 that a card is either a king or a heart.





## Concomitants
In a statistical study, any variables whose values are unaffected by experimental treatments, such as a unit's age, gender, and cholesterol level before starting an experimental diet.

## Conditional distribution
Given two jointly distributed random variables X and Y, the conditional probability distribution of Y given X (written `Y|X`) is the probability distribution of Y when X is known to be a particular value.

## Conditional Probability
Probability of some event `A` occurring, assuming event `B` has occurred, is conditional probability, written `P(A|B)`, read "probability of A given B".

*Correlation*, or correlation coefficient, is a numeric measure of the strength of a linear relationship between two random variables (one can use it to quantify, for example, how shoe size and height are correlated in the population). 

The *covariance* is used for measuring correlation; it can be interpreted as the degree to which the two variables change simultaneously with each other or "co-vary".

## Count data
Data arising from counting, and which can therefore take only non-negative integer values.

## Data set
A sample and the associated data points.

## Data point
A typed measurement - it can be a Boolean value, a real number, a vector (in which case it is also called a data vector), etc.

## Elementary Event
An elementary event, aka atomic event or sample point, is an event which contains only a single outcome in the sample space. For example, getting `2♡` when picking a card from a deck is an elementary event, while getting a face card (J, Q or K) is not.

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

## Joint probability
The probability of two events occurring together. The joint probability of A and B is written `P(A ∩ B)` or `P(A, B)`.

## Law of large numbers
The law of large numbers (LLN) is a theorem according to which the average of the results obtained from performing the same experiment a large number of times should be close to the experiment's expected value, and tends to become closer to the expected value as more trials are performed. The law suggests that a sufficiently large number of trials is necessary for the results of any experiment to be considered reliable, and by extension that performing only a small number of trials may produce an incomplete or misleading interpretation of the experiment's outcomes.

## Marginal probability
The probability of a given event, ignoring any information about other events. The marginal probability of `A` is written `P(A)`. (contrast conditional probability).

## Mean
1. The expected value of a random variable.
2. The arithmetic mean, i.e. the mathematical average of a set of numerical values, calculated by dividing the sum of the values by the number of values.

## Moving average
Moving average (aka moving mean, rolling mean) is a series of mathematical averages or means of different subsets of a larger data set, usually computed so as to understand trends in the data set over time.

## Mutual independence
A collection of events is said to be mutually independent if for any subset of the collection, the joint probability of all events occurring is equal to the product of the joint probabilities of the individual events. Think of the result of a series of coin-flips. This is a stronger condition than *pairwise independence*.

## Pairwise independence
A set of random variables, any two of which are independent.

## Parameter
Any measured quantity of a statistical population that summarizes or describes an aspect of the population, e.g. a mean or a standard deviation; often a quantity to be estimated based on the corresponding quantity calculated by drawing random samples from the population. Can be a population parameter, a distribution parameter, or an unobserved parameter.

## Probability
Probability is a measure of the likeliness that an event will occur. Probability, as a numerical measure, is a real number between 0 and 1 inclusive, with 0 meaning impossibility and 1 meaning certainty.

## Prior probability
In Bayesian inference, prior beliefs or other information that is available before new data or observations are taken into account.

## Posterior probability
The result of a Bayesian analysis that encapsulates the combination of prior beliefs or information (the prior probability) with observed data.

## Probability measure
The probability of events in a probability space.

## Probability space
A sample space over which a probability measure has been defined.

## Random variable
A measurable function on a probability space, often real-valued. The distribution function of a random variable gives the probability of the different values of the variable. The mean and variance of a random variable can also be derived. (See also discrete random variable and continuous random variable).

## Range
The length of the smallest interval which contains all of the data in a dataset, calculated as the arithmetic difference between the largest and smallest values contained in the dataset and expressed in the same units used for the data. The range provides a measure of the statistical dispersion of the dataset.

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

## Statistical independence
Two events are independent if the outcome of one does not affect that of the other (for example, getting a 1 on a single die roll does not affect the probability of getting a 1 on a second roll). Similarly, when we assert that two random variables are independent, we intuitively mean that knowing something about the value of one of them does not yield any information about the value of the other.

## Statistical population
A set of entities about which statistical inferences are to be drawn, often based on random sampling. One can also talk about a population of measurements or values.

## Trial
A trial can refer to each individual repetition when talking about an experiment composed of any fixed number of them. As an example, one can think of an experiment being any number from one to n coin tosses, say 17. In this case, one toss can be called a trial to avoid confusion, since the whole experiment is composed of 17 ones.

## Units
In a statistical study, the objects to which treatments are assigned. For example, in a study examining the effects of smoking cigarettes, the units would be people.

## Variance
A measure of its statistical dispersion of a random variable, indicating how far from the expected value its values typically are. The variance of random variable `X` is typically designated as `var(X)`, `σ²x`, or simply `σ²`.


## Probability space
A probability space `(Ω,F,P)` is a mathematical construct that provides a formal model of a random process or experiment. For example, one can define a probability space which models the throwing of a die.

In probability theory, *odds* provide a measure of the probability of a particular outcome.
