# Orders

https://matt.might.net/articles/partial-orders/

**Preorder**: a binary relation `⊑` on a set `S` is a preorder iff `⊑` is reflexive and transitive.

An **equivalence relation** `≡` is a preorder that is symmetric as well.
- An equivalence relation `≡` divides a set `S` into equivalence classes
- The equivalence class of the element `x` is `[x]`, `[x] = { y | x ≡ y }`
- set of all equivalence classes on `S` under the relation `≡` is set `S/≡`

Equivalence relations from preorders: every preorder `⊑` induces a **natural equivalence relation** `≡ᵣ` (where `r` is `⊑`), `a ≡ᵣ b <=> a ⊑ b ∧ b ⊑ a`.

A **partial order** is a preorder that is antisymmetric. A partially ordered set (poset) is a set `S` equipped with a partial order `⊑`, denoted `(S, ⊑)`.

A **total order** (linear) is a binary relation `≤` that is total, transitive and antisymmetric. *Totality* implies reflexivity, which means that every total order is also a partial order.

## Meet semilattice

A meet semilattice is a poset in which any two elements have a *greatest lower bound*, `⊓`, denoted `∀ab. a ⊓ b`.

The **greatest lower bound (GLB)** of `a` and `b`, `a ⊓ b`, is the largest element that is still less than `a` and less than `b`.
- In a lattice, the glb must be unique.
- greatest **lower** bound (GLB), aka *meet*, *infimum*.

GLB has the properties:
- `(a ⊓ b) ⊑ a`
- `(a ⊓ b) ⊑ b`
- `(c ⊑ a ⋀ c ⊑ b) -> c ⊑ (a ⊓ b)`

## Join semilattice

A join semilattice is a poset in which any two elements have a *least upper bound*, denoted `a ⊔ b`.

The **least upper bound (LUB)** of `a` and `b`, `a ⊔ b`, is the smallest element that is still larger than `a` and larger  than `b`.
- In a lattice, the lub must be unique.
- least **upper** bound (LUB), aka *join*, *supremum*

LUB has the properties:
- `a ⊑ (a ⊔ b)`
- `b ⊑ (a ⊔ b)`
- `(a ⊑ c ⋀ b ⊑ c) -> (a ⊔ b) ⊑ c`

## Lattice

If a poset is both a *meet semilattice* and a *join semilattice*, then the poset is also a **lattice**.

## Bounded lattice

A lattice `(L, ⊑)` is a **bounded lattice** if there is a *maximum element* (top or `⊤`) and a *minimum element* (bottom or `⊥`) in the set `L`.

For any element `x` in the lattice, it must be the case that:
- `x ⊑ ⊤`
- `⊥ ⊑ x`

## Complete lattices

A lattice `(L, ⊑)` is a **complete lattice** 
if every subset `S ⊆ L` 
(of possibly an infinite number of subsets) has both 
a supremum (LUB), `sup(S)` and 
an infimum (GLB), `inf(S)`.

Every complete lattice `(L, ⊑)` is a bounded lattice:
- `⊤ = sup(L)`
- `⊥ = inf(L)`


## Monotonic functions

Given posets `(A, ⊑ᴬ)` and `(R, ⊑ᴿ)`, a function f : `A → R` is monotonic, or order-preserving, if `x ⊑ᴬ x′` implies `f(x) ⊑ᴿ f(x′)`.

## Continuous functions

To define continuous function, we first need to define member-wise function application across sets.

Given a function `f : A → R`, if `S ⊆ A`, then `f(S) = { f(a) | a ∈ S }`.

Alternately, `f{a₁, …, aₙ} = {f(a₁), …, f(aₙ)}`.

Given lattices `(A, ⊑ᴬ)` and `(R, ⊑ᴿ)`, a function f : `A → R` is **Scott-continuous** if `S ⊆ A` implies `f(sup(S)) = sup(f(S))`.

Scott-continuous functions are monotonic as well.

## Fixed points

Given a function `f : X → X`, 
`x` is a fixed point (fixpoint) of `f` if `f(x) = x`.

### Regions

With respect to a monotonic function `f : X → X` 
on a complete lattice `(X, ⊑)`, 
we can divide the set `X` into regions:
- `Asc(f)  = { x | x ⊑ f(x) }` is the ascending region
- `Fix(f)  = { x | x = f(x) }` is the fixpoint region
- `Desc(f) = { x | x ⊒ f(x) }` is the descending region

It is useful to distinguish *the least fixpoints* and *the greatest fixpoints*:
- `lfp(f) = inf(Fix(f))`
- `gfp(f) = sup(Fix(f))`


The following properties hold for these regions:
- `Fix f = Asc f ⋂ Desc f`
- `x ∈ Asc f`  ==> `f x ∈ Asc f`
- `x ∈ Desc f` ==> `f x ∈ Desc f`
- `⊤ ∈ Desc f`
- `⊥ ∈ Asc f`


### Kleene chain

Given a monotonic function `f : L → L` 
on a lattice `(L,⊑)`, 
**the Kleene chain**, 
starting at the point `x ∈ L`,
is the set `K(x)`:

`K(x) = { fⁱ(x) | i ≥ 0 }`

where `fⁱ` is the *iterated function composition* (folding on itself):

`f⁰(x) = x`, and `fⁱ(x) = fⁱ⁻¹(f(x))`


If `x ∈ Asc(f)`, then 
there will be an ascending order 
to the chain `K(x)`, 
since `fⁱ(x′) ⊑ fⁱᐩ¹(x′)` 
for any `x′ ∈ Asc(f)`.


### Kleene's fixed point theorem

