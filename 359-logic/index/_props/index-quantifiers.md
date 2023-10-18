# Logic :: Index :: Quantifiers

Quantifiers
- universal quantifier, `∀`
- existential quantifier, `∃`
- unique existential quantifier, `∃!`

Quantification
- universal quantification
- existential quantification
- unique existential quantification

```hs
U₁ :  ∀x  Px = ¬∃x ¬Px
U₂ :  ∀x ¬Px = ¬∃x  Px  = ¬∃x¬¬Px
U₃ : ¬∀x  Px =  ∃x ¬Px
U₄ : ¬∀x ¬Px =  ∃x  Px  =  ∃x¬¬Px

E₁ : ¬∃x ¬Px =  ∀x  Px  =  ∀x¬¬Px
E₂ : ¬∃x  Px =  ∀x ¬Px
E₃ :  ∃x ¬Px = ¬∀x  Px  = ¬∀x¬¬Px
E₄ :  ∃x  Px = ¬∀x ¬Px
```

U1:  `∀x  Px`  All cats are friendly.
=== `¬∃x ¬Px`  It is not the case that some cats are unfriendly.

U2:  `∀x ¬Px`  All bears are unfriendly. (All bears are not friendly).
=== `¬∃x¬¬Px`  It is not the case that some bears are not unfriendly.
=== `¬∃x  Px`  It is not the case that some bears are friendly.

U3: `¬∀x  Px`  No tiger is friendly.
===  `∃x ¬Px`  Some tigers are not friendly.

U4: `¬∀x ¬Px`  No zeebra is unfriendly.
               (No zeebra is not friendly).
=?=  `∀x  Px`  All zeebras are friendly.
               (It is not the case that all zeebras are unfriendly).
===  `∃x¬¬Px`  Some zeebras are not unfriendly.
===  `∃x  Px`  Some zeebras are friendly.






```
Quantifiers (Q)
   universal (∀)
   existential (∃)

Q := ∀ | ∃

Q′, Q̅ := ∀ → ∃ | ∃ → ∀

P′, P := P → ¬P | ¬P → P


QxPx :→ Q̅x¬Px
  e.g.
  ∀xPx = ¬∃x¬Px

```


* `∀x ∀y ∀z …` === `∀x y z …` === `∀x,y,z …`
* `∃x ∃y ∃z …` === `∃x y z …` === `∃x,y,z …`



```js
D = {a₁, a₂, …, aₙ}

∀x.P(x) === P(a₁) ⋀ P(a₂) ⋀ … ⋀ P(aₙ)
∃x.P(x) === P(a₁) ⋁ P(a₂) ⋁ … ⋁ P(aₙ)
```
