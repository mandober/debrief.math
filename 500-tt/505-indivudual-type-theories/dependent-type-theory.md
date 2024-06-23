# Dependent type theory

EPIT Spring School on HoTT: Andrej Bauer Part 1 (Dependent Type Theory)
https://www.youtube.com/playlist?list=PLWHp4iElqT3OfHRnQeNdtgoUY5Kz4yG8s

## Dependent Type Theory

Main 4 hypothetical judgement forms
1. `Γ ⊢ A : Type`
2. `Γ ⊢ t : A`
3. `Γ ⊢ A ≡ B`
4. `Γ ⊢ s ≡ t : A` or `s ≡ᴬ t : A`

They are hypothetical judgement forms because they happen in a context, `Γ`.

Sorts
- types
  - `A Type`
  - type or space
  - judgement that `A` is a type
- terms
  - `t : A`
  - term or point (or value or element) of type `A`
  - judgement that point `t` is of `A` type
  - judgement that point `t` is a valid construction of type `A`
- these are judgements not a proposition
- the truth value of propositions is debatable
- but a judgement is "evident"
- unlike propositions, judgements have no nagation



Space and point may depend on other points.

Dependent type (in general):

```hs
x₁ : A₁, x₂ : A₂, …, xₙ : Aₙ ⊢ B (x₁, x₂, …, xₙ)
└───────────┬─────────────┘   └──────┬────────┘
        context Γ               dependent type

- xᵢ : Aᵢ is a parameter of type Aᵢ
- each type Aᵢ may depend on the previous types


-- simpler example
x : A ⊢ B x
-- also writen
Π (x:A).B x -- pi type
Σ (x:A).B x -- sigma type
```

- `x : A ⊢ B x` is a depende type (either pi or sigma)
- `Π (x:A).B x` is a pi type
- `Σ (x:A).B x` is a sigma type
- `Π (x:A).B` = `A → B`
  a pi type (dependent function) where the output type does not depend on the input type, so it is equivalent to a non-dependent function type `A → B`.
- `Σ (x:A).B x` = `(A, B)`
  a sigma type (dependent pair) where the output type does not depend on the input type, so it is equivalent to a non-dependent pair type `(A, B)`.
- `(A, B)` is a non-dependent pair that has two canonical projections, `π₁` and `π₂`

```hs
-- non-dependent pair

-- formation / introduction
Pair a b = MkPair (a, b)

-- elimination
π₁ :: (a, b) -> a
π₁ (a, b) = a

π₂ :: (a, b) -> b
π₂ (a, b) = b
```

Actually, in a dependent type, 
x₁ : A₁, x₂ : A₂, …, xₙ : Aₙ ⊢ B (x₁, x₂, …, xₙ) 
all the subsequent types may depend on a value of the previous types.
- a : A ⊢ B a
- a : A, b : B ⊢ C a b
- a : A, b : B, c : C ⊢ D a b c

### Examples from math

- `ℝⁿ` depends on `n : ℕ`, so 
  `n : ℕ ⊢ ℝ n` is a type.
- [a, b] interval depends on 3 things, `a,b ∈ ℝ` and `a ≤ b`, so
  `a:ℝ, b:ℝ, p:a≤b ⊢ [a, b]` is a type, where `p` is the proof (evidence) that a ≤ b

### Equality

Judgemental (definitinal) equality:
- `A ≡ B`  judgementally equal types
- `s ≡ᴀ t` judgementally equal points


### Geometric picture

- B "over" A
- B is a type family "over" A
- B type depends on the value of type A
- B(x) is a fiber at x₀
- for every point `x : A`, we get a new type `B x`


```
              B x
   ⟋╌╌╌╌╌╌╌╌⟋╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌
 ⟋        ⟋   ┆                                     ⟋ ┆
┌───────⟋─────┆───────────────────────────────────⟋   ┆
│       ┆t x₀ ┆                                   │  ⟋┆  Total space
│┈┈┈┈┈┈┈┆┈┈•┈┈┆┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈│⟋  ┆  Σ x : A. B x
│       ┆  ┊ ⟋                                    │  ⟋
└───────┆⟋─┊──────────────────────────────────────┘⟋
           ┊ Fiber at x₀
───────────┬───────────────────────────────┬────── Base space A
           x₀                              x₁

x : A ⊢ B(x) : Type
x : A ⊢ t(x) : B(x)
```

