# Indicator function

https://en.wikipedia.org/wiki/Indicator_function

An *indicator function* or *characteristic function* in relation to a subset of some set determines whether an element in the set belong to that subset or not.

An indicator function is usually denoted by `χ` or `χᴀ`, or it may be denoted by `Iᴀ` or `1ᴀ`, where `A` is a subset.

The indicator function of `A` is the *Iverson bracket* of the property of belonging to `A`, that is, `1ᴀ(x) = [x ∈ A]`

If `S` is a set 
and `A` is a subset of `S`, `A ⊆ S`, 
an indicator function `Iᴀ` takes `S` to `𝔹`, `Iᴀ : S -> 𝔹`, 
mapping elements in `S` to the Boolean set, such that 
if an element in S is also in A it returns 1, otherwise 0.

Each subset `A` of `S` is identified by, or equivalent to, the indicator function `Iᴀ`, and `{0,1}ˢ` or `𝔹ˢ`, i.e. the set of all the functions from `S` to `𝔹`, consists of all the indicator functions of all the subsets of `S`. So there are `2ⁿ` (where |S| = n) functions `Iᴀ : S -> 𝔹`. In other words, `𝔹ˢ` is equivalent (or bijective) to the power set `𝒫(S)`.

Since each element in `S` corresponds to either 0 or 1 under any function in `{0,1}ˢ`, the number of all the functions in `2ⁿ`.

Since the number 2 can be defined as {0,1} (von Neumann definition of naturals in terms of sets), the `𝒫(S)` is also denoted as `2ˢ`. Obviously |2ˢ| = 2^|S| holds.

Generally speaking, `bᵃ` is the set of all functions `a -> b` and 
|a∙b| = |a| ∙ |b|.
