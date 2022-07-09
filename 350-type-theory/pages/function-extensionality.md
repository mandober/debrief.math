# Function extensionality

https://ncatlab.org/nlab/show/function+extensionality

**The principle of functional extensionality** states that two functions are equal if their values are equal at every argument.

## In type theory

In intensional (Martin-Löf) dependent type theory the existence of identity types induces a notion on paths between terms of a given type.

In particular for two terms f, g ∈ [X,Y] 
of function type, a path/morphism `f ----p---> g` 
`p: f == g` 
between them is to be thought of as a homotopy or natural transformation (a `1-transfor`).

In particular, it implies, one can prove, that there are families of paths `happlyᶠᵍᵖ` between all the values of the functions 
`happly f g p : forall x : X, f x == g x`
