# Lambda calculus :: Beta

* β-reduction captures the idea of function application.

* β-reduction is defined in terms of substitution: 
  the β-reduction of `(λV.M) N` is `M[V := N]`

* β-reduction can be seen to be the same as the concept of *local reducibility* in natural deduction, via the Curry-Howard isomorphism.

* *Substitution*, written `M[V := N]`, is the process of replacing all free occurrences of the variable `V` in the expression `M` with expression `N`.
* Substitution on terms of the lambda calculus is defined by recursion on the structure of terms

* Substitution (`x` and `y` are variables while `M` and `N` are any lambda exp)
  -      x[x:=N]  = N
  -      y[x:=N]  = y                     if x ≠ y
  -  (M N)[x:=N]  = M[x:=N] N[x:=N]
  - (λx.M)[x:=N]  = λx.M
  - (λy.M)[x:=N]  = λy.(M[x:=N])          if x ≠ y and y ∉ FV(N)

* To substitute into an abstraction, it is sometimes necessary to *α-convert* the expression. For example, it is not correct for `(λx.y)[y:=x]` to result in `λx.x`, because the substituted `x` was supposed to be free but ended up being bound. The correct substitution in this case is `λz.x`, up to α-equivalence.
* Substitution is defined uniquely up to α-equivalence.

## β-reduction

The β-reduction, one the 3 fundamental operations of LC, describes application, that is, the way a lambda term is applyied to another lambda term, `M N`. The term `M` better be a lambda abstraction, so it may be denoted more precisely as `λx.B`, where `x` is a formal paramater, and `B` stands for a lambda term that is the abstraction's body (which usually contains at least one occurence of the variable `x`). So, the form of application is `(λx.B) N`, with a lambda term `N` as the argument. The β-reduction prescribes the exact mechanics of reducing this term (this application), which must deal with the reduction strategy (eager, lazy), avoiding name-capturing, and similar. Considering this example `(λx.ax(yx)) y` and the normal order reduction strategy, the β-reduction proceeds by passing the term `y` unevaluated into the abstraction, where the formal parameter `x` binds it, `x ⟼ y`. Before performing the substitution of `x` by `y` in the body `ax(yx)`, the free variable `y` (in the body) needs to be renamed (into `z`) to avoid a name capture (incorrect replacement would result in the expression `ay(yy)`). After the renaming, the lambda expression is `(λx.ax(zx)) y`. Then the substitution, `[x ⟼ y]ax(zx)`, is performed, resulting in the final expression `ay(zy)`.

The essence of β-reduction is always the same, but due to the problem of name capturing, its specific forms vary. This rule is a reduction because β-reduction is non-reversable.
