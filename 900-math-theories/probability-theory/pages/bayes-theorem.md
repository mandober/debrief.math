# Bayes theorem

Bayes theorem is about conditional probability.

```js
// Conditional probability

          P(A ∩ B) 
P(A|B) = ---------
            P(B)

// The Bayes' theorem
          P(B|A) × P(A)
P(A|B) = --------------
            P(B)
```


## Deriving the Bayes theorem

The probability of `A` occuring given that `B` has occurred, `P(A|B)` is the conditional probability:

```js
          P(A ∩ B)
P(A|B) = ----------
            P(B)

P(A ∩ B) = P(A|B) × P(B)
```

The probability of `B` occuring given that `A` has occurred, `P(B|A)` is the conditional probability:

```js
          P(B ∩ A)
P(B|A) = ----------
            P(A)

P(B ∩ A) = P(B|A) × P(A)
```

Equlizing the two equations since `P(A ∩ B)` is the same as `P(B ∩ A)`, we get

```js
P(A ∩ B) = P(A|B) × P(B)
P(B ∩ A) = P(B|A) × P(A)

P(A|B) × P(B) = P(B|A) × P(A)

          P(B|A) × P(A)
P(A|B) = --------------
             P(B)

          P(A|B) × P(B)
P(B|A) = --------------
             P(A)
```

The **Bayes' theorem**:

```js
          P(B|A) × P(A)
P(A|B) = --------------
             P(B)
```
