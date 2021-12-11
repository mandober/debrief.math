# Closure operator

https://en.wikipedia.org/wiki/Closure_operator

A closure operator on a set `S` is a function

𝓬𝓵 : 𝓟(S) -> 𝓟(S)

from the power set of `S` to itself, that satisfies the following conditions, `∀X,Y ⊆ S`:
* X ⊆ cl(X)               ...cl is extensive
* X ⊆ Y -> cl(X) ⊆ cl(Y)  ...cl is monotone
* cl(cl(X)) = cl(X)       ...cl is idempotent