On lattices, Kleene's fixed point theorem says:

If `(L,⊑)` is a complete lattice 
and `f : L → L` is a continuous function,
then `lfp(f) = sup(K(⊥))`.

Moreover, if a lattice has finite height, 
there exists a natural `n` such that
`lfp(f) = fn(⊥)`.

This fact leads to a simple algorithm for computing fixed points.

The `stable` function looks for the first element in a sequence to be the same as the previous element (to repeat its neighbor):

```hs
-- Kleen chain (sequence)
kleene :: (BoundedLattice t) => (t -> t) -> [t]
kleene f = bottom : map f (kleene f)
  where
  bottom = undefined

stable :: Eq a => [a] -> a
stable (x:y:xs) | x == y    = x
                | otherwise = stable (y:xs)

-- least fixed point
lfp :: (BoundedLattice t, Eq t) => (t -> t) -> t
lfp f = stable (kleene f)
```

So, the least fixed point function looks for a stable point in the Kleene sequence.

## Natural lifts for lattices

There are several natural liftings for posets and lattices across the foundational discrete data structures: flat sets, power sets, Cartesian products, sums, sequences and functions.

### Pointed sets

Given a set `S`, 
the pointed poset `S⊥` contains a bottom:   
`S⊥ = S ⋃ {⊥}`

and the pointed poset `S⊤` contains a top:   
`S⊤ = S ⋃ {⊤}`

If `(S,⊑)` is a poset, 
then the order is *extended under pointing*, 
so that for the lattice `(S⊤⊥, ⊑′)`:
- `∀x. ⊥ ⊑′ x`
- `∀x. x ⊑′ ⊤`
- `∀xx′ ∈ S. x ⊑′ x′ -> x ⊑ x′`

### Flat lattices

Given a set `S`, we can lift `S` into a flat lattice `(L,⊑)`:

`L = S⊤⊥ = S ⋃ {⊥} ⋃ {⊤}`

where `x ⊑ y` iff `(x = ⊥) ⋁ (y = ⊤) ⋁ (x = y)`

### Partial orders over sums

Given a collection of posets (X1,⊑1),…,(Xn,⊑n) we can naturally lift the partial order into the poset (X1+⋯+Xn,⊑):

`x ⊑ x′ iff x ⊑ᵢ x′` for some `i`

If the posets are lattices, then the resulting poset is not a lattice by default.

To make it into a lattice, it must pointed.

### Lattices over Cartesian products

Given lattices `(L₁, ⊑₁)` and `(L₂, ⊑₂)`, the 
*natural, component-wise, Cartesian product lattice* 
is `(L₁×L₂, ⊑)`:

`(a,b) ⊑ (a′,b′) --> a ⊑₁ a′ ⋀ b ⊑₂ b′` such that

- (a,b) ⊔ (a′,b′) = (a ⊔ a′, b ⊔ b′)
- (a,b) ⊓ (a′,b′) = (a ⊓ a′, b ⊓ b′)
- ⟘ = (⟘ʟ₁, ⟘ʟ₂)
- ⟙ = (⟙ʟ₁, ⟙ʟ₂)










## Complete Haskell code

```hs
import Data.Map as Map hiding (map)
import Data.Set as Set hiding (map)

type ℙ a = Set.Set a
type k :-> v = Map.Map k v

class PartialOrder t where
  (⊑) :: t -> t -> Bool

class PartialOrder t => Lattice t where
  (⊔) :: t -> t -> t
  (⊓) :: t -> t -> t

class Lattice t => BoundedLattice t where
  bot :: t
  top :: t

-- Kleen chain (sequence)
kleene :: (BoundedLattice t) => (t -> t) -> [t]
kleene f = bottom : map f (kleene f)
  where
  bottom = undefined

stable :: Eq a => [a] -> a
stable (x:y:xs) | x == y    = x
                | otherwise = stable (y:xs)

-- least fixed point
lfp :: (BoundedLattice t, Eq t) => (t -> t) -> t
lfp f = stable (kleene f)


-- pointed lattice
data Pointed a = PTop | PBot | PEl a

instance PartialOrder a => PartialOrder (Pointed a) where 
  PBot ⊑ x      = True
  x ⊑ PTop      = True
  PEl a ⊑ PEl b = a ⊑ b


-- flat lattice
data Flat a = Top | Bot | El a

instance (Eq a) => PartialOrder (Flat a) where
  Bot ⊑ x     = True
  x ⊑ Top     = True
  El a ⊑ El b = a == b

instance (Eq a) => Lattice (Flat a) where
  Bot ⊔ x = x
  x ⊔ Bot = x

  Bot ⊓ x = Bot
  x ⊓ Bot = Bot

  Top ⊔ x = Top
  x ⊔ Top = Top

  Top ⊓ x = x
  x ⊓ Top = x

  El a ⊔ El b | a == b    = El a
              | otherwise = Top

  El a ⊓ El b | a == b    = El a
              | otherwise = Bot

instance (Eq a) => BoundedLattice (Flat a) where
  bot = Bot
  top = Top


-- Lattices over Cartesian products
instance (PartialOrder a, PartialOrder b) => PartialOrder (a,b) where
  (x,y) ⊑ (x',y') = x ⊑ x' && y ⊑ y'

instance (Lattice a, Lattice b) => Lattice (a,b) where
  (x,y) ⊔ (x',y') = (x ⊔ x', y ⊔ y')
  (x,y) ⊓ (x',y') = (x ⊓ x', y ⊓ y')

instance (BoundedLattice a, BoundedLattice b) => BoundedLattice (a,b) where
  bot = (bot,bot)
  top = (top,top)
```
