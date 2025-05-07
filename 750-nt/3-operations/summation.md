# Summation

https://en.wikipedia.org/wiki/Summation

## Summation as extension of addition

**Summation** is the addition of a *sequence* of numbers; it is an extension of the binary operation of addition where the two terms, called addends, are added together and the result is called a *sum* (or total).

Summation is an n-ary operation, so there are `n` terms called *summands* and the result is called *sum*. However, in summation, these terms only appear when the sigma expression is *expanded*, while in the sigma notation itself there is only one expression - the body of the sigma expression.

```js
// sigma notation
 ₃
⎲
⎳ i = 1 + 2 + 3
ⁱ⁼¹

// compact sigma notation
⎲³
⎳ᵢ₌₀ i = 0 + 1 + 2 + 3
```

## Components of the sigma notation

The large sigma sign denotes the operation as summation.



## Sequences

The sigma notation is a shorthand notation for adding many terms together, especially in the current artile in which we are only dealing with *bounded sequences*, so the sigma notation expands into a finite sequence (list) of terms. However, aigma notation also denotes summation in the context of *infinite sequences*, which are called *series*. They involve the notion of *limit*, and have their separate page. An obvious difference between bounded and *unbounded sequences* when expressed in sigma notation is that the upper limit is `∞` with unbounded sequences. This means that bounded sequences examined here will always have a finite value as the upper bound (limit), usually denoted by `n ∈ ℕ`.

The sigma notation itself is a standalone expression and it may be used in all contexts like the other mathematical expressions.




The full ("block") presentation of the sigma notation is 2D. There is also a compact version that takes less vertical space. There is a 1D form as well but it is less clear then 2D ones.


```js
// 2D notation
 ₙ
⎲
⎳ f(i)
ⁱ⁼⁰

// compact 2D notation
⎲ⁿ
⎳ᵢ₌₀ f(i)

// 1D (inline) notation
Σ{i=0..n} f(i)
```


Beside numbers, other types of values can be summed as well: functions, vectors, matrices, polynomials and, in general, elements of any type of mathematical objects on which an operation denoted "+" is defined.


The summation of an *explicit sequence* is denoted as a succession of additions. For example, summation of `[1,2,4,2]` is denoted `1+2+4+2`, and results in 9.

Because addition is associative and commutative, the result is the same irrespective of the order of the summands. Summation of a sequence of only one summand results in the summand itself. Summation of an empty sequence (a sequence with no elements), by convention, results in 0.

```js
// 2D notation
 ₙ
⎲
⎳ = 0
ⁱ⁼⁰

// simple summation
⎲³
⎳ᵢ₌₀ i = 0 + 1 + 2 + 3 = 6
```

Very often, the elements of a sequence are defined, through a regular pattern, as a function of their place in the sequence. For simple patterns, summation of long sequences may be represented with most summands replaced by ellipses. For example, summation of the first 100 natural numbers may be written as 1 + 2 + 3 + 4 + ⋯ + 99 + 100. Otherwise, summation is denoted by using Σ notation, where 
∑
∑ is an enlarged capital Greek letter sigma. For example, the sum of the first n natural numbers can be denoted as
