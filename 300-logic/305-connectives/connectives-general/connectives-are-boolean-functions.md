# Logical connectives

## Logical connectives are Boolean functions

*Logical connectives* are *Boolean functions*, although sometimes it is insisted on calling them "connectives" to parallel the use of the corresponding words in natural languages. Semantically, however, there is a little difference, as a connective behaves jsut like a Boolean function, expecting a certain number of inputs and returning a certain output (or, yielding a certain meaning in a natural language).

The inputs to Boolean function are truth values, and the output is a truth value as well. Boolean functions are defined over the Boolean domain, `𝔹`, which is a 2-set with 2 elements, `𝔹 = {1,0}`, or `{True,False}`, or `{T,F}`, or any similar set, since all 2-sets are isomorphic to each other.

A Boolean function, like any function, has a certain arity. The most studied are *binary* Boolean functions like `∧`, `∨`, `->`. The one *unary* fuction that is particularly interesting is `¬`.

*Ternary* Boolean functions are rarely encountered, although `if_then_else_` is a popular one. But it is a Boolean function only if its form is `ifte : 𝔹 → 𝔹 → 𝔹 → 𝔹`, which is not very common. Usually, it has a more general form `if_then_else_ : 𝔹 → T → T → T`, where `T` is any type, and its only Boolean argument is the *guard* (the first argument).

Sometimes we also use the two *nullary* Boolean functions (although they are really just values) as the means to represent the constant truth values, `True` and `False`. Other times, the two nullary Boolean functions may be used to represent Tautology (⟙) and Contradiction (⟘).

Note: a nullary function is not `f : () -> A`: this is a unary function; hand at hear since it always takes the same input value, i.e. the value `()` of the type `()`, it is considered a nullary function. Also, a value of the Boolean type `c : 𝔹`, defined as, e.g. `c = True`, is just a constant value, hardly a function (even so, even these are sometime also deemed "nullary functions"). Strictly, a Boolean function is a function whose both domain and codomain are the Boolean set (it cannot have the unit set, `()`, as the domain, but shi̲t).

```hs
-- constant truth values: True and False
True : () → 𝔹
True () = True

False : () → 𝔹
False () = False

-- Tautology (⟙) and Contradiction (⟘)
Tautology : 𝔹
Tautology = ⟙

Contradiction : 𝔹
Contradiction = ⟘
```

## Number of connectives

Generally, with types corresponding to sets, a function type `A -> B` is an exponential object `Bᴬ` that contains `bᵃ` number of elements (inhabitants), where `a = |A|` and `b = |B|` are the cardinalities of the respective sets.

- Total number of functions: `B^A^N`
- Total number of Boolean functions: `𝔹^𝔹^N` = `2^2^N`

Considering the Boolean functions only, the formula to count the total number of distinct functions is `2^2^N`, where `N` is the function's arity. Note that exponentiation associates to the right, `2^2^N` =`2^(2^N)`.

For example, there are 4 distinct unary functions since 2^2^0 = 2^1 = 2. These 4 functions are usually named "always true", "always false", "id", and "not". All 4 unary Boolean functions have the same type, `𝔹 -> 𝔹`.


```
N  : 𝔹^𝔹^N : 2^2ᴺ = 2^2^N                               signature
--------------------------------------------------------------------
N=0: B^A^0 = 2^2⁰ = 2^2^0 = 2^1  =     2                        𝔹
N=1: B^A^1 = 2^2¹ = 2^2^1 = 2^2  =     4                    𝔹 → 𝔹
N=2: B^A^2 = 2^2² = 2^2^2 = 2^4  =    16                𝔹 → 𝔹 → 𝔹
N=3: B^A^3 = 2^2³ = 2^2^3 = 2^8  =   256            𝔹 → 𝔹 → 𝔹 → 𝔹
N=4: B^A^4 = 2^2⁴ = 2^2^4 = 2^16 = 65536        𝔹 → 𝔹 → 𝔹 → 𝔹 → 𝔹
N=5: B^A^5 = 2^2⁵ = 2^2^5 = 2^32 =          𝔹 → 𝔹 → 𝔹 → 𝔹 → 𝔹 → 𝔹
```

Note
- `𝔹 ⨯ 𝔹 → 𝔹` = `(𝔹 ⨯ 𝔹) → 𝔹`
- `𝔹 → 𝔹 → 𝔹` = `𝔹 → (𝔹 → 𝔹)`
- `𝔹 ⨯ 𝔹 → 𝔹` = `𝔹 → 𝔹 → 𝔹`


## List of connectives

Boolean functions: arity, type, total number:
(disctinct means isomorphic)
- nullary
  - total number of distinct nullary functions: 2⁰ = 1
  - type: `n : () → 𝔹`  (meh…)
  - or just the constant values, `v : 𝔹`, e.g. `tt = True` and `ff = False`
- unary
  - total number of distinct unary functions: 2¹ = 2
  - type: `f : 𝔹 → 𝔹`
  - e.g. `¬`, `⟙`, `⟘`, `Id`
- binary
  - type: `f : 𝔹 → 𝔹 → 𝔹`
  - ∧, ∨, ¬,⊕, ⇔, ⇒, …
- ternary
  - `f : 𝔹 → 𝔹 → 𝔹`
  - if_then_else_
