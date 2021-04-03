# Lambda terms


## Beta normal form

https://en.wikipedia.org/wiki/Beta_normal_form

A lambda term is in
* *beta normal form*     if no β-reduction is possible      (β-NF)
* *beta-eta normal form* if no β or η-reduction is possible (β-η-NF)
* *head normal form*     if head position is β-redex free   (WHNF)


### Beta reduction

Beta-redex is a term of the form `(λx.M)N`.

A redex `r` is in head position in a term `t`, if `t` has the following shape (note that application has higher priority than abstraction, and that the formula below is meant to be a lambda-abstraction, not an application):

```
λx₁ ⋯ λxₙ. (λx.A) M₁ M₂ ⋯ Mₘ       where n >= 0 and m >= 1
           \_______/
               |
            redex r
      in the head position
```

A beta reduction is an application of the following rewrite rule to a beta redex contained in a term:

(λx.A)M ~~> [x/M]A

on the right is the result of substituting every free `x` in `A` with `M`.

* A **head beta reduction** is a beta reduction applied in head position; any other reduction is an *internal beta reduction*.

* A **normal form** is a term that does not contain any beta redex, i.e. that cannot be further reduced.

* A **head normal form** is a term that does not contain a beta redex in head position, i.e. that cannot be further reduced by a head reduction.


* **Weak head normal form (whnf)**: a term is in whnf if it is not an application, and it is not starting with a constant or function symbol.

`λx.M` is in whnf because it is an abstraction. `1 + 2` is not in whnf because it starts with a function symbol, namely `(+) 1 2`.



## Reduction strategies

In general, a given term can contain several redexes, hence several different beta reductions could be applied. We may specify a strategy to choose which redex to reduce.

**Normal-order reduction** is the strategy in which one continually applies the rule for beta reduction in head position until no more such reductions are possible. At that point, the resulting term is in head normal form. One then continues applying head reduction in the subterms Mⱼ, from left to right. Stated otherwise, *normal‐order reduction is the strategy that always reduces the left‐most outer‐most redex first*.

By contrast, in **applicative order reduction**, one applies the internal reductions first, and then only applies the head reduction when no more internal reductions are possible.
