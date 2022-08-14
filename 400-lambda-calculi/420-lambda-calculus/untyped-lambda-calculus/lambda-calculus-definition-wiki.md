# Lambda calculus definition

https://en.wikipedia.org/wiki/Lambda_calculus_definition

Two definitions of lambda calculus are presented:
- a standard definition
- a definition using mathematical formulas

## Contents

1. Standard definition
  1.1. Definition
  1.2. Notation
  1.3. Free and bound variables
  1.4. Reduction
    1.4.1. α-conversion
      1.4.1.1. Substitution
    1.4.2. β-reduction
    1.4.3. η-reduction
  1.5. Normalization
2. Syntax definition in BNF
3. Definition as mathematical formulas
  3.1. Semantics
  3.2. Canonym - Canonical Names
  3.3. Map operators
  3.4. Substitution operator
  3.5. Free and bound variable sets
  3.6. Evaluation strategy
    3.6.1. Normal form
    3.6.2. Weak head normal form
4. Derivation of standard from the math definition
  4.1. Free and bound variables
  4.2. Changes to the substitution operator
  4.3. Transformation
    4.3.1. α-conversion
    4.3.2. β-reduction (capture avoiding)
    4.3.3. η-reduction


## Standard definition

The standard formal definition of lambda calculus was given by Alonzo Church himself as follows:

### Definition

Lambda expressions are composed of
- variables, `v₁, v₂, …, vₙ, …`
- the abstraction symbols lambda, `λ`, and the dot, `.`
- parentheses

The set of lambda expressions, `Λ`, is defined inductively
- if `x` is a variable, then `x ∈ Λ`
- if `x` is a variable and `M ∈ Λ`, then `(λx. M) ∈ Λ`
- if `M, N ∈ Λ`, then `(M N) ∈ Λ`

Instances of rule (2) are known as abstractions and instances of rule (3) are known as applications.

### Notation

The conventions to keep the notation lean:
- Outermost parentheses are dropped: `M N` instead of `(M N)`
- Applications are left-associative: `M N P` = `(M N) P`
- Abs extends as far right as possible: `λx.M N` = `λx.(M N)` ≠ `(λx.M) N`
- A sequence of binders may be contracted: `λa.λb.λc.N` = `λabc.N`

### Free and bound variables

The abstraction operator `λ` is said to bind its variable wherever it occurs in the body of the abstraction. Variables that fall within the scope of an abstraction are said to be bound. All other variables are called free.

(...)

### Reduction

(...)

### Normalization

https://en.wikipedia.org/wiki/Beta_normal_form

The purpose of β-reduction is to calculate a value. A value in lambda calculus is a function. So β-reduction continues until the expression looks like a function abstraction.

A lambda expression that cannot be reduced further, by either β-redex, or η-redex is in normal form. Note that alpha-conversion may convert functions. All normal forms that can be converted into each other by α-conversion are defined to be equal. See the main article on Beta normal form for details.

* Normal Form: : No β- or η-reductions are possible.
* Head Normal Form: In the form of a lambda abs whose body is not reducible.
* Weak Head Normal Form: In the form of a lambda abstraction.



## Syntax definition in BNF

A lambda calculus program has the syntax of an expression where

```hs bnf
(1)
exp := var | abs | app
var := a | b | …
abs := λ var . exp
app := ( abs )( exp )

(2)
exp := var
     | λ var . exp
     | ( exp )
var := chr suf
chr := a | b | …
suf := ϵ | _ | ₀ | ₁ | …
```

- consequtive binders may be compressed: λa.λb.λc.abc = λabc.abc
- abs associatiates to the right:             λabc.ac = λa.(λb.(λc.(ac)))
- app associatiates to the left:            λabc.acbc = λabc.((ac)b)c
- abs has lower precedence than app:  λa.bc = λa.(bc) ≠ (λa.b)c


## Definition as mathematical formulas

The problem of how variables may be renamed is difficult. This definition avoids the problem by substituting all names with canonical names, which are constructed based on the position of the definition of the name in the expression. The approach is analogous to what a compiler does, but has been adapted to work within the constraints of mathematics.

### Semantics

The execution of an λ-exp proceeds with the reductions and transformations:

* α-conversion: `alpha-conv(a) -> canonym[A,P] = canonym[a[A],P]`

* β-reduction: `beta-redex[λp.bv] = b[p:=v]`

* η-reduction: `x ∉ FV(f) -> eta-redex[λx.(fx)] = f`

where
- `canonym` is a renaming of a λ-exp to give the exps standard names, 
  based on the position of the name in the exp.
* *Substitution Operator*, `M[p:=v]` is the substitution of the var `p` (param)
  by a λ-term `v` (arg) in the λ-term `M` (function's body).
* *Free Variable Set* `FV(f)` is the set of variables in `f`.

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


Execution is performing β-reductions and η-reductions on subexpressions in the canonym of a lambda expression until the result is a lambda function (abstraction) in the normal form.

All α-conversions of a λ-expression are considered to be equivalent.

### Canonym - Canonical Names

Canonym is a function that takes a lambda expression and renames all names canonically, based on their positions in the expression. This might be implemented as

(...)

### Map operators

(...)

### Substitution operator

(...)

### Free and bound variable sets

(...)

### Evaluation strategy

(...)







## Derivation of standard from the math definition

The standard definition of lambda calculus uses some definitions which may be considered as theorems, which can be proved based on the definition as mathematical formulas.

The canonical naming definition deals with the problem of variable identity by constructing a unique name for each variable based on the position of the lambda abstraction for the variable name in the expression.

This definition introduces the rules used in the standard definition and relates explains them in terms of the canonical renaming definition.

### Free and bound variables

(...)

### Changes to the substitution operator

(...)

### Transformation

(...)
