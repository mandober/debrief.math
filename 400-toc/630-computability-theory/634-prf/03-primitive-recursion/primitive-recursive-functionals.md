# Primitive recursive functionals

https://en.wikipedia.org/wiki/Primitive_recursive_functional

In mathematical logic, the **primitive recursive functionals** are a generalization of primitive recursive functions into higher type theory. They consist of a collection of functions in all pure finite types.

The primitive recursive functionals are important in proof theory and constructive mathematics. They are a central part of the Dialectica interpretation of intuitionistic arithmetic developed by Kurt Gödel.

In recursion theory, the primitive recursive functionals are an example of higher-type computability, as primitive recursive functions are examples of Turing computability.


Every primitive recursive functional has a type, which says what kind of inputs it takes and what kind of output it produces. 

An object of `type 0` is simply a natural number; it can also be viewed as a constant function that takes no input and returns an output in the set ℕ.

For any two types `σ` and `τ`, the type `σ → τ` represents a function that takes an input of type `σ` and returns an output of type `τ`. 

Thus the function `f n = n + 1` is of type `0 → 0`. 

The types `(0 → 0) → 0` and `0 → (0 → 0)` are different; by convention, the notation `0 → 0 → 0` refers to `0 → (0 → 0)` since the arrow is always right-associative.

In the jargon of type theory, objects of type `0 → 0` are called *functions* and objects that take inputs of type other than `0` are called *functionals*.

For any two types `σ` and `τ`, the type `σ×τ` represents an ordered pair, the first element of which has type `σ` and the second element type `τ`.

For example, consider functional `A` taking as input a function `f : ℕ → ℕ` and a `n ∈ ℕ`, and returns `f n`. Then `A` has type `(0 × (0 → 0)) → 0`, also written as `0 → (0 → 0) → 0` after currying.

```
A : (ℕ ⨯ (ℕ → ℕ)) → ℕ         A : (0 ⨯ (0 → 0)) → 0
A : ℕ → (ℕ → ℕ) → ℕ           A : 0 → (0 → 0) → 0
```

```hs
fA :: (ℕ, (ℕ -> ℕ)) -> ℕ
fA (n:ℕ, f:ℕ → ℕ) = f n

fA :: ℕ -> (ℕ -> ℕ) -> ℕ
fA (n:ℕ) (f:ℕ → ℕ) = f n
```

The set of (pure) finite types is the smallest collection of types that includes `0` and is closed under the operations of `×` and `→`. A superscript or colon is used to indicate that a variable `x:τ` is assumed to have a certain type `τ`; the superscript may be omitted when the type is clear from context.

## Definition

The primitive recursive functionals are the smallest collection of objects of finite type such that:

- The constant function `f n = 0` is a primitive recursive functional

- The successor function `g n = n + 1` is a primitive recursive functional

- For any type `σ×τ`, functional `K (x:σ, y:τ) = x` is a primitive recursive functional

- For any types `ρ`, `σ`, `τ`, the functional `S`, 

```hs
S (f : ρ → σ → τ, g : ρ → σ, x : ρ) = f x (g x)

S :: (ρ → σ → τ) -> (ρ → σ) -> ρ -> τ
S f g x = f x (g x)
```

is a primitive recursive functional.

- For any type `τ`: `f` of type `τ`, and any `g` of type `0 → τ → τ`, the functional `R (f,g) : 0 → τ` defined recursively by:

```hs
R : (τ ⨯ (0 -> τ -> τ)) -> (0 -> τ)
R (f,g)   (0) = f
R (f,g) (S n) = g (n, R(f,g) (n))


R :: τ -> (ℕ -> τ -> τ) -> (ℕ -> τ)
R f g    0  = f
R f g (S n) = g n (R f g n)
```

is a primitive recursive functional.