### Functional dependencies
1. functions from terms to terms (regular term-level fns)
2. functions from types to types (type ctors)
3. functions from types to terms (polymorphism)
4. functions from terms to types (dependent types)

#### 1. Functions from terms to terms

With **functions from terms to terms**, the **output value** of a function depends on the **input value** (arg) to the function (but the output type of a function does not depend on the input type, or the input value of that type, to the function). It is a term-level dependence, with terms depending on terms.

```hs
succ :: Num a => a -> a
length :: [String] -> Int
words :: String -> [String] -- splits a string on whitespace
fst :: (a, b) -> a
maybe :: b -> (a -> b) -> Maybe a -> b
```

#### 2. Functions from types to types

With **functions from types to types**, the **output type** of a function depends on the **input type** (type arg) to the function. It is a type-level dependence, with types depending on types.

Type ctors are examplary representatives of type functions. For example, the type ctor `->` takes two type parameters `a` and `b` and produces the function type `a -> b`.

Applying the type-level fucntion (type ctor) `Maybe` to the type `Int`, we obtain a new type `Maybe Int`.

So the `Maybe` type function maps types (e.g. `Int`) to types (e.g. `Maybe Int`)

    Int |----Maybe---> Maybe Int

```hs
type MaybeInt = Maybe Int
type EitherStringInt = Either String Int
```

#### 3. Functions from types to terms

With **functions from types to terms**, the **output value** of a function depends on the **input type** (type arg) to the function, and the **input value** constrained by that type. In Haskell, the *type arg* need not be explicitly specified if it can be inferred from the *value arg*. In SystemF, a call to function necessarily includes first, the type args, which are followed by value args.

This dependence is actually from both, types and terms, to terms. However, the dependence may be only on types if a function is only partially applied by providing only the type arg - in that case the function is specialized from a more general to more specific type.

```hs
id :: forall a. a -> a
map :: forall a b. (a -> b) -> [a] -> b
foldr :: forall a b. (a -> b -> b) -> b -> [a] -> b


-- polymorphic id function in System F (?)
id : Λ(α:✼). λ(a:α). a -> a :: ∀(α:✼).α -> α

-- call id with int 4
id Int 4
-- call id with bool true
id Bool 4

-- or is it like this? used symbols:
Λ  for type abstraction, Λα:✼.λa.a :: ∀α. α → α (?)
λ  for term abstraction, λa.a :: ∀α. α → α
∀  for type quantification, λa.a :: ∀α. α → α
Π  for type abstraction/quantification, Π(a:A).B a
Σ  for type abstraction/quantification, Σ(a:A).B a

-- polymorphic id function in System F (??)
id : Λ(A:Type). λ(a:A). a -> a :: ∀(α:✼).α -> α

-- Λ abstract over types
-- λ abstract over terms
```

#### 4. Functions from terms to types

With **functions from terms to types**, the **output type** of a function depends not only on the *input type* (type arg) of the function, but on the specific *input value* of that type.

    a:A ⊢ B(a)

Type `B` is *indexed* by (the values of) the type `A`.

##### Length-indexed lists

Vectors are length-indexed lists.

The vector type depends on the
- type `A` (any type; but it is the type of vector's elements)
- value `n` of type `ℕ`, which specifies the length of the vector
- n:ℕ, α:Type ⊢ Vec n α

If we fix `A` to `Int`, we get the type `Vec (n:ℕ) ℤ` or more precisely

    n:ℕ ⊢ Vec n ℤ

whose instances are the types
- [] :: Vec 0 ℤ
- [-5] :: Vec 1 ℤ
- [-5,-4] :: Vec 2 ℤ
- [-5,-4,-3] :: Vec 3 ℤ

- type `Vec 0 ℤ` is a different type then `Vec 1 ℤ`
- It is not enough to just declare that ℕ indexes a vector to have it wortk as assumed. We have to associate naturals to the vector's length by defining suitable relations - which is done when defining/declaring the `Vec` data type. For example, in Haskell, we can define the `Vec` GADT like this (but Haskell does not support dependent types in a comfortable way, so we'd have a hard time implementing all the vector-related ops):

