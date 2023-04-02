# Implementing untyped LC

There are many approaches to implemeting LC, and this one is a more-lesss straigtforward, even naive, approach upon which we can improve later. It is based on the post:    
http://augustss.blogspot.com/2007/10/simpler-easier-in-recent-paper-simply.html

## Moving parts

- reduction strategy
  - normal order
  - application order
- evaluation strategy
- canonical forms
  - NF (normal form)
  - HNF
  - WHNF
  - β normal form
  - β-η normal form
- redex
  - β-redex
  - β-reductions
  - η-redex
  - η-reductions


## Reduction and evaluation strategy

Approaches to implementing LC are equivalent if they respect the same constraints, most importanly, if they have the same reduction and evaluation strategy. The former ensures that we don't have the case where one implementation diverges trying to reduce some expression while another terminates. Also, to produce the same result two implementations must reduce expressions to the same *canonical form*. This is just to say that the two implementations are equivalent is they differ in less important programmatic stuff, but are otherwise the same.

Technically, the difference between a reduction and evaluation strategy is that the *evaluation* always produces a result that is considered some sort of a value in the given language. It e-value-ates an expression down to a value, which may be denoted by `⟱`. *Reduction* merely reduces an expression, not worrying whether it constitutes a value or not, and is often done in steps, where ``⟿` or `↝` denotes one step of reduction, and `⟿*` or `↝*` denotes zero or more steps of reduction. That is, the evaluation is a form of reduction that reduces an expression as much as possible to produce a value. Practically, however, these two terms are used interchangibly.

A reducable expression is called a *redex*, and the reduction strategy determines the way a redex is chosen for reduction. In normal order reduction strategy the next redex to reduce is the outermost rightmost one, while in the applicative order it is the innermost leftmost redex. A redex is called a beta redex if it is β-reducible, or eta redex if it is η-reducible (η-contractible). A redex is in the *β normal form* if no more β-reductions are possible. A redex is in the *η normal form* if η-reduction is not still possible. A redex is on the *β-η normal form* if neither β nor η-reductions are possible.

A redex is a lambda term of the form `(λx.M)N` and it has a *contractum*, which is the expression resulting from reduction that is denoted by `M[x:=N]`, that is, it is the result of substituting `N` for all free occurrences of `x` in the lambda body `M`.



## Preliminaries

This implementation uses the normal order reduction strategy to the WHNF and NF.

## Grammar

To implement an untyped version of LC we start with the LC grammar:

```hs bnf
term := var                     -- variable
      | ( 'λ' var '.' term )    -- abstraction
      | ( term term )           -- application
var  := 'x' | 'y' | …
```

Or just `T := x | λx.T | T T`, which says that LC consists of variables, here denoted with a meta-variable, `x`, abstraction, `λx.T` and application `T T`, where `T` is a meta-variable that stands for any lambda term, while `x` and similar lower-case names stand for variables.

## Conventions

- lambda abstraction associates to the right
- lambda application associates to the left
- lambda application has higher-precedence to lambda abstraction
- multiple binders may be contracted into a single one
- parenthesis delimit the terms, outer are optional

## Metalanguage

LC is the object language, and we need a metalanguage in which we'll implement it. Since LC is at the core of FPLs, Haskell seems a reasonable choice. We need to translate the object language of LC into Haskell.

Representing the syntax in the metalanguage
