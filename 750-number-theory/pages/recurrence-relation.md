# Recurrence relation

https://en.wikipedia.org/wiki/Recurrence_relation

A **recurrence relation** is an equation that expresses the `n`th term of a sequence as a function of the `k` preceding terms, for some fixed `k` (independent from `n`), which is called *the order of the relation*.

Once `k` initial terms of a sequence are given, the recurrence relation allows computing recursively all the remaining terms of the sequence.

Most general results on recurrence relations are about *linear recurrences*, which are recurrence relations such that the `n`th term is linear with respect to its preceding terms.

Among them, *linear recurrences with constant coefficients*, and *linear recurrences with polynomial coefficients* are especially important.

In the first case, this is because one can express the general term of the sequence as a closed-form expression of the index of the term.

In the second case, this is because many common elementary and special functions have a *Taylor series* whose coefficients satisfy such a recurrence relation (see holonomic function).

The concept can be extended to multidimensional arrays, that is, indexed families that are indexed by tuples of natural numbers.


## Contents

(...)

## Definition

A recurrence relation is an equation that expresses each element of a sequence as a function of the preceding ones. More precisely, in the case where only the immediately preceding element is involved, a recurrence relation has the form

`uₙ = φ(n, uₙ˗₁)` for `n > 0` where `φ : ℕ ⨉ X -> X`

is a function, where `X` is a set to which the elements of a sequence must belong. For any `u₀ ∈ X`, this defines a unique sequence with `u₀` as its first element, called the *initial value*.

It is easy to modify the definition for getting sequences starting from the term of index 1 or higher.

This defines recurrence relation of *first order*.

A recurrence relation of *order* `k` has the form:

`uₙ = φ(n, uₙ˗₁, uₙ˗₂, …, uₙ˗ₖ,)` for `n >= k` where `φ : ℕ ⨉ Xᵏ -> X`

is a function that involves `k` consecutive elements of the sequence. In this case, `k` initial values are needed for defining a sequence.

## Examples

### Factorial

The factorial is defined by the recurrence relation    
`n! = n(n - 1)!` for `n > 0` and the initial condition `0! = 1`

### Logistic map

Another example of a recurrence relation is the logistic map:

`xₙ﹢₁ = rxₙ(1 - xₙ)`

with a given constant `r`; given the initial term `x₀` each subsequent term is determined by this relation.

Solving a recurrence relation means obtaining a *closed-form solution*: a non-recursive function of `n`.

### Fibonacci numbers

The recurrence of order two satisfied by the Fibonacci numbers is the canonical example of a homogeneous linear recurrence relation with constant coefficients. 

The Fibonacci sequence is defined using the recurrence:

`Fₙ = Fₙ˗₁ + Fₙ˗₂` with initial conditions `F₀ = 0` and `F₁ = 1`

The generating function of the sequence is the rational function

```js
    t
----------
1 - t - t²
```

### Binomial coefficients

A simple example of a multidimensional recurrence relation is given by the binomial coefficients `n-choose-k`, which count the ways of selecting `k` elements out of a set of `n` elements. They can be computed by the recurrence relation

```js
⎛ n ⎞   ⎛ n - 1 ⎞   ⎛ n - 1 ⎞
⎜   ⎟ = ⎜       ⎟ + ⎜       ⎟
⎝ k ⎠   ⎝ k - 1 ⎠   ⎝   k   ⎠
```

with the base cases

```js
⎛ n ⎞   ⎛ n ⎞
⎝ 0 ⎠ = ⎝ n ⎠ = 1
```

Using this formula to compute the values of all binomial coefficients generates an infinite array called Pascal's triangle.

The same values can also be computed directly by a different formula that is not a recurrence, but uses factorials, multiplication and division, not just additions:

```js
⎛ n ⎞        n!
⎜   ⎟ = -----------
⎝ k ⎠    k! (n - k)!
```

The binomial coefficients can also be computed with a uni-dimensional recurrence:

```js
⎛ n ⎞   ⎛   n   ⎞
⎜   ⎟ = ⎜       ⎟ (n - k + 1) / k
⎝ k ⎠   ⎝ k - 1 ⎠
```

with the initial value

```js
⎛ n ⎞
⎝ 0 ⎠ = 1
```

The division is not displayed as a fraction for emphasizing that it must be computed after the multiplication, for not introducing fractional numbers.

This recurrence is widely used in computers because it does not require to build a table as does the *bi-dimensional recurrence*, and does involve very large integers as does the formula with factorials (if one uses `n-choose-k` = `n-choose-(k - 1)`, all involved integers are smaller than the final result.
