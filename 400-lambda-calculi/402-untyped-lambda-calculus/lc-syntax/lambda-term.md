# Lambda terms

A redex is a lambda term of the form `(λx.M)N` and it has a contractum `M[x:=N]` that is, the result of substituting `N` for free occurrences of `x` in `M`.

Stylistically, it can be said that lambda terms repr functional programs with their inputs.

A reduction machine executes such lambda terms by trying to reduce them to normal form; that is, redexes are continuously replaced by their contracta until no more redexes are present. If such a normal form can be reashed then it is the output of a functional program; otherwise the program diverges.
