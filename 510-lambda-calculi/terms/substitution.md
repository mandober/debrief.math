# Substitution


---

## Rewrite rules 

The rewrite rules of the lambda calculus depend on the notion of substitution of an expression `e1` for all free occurrences of an identifier `x` in an expression `e2`, which we denote by `[e1/x]e2`, meaning all bound `x`'s are to be replaced with `e1` in the body `e2` (from whose view `x`'s are free).

Most systems, including both the lambda calculus and predicate calculus, that utilize substitution on identifiers must be careful to avoid name conflicts, also called *name captures*.

To understand substitution we must first understand the notion of the *free variables* of an expression `e`, which we write as `fv(e)`, and define by the following simple rules:
1. fv(x) = {x}
2. fv(e1 e2) = fv(e1) ∪ fv(e2)
3. fv(λx.e) = fv(e) − {x}

The 1. rule says that an expr consisting solely of x has exactly that x as the free variable. The 2. rule is about lambda application of `e1` to `e2`, and it states that the free vars are those in `e1` and (union) those in `e2`. The 3. rule is about lambda abstraction, `λx.e`, and it syays that the free vars there are those in the body `e`, excluding (set difference) the var `x` itself, which is bound by the lambda, `λx`.

We say that `x` is free in `e` iff `x ∈ fv(e)`.

The substitution `[e1/x]e2` is then defined inductively by:

1. [e/xᵢ]xⱼ = e     (if i = j)
  - this is the form for the identity function
  - (λx.x)e ~~> e
  - (λxᵢ.xⱼ)e ~~> e

2. [e/xᵢ]xⱼ = xⱼ    (if i ≠ j)
  - this is the form for a function that discards its parameter
  - (λx.abc)e ~~> abc
  - (λxᵢ.xⱼ)e ~~> xⱼ

3. [e₁/x](e₂ e₃) = ([e₁/x]e₂) ([e₁/x]e₃)
  - the form of lambda application: we replace param `x` in each expression by the arg `e₁`
  - (λx.mn)e ~~> ([e/x]m) ([e/x]n)
  - (λx.(λy.xy)(λy.xy)) e ~~> ([m/x](λy.xy)) ([n/x](λy.xy))

4. [e₁/xᵢ](λxⱼ.e₂) = λxⱼ.e₂                 if i=j

5. [e₁/xᵢ](λxⱼ.e₂) = λxⱼ.[e₁/xᵢ]e₂          if i=j and xj ∈ fv(e1)

6. [e₁/xᵢ](λxⱼ.e₂) = λxₖ.[e₁/xᵢ]([xₖ/xⱼ]e₂)
  otherwise, where k = i, k = j, and xₖ ∈ fv(e₁) ∪ fv(e₂)



---



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
