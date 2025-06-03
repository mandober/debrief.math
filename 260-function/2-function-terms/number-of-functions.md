# Number of functions

## Number of functions on the small domains

A function `f` is a mapping between two sets `A` and `B`, denoted `f : A -> B`. The set `A` is called the *domain* of the function, and it is the set, a variable ranging over it, takes its values from. If `A` has only one element, then there are as much functions from `A` to `B` as there are elements in `B`. Each of these functions can only send that single element of `A` to a single element of `B` - so there are as much distinct functions as there are elements in B.

If `B` is the same set as `A`, then there is only one such function possible:

```hs
f : A -> B
f(a) -> b

A,B = {★}
f(★) = ★
★ ⟼ ★
```

It takes that single element `★ ∈ A` and maps it to the only element of B, which is also `★ ∈ B`.

`f = { (a,   b)  | a ∈ A,    b ∈ B }` 
`f = { (a, f(a)) | a ∈ A, f(a) ∈ B }`

so `f₁ = { (★, f(★)) }`






## Number of Boolean functions

To consider the total number of functions in general, it's best to star small and consider only the functions on the Boolean domain, `𝔹 = {0, 1}`.

A variable `p` ranging over `𝔹` takes each of the two Boolean values ('true' or 'false'), so `p = 1` or `p = 0`. Thus, the number of Boolean functions with a single variable (i.e. the number of unary Boolean functions) is 4.


p | T |id | ¬ | F |
--|---|---|---|---|
0 | 1 | 0 | 1 | 0 |
1 | 1 | 1 | 0 | 0 |


This is because the domain of a unary Boolean function, `f : 𝔹 -> 𝔹`, has 2 elements, and the codomain, being the same, also has 2 elements.

```
f : 𝔹 -> 𝔹
f : {0,1} -> {0,1}

f₀ = p ⟼ 1
f₁ = p ⟼ p
f₂ = p ⟼ ¬p
f₄ = p ⟼ 0
```






In general, there are `mⁿ` functions from A to B, `f : A -> B`, 


let's start simple, with a finite set `a` that has `n` elements. 

We are intereseted in the total number of unary, `k = 1`, functions, with `fᵏ` being a `k`-ary function.

`f¹ : a -> a`, so `|f¹| = nⁿ`

If `f` is a k-ary Boolean function, `fᵏ : 𝔹ᵏ -> 𝔹`, returning a single Boolean value (either 'true' or 'false'), then there are:
- `2¹ = 2` nullary Boolean functions, `f⁰ : 𝔹⁰ -> 𝔹` = `f⁰ : () -> 𝔹`
- `2² = 4` unary   Boolean functions, `f¹ : 𝔹¹ -> 𝔹` = `f¹ : 𝔹 -> 𝔹`
- `2⁰ = 1` binary  Boolean functions, `f¹ : 𝔹² -> 𝔹` = `f² : 𝔹 ⨯ 𝔹 -> 𝔹`





## Number of functions on two sets

Given a set `A` with `n` elements, 
and a set `B` with `m` elements, 
the number of disctinct functions from `A` to `B`, 
depends on the arity `k ∈ ℕ`, denoted `f : Aᵏ -> B`.

We let the arity vary as the number of input arguments and don't involve currying as a way to convert any n-ary function into a unary function 
because that complicates things. However, we do fix the number of output values to a single one, even though, mathematically, it could vary. Actually, considering both the number of input and output values, the situation is made vague if we use tuples as a vehicle for values in and out of a function. The traditional notation does use a tuple-looking collection to declare parameters, e.g. `f(x,y,z)`, qhich is also mirrored in the function calls, e.g. `f(1,2,3)`, but both are to considered to be lists rather then tuples, because the parenthesis are understood as a means to 1) delineate the list of parameters when used in function definition, and 2) to mark the invocation of a function in a function calls syntax, where they also serve to delineate the arguments.


Considering functions on a set A, i.e. with the same set as the domain and codomain set, `φ : Aⁿ -> A¹`, we can talk about the arity as a natural number `n` (n ∈ ℕ) that start at the 0 and goes on forever. However, with functions, practice shows that `n` usually stays well below 10. With `n` representing a general arity, we'll use `k` (k ∈ ℕ) to represent some fixed arity.

> The total number of k-ary functions: `m^n^k` = `m^nᵏ`


* `k = 0` (special case)

For any two finite sets `A` and `B`, the number of distinct nullary functions, `A⁰ -> B` ≡ `() -> B`, is equal to the cardinality of codomain set `B`, and these are the `const b` functions, where `∀b.b ∈ B`. Nullary functions completely ignore the domain set i.e. they treat the domain set as a singleton set `()` (which is nicely expressed by `n⁰` subformula). A nullary function takes no elements from the domain as its input, and returns one element from the codomain as its output. The total number of such functions is `m` since `m^(n^0)` = `m^(n^0)` = `m^1` = `m`

* `n = 1, m = 1, k = 0`


k = 1
* the number of distinct unary functions, `f : A¹ -> B`, is __mⁿ__ (m^n).

k = 2
* the number of distinct binary functions, `f : A² -> B`, is __m^(n^2)__

k = n
* Generally, the number of distinct n-ary functions, `f : Aⁿ -> B`, __m^(n^k)__


`m^nᵏ`


