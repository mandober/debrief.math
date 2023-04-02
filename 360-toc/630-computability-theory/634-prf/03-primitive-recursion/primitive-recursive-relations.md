# Primitive recursive relations

A relation `R` is said to be primitive recursive if its characteristic function, is primitive recursive.

A **characteristic function** of a relation `R ⊆ ℕᵏ` is denoted by `χR(x̅)`:

```hs
χR(x₀, x₁,...,xₖ) = 1    if x₀, x₁,...,xₖ ∈ R
χR(x₀, x₁,...,xₖ) = 0    if x₀, x₁,...,xₖ ∉ R

-- or
χR(x̅) = 1     if  R(x̅)
χR(x̅) = 0     if ¬R(x̅)
```

A characteristic function determines whether a tuple of elements `x̅` belongs to a relation `R`; it returns 1 if it does, else 0.

In general, characteristic function determines whether an element of a set `A` belong to its subset, `S ⊆ A`: it returns 1 if it does, else 0.

So when referring to a primitive recursive relation `R(x̅)`, we are actually referring to a relation of the form `χR(x̅) = 1`, where `χR` is a primitive
recursive function which, on any input, returns either 1 or 0.

For example, the relation `IsZero(x)`, which holds iff `x = 0`, corresponds to the function `χIsZero`, defined using primitive recursion by

```hs
χIsZero    0  = 1
χIsZero (S x) = 0
```

We can compose relations with other primitive recursive functions. The following are also primitive recursive:

- EQ relation, `a = b` defined by `IsZero(|a ∸ b|)`
- LT relation, `a < b` defined by `IsZero(a ∸ b)`


## Boolean operations closure

>The set of PR relations is closed under Boolean operations.

That is, if `P(x̅)` and `Q(x̅)` are primitive recursive, so are:
- ¬P(x̅)
- P(x̅) ∧ Q(x̅)
- P(x̅) ∨ Q(x̅)
- P(x̅) → Q(x̅)

Proof: Suppose `Px̅` and `Qx̅` are primitive recursive, i.e. their characteristic functions `χP` and `χQ` are PR. We have to show that the characteristic functions of `¬Px̅` and others are also primitive recursive.
- Negation: `¬Px̅` can be defined as `1 ∸ Px̅`
- Conjunction: `χP∧Q(x̅)` as `min(χP(x̅), χQ(x̅))`, or as `χP(x̅) · χQ(x̅)`
- Disjunction: `χP∨Q(x̅)` as `max(χP(x̅), χQ(x̅))`
- Implication: `χP→Q(x̅)` as `max(1 ∸ χP(x̅), χQ(x̅))`, since `p → q ≡ ¬p ∨ q`


## Bounded quantification closure

>The set of PR relations is closed under bounded quantification.

If `R(x̅,z)` is a primitive recursive relation, then so are relations:
- `∀z (x < y → R(x̅,z))`
- `∃z (z < y ⋀ R(x̅,z))`

`∀z (x < y → R(x̅,z))` holds of `x̅` and `y` iff `R(x̅,z)` holds for every `z` less than `y`; and similarly for `∃z (z < y ⋀ R(x̅,z))`.

Proof: By convention, we take `∀z (x < y → R(x̅,z))` to be (vacouusly) true for the trivial reason that there are no `z` less than 0; and `∃z (z < y ⋀ R(x̅,z))` to be false.

A bounded universal quantifier functions is an iterated minimum (or a finite product), i.e. if `P(x̅,y) ⇔ ∀z (x < y → R(x̅,z))` then `χP(x̅,y)` can be defined by:

```hs
χP(x̅,   0) = 1
χP(x̅, S y) = min ( χP(x̅,y) , χR(x̅,y) )
```

Bounded existential quantification can similarly be defined using `max`. Alternatively, it can be defined from bounded universal quantification, using the equivalence `∃z (z < y ⋀ R(x̅,z)) ⇔ ¬∀z (x < y → ¬R(x̅,z))`. Note that, for example, a bounded quantifier of the form `∃x((x ≤ y) … x …)` is equivalent to `∃x((x < S y) … x …)`.

## Conditional

Another useful primitive recursive function is the conditional function, `cond(x,y,z)`, defined by

```hs
cond(x,y,z) = y   if x = 0
cond(x,y,z) = z   if x ≠ 0
```

This is defined recursively by

```hs
cond(  0, y, z) = y
cond(S x, y, z) = z
```

One can use this to justify definitions of primitive recursive functions by cases from primitive recursive relations:

If  `g₀(x̅), …, gₘ(x̅)`   are primitive recursive functions, 
and `R₀(x̅), …, Rₘ˗₁(x̅)` are primitive recursive relations, 
then the function `f` defined by

```hs
f(x̅) = g₀(x̅)    if R₀(x̅)
f(x̅) = g₁(x̅)    if R₁(x̅) ⋀ ¬R₀(x̅)
f(x̅) = g₂(x̅)    if R₂(x̅) ⋀ ¬R₀(x̅) ⋀ ¬R₁(x̅)
...
f(x̅) = gₘ(x̅)    otherwise
```

is also primitive recursive.

Proof:

When `m = 1`, this is just the function defined by

  `f(x̅) = cond(χ¬R₀(x̅), g₀(x̅), g₁(x̅))`

When `m > 1`, we can just compose definitions of this form.




## Leftovers

```hs
-- monus (∸)
a ∸ b = if a ≥ b then a - b else 0


x ∸ y = 
monus 0 x = x
monus y x = 

ρ[id, pred ∘ π³₂]

-- equality relation (= or ==) defined by IsZero(x ∸ y)

x == y = signum (abs (a `monus` b))
  where
  signum a = if a = 0 then 0 else 1

-- LE relation (<=)

-- LT relation (<)

, `x = y`, defined by `IsZero(|x ∸ y|)`

- less-than relation, `x ≤ y`, defined by `IsZero(|x ∸ y|)` where `∸` is monus

- equality relation, `a = b`, defined by `sg(|a ∸ b|)`
- LT relation, `a < b` defined by `sg(a ∸ b)`

~sg(a): NOT[signum(a)]: if a = 0 then 1 else 0
sg(a):     signum(a) : if a = 0 then 0 else 1

```
