# Closure operator

https://en.wikipedia.org/wiki/Closure_operator

A **closure operator** `𝓬𝓵` on a set `S` is a function    
`𝓬𝓵 : 𝓟(S) -> 𝓟(S)`   
that ∀X,Y ⊆ S satisfies:
- X ⊆ 𝓬𝓵(X)                𝓬𝓵 is extensive
- X ⊆ Y -> 𝓬𝓵(X) ⊆ 𝓬𝓵(Y)   𝓬𝓵 is monotone
- 𝓬𝓵(𝓬𝓵(X)) = 𝓬𝓵(X)        𝓬𝓵 is idempotent

Closure operators are determined by their *closed sets*, i.e. by the sets of the form `𝓬𝓵(X)`, since the *closure* `𝓬𝓵(X)` of a set `X` is the smallest closed set containing `X`.

Though not formalized at the time, the idea of closure originated in the late 19th century with notable contributions by Ernst Schröder, Richard Dedekind and Georg Cantor.

Closure operators are also called *hull operators*. A set together with a closure operator on it is sometimes called a *closure space*.


# Closure operator

https://en.wikipedia.org/wiki/Closure_operator

A closure operator on a set `S` is a function

𝓬𝓵 : 𝓟(S) -> 𝓟(S)

from the power set of `S` to itself, that satisfies the following conditions, `∀X,Y ⊆ S`:
* X ⊆ cl(X)               ...cl is extensive
* X ⊆ Y -> cl(X) ⊆ cl(Y)  ...cl is monotone
* cl(cl(X)) = cl(X)       ...cl is idempotent