```hs
data Vec (n :: Nat) a where
  VNil  ::                 Vec    Z  a
  VCons :: a -> Vec n a -> Vec (S n) a
```

At least this shows how the cons operator, VCons, takes a value and an existing vector of length `n` and returns a new vector of length `S n`, where `S` is the successor type-level function that takes a `n:ℕ` and prepends another `S` to it.

Extra ball
- If `n:ℕ` is zero then any vector has the form `[]` for any element-type `A`
- If vector is index by 𝔹 type instead of ℕ, `α:Type, b:𝔹 ⊢ Vec α b`, then it would have only two possible lengths per each element-type `A`. For example, it could signify an empty vector (indexed by type-level `False`) and a singleton vector (indexed by type-level `True`).

- `[] :: Vec α False`, for all element-types `α`

Vec Int Bool
- []      :: Vec Int False
- [42]    :: Vec Int True
- [11134] :: Vec Int True

Vec String Bool
- []                    :: Vec String False
- ["one element only"]  :: Vec String True
- ["abc"]               :: Vec String True


```hs
data Vec (b :: Bool) a where
  VFls :: Vec 'False a       -- empty vec
  VTru :: a -> Vec 'True a   -- singleton vec
```

Hmm, Bool-indexed vector could be useful - we use the Boolean value to indicate whether a vector is empty or non-empty.

```hs
-- We need this to hold:
--   BNext False = True
--   BNext True  = True
--   BNext :: Bln (b:Bool) -> Bln (b:Bool)
data Bln (b :: Bool) where
  BFalse ::          Bln 'False
  BNext  :: Bln b -> Bln 'True

data Vec (b :: Bool) a where
  VEmpty    ::                           Vec 'False    a   -- empty vec
  VNonEmpty :: a -> Vec (b :: Bool) a -> Vec (BNext b) a   -- non-empty vec
-- we need that the "next" value of Bool is always True:
-- so `BNext` of `b` is True, whether `b` was False or True
--   'False ⟼ 'True
--   'True  ⟼ 'True
```

Safe indexing

```hs idr
data Fin : Nat -> Nat where
  FZ ::          Fin (S k)
  FS :: Fin k -> Fin (S k)

index :: Fin n -> Vect n a -> a
index  FZ    (x :: xs) = x
index (FS k) (x :: xs) = index k xs
```

Reading in a vector from the user is a pickle. 
That's when the dependent pairs come in.

```hs idr
-- dependent pair
data DPair : (a : Type) → (P : a → Type) → Type where
  MkDPair : {P : a → Type } → (x : a) → P x → DPair a P

-- (**) is sugar for a dependent pair (Σ type)
n:ℕ ⊢ Vec n A = Σ(n:ℕ).Vec n A = (n:ℕ, Vec n A) = n ** Vec n A

readVec :: IO (len ** Vect len String)
readVec = do
  x <- getLine
  if x == ""
  then return (_ ** [])
  else do
    (_ ** xs) <- readVec
    return (_ ** x :: xs)
```

Dependent pairs encode existential types: there *exists* a natural number `n` such that the vector will have `n` elements.

      (n:ℕ, ∀α:Type,∃n:ℕ ⊢ Vec n α)
      (n:ℕ, Σ (n:ℕ).Vec n α)

### Sigma type

- `Σ x : A. B x`
- Sigma type
- Dependent sum
- Dependent pair
- Dependent product

Sigma type, `Σ x : A . B x`
- elements: ordered pairs `(s, t)`, where `s:A` and `t:B(s)`
- ops: projections π₁ and π₂
- equations:
  - π₁ (s, t) ≡ᴀ s
  - π₂ (s, t) ≡ʙₛ t
  - (π₁ p, π₂ p) ≡ p (equality at type Σ x : A . B x)

#### Binary product

Binary Cartesian product is a special case when the type `B` does not depend on `A`, so `A × B` := `Σ a : A . B`.



### Pi type

- `Π x : A. B x`
- Pi type
- dependent function

`Π x : A . B x`
- elements: dependent functions
