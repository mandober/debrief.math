# Substitution

https://en.wikipedia.org/wiki/Lambda_calculus_definition#Substitution

Substitution, denoted `[x:=A]B`, is the process of replacing all *free occurrences* of the variable `x` in the expression `B` with expression `A`.

Substitution on terms of the lambda calculus is defined by recursion on the structure of terms, as follows (note: `x` and `y` are only variables while `M` and `N` are any λ-expression).

```js
[x:=N]x      = N                      since x = x         (η-conversion)
[x:=N]y      = y                      since x ≠ y
[x:=N](λx.M) = λx.M                   since x = x         ()
[x:=N](λy.M) = λy.(M[x:=N])           since x ≠ y ⋀ if y ∉ fv(N)
[x:=N](A B)  = (A[x:=N]) (B[x:=N])
```

To substitute into a lambda abstraction, it is sometimes necessary to α-convert the expression. For example, it is not correct for `(λx.y)[y:=x]` to result in `λx.x`, because the substituted `x` was supposed to be free but ended up being bound. The correct substitution in this case is `λz.x`, up to α-equivalence. Notice that substitution is defined uniquely up to α-equivalence.


## Rewrite rules 

The rewrite rules of the lambda calculus depend on the notion of substitution of an expression `e1` for all free occurrences of an identifier `x` in an expression `e2`, which we denote by `[e1/x]e2`, meaning all bound `x`'s are to be replaced with `e1` in the body `e2` (from whose view `x`'s are free).

Most systems, including both the lambda calculus and predicate calculus, that utilize substitution on identifiers must be careful to avoid name conflicts, also called *name captures*.

To understand substitution we must first understand the notion of the *free variables* of an expression `e`, which we write as `fv(e)`, and define by the following simple rules:

1. fv(x)     = {x}
2. fv(e1 e2) = fv(e1) ∪ fv(e2)
3. fv(λx.e)  = fv(e) − {x}

The 1. rule says that an expr consisting solely of x has exactly that x as the free variable. The 2. rule is about lambda application of `e1` to `e2`, and it states that the free vars are those in `e1` and (union) those in `e2`. The 3. rule is about lambda abstraction, `λx.e`, and it syays that the free vars there are those in the body `e`, excluding (set difference) the var `x` itself, which is bound by the lambda, `λx`.

We say that `x` is free in `e` iff `x ∈ fv(e)`.


**The substitution `[x:=e1]e2` is defined inductively by**

1. `[xᵢ:=e]xⱼ == e`       if i = j

- since the subscripts of var `x` are the same, the `x` is the same variable, so this can be simplified to `[x:=e]x == e`

- this is a term that repr an application of `f` to an arg `e`, `(λx . x) e`
- it consists of 
  a lambda abstraction, `f`, the term on the left, i.e. `(λx.x)`
  an argument, `e`, the term to the right of `f`

The crucial property of this form is that the expression representing the body of this lambda is the same as its formal parameter (e.g. `λx.x`), that is, *both the abstraction's formal param and its body are the same variable*.

This means that any arg `e`, to which this abstaction is applied, will produce the same argument `e` as the result. In fact, in this form, the abstraction on the left must be an identity function, like `λx.x`, α-equivalent to any other identity function, `λz.z`.

The term repr the argument in this form can be any exp, and that same exp will be returned as the result of beta reduction.
- `(λx.x)e` ~> `e`
- `(λxᵢ.xⱼ)e` ~> `e`


2. [e/xᵢ]xⱼ = xⱼ     (if i ≠ j)

  - this is the form for a function that discards its parameter
  - (λx.abc)e ~~> abc
  - (λxᵢ.xⱼ)e ~~> xⱼ


3. [e₁/x](e₂ e₃) = ([e₁/x]e₂) ([e₁/x]e₃)
  - the form of lambda application: we replace param `x` in each expression by the arg `e₁`
  - (λx.mn)e ~~> ([e/x]m) ([e/x]n)
  - (λx.(λy.xy)(λy.xy)) e ~~> ([m/x](λy.xy)) ([n/x](λy.xy))


