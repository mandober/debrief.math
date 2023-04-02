# Lambda calculus :: Other rules

Less known or used rules
- ξ-rule: `M = N --> λx.M = λx.N`
- δ-rule, δ-expansion
- ζ-rule
- ξ*-rule
- μ-rule

The law `ξ*` is an improvement of `ξ`, while `μ` is a form of monotonicity for application (from Data types as lattices - Dana Scott 1976).

Some laws of λ-calculus
- ξ-rule             λx.τ = λx.σ              iff ∀x.τ = σ
- ξ*-rule            λx.τ ⊆ λx.σ              iff ∀x.τ ⊆ σ
- μ-rule   x ⊆ y ⋀ u ⊆ v => u(x) ⊆ v(y)



## ξ-rule

>The ξ (chi, "xi") rule states that equations (lambda terms) should be preserved under binders (under lambda abstractions).

This rule fails to be sound for the usual interpretation of lambda calculus. The combinatory interpretation of lambda calculus is known to be imperfect, because it does not satisfy the ξ-rule: under that interpretation, `M = N` does not imply `λx.M = λx.N` (Barendregt, 1984), `M = N ==/=> λx.M = λx.N`

ξ-rule: `M = N --> λx.M = λx.N`


## ξ-star rule


## δ-expansion
The δ-expansion rule is about the expansion of syntactic abbreviations (macros). It is maintaining some sort of hygene and minds the name shadowing or some shit like that.
