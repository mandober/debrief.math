# Cartesian product

https://en.wikipedia.org/wiki/Cartesian_product



## TL/DR

- `x ⊆ A` ⇒ `x ∈ 𝒫(A)`
- `x,y ∈ A` ⇒ `(x,y) ∈ 𝒫(𝒫(A))`
- `A⨯A` ⊆ `𝒫(𝒫(A))`
- `A⨯B` ⊆ `𝒫(𝒫(A ⋃ B))`
- A⨯(B ⋃ C) = A⨯B ⋃ A⨯C
- A⨯B = A⨯C ⇒ B=C (if A ≠ ∅)



## Intro

The Cartesian product of two sets `A` and `B`, denoted `A ⨯ B`, is the set of all ordered pairs `(a,b)`, where `a` is in `A` and `b` is in `B`.

In terms of set-builder notation
- A ⨉ B = { (a,b) | ∀a∀b(a ∈ A ⋀ b ∈ B) }
- A ⨉ B = { (a,b) | ∀a∀b((a ∈ A ⋀ (b ∈ B)) -> (a,b) ∈ A⨯B }

The Cartesian product between two sets `A` and `B` is the set of all possible combinations of the elements of A with the elements of B, expressed as the set of ordered pairs, `{(a,b)}`, such that the first element, `a`, strictly comes from `A`, while the second component, `b`, strictly comes from `B`.

There are many synonyms for the product of sets:
- the Cartesian product
- the product set
- the set direct product
- the cross product
- the dot product


## Notation

- The symbol for the cross sign may vary: `A ⨯ B`, `A ⨉B`, even just `AB`.
- The Cartesian product of two sets `A` and `B` is denoted by `A ⨯ B`. If `A` and `B` are actually the same set `A`, then the Cartesian product of a set `A` with itself is denoted by `A ⨯ A`, often shorthanded as `A²`.
- The Cartesian product of two sets is a set of ordered pairs, `(a,b)`

- `A ⨯ B ≠ B ⨯A`, and `(A ⨯ B = B ⨯A) ⟺ A=B`
- (a,b) ≠ (b,a) -> () ⟺ A ≠ B
- (a,b) = (b,a) -> (A ⨯ B = B ⨯A) ⟺ A = B
- `(a,b) = (x,y) ⟺ a=x ⋀ b=y`
- `(a,b) = (b,a) --> a = b`


- The Cartesian product of a family of `n` sets, `A₀, A₁, …, Aₙ`, is denoted similarly by `A ₀ ⨯ A₁ ⨯ … ⨯ Aₙ`.



## Concrete example

```
A = {1,2}               m = |A| = 2
B = {x,y,z}             n = |B| = 3

|A⨯B| = |B⨯A| = nm = 6

A⨯B = { (1,x), (1,y)
      , (2,x), (2,y)
      , (2,z), (2,z)
      }

B⨯A = { (x,1), (y,1), (z,1)
      , (x,2), (y,2), (z,2)
      }
```


A⨯B |  1    |  2
----|-------|------
x   | (1,x) | (2,x)
y   | (1,y) | (2,y)
z   | (1,z) | (2,z)

B⨯A |  x    |  y    |  z
----|-------|-------|-------
1   | (x,1) | (y,1) | (z,1)
2   | (x,2) | (y,2) | (z,2)

M = A⨯B, M = Nᵀ
N = B⨯A, N = Mᵀ


## Theorems

```js
Let A, B, C be sets:

A ⨉ B ⋂ C = A ⨉ B ⋂ A ⨉ C
A ⨉ B ⋃ C = A ⨉ B ⋃ A ⨉ C

A ⋂ B ⨉ C = A ⨉ C ⋂ B ⨉ C
A ⋃ B ⨉ C = A ⨉ C ⋃ B ⨉ C

A ⨉ B − C = A ⨉ B − A ⨉ C
A − B ⨉ C = A ⨉ C − B ⨉ C

T ⊆ A ---> T ⨉ B ⊆ A ⨉ B
T ⊆ B ---> A ⨉ Y ⊆ A ⨉ B
```


Explicit parens:

```
A ⨉ (B ⋂ C) = (A ⨉ B) ⋂ (A ⨉ C)
A ⨉ (B ⋃ C) = (A ⨉ B) ⋃ (A ⨉ C)

(A ⋂ B) ⨉ C = (A ⨉ C) ⋂ (B ⨉ C)
(A ⋃ B) ⨉ C = (A ⨉ C) ⋃ (B ⨉ C)

A ⨉ (B − C) = (A ⨉ B) − (A ⨉ C)
(A − B) ⨉ C = (A ⨉ C) − (B ⨉ C)

T ⊆ A --> T ⨉ B ⊆ A ⨉ B
T ⊆ B --> A ⨉ Y ⊆ A ⨉ B
```
