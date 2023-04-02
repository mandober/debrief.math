# HoTT and type theory

https://www.youtube.com/playlist?list=PL-47DDuiZOMCRDiXDZ1fI0TFLQgQqOdDa

## Type theory

...

## Recap on Types

We have types i.e. spaces, `A`, and points i.e. elements, `a : A`, of that space that are always constructed according to some rules. A point always belongs to exactly one space.

Dependent type, `x : A ⊢ B(x) type`, but since we have functions and universes, we can just think of a dependent type as `B` being a map from `A` into the universe of all types, `B : A -> 𝒰`. The view of dependent types is as a fibration from space `A` to fibers `B(x)`. We have a space `A` and then for every point `x : A`, there is a corresponding fiber `B(x)` which is the type over `x`, so for every `x` you get a different type of `B(x)`.

Then we had some basic type constructions like the unit type, `𝟙`, with a single term `★ : 𝟘`. The empty type, `𝟘`, with no elements (uninhabited).

**Dependent products**: if we have a dependent type `x : A ⊢ B(x) type`, then we can form a product type `Π (x:A) B(x)`, which may be interpreted as an indexed family of sets in set theory, or better as a *space of sections* in topology.

Dependent product is defined by a spece `A` (as a line) and above every point on the line, there is an associated fiber `B(x)`. A section takes each `x` and chooses a point in the associated fiber. So `t(x)` is a point for a single value `x`, the so-called *typical element*. The entire section is then a map which goes from `A` to the fibers. This is denoted by `λ(x:A).t(x)`, which means `x ⟼ t(x)`, so it's a map taking each `x:A` to a point `t` that depends on `x` which lands in `B(x)`, ie. `t(x) : B(x)`. If we have such a map, we can then apply it. So given a section `f`, and given an `a : A`, then we can apply `f` to `a`, which is going to land in `B(a)`.

A special case of a product was an **exponential** or **function type**. A function type `A -> B` is just a special case when you have a dependent product but the fiber is constant. The fiber is always some constant type `B` that doesn't depend on `x`. Then we just get a function type `Π (x:A) B` or `Bᴬ`.

**Dependent sum**: `Σ (x:A) B(x)`, with geometric interpretation as the *total space of fibrations*. It is defined by a spece `A` (as a line) and above every point on the line, there is an associated fiber `B(x)`. A section takes each `x` and chooses a point in the associated fiber. The total space is all sections put together, it is a contour around all the fibers. The *typical element* of the sum is a pair `(a, b) : Σ (x:A) B(x)` where `a:A` and `b:B(a)`.

Along with two projections:
- `π₁ : Σ (x:A) B(x) -> A`
- `π₂ : Π (u : Σ (x:A) B(x)) -> B(π₁(u))`

The type of the first projection is a map from the total space to the base space `A`. The type of the second projection is more complex. `π₂` needs to take something in the total space and map in somewhere - but where? That depends on `u`. Because it depends on where the `u` is, it is mapping into a fiber over `π₁(u)`.

## Natural numbers

For the type of natural numbers, `ℕ`, we have the usual 4 kinds of rules. The formation rule has no assumptions and just states that `ℕ` is a type, which can also be expressed (in a type theory with universe of types) as `ℕ : 𝒰`.

```hs
-- ℕ-formation:

------- ℕf       (OR)        ------- ℕf
ℕ : 𝒰                        ℕ type


-- ℕ-introduction:

------- ℕi-Z
0 : ℕ

Γ ⊢   n : ℕ
------------- ℕi-S
Γ ⊢ S n : ℕ


-- ℕ-elimination (induction principle):

Γ, x:ℕ         ⊢                              D(x) type
Γ              ⊢ a                          : D(0)
Γ, x:ℕ, y:D(x) ⊢ b{- b deps on x and y -}   : D(S x)
---------------------------------------------------------- ℕe
Γ, x:ℕ         ⊢ ind (a,b,x)                : D(x)

-- Conclusion of ℕ-elim indeed is a pi-type, Π (n:ℕ) D(n)
-- obtained by abstracting over n:ℕ in the premise
-- (while ignoring the ind(a,b,x) term?!)


-- ℕ-computation:

Γ, x:ℕ         ⊢                                      D(x) type
Γ              ⊢ a                                  : D(0)
Γ, x:ℕ, y:D(x) ⊢ b                                  : D(S x)
------------------------------------------------------------------ ℕ-β
Γ              ⊢ ind (a, b, 0)   = a                : D(0)
Γ              ⊢ ind (a, b, S x) = b[y:=ind(a,b,x)] : D(S x)
```


### Induction principle in Agda

```agda hs
-- induction principle on ℕ
ℕ-elim : {A : ℕ → Type}
       → A 0                           -- base case: if A holds for 0
       → ((k : ℕ) → A k → A (succ k))  -- rec case
       → (n : ℕ)                       -- n : ℕ
       → A n                           -- conclusion: then A holds ∀n:ℕ
ℕ-elim {A} f g n = h n
  where
  h : (n : ℕ) → A n
  h zero     = f
  h (succ n) = g n (h n)
```


The type-theoretic version of the **induction principle** is something that allows you to create sections, i.e. maps over over the natural numbers. The induction principle is an elimination rule, it deconstructs natural numbers. It is a direct generalization of the usual induction principle.

Given these input data:
- a dependent type over the natural numbers, `P : ℕ -> 𝒰` (a type family over the natural numbers)
- a point, i.e. base case, `b : P(0)`

The goal is to get a section of the fibration, because to say that something holds for every `n` means that every `P` is inhabited.

We need a way of creating a section. We have a point to start with, and now we just need a way of always moving forward, always getting to the next point.

What we need is a sort of a passage function `f` of `n`. We need a map which goes from each fiber to the next for every `n`. Once we have that `f`, we'll just keep applying it. `f` takes in a number and gives back a map from `P(n)` to `P(S n)`. When applied to a particular `n`, we get a pass from `P(n)` to the next fiber, `P(S n)`. We are trying to inhabit one of these `P(k)`'s, so we also have a natural number `k`. We want to produce something in `P(k)`.

We need to translate math induction into type theory, to retrieve the induction principle that additionally can also deal with dependent types.


### Defining addition

```hs
x:ℕ ⊢ x:ℕ         x:ℕ, y:ℕ, z:ℕ ⊢ S z:ℕ
---------       ------------------------
  x:ℕ, y:ℕ ⊢ ind(x, S z, y) : ℕ
----------------------------------------
  x:ℕ ⊢ λy.ind(x, S z, y) : ℕ → ℕ
----------------------------------------
  ⊢ λx.λy.ind(x, S z, y) : ℕ → (ℕ → ℕ)
```

Compared to the lhs of the ℕ-elim rule, 
`Γ  , x:ℕ, y:D(x)`, here we have 
`x:ℕ, y:ℕ, z:D(x)`, that is, 
`x:ℕ, y:ℕ, z:ℕ` (since `D(x)` is `ℕ`).
