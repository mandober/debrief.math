# Ancestral relation

https://en.wikipedia.org/wiki/Ancestral_relation

The *ancestral relation* of a binary relation R is its transitive closure, but defined in a different way.

Ancestral relations have first appeared in Frege's "Begriffsschrift". Frege later employed them in his "Grundgesetze" in defining finite cardinals. They were key part of his search for a logicist foundation of arithmetic.

## Definition

A property `P` is called __`R`-hereditary__ if, whenever `P(x)` and `xRy` holds, then `P(y)`.

That is, a property `P` is called an `R`-hereditary property if `P` can be passed on, from an element (for which it holds) to another element, through relation R, `Px ∧ xRy -> Py`.


Frege defined `b` to be an __`R`-ancestor of `a`__, written `aR∗b`, if `b` has every `R`-hereditary property that all objects `x`, such that `aRx`, have:

`aR∗b ⇔ ∀F [ ∀x (aRx → Fx) ∧ ∀x ∀y (Fx ∧ xRy → Fy) → Fb ]`

The *ancestral* is a transitive relation, `aR∗b ∧ bR∗c -> aR∗c`.

Let the notation `I(R)` denote that `R` is functional (Frege calls such relations "many-one"):

`I(R) ⇔ ∀x ∀y ∀z (xRy ∧ xRz -> y = z)`


If R is functional then the ancestral of R is what is now called *connected*:

`I(R), aR∗b, aR∗c ⊢ bR∗c, cR∗b, b = c`

i.e. I(R) ∧ aR∗b ∧ aR∗c --> (bR∗c ∨ cR∗b ∨ b = c)

```
b                     b                  b = c
↑ ⟍                   ↑ ↖                 ↑
│   ⟍        or       │   ⟍       or      ┊
│     ⟍               │     ⟍             ┊
│       ↘               │       ⟍           ┊
a ------> c           a ------> c         a
```


## Relationship to transitive closure

Ancestral relation `R∗` is equal to the transitive closure `Rᐩ` of `R` since
1. `R∗` is transitive
2. `R∗` contains `R`
3. `R∗` is contained in `Rᐩ`

because:

(1) Transitivity of `R∗` is already established.

(2) If `aRb` 
then `b` has every 
R-hereditary property 
that all objects `x` 
such that `aRx` have, 
because `b` is one of them.

(3) First assume that `aR∗b`. 
Take the property `Fx` to be `aRᐩx`. 
Then the two premises, 
`∀x(aRx -> Fx)` and `∀x∀y(Fx ∧ xRy -> Fy)`, 
are obviously satisfied. 
Therefore `Fb`, 
which means `aRᐩb`, 
by our choice of `F`.


## Discussion

"Principia Mathematica" made repeated use of the *ancestral*, as does Quine's "Mathematical Logic" from 1951.

>However, it is worth noting that the *ancestral relation* cannot be defined in first-order logic.

It is controversial whether second-order logic with standard semantics is really "logic" at all. Quine famously claimed that it was really "set theory in sheep's clothing".

In his books, setting out formal systems related to PM and capable of modelling significant portions of Mathematics, namely (in order of publication):
- A System of Logistic
- Mathematical Logic
- Set Theory and its Logic

Quine's ultimate view as to the proper cleavage between logical and extralogical systems appears to be that 
>once axioms that allow incompleteness phenomena to arise are added to a system, the system is no longer purely logical.
