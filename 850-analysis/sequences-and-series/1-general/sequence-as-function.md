# Sequences as functions

A sequence may be understood as a function that enumerates its terms using natural numbers. So a sequence maps non-negative integers, used as indices, to the terms. The first terms of a sequence denoted by `(aₙ)` may be referenced as `a₀` in 0-based indexing. If the sequence uses 1-based indexing then the first term is referred to by `a₁`.

A sequence is expressed generically as `(aₙ)` and it consists of terms

    (aₙ) = (a₀, a₁, a₂, …, aₙ)

A sequence as a function is a map with the function type `(aₙ) : ℕ → ℝ`.

A sequence a function, `(aₙ)`, associates each element of ℕ to a term, which are typically real numbers obtained by transforming the input argument. So the argument to a sequence-as-a-function is both used to enumerate (index) a particular position of the sequence and used to construct the term at that position. A sequence then has the function type `a : ℕ → ℝ`.

A sequence as a function:

    a : ℕ → ℝ

    0 ⟼ a(0)
    1 ⟼ a(1)
    …
    n ⟼ a(n)

A sequence as a list:

    a = (a(0), a(1), a(2), …, a(n), …)

A sequence as an enumeration:

    a₀ = a(0)
    a₁ = a(1)
    …
    aₙ ⟼ a(n)

For example, a sequence of squares

  Is a seq-as-function:

    a : ℕ → ℝ
    a n = n²

    0 ⟼ a(0)
    1 ⟼ a(1)
    …
    n ⟼ a(n)

that takes a non-negative integer and produces it square

    0 ⟼ 0² = 0
    1 ⟼ 1² = 1
    2 ⟼ 2² = 4
    3 ⟼ 3² = 9
    …
    n ⟼ n²

the sequence is actually an already assambled enumaration of squares:

    aₙ = (0, 1, 4, 9, …)

We can retrieve terms at a particular position by indexing the sequence, i.e. by querying it so as to return us the term that resides at a certain index.

Given an index, a sequence returns the term there:

    a₀: 0     a(0) = 0
    a₃: 9     a(3) = 9
    a₉: 81    a(9) = 81

The distniction between a function and a sequence may not always be very clear. A function is undestood to produce its result at the time it is given an input, but this may not always be true; for example, in CS, if we have a function that takes a lot of time to compute each result, then it makes no sense to let it compute the result for the same argument - the result does not change if the argument is the same. It is better to memoize such functions to save on the wasted computation time. Memoizing a function means endowing it with a memory table so it can record the result of each distinct argument. One approach to memoization would also have the function immediately compute the results of many arguents (e.g. from 1 to 100), but that is also wastefull, especially if those results are never read. However, by precomputing a subset of results for, hopefully often used arguments, this approach maximizes performance during critical periods. If the actualarguments to the function hit a lot of precomputed results, this would be optimal. In another approach the results are not precomputed in advance, but each result of a distinct input is saved to the table and retrieved whenever the same argument is repeated. A critical assumption about memoization is that functions are pure in the mathematical sense, i.e. that a function always returns the same output for the same input.



A sequence (aka a list) is often said to be a function from the set of natural nubers (i.e. non-negative integers) into reals, `f : ℕ → ℝ`. This way, sequences may be understood as enumerations - they map non-negative integers to terms, thereby enumerating them, i.e. placing them in a bijection with the set of numbers used for counting, ℕ. Moreover, each argument later serves as an index into the sequence. It can be used to retrieve the term in the sequence that was produced using that very same index as input argument.

For each `n ∈ ℕ`, a sequence-as-a-function, `f`, produces some term `y = f(x)`. However, these non-negative integers are not merely used as indices - they also affect the production of the resulting term. In fact, it can be said that the resulting term depends on the specific argument very much. That way, sequences are more like transformations - they take a natural number and transform it into a more complicated number by applying a function to it, producing a result in the reals. Under this view, a sequence is a *functional* - it additionally takes some function as an argument - a function it will apply to the integer argument to produce the output (resulting term).

    0 ⟼ f(0), 1 ⟼ f(1), …, n ⟼ f(n)    (for n ∈ ℕ)






## In Latex

$$
\sum _{i=0} ^{n} (-1)^i\ \frac{x^i}{i!}
$$

## In Haskell

```hs
seq g l u = [ g x | x <- l..u ]

-- example application
xs = seq (\i -> (-1)^i * 2^i / product [1..i]) 0 10
```



## In JS

```js
/**
 * Functional that produces a sequence by taking 
 * a function `g` to apply to each element in
 * [lb..ub] range, i.e. [lowerBound..upperBound]
 * Like $\sum _{i=0} ^{n}$
 */

// v.1
let seq = function(g, lb=0, ub=10, xs = []) {
  for (const i = lb; i <= ub; i++) {
    xs.push(i)
  }
  return xs
}

// v.2
let seq = (g, i=0, n=10, xs=[]) =>
  i <= 10
    ? [ ...xs, g(i), ...seq(g, ++i) ]
    : xs

// v.3 tail-recursive
let seq = (g, i=0, n=10, xs=[]) =>
  i <= 10
    ? seq(g, ++i, n, [...xs, g(i)])
    : xs


// creates a sequence of squares using default bounds, i=0..10
let xs1 = seq(x => x * x)
// result: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]

// creates a sequence of cubes with bounds i=1..5
let xs2 = seq(x => x * x * x, 1, 5)
// result: [1, 8, 27, 64]
```




```js
// seq-as-function, general form
                       ⎲ⁿ
let seq(g, i=0, n=∞) = ⎳ᵢ₌₀ g(i)



// pseudo-code
const sequence = function(g, lb=0, ub=∞) {
  let xs = []
  for i=lb to ub {
    push.xs
  }
}

// seq-as-function: an example application i.e. an example call
let seq1 = seq((-1)^i * 2^i / fac(i), 0, ∞)


⎲∞          2ⁱ
⎳ᵢ₌₀ (-1)ⁱ ----
             i!

```
