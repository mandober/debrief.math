# Function theory ∷ Number of functions

If `A` and `B` are sets, and their cardinalities are `n = |A|` and `m = |B|`, a generic function `f` from `A` to `B` may be denoted `f : Aᵏ -> B`, where `k` stands for the function's arity i.e. the number of inputs (with the stipulation that there is always a single output), or, using the notation for anonymous functions as `Aᵏ ⟼ B`.

*The number of k-ary functions*, `f : Aᵏ -> B`, depends on
- a function's arity, `k`
- the cardinality of the domain, `n`
- the cardinality of the codomain, `m`

related in the formula to calculate the number of distinct functions:

`m^(n^k)`

## Notation

In general, a function `f` from `A` to `B` is denoted `f : A -> B`, or it may as well be presented as an anonymous function `A ⟼ B`.



## Number of functions per arity

Considering the case of unary functions first, the number of functions with a single input is easily computed as m^(n^1) = `mⁿ`.

`f : A¹ -> B`, or just `f : A -> B`, denotes unary functions.

So, with `k = 1`, we talk about unary functions, denoted by `u : A -> B`



In the balanced case, when the single output is matched by a single input, that is, in the case of unary functions



In general, the number of k-ary functions from set A to set B, `f : Aᵏ -> B`, with n = |A| and m = |B|, is `m^nᵏ`. So in the case of Boolean functions, `f : 𝔹ᵏ -> 𝔹`, the number of k-ary functions is `2^2ᵏ`.


depends on the arity, `n`, of the connective and the number of truth values of the logic system. In case of classic logic that has 2 truth values (0 and 1), the number of n-ary connectives then depends only on a connective's number of inputs, `2^2ⁿ`. The 2 nullary connectives in fact represent the two truth values themselves. There are 4 unary connectives, but usually only NOT is significantly used. Also, oput of the 16 binary connectives, only a small set is regularly used (⋀, ⋁, →, ⟺), and the others can be derived from them if needed.


`𝔹⁰ ⟼ 𝔹` ≡ `() ⟼ 𝔹` ≡ 1 ⟼ 2 = 2¹ = 2
`𝔹¹ ⟼ 𝔹` ≡ `𝔹 ⟼ 𝔹` ≡ 2 ⟼ 2 = 2² = 4
`𝔹² ⟼ 𝔹` ≡ `𝔹 ⨯ 𝔹 ⟼ 𝔹` ≡ `𝔹 ⟼ (𝔹 ⟼ 𝔹)` ≡ 2 ⟼ 2 = 2² = 4




f : 𝔹¹ -> 𝔹 or f : 𝔹 -> 𝔹
f : 𝔹 ⨯ 𝔹 -> 𝔹
f : 𝔹 ⨯ 𝔹 ⨯ 𝔹 -> 𝔹
f : 𝔹 ⨯ 𝔹 ⨯ 𝔹 ⨯ 𝔹 -> 𝔹

`f : 𝔹ᵏ -> 𝔹` or `f : 𝔹 ⨯ 𝔹 ⨯ 𝔹 ⨯ … ⨯ 𝔹 -> 𝔹` or


k | (2²)ᵏ          | 2^2ᵏ
--|----------------|-----------------
0 | (2²)⁰ = 4⁰ = 1 | 2^2⁰ = 2^1 = 2



Number of connectives
- number of truth values, V = [2,3,…,k]
  - bivalent,   v = 2
  - trivalent,  v = 3
  - k-valent,   v = k
- arity, A = [0,1,2,3,…,n]
  - nullary,    a = 0
  - unary,      a = 1
  - binary,     a = 2
  - ternary,    a = 3
  - n-ary,      a = n
- number of variants, Σ = V^(V^A)
  - v = 2
    - a = 0: Σ = 2^(2^0) = 2 ^ 1  =   2 nullary connectives (2 truth values)
    - a = 1: Σ = 2^(2^1) = 2 ^ 2  =   4 unary connectives
    - a = 2: Σ = 2^(2^2) = 2 ^ 4  =  16 binary connectives
    - a = 3: Σ = 2^(2^3) = 2 ^ 8  = 256 ternary connectives
    - a = n: Σ = 2^(2^n) = 2 ^ 2ⁿ
  - v = 3
    - a = 0: Σ = 3^(3^0) = 3 ^  1 = 3    nullary connectives (2 truth values)
    - a = 1: Σ = 3^(3^1) = 3 ^  3 = 9    unary connectives
    - a = 2: Σ = 3^(3^2) = 3 ^  9 = 3⁹   binary connectives
    - a = 3: Σ = 3^(3^3) = 3 ^ 27 = 3²⁷  ternary connectives
    - a = n: Σ = 3^(3^n) = 3 ^ 3ⁿ