n | m | k | Σ = m^nᵏ
--|---|---|-------------------------
0 | 0 | 0 | 0^0^0 = 0
--|---|---|-------------------------
0 | 1 | 0 | 1^0^0 = 1
  |   | 1 | 1^0^1 = 1
  |   | n | 1^0^n = 1
--|---|---|-------------------------
1 | 1 | 0 | 1^1^0 = 1
  |   | 1 | 1^1^1 = 1
  |   | n | 1^1^n = 1^α = 1
--|---|---|-------------------------
1 | 2 | 0 | 2^1^0 = 2^1 = 2
  |   | 1 | 2^1^1 = 2
  |   | 2 | 2^1^2 = 2
  |   | n | 2^1^n = 2^1^α = 2^1 = 2
--|---|---|-------------------------
2 | 1 | 0 | 1^2^0 = 1
  |   | 1 | 1^2^1 = 1
  |   | n | 1^2^n = 1
--|---|---|-------------------------
2 | 2 | 0 | 2^(2^0) = 2^1 = 2
2 | 2 | 1 | 2^(2^1) = 2^2 = 4
2 | 2 | 2 | 2^(2^2) = 2^4 = 16
2 | 2 | 3 | 2^(2^3) = 2^8 = 256
2 | 2 | 4 | 2^(2^4) = 2^16 = 65,536
2 | 2 | … | …
2 | 2 | n | m^(n^n) = 2^2ⁿ
--|---|---|-------------------------










---

Given two set `a` and `b`, where `a = { x, y, z }` and `b = { 1, 2, 3 }`

- cardinality:
  - |a| = |b| = 3
  - |a⨯b| = 3⨯3 = 9
  - powerset `𝒫(a⨯b)`
    - |𝒫(a)| = |𝒫(b)| = 2³ = 8
    - the distribution of the powerset's elements is indicated by the Pascal's triangle, where the row that encodes it, is indicated by the second number which needs to be equal to the cardinality of the base set. In our example, for the base set `a`, it is |a| = 3, hence we're interested in is 4th row of the Pascal's triangle, the one that contains the sequence `(1,3,3,1)`.
    - |𝒫(a⨯b)| = 2⁹ = 512
- number of relations:
  - total relations: |a𝓡b| = 512 since a𝓡b ⊆ a⨯b
    - 1 null relation, R₀ = ∅
    - 1 total relation, R₅₁₁ = a⨯b
    - other relations: each element of the powerset `𝒫(a⨯b)` represents a relation between `a` and `b`; we need not add 1 for the null (empty) relation since it is repr by the ∅ in the powerset, `𝒫(a⨯b)`
- number of functions:
  - total nr. of functions: 2³ = 8

How many
- total number of functions `a -> b`: 8
  - identity function: 1
  - bijections: 
  - injections
  - surjections (constants)


```
a = { x, y, z }       |a| = 3
b = { 1, 2, 3 }       |b| = 3

|𝒫(a)| = 2³ = 8   𝒫(a) = { ∅, {x,y,z}, {x}, {y}, {z}, {x,y}, {x,z}, {y,z} }
|𝒫(b)| = 2³ = 8   𝒫(b) = { ∅, {1,2,3}, {1}, {2}, {3}, {1,2}, {1,3}, {2,3} }

|a⨯b| = 3⨯3 = 9

|𝒫(a⨯b)| = 2⁹  = 512

a⨯b = { (x,1), (x,2), (x,3)
      , (y,1), (y,2), (y,3)
      , (z,1), (z,2), (z,3) }

Given some base set A, many info about the powerset 𝒫(A) is encoded in the Pascal's triangle. Each row of the Pascal's triangle encodes info about the powerset of a base set whose cardinality is equal to the second number in a row.

Thus, the last row of the sample given below, has the number 4 in that place, indicating that it encodes info about the powerset of any base set whose cardinality is 4. The sum of that row, 1+4+6+4+1 = 16 = 2⁴, amounts to 16, the same as the formula for the cardinality of a powerset based on the cardinality of a base set, 2ⁿ, but it encodes a lot more info.

The sequence (1,4,6,4,1) indicates that there is:
- 1 set  with 0 elements
- 4 sets with 1 element
- 6 sets with 2 elements
- 4 sets with 3 elements
- 1 set  with 4 elements


      1           = 2⁰ = 1
     1 1          = 2¹ = 2
    1 2 1         = 2² = 4
   1 3 3 1        = 2³ = 8
  1 4 6 4 1       = 2⁴ = 16
 1 5 A A 5 1      = 2⁵ = 32
1 6 F J F 6 1


┌ 1 set with 0 elements
│  ┌ 3 sets with 1 element
│  │  ┌ 3 sets with 2 element
│  │  │  ┌ 1 set with 3 element
1  3  3  1
│  └ n   │
└───┬────┘
    8 elements in the powerset


n is the cardinality of the base set


─  ┌ ┬ ┐  ├ │ ┼ ┤  └ ┴ ┘




A -> B
1       2         3       4         5       6         bijections
x ⟼ 1  x ⟼ 1    x ⟼ 2  x ⟼ 2    x ⟼ 3  x ⟼ 3
y ⟼ 2  y ⟼ 3    y ⟼ 1  y ⟼ 3    y ⟼ 1  y ⟼ 2
z ⟼ 3  z ⟼ 2    z ⟼ 3  z ⟼ 1    z ⟼ 2  z ⟼ 1
```
