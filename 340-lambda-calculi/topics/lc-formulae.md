# Defs

* Terms, T ::= x | λx.T | T T
* Value, V ::=     λx.T

* Lambda expressions
  - variable,     `x`
  - abstraction,  `λx.T`
  - application,  `T₁ T₂`

Notes
- vars (lowercased) represent concrete syntax (variables), `{a, p, x, …}`
- meta-vars (uppercased) represent arbitrary lambda terms, `{T, T₁, T₂, …}`
- the head of an abstraction is always denoted with a concrete var, `λx.`
- application uses any two meta-vars, `MN`, `T₁T₂`, and it is a special case since the left term is restricted to be an abstraction, otherwise it's an error. The right term has the role of an argument and it can be any old term.

* Axioms of the lambda calculus
- (α)             M =α= N <=> M = N
- (β)             (λx.M)N ==ᵦ M[N/x]
- (η)               λx.Mx <=> M
- (ξ)               M = N <=> λx.M = λx.N
- (refl)                M <=> M
- (symm)          (M = N) <=> (N = M)
- (trans) (M = N ⋀ N = P) ==> (M = P)
- (cong)  M = M′ ⋀ N = N′ ==> (MN = M′N′)


* β-reduction

(λv.M)N ---->ᵦ M[v:=N]


* Free variables

```js
fv x      = {x}
fv (M N)  = fv M ⋃ fv N
fv (λx.M) = fv M \ {x}
```

- `M` is a closed term if `fv(M) = ∅`
- var `x` is bound in `M` if `x` is `M`'s subterm of the form `λx.N`; else free
- var capture is an adverse effect of reduction when a free var becomes bound

* Bound variables

```js
bv x      = ∅
bv (λx.M) = bv M ⋃ {x}
bv (M N)  = bv M ⋃ bv N
```

* Rewriting relations
The lambda calculus is defined on λ-terms with rewrite relations induced by the following rewrite rule schemas.

```js
(λx.M)N |> [x:=N]M                      (β)
λx. Mx  |> M         if x ∉ fv(M)       (η)
```


* Subterms

If `M` is a λ-term, the set of subterms of `M`, denoted by `Sub(M)`, is defined inductively by:

```js
Sub(x)    = {x}
Sub(M N)  = Sub(M) ⋃ Sub(N) ⋃ {M N}
Sub(λx.M) = Sub(M) ⋃ {λx.M}
```

Let M, N be two λ-terms. The term M is a subterm of N if `M ∈ Sub(N)`. If
in addition M /= N, then M is called a proper subterm of N.


* Substitution

```js
[x:=A]y      = A                      if x = y
[x:=A]y      = y                      if x ≠ y

[x:=A](λy.B) = λy.B                   if x = y
[x:=A](λy.B) = λy.([x:=A]B)           if x ≠ y ⋀ if y ∉ fv(A)

[x:=A](M N)  = ([x:=A]M) ([x:=A]N)
```

* Let Expressions

It is useful to bind intermediate results of computations to variables, i.e. to have some special form like let-expression, `let p = A in B`. Let-expressions with the `in` part are a notational variant for substitution; without the `in` part they seem a good fit for the macro syntax form, `let id = λa.a`.

We can implement this idea in the lambda calculus:

```js
trans (let p = a in b) = (λp . trans b) (trans a)
trans (λp. b)          = λp . (trans b)
trans (f a)            = (trans f) (trans a)
trans (s)              = s
```

```hs
translate :: Term -> Term
translate (Var s)     = Var s
translate (Abs p b)   = Abs p (translate b)
translate (App f a)   = App (translate f) (translate a)
translate (Let p a b) = (Abs p (translate b)) (translate a)
```

* Self-interpretation with Mogensen-Scott encoding

```js
⌈x⌉    = λa. λb. λc. a x
⌈MN⌉   = λa. λb. λc. b ⌈M⌉ ⌈N⌉
⌈λx.M⌉ = λa. λb. λc. c (λx. ⌈M⌉)
```




* Canonical Names

Canonym is a function that takes a lambda expression and renames all names canonically, based on their positions in the expression. This might be implemented as

```js
canonym[L,       Q] = canonym[L, O, Q]
canonym[λp.b, M, Q] = λ name(Q). canonym[b, M[p:=Q], Q+N]
canonym[X Y, x,  Q] = canonym[X, x, Q+F] canonym[Y, x, E+S]
canonym[x,    M, Q] = name(M[x])
```

where
- `N` is the string "N"
- `F` is the string "F"
- `S` is the string "S"
- `+` is concatenation
- `name` converts a string into a name


* Map operators

Map from one value to another if the value is in the map. `O` is the empty map.

```js
1. O[x]                = x
2. M[x:=y][x]          = y
3. x ≠ z -> M[x:=y][z] = M[z]
```


* Substitution operator

If `L` is a lambda expression, `x` is a name, and `y` is a lambda expression `[x:=y]L` means substitute `x` by `y` in `L`. The rules are:

```js
1. [x:=y](λp.b) = [x:=y](λp.b)
2. [x:=y](X Y)  = [x:=y]X [x:=y]Y
3. z = x -> (z)[x:=y] = y
4. z ≠ x -> (z)[x:=y] = z
```
