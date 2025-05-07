# Sigma notation

- sigma notation
- sigma head
- sigma letter
- iterator variable
- sigma binder
- declaring iterator variable
- initializing iterator variable
- lower bound
- upper bound
- sigma body
- sigma body expression uses iterator variable


## Purpose of sigma notation

**Sigma notation** is used to express the operation of summation on a collection of items.

## Summation operation

**Addition** is a binary operation expressed by using the plus sign in the infix position, between two operands, `a + b`. However, like all operations, it is in fact a function. As a binary function, it is still called `+`, i.t. it keeps its symbolic name. The plus symbol is a legal function name, but when not used infix, when we only want to refer to the function itself, symbolic names like this are palced in parens. For example, to state that we intend to use addition only on ℕ set, we can declare its function type as `(+) : ℕ → ℕ`. Also, when we want to pass addition function/operation itself as an argument into a higher-order function, we wrap the plus symbol in parens, `fold (+) 0 {aₙ}`, where `{aₙ}` is a seqence.

**Summation** is an extension of the binary operation of addition, but, unlike addition, it accepts any number of arguments which it then sums up and returns the result. That way, summation may also be considered a *polyadic (n-ary) function*, meaning it takes an arbitrary number of arguments, one, two, or more, or even none at all. By convention, where there are no arguments, it returns 0 (no one deliberately calls summation with 0 args, but it is often called with some expression that is uspposed to produce arguments; but if that fails, the summation will effectively be called with no args. Unimportant; math is not a PL after all).

The arguments of summation are called *summands*. However, sigma notation is almost never used with expanded, concrete sequences of numbers. The expression placed as the body of the sigma notation is some expression that denotes a sequence.



## Anatomy of sigma notation


Sigma notation comes in several equivalent variants and the choice of which to use depends on personal taste and available space.

```js
// sigma notation v.1
₅
⎲
⎳ i
ⁱ⁼⁰

// sigma notation v.2 compact
⎲⁵
⎳ᵢ₌₀ i

// sigma notation v.3 inline
Σ{i=0..5} i
```

All 3 variants of the sigma expressions above may be expanded (unrolled) into the same series: `0 + 1 + 2 + 3 + 4 + 5`.

### Ellipsis

A sequence is a list of terms separated by comma. A sequence may be finite, such as `(0,1,2,3)`, or infinite like (0,1,2,3,…). *Infinite sequences* use the **ellipsis** as the last term to signify that more terms follow. However, there is also a notation like `(1,2,4,9,16,…,n²,…)`, where several initial (concrete) terms are first given, followed by ellipsis that signifies that more terms follow, `(1,2,4,9,16,…)`. The given terms are considered sufficient to infer how the subsequent terms are constructed, but just in case, there is a variant that places the general term after the ellipsis, as in `(1,2,4,9,16,…,n²)`. To make sure it is not interpreted that `n²` is the final term, another ellipsis is placed at the end. Put together, it looks like `(1,2,4,9,16,…,n²,…)`.

then an ellipsis to signify that more terms follow, but then an expression signifying how to construct a term in general is given (`n²` in the example), which is followed by another ellipsis. Both ellipsis signify that there are more terms in the sequence. 





A collection of terms that can be expressed as a sequence can also be expressed using summation (sigma notation) which constructs term by term, summing them all up.

The sigma notation consists of the capital Greek letter sigma, `Σ`, which is also acts as a binder, declaring the name of a variable that will be used for iterating. Conventinally, *iterator variables* have a name like `i`, `k`, `n`, etc. In fact, the iterator variable accepts the lower and upper bound of iteration, e.g. `i=0..10`, such that the variable is declared and initialized with the lower bound underneath the big sigma letter, while the upper bound is placed on its top. If finite, the upper bound is always included.

For example, a sigma expression that sums up the numbers from 0 (lower bound) up to 9 included (upper bound) is denoted


The sigma notation consists of the head which is made up from an enlarged sigmas letter underneath which the iterator variable is declared (above, `i`) and initialized with the lower bound (above, 0). The upper bound is placed on top of the sigma letter (above, 9). Well, the above form is an alternate variant of the sigma notation where the bounds are placed to the right instead of above and below it.



in which 
are different from one another  by some ratio or difference 


## Symbols for sum and product

The greek uppercase sigma, `Σ`, is used to denote summation.
The greek uppercase pi, `Π`, is used to denote production.

- `Σ` GREEK CAPITAL LETTER SIGMA
- `⅀` DOUBLE-STRUCK N-ARY SUMMATION
- `∑` N-ARY SUMMATION
- `⨊` MODULO TWO SUM
- `⨋` SUMMATION WITH INTEGRAL
- `∏` N-ARY PRODUCT

```js
// inline product
∏ {i=0..∞} i
Π {i=0..∞} i

// inline sum
Σ {i=0..∞} i
∑ {i=0..∞} i
⅀ {i=0..∞} i

// bigass sum
 ∞
⎲
⎳
ᵏ⁼⁰

// small form bigass sum
⎲ⁿ
⎳ⱼ₌₀

// bigass product
 ₃
┌─┐
│ │
ᵏ⁼⁰

∞
⎡⎤
⎢⎥
ᵏ⁼⁰

// small form bigass product
┌─┐∞
│ │ⱼ₌₀

// small form bigass product
⎡⎤ⁿ
⎢⎥ⱼ₌₀
```
