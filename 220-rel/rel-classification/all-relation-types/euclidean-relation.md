# Euclidean relation

https://en.wikipedia.org/wiki/Euclidean_relation

Euclidean relations are a class of binary relations that formalize "Axiom 1" in Euclid's Elements: "Magnitudes which are equal to the same are equal to each other."

```hs
∀abc ∈ X
aRb ∧ aRc → bRc -- right Euclidean
bRa ∧ cRa → bRc -- left Euclidean
```

A binary relation R on a set X is **Euclidean**, sometimes called **right Euclidean**, if it satisfies the following: for every a, b, c in X, if a is related to b and c, then b is related to c. To write this in predicate logic:

`∀abc ∈ X(aRb ∧ aRc → bRc)`

Dually, a relation R on X is **left Euclidean** if for every a, b, c in X, if b is related to a and c is related to a, then b is related to c:

`∀abc ∈ X(bRa ∧ cRa → bRc)`
