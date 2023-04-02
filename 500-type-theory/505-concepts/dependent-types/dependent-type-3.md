# Dependent type

https://en.wikipedia.org/wiki/Dependent_type

In computer science and logic, a dependent type is a type whose definition depends on a value.

Dependent types are an overlapping feature of type theory and type systems.

In *intuitionistic type theory*, dependent types are used to encode logical quantification like "for all" and "there exists".

In FPL (`Agda`, `ATS`, `Coq`, `F*`, `Epigram`, `Idris`) dependent types help reduce bugs by enabling the programmer to assign types that further restrict the set of possible implementations.


Two common examples of dependent types are dependent functions and dependent pairs.

>The return type of a **dependent function** may depend on the value (not just the type) of its argument.

For instance, a function that takes a positive integer `n` may return a vector of length `n`, where the vector length is part of the type of the vector. This is different from polymorphism and generic programming, both of which include the type as an argument (they deal with parameterized types).

```hs
data Nat = Z | S Nat

data Vec (n :: Nat) (a :: Type) where
  VNil  :: Vec Z a
  VCons :: a -> Vec n a -> Vec (S n) a

-- Haskell does not have dependent types
-- so this is just an approximation
makeVec :: {n :: Nat} -> a -> Vec n a
makeVec {n} a = Vec n a

v1 :: Vec (S (S (S Z))) Int
v1 = makeVec (S (S (S Z))) 42 -- [42, 42, 42]
```


>A **dependent pair** may have the type of the second component depend on the value of the first component.

In the vector example, a dependent pair may be used to pair a vector with its length in a type-safe way.

```hs
(n, Vec n a)
```

Dependent types add complexity to a type system. Deciding the equality of dependent types in a program may require computations. If arbitrary values are allowed in dependent types, then deciding type equality may involve deciding whether two arbitrary programs produce the same result; hence the decidability of type checking may depend on the given type theory's semantics of equality, that is, whether the type theory is intensional or extensional.


## Contents

- History
- Formal definition
  - Π type
  - Σ type
    - Example as existential quantification
- Systems of the lambda cube
  - First order dependent type theory
  - Second order dependent type theory
  - Higher order dependently typed polymorphic lambda calculus
- Simultaneous programming language and logic
- Comparison of languages with dependent types


## History

In 1934, *Haskell Curry* noticed that the types used in typed lambda calculus, and in its combinatory logic counterpart, followed the same pattern as axioms in propositional logic. Going further, for every proof in the logic, there was a matching function (term) in the programming language. One of Curry's examples was the correspondence between simply typed lambda calculus and intuitionistic logic.

Predicate logic extends propositional logic by adding quantifiers. *Howard* and *de Bruijn* extended lambda calculus to match this more powerful logic by creating types for
- dependent functions, which correspond to universal quantification
- dependent pairs, which correspond to existential quantification

Because of this and other work by Howard, *propositions-as-types* is known as the *Curry-Howard correspondence*.

## Formal definition

### Π type

Loosely speaking, dependent types are similar to the type of an *indexed family of sets*. A set `A` may be indexed by another set, called the *index set*, `I`. Then each elem set `Aᵢ` is indexed by an element `i ∈ I` of the index set `I`. An indexed family of sets is the function `f : I -> A`, but we are often more focused on the collection of sets which we then denote by `{Aᵢ} _{i ∈ I}`, i.e. `{Aᵢ}ᵢ∊ɪ`.


More formally, given a type `A` in a universe of types `𝓤`, `A : 𝓤`, 
we get an indexed family of types `B : A -> 𝓤`, 
which assigns to each term `x : A` a type `B(x) : 𝓤`. 
We say that the type `B(x)` varies with `x : A`. 
The type `B(x)` is a dependent type.

```hs
A : 𝓤    B : A -> 𝓤
----------------------
x : A ⊢ B(x) type

B : A -> 𝓤
B x = B(x)

𝓤             𝓤 is a universe of types
{A : 𝓤}       A is a type (in the universe)
{x : A}       x is a term of the type A
B : A -> 𝓤    B is a type ctor, a family of types indexed by A
B(x) : 𝓤      B(x) is a dependent type
```

Here, the universe of types `𝓤` is indexed by an index type `A` producing an indexed family of types `B : A -> 𝓤`. Each type `B(x)` in the indexed family of types varies on a term in `A`. Applying the type ctor `B` to a term `x : A` we get an instance type of the indexed family - a dependent type `B(x) : 𝓤`.


A function whose type of return value varies with the value (not just type) of its argument, i.e. *there is no fixed codomain*, is a **dependent function** and the type of this function is called a **dependent function type**, or **dependent product type**, or **pi-type**.

From *a family of types* `B : A -> 𝓤`, we may construct **the type of dependent functions**, `Π (x:A) B(x)`, whose *terms are functions* which take a term `a : A` and return a term in `B(a)`. The dependent function type is typically denoted by `Π (x:A) B(x)`.

If `B : A → 𝓤` is a constant function, the corresponding *dependent product type* is equivalent to an *non-dependent function type*. That is, `Π (x:A) B` is **judgmentally equal** to `A → B` when `B` does not depend on `x`.

The name "pi-type" comes from the idea that these may be viewed as a *Cartesian product of types*. Pi-types can also be understood as *models of universal quantifiers*.


### Σ type

The dual of the *dependent product type* is the **dependent pair type**, aka **dependent sum type**, **sigma-type**, (or, confusingly dependent product type).

  

### Example as existential quantification


## Systems of the lambda cube

### First order dependent type theory
### Second order dependent type theory
### Higher order dependently typed polymorphic lambda calculus

## Simultaneous programming language and logic
## Comparison of languages with dependent types
