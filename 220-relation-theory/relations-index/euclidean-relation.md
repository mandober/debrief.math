# Euclidean

https://en.wikipedia.org/wiki/Euclidean_relation

Euclidean relations are a class of binary relations that formalize the first axiom in Euclid's Elements: if (two) quantities are equal to a (third) quantity, then they are equal to each other.

* right Euclidean:  `∀abc ∈ X. aRb ⋀ aRc -> bRc`
* left Euclidean:   `∀abc ∈ X. bRa ⋀ cRa -> bRc`
* cf. Transitivity: `∀abc ∈ X. aRb ⋀ bRc -> aRc`

1. A binary relation `R` on a set `X` is *right-Euclidean* 
if for every a, b, c in X, if 
`a` is related to `b` and 
`a` is related to `c` then 
`b` is related to `c`.

`∀abc ∈ X. (a, b) ∈ R ⋀ (a, c) ∈ R --> (b, c) ∈ R`

Euclidean relation is "right" if the same element appears on the left in the antecedent's pairs, aRb ⋀ aRc -> bRc.

2. Dually, a relation `R` on `X` is *left-Euclidean* 
if for every a, b, c in X, if 
`b` is related to `a` and       bRa
`c` is related to `a` then      cRa
`b` is related to `c`.          bRc

`∀abc ∈ X. (b, a) ∈ R ⋀ (c, a) ∈ R --> (b, c) ∈ R`


```
 right-Euclidean
  ┌──┴──┐    ┌┴┐
aRb ⋀ aRc -> bRc
bRa ⋀ cRa -> bRc
└──┬──┘      └┬┘
   left-Euclidean
```


3. *total Euclidean* (left+right): `aRb ⋀ aRc` -> `bRc` <- `bRa ⋀ cRa`

i.e. two things (b and c), each of which is equal to another thing (a), 
are equal to each other.

`a = b ⋀ a = c` -> `b = c` <- `b = a ⋀ c = a`


## Properties

* Due to the commutativity of conjunction, `aRb ⋀ aRc` implies `bRc ⋀ cRb` even if `R` is right-Euclidean. Similarly, `bRa ⋀ cRa` implies `bRc ⋀ cRb` when `R` is left-Euclidean.

aR`b` ⋀ aR`c` -> bRc            (R is right-Euclidean)
`b`Ra ⋀ `c`Ra -> bRc            (R is left-Euclidean)

aRb ⋀ aRc -> bRc ⋀ cRb      (commutativity of conjunction)
