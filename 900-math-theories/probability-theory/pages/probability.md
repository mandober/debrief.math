# Probability

## Summary

- A           ℙ(A) ∈ [0, 1]
- ¬A          ℙ(¬A) = 1 - ℙ(A)
- A or B      ℙ(A ∪ B) = ℙ(A) + ℙ(B) - ℙ(A ∩ B)
- A or B      ℙ(A ∪ B) = ℙ(A) + ℙ(B) (if mutually exclusive)
- A and B     ℙ(A ∩ B) = ℙ(A|B) ℙ(B) = ℙ(B|A) ℙ(A)
- A and B     ℙ(A ∩ B) = ℙ(A)⋅ℙ(B) (if independent)
- A given B   ℙ(A|B) = ℙ(A ∩ B) / ℙ(B) = ℙ(B|A)⋅ℙ(A) / ℙ(B)

- probability is a real number between 0 and 1 inclusive.
- probability of each event in a set of events must sum up to 1.
- if the probability of an event A occurring is `ℙ(A)`, then the probability of the event A not occurring is `ℙ(¬A) = 1 - ℙ(A)`.
- probability that 2 mutually exclusive events occur at same time is 0, 
  ℙ(A and B) = 0 (e.g. ℙ that a dice roll gives 2 and 3)

- ℙ(A) × ℙ(B) probability of 2 independent events occurring at the same time
- probability of 2 dependent events occurring simultaneously is ℙ(A)⋅ℙ(B)



## Probability

https://en.wikipedia.org/wiki/Probability

Probability is a measure of the likeliness that an event will occur.

Probability is used to quantify an attitude of mind towards some proposition whose truth is not certain. The proposition of interest is usually of the form "A specific event will occur"; the attitude of mind is of the form "How certain is it that the event will occur".

The certainty that is adopted can be described in terms of a numerical measure, and this number, between 0 and 1 (where 0 indicates impossibility and 1 indicates certainty) is called *the probability*.

>Probability, as a numerical measure, is a real number between 0 and 1 inclusive, with 0 meaning impossibility and 1 meaning certainty. The higher this number is, the more likely it is that the event will occur.

Probability is the likelihood of an event ocurring expressed numerically ("likelihood" is the state of being probable; probability; something probable).

Probability is concerned with the numerical description of the likelihood of an event occurring; or, more generally, the likelihood that a proposition is true.

A simple example is flipping a fair coin with two outcomes being equally probable. Each outcome has the chance of 0.5 to occur. Consequtive coin tosses are independent from one another - the coin has no memory; it means even after 10 heads in a row, the chance that the next toss will be tails is still 50%.

With a fair coin, the probability
- of H occurring is `P(H) = 0.5` (50%)
- of T occurring is `P(T) = 0.5` (50%)
- of either H or T occurring is `P(H ∩ T) = 1` (100%)
- of H occurring two times in a row is `P(H)²` = 0.5² = 0.25 = 25%
- of 6 H in a row is `P(H)⁶` = 0.5⁶ = 0.015625 (1.5625%)

>Q: Has anyone ever witnessed 100 heads (or tails) in a row? That is, when we want to say that even after X heads, the chance that the next toss will give heads is still 0.5, what is a probable, modest enough, value for X? I'd want to say: "even after 1,000,000 heads blah blah…", but a cool mil seems outrageous.
