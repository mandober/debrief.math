# math.lo FORMULAE :: EXAMPLES

Same-kind quantifiers may be given in any order:
* ∀x∀y. Φ(x,y) ≡ ∀y∀x. Φ(x,y)
* ∃x∃y. Φ(x,y) ≡ ∃y∃x. Φ(x,y)

Quantifiers and negation:
* ¬∀x. Φ(x) ≡ ∃x.¬Φ(x)
* ¬∃x. Φ(x) ≡ ∀x.¬Φ(x)
* ¬∀x.¬Φ(x) ≡ ∃x. Φ(x)
* ¬∃x.¬Φ(x) ≡ ∀x. Φ(x)

Quantifier distributivity:
* ∀x.[Φ(x) ∧ Ψ(x)] ≡ ∀x.Φ(x) ∧ ∀x.Ψ(x)
* ∃x.[Φ(x) ∨ Ψ(x)] ≡ ∃x.Φ(x) ∨ ∃x.Ψ(x)



```js
 ∀x. Φ(x) <=> ¬∃x.¬Φ(x)   flip out
 ∃x. Φ(x) <=> ¬∀x.¬Φ(x)   flip out
¬∃x. Φ(x) <=>  ∀x.¬Φ(x)   flip and pull (negation) in
¬∀x. Φ(x) <=>  ∃x.¬Φ(x)   flip and pull (negation) in
```

* If everyone's got it, then it's not the case that someone doesn't have it.
* If someone's got it, then it's not the case that everyone doesn't have it.
* If it's not the case that someone's got it, then everyone doesn't have it.
  If there's no one who has it, then everybody don't got it.
* If it's not the case that everyone's got it, then someone doesn't have it.



1. In arithmetic, quantifiers allow one to say that the set of natural numbers is infinite: `∀n ∈ ℕ. ∃m ∈ ℕ. m > n`

```js
∀n ∈ ℕ. ∃m ∈ ℕ. m > n ==
∀n ( (n ∈ ℕ). ∃m (m ∈ ℕ). (m > n) ) ==
∀n.∃m.(n ∈ ℕ -> (m ∈ ℕ ⋀ m > n))
```