4. [e₁/xᵢ](λxⱼ.e₂) = λxⱼ.e₂                 if i = j


5. [e₁/xᵢ](λxⱼ.e₂) = λxⱼ.[e₁/xᵢ]e₂          if i = j and xⱼ ∈ fv(e₁)


[e₁/xᵢ](λxⱼ.e₂) = λxₖ.[e₁/xᵢ]([xₖ/xⱼ]e₂)

otherwise, where `k = i`, `k = j`, and `xₖ ∈ fv(e₁) ⋃ fv(e₂)`



---

The process of substituting the arg `A` for free occurrences of the parameter `p` in the body `B` is denoted by `B[p := A]` or `[p ⟼ A]B` or `[p/A]B`, and it is defined recursively as follows:

1. `[p ⟼ A]p` ≡ `A` (eta reduction)     e.g. `(λp.p)a` ~> `[p ⟼ a]p` ~> `p`
2. `[p ⟼ B]a` ≡ `B` (dropped param/arg) e.g. `(λp.b)a` ~> `[p ⟼ a]b` ~> `b`

3. `[p ⟼ A](M N)` ≡ `([p ⟼ A]M [p ⟼ A]N)`

```
(λp. (λq. (p q) (λr. p q r))) a b c | [p ⟼ a](λq. (p q) (λr. p q r))
~> (λq. (a q) (λr. a q r)) c        | [q ⟼ b]((a q) (λr. a q r))
~> (a b) (λr. a b r) c              | [r ⟼ c](a b r)
~> (a b) (a b c)
```

4. `[x ⟼ N](λy . M)` ≡ `[x ⟼ N](λy . M)`


---


**η-conversion**
eta-reduction reduces a term to its point-free form.

```hs
f x y = g x y
≡ f x = g x
  ≡ f = g
```

- going forward and reducing this redex, we get an *eta-reduction*:   
  `(λx.x) e` ≡ `e`
- going backward and expanding this redex, we get an *eta-expansion*, 
  which is a way to bind a free variable:   
  `e` ≡ `λe. (λx.x) e`


Simulation in the call-by-need lambda-calculus with letrec

----


The fundamental issue with locally named binders is the problem of *name capture*, that is, handling the issue when a substitution conflicts with the names of free variables, presenting the risk of erraneous name capture.

Substitution is the process of applying a lambda abstraction to a lambda term. It may be denoted explicitly by `[x/a]E`, meaning that we replace every occurance of `x` with `a` in `E`.

        [param/arg]BODY

Substitution is a part of β-reduction process, that is, β-reduction may be complicated due to the risk of name capture.

Evaluation of a lambda term `((λx.e)a)` proceeds by substitution of all free occurrences of the variable `x` in `e` with the lambda term (arg) `a`. A single substitution step is called a **reduction**.

We write the application of substitution in brackets before the expression it is to be applied over, `[x/a]E` maps the var x to var a in the body E.

Definition of substitution:

1.  [x/a]x    = a                      η-conversion
2.  [x/a]y    = y                      for x ≠ y
3.  [x/a]MN   = ([x/a]M) ([x/a]N)
4.  [x/a]λx.M = λx.M
5.  [x/a]λy.M = λy.[x/a]M              for x ≠ y ∧ y ∉ FV(a)

where FV(M) is the set of free vars in (a lambda expr) M.

The **capture-avoiding substitution** is substitution that procedes only if a variable to be substituted is not in the set of free variables of the substitution context; if it is, then we first rename it using a *fresh name*.

## Notation

Replace every occurance of formal param `p` with the arg `A` in body `B` is usually denoted like this:

(λp.B)A ~~> [p/A]B

alternative notation:

(λp.B)A ~~> B[p:=A]
