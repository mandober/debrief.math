# Commutativity of substitution

* Substitution: Substitution in the untyped lambda calculus
https://plfa.github.io/Substitution/

Substitution is the main part of beta-reduction in lambda calculus. Substitution is denoted M[x:=N] and means replacing all terms `x` with the argument `N` in the expression (body of a lambda) `M`.

A lambda abstraction `λx.M`, when applied to an argument `N`,   
`(λx.M)N` 
undergoes the substitution process denoted    
M[x:=N]

In FPL, this is often denoted with the `let` construct: 
`let x = N in M`.


The fact that substitution commutes with itself was shown by Barendregt in 1984, who refers to this as the **substitution lemma**:

(M[x:=N])[y:=L]  ≡  (M[y:=L])[x:= N[y:=L]]

The substitution `(M[x:=N]) [y:=L]` means we first do `M[x:=N]` to get some expression `P`, then we do the second subst `P[y:=L]`.

The substitution `(M[y:=L])[x:= N[y:=L]]` means we first do `N[y:=L]` to get some expression `P`. Almost in parallel, we do `M[y:=L]` to get the exp `R`. Finally, we do `R[x:=P]`.

This implies we can do the two substitutions in parallel: 
1. `let y = L in N` and
2. `let y = L in M`

then bind the result of (2) to `x` and do the replacement in (1):

let x = `let y = L in N`    
in      `let y = L in M`

>The `(M[y:=L])[x:= N[y:=L]]` substitution means, we must substitute the param `y` with the term `L`, first in the `x`'s argument `N`, and than again in the lambda's body `M`. Lastly, we bind the result of the first subst, `N[y:=L]`, to `x`, and then subst `x` in `M` with that exp.

```hs
-- (M[x:=N]) [y:=L] means:
let y = L
 in
    (let x = N in M)
-- while
-- (M[y:=L])[x:= N[y:=L]] means:
let x =
    (let y = L in N)
 in
    (let y = L in M)
```



```hs
(M[x:=N]) [y:=L] ≡ (M[y:=L]) [x:= N[y:=L]]


(M[y:=L]) [x:= N[y:=L]]
-- P is the result of N[y:=L]
(M[y:=L]) [x:= P]
-- R is the result of M[y:=L]
R[x:=P]
```


```lc hs
(λx.λy.M) N L
= (λy.M[x:=N]) L
= (M[x:=N])[y:=L]
```

Commutativity of substitution suggest it is the same 
if we apply the first argument, and then the second, or 
if we first apply the second argument, and then the first.
