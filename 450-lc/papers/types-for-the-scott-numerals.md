# Types for the Scott numerals

`Types for the Scott numerals`, M. Abadi, L. Cardelli, G. Plotkin, 1993


In the untyped lambda calculus, the Scott numerals are defined by:

- Z := λx y. x
- S := λn x y. y n
- Case := λn a f. n a f

where `Case n a f` returns `a` if `n = Z`, and `f(x)` if `n = S x` (see [^2]).

```hs
Z = \ x y -> x
S = \ n x y -> y n
Case = \ n a f -> n a f
-- where
Case n a f = case n of
  Z   -> a
  S x -> f x
```

The Scott numerals are distinguished from the Church numerals by their *"linearity"*: the bound variables of `Z`, `S`, and `Case` occur at most once in the bodies of these functions, and `pred` i.e. `λn.n Z (λx.x)` can be computed trivially.

The Scott numerals can be typed in an extension of System F with covariant recursive types. We can take the type of the Scott numerals to be the solution to the equation `S = ∀R. (R → (S → R) → R)`

```hs
-- Z =               λ x       λ y          . x
Z =              ΛR. λ(x : R). λ(y : S → R) . x
  : S

-- S = λ n           λ x       λ y          . y n
S =    λ(n : S). ΛR. λ(x : R). λ(y : S → R) . y n
  : S → S

-- C = λ n           λ a       λ f          . n   a f
Case = λ(n : S). ΛR. λ(a : R). λ(f : S → R) . n R a f
  : S → ∀R. (R → (S → R) → R)
```

that is

```hs
Z =
  ΛR.
    λ(x : R).
      λ(y : S → R).
        x : S

S =
  λ(n : S).
    ΛR.
      λ(x : R).
        λ(y : S → R).
          y n : S → S

Case =
  λ(n : S).
    ΛR.
      λ(a : R).
        λ(f : S → R).
          n R a f : S → ∀R. (R → (S → R) → R)
```

Since `S` is a covariant recursive type, it can be represented by System F type 
`M = μX.G[X]`
where
`G[X] = ∀R. (R → (X → R) → R)`
and
`μX.G[X] = ∀X. ((G[X] → X) → X)`


Let `N = G[M]`, 
    `from : N → M`, 
    `into : M → N` 
be the two halves of the isomorphism between `M` and `N`.

```hs
N = G[M]
from :: N → M
into :: M → N
```

Using `from` and `into`, we can give new System F versions of Z, S, and Case.

For this, it turns into to be easiest to use `N` rather than `M` as the type of numbers. We set:

```hs
Z    =           ΛR. λ(x : R). λ(y : M → R).  x                 : N
S    = λ(n : N). ΛR. λ(x : R). λ(y : M → R).  y (from n)        : N → N
Case = λ(n : N). ΛR. λ(a : R). λ(f : N → R).  n R a (f ∘ into)
       : N → ∀R. (R → (N → R) → R)
```

A numeral system based on `M` can be obtained by working through the isomorphism, or can be derived from scratch.

These two approaches yield somewhat different results. An abundance of superficially different numeral systems can be obtained, in part because neither `from ∘ into` nor `into ∘ from` is βη-equivalent to the identity.

Note that these numeral systems are not as efficient as the original one, or as the one based on the recursive type `S` - the two halves of the isomorphism `from` and `into` are not linear.


After considering these typed version of the Scott numerals, we may wish to check that they are in fact isomorphic to the standard natural numbers.

A direct argument uses many of the datatype constructions, as studied in [^1]

```hs
M ≡ N                                        by unfolding
  ≡ μX ∀R. ( (1 → R) → (X → R)  → R)         since R ≡ (1 → R)
  ≡ μX ∀R. (((1 → R) ⨯ (X → R)) → R)         by uncurrying
  ≡ μX ∀R. ((     (1 + X) → R)  → R)         turning a ⨯ into a +
  ≡ μX.           (1 + X)                    as 1 + X ≡ μR. (1 + X)
```


Similarly, we can give Scott versions for other familiar datatypes using covariant recursive types. This works out particularly well when recursive types can be defined up to equality rather than just up to isomorphism.




## References

[^1]: Gordon Plotkin, Martin Abadi, `A logic for parametric polymorphism`, 1993
[^2]: Christopher Wadsworth, `Some unusual λ-calculus numeral systems`, 1980
