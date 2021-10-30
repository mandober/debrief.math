## Induction

In the notation of *first-order logic*, we write `P(n)` to mean that `P` holds of `n`, so we can express the principle of induction as:

> P(0) ⋀ ∀n(P(n) -> P(n+1)) -> ∀n.P(n)

But notice that the principle of induction says that the axiom holds for every property P, which means that we should properly use a universal quantifier for that, too:

> ∀φ [ (φ 0) ⋀ ∀n (φ n -> φ (S n)) => ∀n.φ n ]

Quantifying over properties takes us out of the realm of first-order logic; induction is therefore a principle in *second-order logic*.


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
1. `Z ∈ ℕ`
2. `n ∈ ℕ -> S(n) ∈ ℕ`

What would transpire if the latter rule was instead the following one?
3. `S(n) ∈ ℕ -> n ∈ ℕ`


When we needed to show that, e.g. `n = S (S Z) ∈ ℕ`, we start with `n` at the bottom and we work our way up, i.e. *bottom-up approach*, applying the applicable rules, towards the base case. If we reach it, we say that the claim holds (is true).

```js
-------------- by (1)
      Z : ℕ
-------------- by (2)
    S Z : ℕ
-------------- by (2)
S (S Z) : ℕ
```

We remove an `S` with every inductive step, eventually reaching the base case.

But with the rule (3) instead of (2), we'd diverge, since each inductive step would add an `S`, making the derivation diverge away from the base case, instead towards it; and the derivation "tower" would be flipped upside down.

An axiom `n ∈ ℕ -> S(n) ∈ ℕ` is realized in derivations the same way, with premise `n ∈ ℕ` at the top and the conclusion `S(n) ∈ ℕ` at the bottom; only we use the *top-to-bottom approach*, starting with the conclusion and working our way up; it starts from the conclusion and proceeds towards the premise (perhaps it can be said that we work backwards, towards the base case).

> The *inductive case* of an inductive definition should be defined in such a way that it eventually reaches the *base case*.

On the other hand, the rule (2) seems like a good function to generate all `ℕ`: it starts from `Z` and generates all elements in ℕ = `{Z, S Z, S (S Z), ...}`

```js
     Z  ∈ ℕ ->       S Z   ∈ ℕ      by (1)
   S Z  ∈ ℕ ->    S (S Z)  ∈ ℕ      by (2)
S (S Z) ∈ ℕ -> S (S (S Z)) ∈ ℕ      by (2)
// etc.
```

It seems we could say that the rule (2) is a __generator__ for ℕ, while rule (3) is a __checker__ for ℕ, i.e. a *predicate*, since it checks whether some element belongs in ℕ.

In order to check whether `x ∈ ℕ` with `x` = `S (S (S Z))`, we make a series of derivations according to the 3rd rule, `S(n) ∈ ℕ -> n ∈ ℕ`. We start with `x` and work our way down, hopefully, reaching `Z`.

```js
S (S (S Z)) ∈ ℕ -> S (S Z) ∈ ℕ      by (3)
   S (S Z)  ∈ ℕ ->    S Z  ∈ ℕ      by (3)
      S Z   ∈ ℕ ->      Z  ∈ ℕ      by (1)
```
