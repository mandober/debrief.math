# Measure space

https://en.wikipedia.org/wiki/Measure_space

(Not to be confused with *Measurable space*)

A measure space is a basic object of measure theory, a branch of mathematics that studies generalized notions of volumes.

A **measure space** contains
- an underlying set
- the subsets of this set that are feasible for measuring (the σ-algebra)
- the method that is used for measuring (the measure)

One important example of a measure space is a *probability space*.

A *measurable space* consists of the first two components without a specific measure.

## Definition

A measure space is a triple `(X,A,μ)` where 
- `X` is a set
- `A` is a σ-algebra on the set X
- `μ` is a measure on a measurable space `(X,A)`

In other words, a measure space consists of a measurable space `(X,A)` together with a measure on it.

## Example

Set X = {0,1}. The σ-algebra on finite sets such as the one above is usually the power set, which is the set of all subsets (of a given set) and is denoted by `℘(⋅)`. Sticking with this convention, we set `A=℘(X)`.

In this simple case, the power set can be written down explicitly: 
℘(X) = {∅,{0},{1},{0,1}}.

As the measure, define `μ` by `μ({0}) = μ({1}) = 1/2, so `μ(X)=1` (by additivity of measures) and `μ(∅)=0` (by definition of measures).

This leads to the measure space `(X,℘(X),μ)`. It is a probability space, since `μ(X) = 1`. The measure `μ` corresponds to the Bernoulli distribution with `p = 1/2`, which is for example used to model a fair coin flip.

## Important classes of measure spaces

Most important classes of measure spaces are defined by the properties of their associated measures. This includes, in order of increasing generality:
- *Probability spaces*, where the measure is a *probability measure*
- *Finite measure spaces*, where the measure is a *finite measure*
- *σ-finite measure spaces*, where the measure is a *σ-finite measure*

Another class of measure spaces are the *complete measure spaces*.
