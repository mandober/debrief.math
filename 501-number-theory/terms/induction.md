## Induction

The first two Peano axioms for natural numbers are:
1. `0 ∈ ℕ`
2. `n ∈ ℕ -> S(n) ∈ ℕ`

The axioms (inference rules) for natural numbers:

```
----- (1)
0 : ℕ

n : ℕ
--------- (2)
S(n) : ℕ
```

The natural numbers are defined by two inference rules:
1. Z ∈ ℕ
2. n ∈ ℕ -> S(n) ∈ ℕ

What would if the latter rule was:
3. S(n) ∈ ℕ -> n ∈ ℕ

When we needed to show that, e.g. `n = S (S Z)` ∈ ℕ, we start with n at the bottom and we work our way up, applying the applicable rules, toward the base case. If we reach it, we say that the claim is true.

```
------ #1
Z : ℕ
---------- #2
(S Z) : ℕ
-------------- #2
(S (S Z)) : ℕ
```

We remove an `S` with every inductive step, eventually reaching the base case.

But with #3 instead of #2, we'd diverge since every inductive step would just add an `S`, never reaching the base case. The derivation "tower" would be flipped upside down.

So an axiom like `n ∈ ℕ -> S(n) ∈ ℕ` is realized in derivations the same way, with premise `n ∈ ℕ` at the top and the conclusion `S(n) ∈ ℕ` at the bottom; only we start with the conclusion and **we work up, from the conclusion toward the premise** (we could also say that we wark backwards, towards the base case).

The *inductive case* of an inductive definition should be defined in such a way that it eventually reaches the *base case*.

On the other hand, the rule #2 seems like a good function to generate all ℕ; it starts from Z and generates all elements in `ℕ = {Z, S Z, S (S Z), ...}`

```
     Z  ∈ ℕ ->       S Z   ∈ ℕ      #1
   S Z  ∈ ℕ ->    S (S Z)  ∈ ℕ      #2
S (S Z) ∈ ℕ -> S (S (S Z)) ∈ ℕ      #2
...
```

Seems we could say that #2 is a **generator** for ℕ, while rule #3 is a **checker** for ℕ (a predicate) since it checks whether some element `n` belongs to ℕ.

In order to check if n ∈ ℕ and `n = S (S (S Z))`:

```
S (S (S Z)) ∈ ℕ -> S (S Z) ∈ ℕ      #3
   S (S Z)  ∈ ℕ ->    S Z  ∈ ℕ      #3
      S Z   ∈ ℕ ->      Z  ∈ ℕ      #1
```
