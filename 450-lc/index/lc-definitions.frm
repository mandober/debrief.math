# λ-calculus :: Index of λ-calculus definitions

DEFINITION 1. The set of λ-terms, `𝚲`
- assumes an infinite set of variable names, `𝓥 = { x, y, z, … }`
- Var: `x ∈ 𝓥`           ->       `x ∈ 𝚲`
- Abs: `x ∈ 𝓥` ⋀ `M ∈ 𝚲` -> `(λx. M) ∈ 𝚲`
- App: `M ∈ 𝚲` ⋀ `M ∈ 𝚲` ->   `(M N) ∈ 𝚲`

DEFINITION 2. The multiset of λ-subterms, `Sub`
- Var: `Sub(x)      = ⟅ x ⟆` (for all x ⋿ 𝓥)
- App: `Sub((M N))  = Sub(M) ⋃ Sub(N) ⋃ ⟅ (M N) ⟆`
- Abs: `Sub((λx.M)) = Sub(M) ⋃ ⟅ (λx.M) ⟆`
- Properties:
  - L is a subterm of M, `L ∈ Sub(M)`
  - L is a proper subterm of M, `L ∈ Sub(M)` but `L ≠ M`
  - Reflexivity:  `∀ M ∈ 𝚲 . M ∈ Sub(M)` (but not a proper subterm)
  - Transitivity: `L ∈ Sub(M) ⋀ M ∈ Sub(N) -> L ∈ Sub(N)`

DEFINITION 3. Conventions
- outermost parentheses are omitted, `M N ≡ (M N)` also `λx.M ≡ (λx.M)`
- App takes precedence over Abs, `λx.M N ≡ λx.(M N)`
- App is left-associative, `M N L ≡ ((M N) L)`
- Abs is right-associative, `λx.λy.λz.M` ≡ `λx.(λy.(λz.M))`
- Successive binders are contracted, `λxyz.M ≡ λx.(λy.(λz.(M)))`

DEFINITION 4. The set of __free variables__, `FV`
- Var: `FV(x)    = {x}`
- App: `FV(M N)  = FV(M) ⋃ FV(N)`
- Abs: `FV(λx.M) = FV(M) ∖ {x}`
- the set of free variables in a λ-term `M` is `FV(M)`

DEFINITION 5. The set of combinators, `Λ₀`
- λ-term `M` is closed if `FV(M) = ∅`
- λ-term `M` is open if `FV(M) ≠ ∅`

DEFINITION 6. Substitution, β-reduction
1. x[x:=a] = a
2. y[x:=a] = y                              … if x ≠ y
3. (t s)[x:=a] = (t[x:=a]) (s[x:=a])
4.  (λx.t)[x:=a]  =  (λx.t)
5.  (λy.t)[x:=a]  =  (λy.(t[x:=a]))          … if `x ≠ y` ⋀ `y ∉ fv(a)`

As let-expressions

```hs
-- (1) x == y
let x = a in x
-- (2) x != y
let x = a in y

-- (3)
let x = a in t s

-- (4) x == y
let x = a in (λx.t)
-- (5) x != y ⋀ y ∉ fv(a)
let x = a in (λy.t)
```

Again, body is examined - subst is in terms of a lambda's BODY
- if the body is Var
- if the body is App
- if the body is Abs

1.      x[x:=A] = A,    x == y  so  x[x:=A] = A
2.      y[x:=A] = y, if x != y then y[x:=A] = y
4. (λx.M)[x:=A] = λx.M
5. (λy.M)[x:=A] = λy.(M[x:=A]), if x ≠ y and y ∉ FV(A)
3.  (M N)[x:=A] = M[x:=A] N[x:=A]


## From these λ-terms

```js
1. (λx. x)      a -->>      x[x:=a] = a    (id)        x == y
2. (λx. y)      a -->>      y[x:=a] = y    (const)     x != y
4. (λx. (λx.M)) a -->> (λx.M)[x:=a] = λx.M (const)     x == y
5. (λx. (λy.M)) a -->> (λy.M)[x:=a] = λy.(M[x:=A])     x != y ⋀ y ∉ FV(A)
3. (λx .(M N))  a -->>  (M N)[x:=a] = M[x:=A] N[x:=A]
```


## Breakdown
1. Body is a var: `(λx. b) A`
  - x[x:=A] = A since x == b
  - if `x == A` then `(λx. x) A` therefore x[x:=x] = A
             but if x == y then x[x:=A] = x
                             or y[y:=A] = y
 
  - y[x:=A] = y, if x != y
                 or x != y then y[x:=A] = y
         that is if x != b
              so if x != b then b[x:=A] = b
  - if `x != b` then `(λx. b) A` therefore b[x:=A] = b


    ↓
(λx.B)A            winner
-----------------------
(λx. x) x  = x     B A       id
(λx. y) x  = y     B         const
(λx. z) x  = z     B ↑α      const
-----------------------
(λx. x) a  = a     A         id
(λx. y) a  = y     B         const
(λx. z) a  = z     B ↑α      const
-----------------------
(λx. a) a  = a     A B       const
(λy. a) a  = a     A B ↑α    const
(λz. a) a  = a     A B ↑α    const
-----------------------
(λx. a) a  = a
(λx. b) x  = b
(λx. c) c  = c
-----------------------
thus with all 3 being vars, only `id` and `const` functions are possible



1. (λx.x)a = x[x:=a] = a
2. (λx.M)a = M[x:=a] = y  … if x ≠ M

3. (λx.T S)a = (T[x:=a]) (S[x:=a])

4. (λx.(λx.t))a = (λx.t)[x:=a] = (λx.t)
5. (λx.(λy.t))a = (λy.t)[x:=a] = (λy.(t[x:=a]))  … if `x ≠ y` ⋀ `y ∉ fv(a)`




1. Var-x: (λx.x)a ->> x[x:=a] ->> a
2. Var-y: (λx.y)a ->> y[x:=a] ->> y    (if x ≠ y)


1. Var-1: (λx.M)A ->> M[x:=A] ->> A
2. Var-2: (λx.M)A ->> M[x:=A] ->> M (if x ≠ A)




```agda hs
-- substitution operator
_[_:=_] : term → term → term → term
_[_:=_] p a b = b [ p := a ]

-- (λp. b)          a
-- (λp. b)          (λp₁. b₁)
-- (λp. (λp₁. b₁))  a
subst p a b = case b of
  -- (λx.x)a = a
  Var x | x == p -> a
  -- (λx.y)a = y
  Var x | x /= p && p ∉ fv(b) -> b
```



https://philpapers.org/rec/DEQAPA
