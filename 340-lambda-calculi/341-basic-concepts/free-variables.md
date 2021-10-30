# Free variables

The set of free variables in a given lambda term `M`, denoted `fv(M)` is recursively defined as follows:
1. Var: `fv x      = x`
2. App: `fv (M N)  = fv M ⋃ fv N`
3. Abs: `fv (λx.M) = fv M \ {x}`

- If the term is a variable, `x`, then the set of free vars is just `x`.
- If the term is an application, `M N`, then the set of free vars, `fv (M N)`, is a **union** of the sets of free vars of `M` and `N`, i.e. `fv M ⋃ fv N`.


Variables that are not free in an expression `M` are called **bound variables**. Alternatively, a variable is bound if it occurs under the scope of some binder (λ) in `M`.
