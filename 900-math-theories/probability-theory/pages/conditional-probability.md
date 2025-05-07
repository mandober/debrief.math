# Conditional probability

https://en.wikipedia.org/wiki/Conditional_probability

In probability theory, **conditional probability** is a measure of the probability of an event occurring, given that another event (by assumption, presumption, assertion, evidence) has already occurred.

This particular method relies on event `B` occurring with some sort of relation to another event `A`. In this event, the event `B` can be analyzed by a conditionally probability with respect to `A`.

If the event of interest is `A` and the event `B` is known to have occurred, the conditional probability of `A` given `B` (or the probability of `A` under the condition `B`), is denoted by `P(A|B)`. This can also be understood as the fraction of probability `B` that intersects with `A`.

```js
Conditional probability:

          P(A ∩ B) 
P(A|B) = ---------
            P(B)
```

The probability of getting a Jack given a face card, is an example of event with conditional probability - its probability depends on the probability of picking a face card out of the deck in the first place. Conditional probability can be calculated using Bayes theorem: `P(A|B) = P(B|A)P(A)/P(B)`


## Example

If we know the probability of these 3 independent events:
- P(A) = 0.3 (30%)
- P(B) = 0.4 (40%)
- P(A ∩ B) = 0.06 (6%)

Then the probability of
- P(A|B) = P(A ∩ B) / P(B) = 0.06 / 0.4 = 0.15 (15%)
- P(B|A) = P(A ∩ B) / P(A) = 0.06 / 0.3 = 0.2 (20%)







## Links

* Conditional probability - Visual explanation by Victor Powell
https://setosa.io/conditional/
