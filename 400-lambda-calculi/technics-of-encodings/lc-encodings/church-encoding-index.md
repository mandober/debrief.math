# Index of Church encodings

https://en.wikipedia.org/wiki/Church_encoding

## Church numerals

Church encoding of numbers and arithetic operations. Church encodes natural numbers using two functions, `zero` and `succ`, a lot like Peano axioms. Church numberals can be interpreted as iterators that specify how many times to repeat a given operation. Actually, they describe iterative application of a function `f` to its initial argument `x`.

Such iterative application of a function is called *folding*. And a *fold* is a higher-order function that takes 3 args: `n` specifies the number of times to apply a function, `f` is a function to applied, and `x` is the initial argument. What `fold` does depends on `n`: if n=0, no application is performed and the initial arg `x` is returned; if n=1, `f` is applied once to `x` and that result is returned; if n=2, `f` is applied to `x`, then `f` is applied again to that result, which is returned. In general, a Church numeral `n` means folding a `f` `n` times over the initial arg `x`, `n f x ~~> fⁿ x`.

Overview of Church numerals in a table form:

n | fold | output
--|------|----------------
0 | f⁰ x | x
1 | f¹ x | f x
2 | f² x | f (f x)
3 | f³ x | f (f (f x))
n | fⁿ x | f (… (f x) …)


```js
zero := λsz.z
succ := λnfx.f(nfx)
add  := λmnfx.mf(nfx)
mul  := λmnfx.m(nfx)
exp  := λmnfx.nmfx
```



* Church numerals
  - Calculation with Church numerals
  - Table of functions on Church numerals
  - Derivation of predecessor function
    - Value container
    - Inc
    - Extract
    - Const
    - Another way of defining pred
1.4. Division
1.5. Signed numbers
1.6. Plus and minus
1.7. Multiply and divide
1.8. Rational and real numbers
1.9. Translation with other representations
2. Church Booleans
3. Predicates
4. Church pairs
5. List encodings
5.1. Two pairs as a list node
5.2. One pair as a list node
5.3. Represent the list using right fold
5.4. Represent the list using Scott encoding


## Church encoding

- Church Booleans (connectives and ops)
- Church numerals (Church naturals, Church numbers) and ops
- Church predecessor
- Church pair
- Church list
- Church data structures

Predicates:
- ifTrue
- isFalse
- ifZero
- isLE

- predecessor
- value container
- increment
- extract
- const
- division
- signed numbers
- plus and minus
- multiply and divide
- rational numbers
- real numbers
- predicates
- Church pairs
- List (two pairs as a list node, single pair as a list node, list as right fold)


The purpose of lambda calculus with regards to mathematics is similar to using other theories as the foundations of mathematics - such theory has to show how can it build various mathematical objects.

Taking a set theory under consideration, the author has to show how to, e.g. build the natural numbers. A common way to do it, is to start by declaring that the number zero is represented by the empty set, `0 := ∅`, and then give the definition of the successor in terms of set operations, e.g. `S(n) = n ∪ {n}`.

```
S(n) = n ∪ {n}
0 := ∅
1 = S(0) = 0 ∪ {0} = {0}                   = {∅ }
2 = S(1) = 1 ∪ {1} = {∅} ∪ {{∅}}           = {∅ , {∅} }
3 = S(2) = 2 ∪ {2} = {∅, {∅}} ∪ {{∅, {∅}}} = {∅ , {∅} , {∅,{∅}} }
4 = S(3) = 3 ∪ {3} = {∅ , {∅} , {∅,{∅}} , {∅,{∅},{∅,{∅}}} } = {0,1,2,3}
```

While set theory bases everything on the notion of a set, LC uses the notion of a function instead. However, no function comes predefined in LC since it just formalizes the concepts of function abstraction (how to make new function) and function application (how to apply a function) and leaves everything else unspecified and for users to decide. Thus, there are many ways to represent some mathematical object, with smaller or bigger differences between the approaches of various authors (and many a famous author and scientist has taken a shot at tackling the LC and discovering new approaches to many problems).
