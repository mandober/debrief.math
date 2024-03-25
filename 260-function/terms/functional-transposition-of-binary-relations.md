# Functional transposition of binary relations

from the paper: `Transposing Relations: from Maybe Functions to Hash Tables`, J.N. Oliveira and C.J. Rodrigues, 2020

## Intro

This paper is concerned with techniques for functional transposition of binary relations. **Functional transposition** is the faithful representation of a relation by a (total) function. But what is the purpose of such representation?

Functions are well-known in math. The functional intuition traverses math from end to end because it has a solid semantics rooted on a clear-cut mathematical structure - the category of "all" sets and set-theoretical functions. Functions have a rich theory. For instance, they can be dualized (as happens e.g. with the projection/injection functions), they can be Galois connected (as happens e.g. with inverse functions) and they can be parametrically polymorphic. In the latter case, they exhibit "theorems for free" that are inferred solely by inspecting their type (thus providing semantics to functional APIs in which function bodies are intentionally hidden from the user).

>However, (total) functions are not enough. 
In many situations, functions are partial, being undefined for some inputs. Programmers deal with this situation by enriching the codomain of partial functions:
- with a special error mark indicating that output is 'nothing'
- In C/C++, functions output pointers to values rather than values
- In Haskell, functions return optional (`Maybe`) values rather than values

In a different context, *finite partial functions* are represented by *sets of pairs* in which no first component of each pair is repeated. In database theory, these data-sets are called *functional data dependencies*. In formal modelling notations (VDM, Z), they are called *finite mappings*, which is an abstract datatype of widespread use in formal specification.

>However, partial functions are still not enough. 
We often want to describe what is required of a function rather than prescribe how the function should compute its result. A well-known example is sorting: sorting a list amounts to finding an ordered permutation of the list independently of the particular sorting algorithm eventually chosen to perform the task (quicksort, mergesort). So we is concerned not only with implementation but with specification, which can be vague (e.g. square root has two outputs) and non-deterministic. FP copes with this by structuring the codomain of such functions as sets or lists of values, a strategy which can be animated in case such sets or lists are finite (bounded non-determinism).

In general, such **powerset valued functions** are models of binary relations: for each such `f` one may define the binary relation `R` such that `bRa` means `b ∈ f(a)` suitably typed for all `a` and `b`. Such `R` is unique for the given `f` (hence the "the binary relation"). Conversely, any binary relation `R` is uniquely transposed into a set-valued function `f`.

`f : A → 𝒫(B)`

`∃!R` for each such `f` such that `bRa ⇒ b ∈ f(a)`


### Investigation…

BUT such an injection cannot exist. No, in fact, an injection between A and its powerset doesn't exists, but maybe an injection could exist between some finite set A and the powerset of some arbitrary but finite set B, `A → 𝒫(B)`.


For example
```
B = {b₀, b₁}
𝒫(B) = { ∅, {b₀}, {b₁}, {b₀, b₁} }
A = ?
------------------------------------------------
The set A is such so that:
  f(a₀) = {b₀}         (a₀, {b₀})     ∈ f
  f(a₁) = {b₁}         (a₁, {b₁})     ∈ f
  f(a₂) = {b₀, b₁}     (a₂, {b₀, b₁}) ∈ f
  f(a₃) = ∅            (a₃, {})       ∈ f
------------------------------------------------
Thus, A = {a₀, a₁, a₂, a₃}


The induced relation R:
------------------------------------------------
for each such `f` we define a binary relation `R`
s.t. `bRa ⇔ b ∈ f(a)`, and a ∈ A

TEST IT
------------------------------------------------
pick a₀:
  then f(a₀) = {b₀}
  a₀ ⟼ {b₀}
  this implies that
    bRa   ⇔ b  ∈ f(a)
    b₀Ra₀ ⇔ b₀ ∈ {b₀}    ✔
    b₀Ra₀ ∈ R            ✔
------------------------------------------------
pick a₁:
  this works also then for a₁  ✔
  a₁ ⟼ {b₂}
------------------------------------------------
pick a₂
  a₂ ⟼ {b₀, b₁}
  so
  a₂Rb₀ and a₂Rb₁
------------------------------------------------
pick a₃
    f(a₃) = {} = ∅
    a₃ ⟼ ∅
    so
    ¬∅Ra₃ ⇔ b ∈ f(a)
    ¬∅Ra₃ ⇔ b ∈ ∅
     bₓRa₃ ⇒ ? ∈ ∅    ✘   whatever bₓ is
  Thus, no b is related to a₃
------------------------------------------------
Thus:
f : A → 𝒫(B)

A = {a₀, a₁, a₂, a₃}
B = {b₀, b₁}

𝒫(B) = { ∅, {b₀}, {b₁}, {b₀, b₁} }

R ⊆ A×B
R = { (b₀, a₀), (b₁, a₁), (b₀, a₂), (b₁, a₂) }
R = { (b₀, a₀), (b₀, a₂)
    , (b₁, a₁), (b₁, a₂)
    }


b₀ ●   ● a₀       b₀Ra₀
b₁ ○   ○ a₁       b₁Ra₁
       ◉ a₂       b₀Ra₂ ∧ b₁Ra₂
       ◌ a₃       (unpaired)
```

So, R is `R ⊆ A×B` with `f : A → 𝒫(B)`.

Thus, `R = { (b₀, a₀), (b₁, a₁), (b₀, a₂), (b₁, a₂) }`

>R = { (b₀, a₀), (b₀, a₂)
>    , (b₁, a₁), (b₁, a₂) }


Ok, even if there are such powerset-valued functions and these induced relations are possible - how does such a relation model a binary relation?



## Transpose operator

The existence and uniqueness of such a transformation leads to the identification of a transpose operator `Λ` that satisfies the following universal property:

`f = Λ R` ⇔ `bRa ⇔ b ∈ f(a)`
