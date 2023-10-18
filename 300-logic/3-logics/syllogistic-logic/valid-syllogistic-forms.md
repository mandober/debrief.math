# Valid syllogistic forms

https://en.wikipedia.org/wiki/Valid_argument_forms
https://en.wikipedia.org/wiki/List_of_valid_argument_forms

In syllogistic logic, there are infinitely many possible syllogisms, but only *256 logically distinct types*. That is, there are 256 possible ways to construct categorical syllogisms using the `A`, `E`, `I`, `O` statement forms, of which only *24 are valid types*. Of the 24 valid forms, *15 are unconditionally valid* and *9 are conditionally valid*.

A syllogism takes the form:
- Major premise: Qp M are P
- Minor premise: Qp S are M
- Conclusion:    Qp S are P

Legend:
- M = middle term
- S = subject term
- P = predicate term
- Qp = quantifier (all or some) + polarity (affirmative or negative)

sy|quant|sbj| copula  |prd| type                   |example
--|-----|---|---------|---|------------------------|-------------------------
A | All | S | are     | P | universal  affirmative | All humans are mortal
E | No  | S | are     | P | universal  negative    | No humans are perfect
I | Some| S | are     | P | particular affirmative | Some humans are healthy
O | Some| S | are not | P | particular negative    | Some humans are not clever


The 4 standard forms of syllogisms:
- `A`: All  S are     P,  ∀x(Sx → Px) ≡ ¬∃x(Sx ∧ ¬Px)
- `E`: No   S are     P, ¬∀x(Sx → Px) ≡ ¬∃x(Sx ∧  Px)
- `I`: Some S are     P,  ∃x(Sx ∧ Px) ≡ ¬∀x(Sx → Px)
- `O`: Some S are not P,  ∃x(Sx ∧¬Px) ≡  ∀x(Sx → Px)


By the way, in predicate logic, these 4 forms are expressed as:
- (A) ∀x[Sx →  Px] ≡ ∀x[¬Sx ∨  Px]
- (E) ∀x[Sx → ¬Px] ≡ ∀x[¬Sx ∨ ¬Px]
- (I) ∃x[Sx ∧  Px]
- (O) ∃x[Sx ∧ ¬Px]


## (A) All S are P

```
All S are P ≡ There is no S that is not a P.
            ≡ It is not the case that there is an S that is not a P.

 ∀x(Sx →  Px) = All S are P.
¬∃x(Sx ∧ ¬Px) = There is no S that is not a P.

∀xQx ≡ ¬∃x¬Qx

∀x(Sx → Px)
≡ ¬∃x(¬(Sx → Px))
≡ ¬∃x(¬(¬Sx ∨ Px))
≡ ¬∃x(¬¬Sx ∧ ¬Px)
≡ ¬∃x(Sx ∧ ¬Px)
```

## (E) No S are P

No S are P = All S are not P
           = There is no S that is not a P.

¬∀x(Sx → ¬Px) = No S are P
¬∃x(Sx ∧ Px)  = There is no S that is a P.

```
∀x¬Qx ≡ ∃x¬Qx

  ¬∀x(Sx → ¬Px)
≡ ¬∃x(¬(Sx → ¬Px))
≡ ¬∃x(¬(¬Sx ∨ ¬Px))
≡ ¬∃x(¬¬Sx ∧ ¬¬Px)
≡ ¬∃x(Sx ∧ Px)
```

## (I) Some S are P

```
∃x(Sx ∧ Px)

```

## (O) Some S are not P


```
∃x(Sx ∧ ¬Px)
```



These 4 statements are traditionally always in this form, even though they could be expressed in a different manner, e.g. "No S are P" (E) may also be expressed as "Not all S are P"




In syllogistic logic, there are 256 possible ways to construct categorical syllogisms using the `A`, `E`, `I`, `O` statement forms, but only 24 are valid. Of the 24 valid forms, 15 are unconditionally, and 9 are conditionally valid.

256 ⨯ 1
128 ⨯ 2
64 ⨯ 4
32 ⨯ 8
16 ⨯ 16
2⁸ = 2^2³

16² = (2⁴)² = 4⁴ = 2⁸ = 

Of the many and varied argument forms that can possibly be constructed, only very few are valid argument forms. In order to evaluate these forms, statements are put into logical form. Logical form replaces any sentences or ideas with letters to remove any bias from content and allow one to evaluate the argument without any bias due to its subject matter.

Being a valid argument does not necessarily mean the conclusion will be true. It is valid because if the premises are true, then the conclusion has to be true. This can be proven for any valid argument form using a truth table which shows that there is no situation in which there are all true premises and a false conclusion.


## Contents

- Valid syllogistic forms
  - Unconditionally valid
  - Conditionally valid
- 2 Valid propositional forms
  - Modus ponens
  - Modus tollens
  - Hypothetical syllogism
  - Disjunctive syllogism
  - Constructive dilemma



## Valid syllogistic forms

In syllogistic logic, there are 256 possible ways to construct categorical syllogisms using the A, E, I, and O statement forms in the square of opposition. Of the 256, only 24 are valid forms. Of the 24 valid forms, 15 are unconditionally valid, and 9 are conditionally valid.

- AAA-1 Barbara
- EAE-1 Celarent
- AII-1 Darii
- EIO-1 Ferio
- AOO-2 Baroco
- OAO-3 Bocardo
- AAI-1 Barbari
- EAO-1 Celaront
- AEO-2 Camestros
- EAO-3 Felapton
- AAI-3 Darapti

## Unconditionally valid

Figure 1 | Figure 2 | Figure 3 | Figure 4
AAA
EAE
AII
EIO

AEE
EAE
EIO
AOO AII
IAI
OAO
EIO AEE
IAI
EIO


## Conditionally valid

AAI
EAO AEO
EAO  AEO Minor term exists
AAI
EAO EAO Middle term exists
AAI Major term exists 
Valid propositional forms
