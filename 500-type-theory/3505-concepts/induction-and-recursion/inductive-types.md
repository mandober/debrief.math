# Inductive types

In Agda, an inductive type is defined using the `data` keyword, and such a declaration corresponds to a type's formation rules. A data type also has introduction and elimination rules, and the computation rules, which are crucial for e.g. normalization of terms to their canonical forms. Elimination rules are often bundled as a single recursive function, commonly defined across a set of equations, pattern-matching the ("bigger") input against all the datatype's ctors, then, in the inductive case, recursing with a ("smaller") input until the base case is met.

## Boolans

One of the simpler types that sometimes still gets to be called inductive is Boolean, and even if it's not particularly inductive (like at all), it makes a good, uncomplicated, example of how to express a type as a set of inference rules.

```agda hs

-------- (1)    --------- (2)
true : 𝔹        false : 𝔹

-- translation to Agda is almost verbatim:
data 𝔹 : Set where
  true  : 𝔹
  false : 𝔹
```

The type `𝔹 : Set` (instead of being just `𝔹` a la Haskell) specifies the point, in the hierarchy of types, at which we introduce this new type. Thus, `𝔹` is a new type that has exactly two terms (and not three a la Haskell), `true : 𝔹` and `false : 𝔹`; but also 𝔹 itself is a term in the type Set, i.e. `𝔹 : Set`, that is, 𝔹 is a new term of the small types, `𝔹 : Set₀`.

When an inference rule is assumption-less, its conclusion always holds, and the value that represents it, can be created whenever needed out of thin air. These two inference rules say that the two Boolean terms, `true` and `false`, are always available, (here you go, no derivation needed).


## Natural Numbers

```hs agda
data Nat : Set where
  zero : Nat
  suc  : Nat → Nat

-- Natural numbers
                       n : Nat
-------- (z)         ---------- (s)
0 : Nat              S n : Nat


-- Naturals: ==
                      n == m
------- (z=z)     --------------- (s=s)
0 == 0            suc n == suc m


-- Naturals: even
                                  p : Even n
---------------            ------------------------------
even-z : Even 0            even-s p : Even (suc (suc n))
```


A proof records how inference rules were used to arrive at a conclusion, so for that purpose, all inference rules should have names. The names of inference rules are sometimes given to the right of the inference line, but that doesn't show the whole story with some inductive case rules whose conclusion depends on the assumption. As an example, consider the rules for `≤`.

We name the two inference rules for `≤`
- `even-z` for assumption-less base case
- `even-s` for the inductive case

However, note that, in the inductive case, we also need a name for the premise `Even n`, so we name it `p`; the premise, `p : Even n`, means that `p` is a proof of the evenness of the natural `n`.

Also, `even-s`, while being the name of the conclusion, doesn't explicitly shows that it, in fact, expects an argument! The argument it wants is the proof of the premise, so we can write it as `even-s p`. The thing is that `even-s` becomes the proof of the conclusion only when it is given the proof of the assumption, and `even-s p : Even (S S n)` means just that.

That is, the concusion first needs the proof that `n` itself is even, to be able to produce the proof that the succ of succ of `n` is also even. Only when saturated, `even-s` becomes the proof of the entire implicative statement:   
`Even n -> Even (S S n)`.

```hs
-- induction over Nat, P is a predicate
∀n. (P 0 -> (P n -> P (S n)) -> P n

-- the predicate P means is-a-natural
∀n. (0 : Nat -> (n : Nat -> S n : Nat) -> n : Nat

-- the predicate P means is-even
∀n. (Even 0 -> (Even n -> Even (S S n)) -> Even n
```



The family over `n : Nat` of proofs that `n` is even

```hs
data Even : Nat → Set where
  even-z : Even zero
  even-s : (n : Nat) → Even n → Even (suc (suc n))
```

## Properties of relations

- Reflexivity:   `∀n(n ~ n)`
- Transitivity:  `∀n,m,k(n ~ n ⋀ n ~ k -> n ~ k)`
- Symmetry:      `∀n,m(n ~ m ⇔ m ~ n)`
- Asymmetry:     `∀n,m(n ~ m ⇔ ¬(m ~ n))`
- Anti-symmetry: `∀n,m(n ~ m ⊕ m ~ n ⊕ m = n)`
- Total:         `∀n,m(n ~ m ⊕ m ~ n)`

There are also names for some combinations of these properties.
- Preorder:      reflexivity + transitivity (refl + trans)
- Partial order: anti-symmetric preorder    (refl + trans + antisymm)
- Total order:   total partial order        (refl + trans + antisymm + total)


Relation `≤` over ℕ

```hs
-- DEFINITION OF ≤ RELATION OVER ℕ

                     p : n ≤ m
----------- (z≤n)    --------------------- (s≤s)
z≤n : 0 ≤ n          s≤s p : suc n ≤ suc m


-- Inversion of the rec case of ≤ also holds:
p : suc n ≤ suc m
------------------
inv-s≤s p : n ≤ m

-- There is only one way for a number n to be LE to 0
    p : n ≤ 0
-------------
n≤0 p : n = 0


{-
  ✱ Induction examples

  ✱✱ General form:
      ∀n. (P 0 -> (P n -> P (S n)) -> P n

  ✱✱ Definition of naturals by induction:
      ∀n. (0 : Nat -> (n : Nat -> S n : Nat) -> n : Nat

  ✱✱ Evenness of naturals by induction:
      ∀n. (Even 0 -> (Even n -> Even (S S n)) -> Even n


  ✱ Reflexivity
    ∀n(n ∈ ℕ -> n ≤ n)

    P : Prop, n : ℕ, _≤_ : Prop
      P n ⟼ n ≤ n

    General statement
      ∀n ∈ ℕ. (P 0 -> [P n -> P (S n)] -> P n)

    P as a relation ≤
      ∀n ∈ ℕ. ((0 ≤ 0) -> [ (n ≤ n) -> (S n ≤ S n) ] -> (n ≤ n))

  ✱ The proof of n ≤ n by induction on n:
    n ≤ n
      1) 0 ≤ 0     (base case)
      2) S n ≤ S n (inductive case)

  1. base case: n ⟼ 0
    * to prove: 0 ≤ 0
    * proof: by z≤n
      (from the z≤n in the def of ≤: 0 is LE than any nat)
  2. inductive case: n ⟼ S n′
    * to prove: S n ≤ S n
    * inductive hypothesis, H: (n ≤ n) -> (S n ≤ S n)
    * proof:
      H gives us a proof p of n ≤ n
        p : n ≤ n
      applying s≤s to p
        s≤s p
      yields a proof of (S n ≤ S n)
        s≤s p : S n ≤ S n

-}

-- Def of ≤
                         p : n ≤ m
----------- (z≤n)    ----------------- (s≤s)
z≤n : 0 ≤ n          s≤s p : S n ≤ S m


-- Refl of ≤
                         p : n ≤ n
-----------          -----------------
z≤z : 0 ≤ 0          s≤s p : S n ≤ S n


```
