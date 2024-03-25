# The law of large numbers

https://en.wikipedia.org/wiki/Law_of_large_numbers

In probability theory, **the law of large numbers (LLN)** is a theorem that describes the result of performing the same experiment a large number of times.

According to the law, the average of the results obtained from a large number of trials should be close to the expected value and tends to become closer to the expected value as more trials are performed.

The LLN is important because it guarantees stable long-term results for the averages of some random events.

For example, while a casino may lose money in a single spin of the roulette wheel, its earnings will tend towards a predictable percentage over a large number of spins. Any winning streak by a player will eventually be overcome by the parameters of the game.

Importantly, the law applies (as the name indicates) only when a large number of observations is considered. There is no principle that a small number of observations will coincide with the expected value or that a streak of one value will immediately be "balanced" by the others (see gambler's fallacy).

It is also important to note that the LLN only applies to the average.

Therefore, while

`lim {n → ∞} Σ {i=1..n} Xᵢ / n = X̅`

other formulas that look similar are not verified, such as the raw deviation from "theoretical results",

Σ {i=1..n} Xᵢ - n ⨉ X̅

it not only not converge toward zero as `n` increases, but it tends to increase in absolute value as `n` increases.

According to the law of large numbers, if a large number of dice are rolled, the average of their values (sometimes called the sample mean) is likely to be close to 3.5, with the precision increasing as more dice are rolled.

The law of large numbers implies that the empirical probability of success in a series of *Bernoulli trials* will converge to the theoretical probability.

For a *Bernoulli random variable*, the expected value is the theoretical probability of success, and the average of `n` such variables (assuming they are independent and identically distributed) is precisely the relative frequency.

A fair coin toss is a Bernoulli trial. When a fair coin is flipped once, the theoretical probability that the outcome will be heads is equal to 0.5. Therefore, according to the law of large numbers, proportion of heads after `n` flips will almost surely converge to 0.5 as `n` approaches infinity. The probability that the absolute difference (in the number of heads and tails) is a small number approaches zero as the number of flips becomes large.

Monte Carlo method is another example of the LLN. These are actually a family of methods that form a broad class of computational algorithms that rely on a repeated random sampling to obtain numerical results. The larger the number of repetitions, the better the approximation tends to be. This method comes to play when the other approaches prove too difficult or impossible.

## Limitation

The average of the results obtained from a large number of trials may fail to converge in some cases. For instance, the average of `n` results taken from the Cauchy distribution or some Pareto distributions (α < 1) will not converge as n becomes larger; the reason is *heavy tails*.

The *Cauchy distribution* and the *Pareto distribution* represent two cases: the Cauchy distribution does not have an expectation, whereas the expectation of the Pareto distribution (α < 1) is infinite.

One way to generate the Cauchy-distributed example is where the random numbers equal the tangent of an angle uniformly distributed between −90° and +90°. The median is zero, but the expected value does not exist, and indeed the average of `n` such variables have the same distribution as one such variable. It does not converge in probability toward 0 (or any other value) as n goes to ∞.

And if the trials embed a selection bias, typical in human economic/rational behaviour, the law of large numbers does not help in solving the bias. Even if the number of trials is increased the selection bias remains.
