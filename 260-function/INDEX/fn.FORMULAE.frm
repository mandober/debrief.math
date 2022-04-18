# Functions ∷ Formulae

Let's assume we have these
- a set `X` such that `x,x₁,x₂ ∈ X` and `n = |X|`
- a set `Y` such that `y,y₁,y₂ ∈ Y` and `m = |Y|`
- a function `f : X -> Y` so `dom f = X` and `cod f = Y` and `ran f ⊆ cod f`
- range is a set defined as `ran f = { y | ∃y(y ∈ Y ⋀ ∀x(x ∈ X -> f x = y)) }`

Function
- function (functional relation):
  `f x = y₁ ⋀ f x = y₂ --> y₁ = y₂`
- total function: `∀x(x ∈ X -> ∃y(y ∈ Y ⋀ f x = y))`

Injective function:
- `f x₁ = f x₂ --> x₁ = x₂`
- |dom f| = |ran f| <= |cod f|

Surjective function
- |dom f| >= |ran f| = |cod f|

Bijective function:
- |dom f| = |ran f| = |cod f|


Functional relation (right-unique, right-definite, univalent)
- partial function, `∀x ∈ X. ∀y,z ∈ Y. xRy ⋀ xRz -> y = z`
- such a binary relation is called a *partial function*
- for such a relation, `X` is called a *primary key* of `R`

Injective relation (left-unique)
- `∀xz ∈ X. ∀y ∈ Y. xRy ⋀ zRy -> x = z`
- for such a relation, `{Y}` is called a *primary key* of `R`



Let `I` and `M` be sets and `f : I → M` a function. The set `I` is called *the index(ing) set*. Then, `f` is also often denoted by `(aᵢ){i ∈ I}`, and called a *family*, an *I-tuple* or *a sequence*.

If `0` is identified with `∅` and `n` (with n > 0) with a set that contains all the previous numbers (this defines the natural numbers in terms of sets) then `Mⁿ` may be understood as the set of finite sequences i.e. `n`-tuples `(aᵢ) {i < n} = (a₀, a₁, …, aₙ˗₁)`, of length `n`, whose members are elements of `M`.

    0 :=  ∅
    1 := {∅} = {0}
    2 := {∅, {∅}} = {0,1}
    3 := {∅, {∅}, {∅,{∅}}} = {0,1,2}
    n := {0, 1, 2, …, n-1}


Graph of a function
* The graph of a unary function `f : A -> B` is specified by interpreting each ordered pair `(x, f x) ∈ f` as the coordinate (x,y) to be plotted on a 2D plane; then the resulting curve is a graph that represents the function `f`.

* A generic n-ary function, `f : Aⁿ -> B`, may be specified by extending the notation for generic unary functions, `f(x) = y`, to account for the extra inputs; an n-tuple `(x₀, x₁, …, xₙ)` is used to represent the inputs, while the output is represented by `xₙ﹢₁`. In the generic form, an n-ary function looks like `f (x₀, x₁, …, xₙ) = xₙ﹢₁`.  So, instead of a set of ordered pairs, the graph of n-ary function is a set of `n+1`-tuples, `{(x₀, x₁, …, xₙ, xₙ﹢₁)}`.

`graph f := { (x₀, x₁, …, xₙ, xₙ﹢₁) ∈ Mⁿᐩ¹ | f(x₀, x₁, …, xₙ) = xₙ﹢₁ }`

- Subsets `P,Q,R,… ⊆ Mⁿ` are *n-ary predicates* of M or *n-ary relations*.
- A unary predicate will be identified with the corresponding subset of M.
- We may write `Pa̅` instead of `a̅ ∈ P`, and `¬Pa̅` instead of `a̅ ∉ P` where `a̅` is a shorthand for a sequence of variables `aᵢ`
- An n-ary operation of `M` is a function `f : Mⁿ → M`
- The shorthand f x will be used instead of `f(x₀, x₁, …, xₙ)`
- Nullary predicates are constants. Since `M⁰ = {∅}`, a nullary operation of `M` is a set `{(∅, c)}` with `c ∈ M`; it is denoted by `c` and called a constant.
- Each operation `f : Mⁿ → M` is uniquely described by the graph of `f`:
  `graph f := { (x₀, x₁, …, xₙ, xₙ﹢₁) ∈ Mⁿᐩ¹ | f(x₀, x₁, …, xₙ) = xₙ﹢₁ }`
- Both `f` and `graph f` are essentially the same, but sometimes it's convenient to distinguish between them.
