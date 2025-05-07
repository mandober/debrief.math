# Probability :: Summary

```js
// A
ℙ(A) ∈ [0, 1]
ℙ(A) = 1 - ℙ(A̅)
// A and ¬A (complemetrary events)
ℙ(A̅) = 1 - ℙ(A)

// A and A̅ (mutually exclusive)
P(A ∩ A̅) = 0
// A or A̅ (mutually exclusive)
P(A ∪ A̅) = 1
// Disjoint collection of n sets, A₀ or A₁ or A₂ or … or Aₙ
P(⋃{i=0..n} Aᵢ) = 1

// A or B
ℙ(A ∪ B) = ℙ(A) + ℙ(B) - ℙ(A ∩ B)
ℙ(A ∪ B) = ℙ(A) + ℙ(B)                 (if mutually exclusive)

// A and B
ℙ(A ∩ B) = ℙ(A|B) ℙ(B) = ℙ(B|A) ℙ(A)
ℙ(A ∩ B) = ℙ(A) ℙ(B)                   (if independent)


// Conditional probability, A given B

          P(A ∩ B)    ℙ(B|A) ℙ(A)
P(A|B) = --------- = -----------
            P(B)        P(B)

// The Bayes' theorem
         P(B|A) P(A)
P(A|B) = -----------
            P(B)


// if events A and B are mutually exclusive
P(A) + P(B)

// if events A and B are not necessarily independent
ℙ(A) + ℙ(B) - ℙ(A ∩ B)

// if events A and B are independent
P(A) × P(B)

```


- Probability is a real number between 0 and 1 inclusive. 
- Probability of each event in a set of events must sum up to 1.
- If the probability of an event A occurring is `ℙ(A)`, then the probability of the event A not occurring is `ℙ(¬A) = 1 - ℙ(A)`.
- `ℙ(A and B) = 0` ℙ that two mutually exclusive events occur at same time is zero (e.g. ℙ that a dice roll yields 2 and 3)
- `ℙ(A or B)` ℙ that one of the two mutually exclusive events occurs (e.g. ℙ that a dice roll yields 2 or 3)

- `ℙ(A)ℙ(B)` probability of two independent events to occur at the same time

- `P(A ∩ B)` or `P(A ∧ B)` or `P(A, B)` joint probability that two events occur together
- `P(A ∪ B)` or `P(A ∨ B)` 


A **probability space** `(Ω,F,P)` is a mathematical construct that provides a formal model of a random process or experiment, where
- sample space `Ω`: set of all possible outcomes of a random process
- event space `F`: set of events, where an event is a subset of outcomes in sample space
- probability function `P` assigns to each event in the event space a probability as a number between 0 and 1 (inclusive)
