# Church encodings

https://en.wikipedia.org/wiki/Church_encoding




In 1941, Church has presented his encodings that covered numerous elements and features, including the definition of natural numbers, today known as the *Church Numerals*, along with their associated arithmetic operations. However, Church lacked an implementation for the predecessor function.

* 1941 Church: natural numbers as iterators

Numbers are iterators. A number specifies how many times to apply some function `f` on its own result, starting by first applying it to some arg, `x`.
- 0 means don't apply `f` at all, just return `x` (the same as `KI`)
- 1 means apply `f` to `x` once, returning the result `f x`
- 2 means `f (f x)`
- 3 means `f (f (f x))`
- 4 means `f (f (f (f x)))`
- n means `f (… (f x) …)`

However, note that the presentation above considers the semantics, explaining the meaning behind numbers (as implemented with Church numerals). The actual definitions of numbers are as follows:

```js
0 := λs. λz. z
1 := λs. λz. s z
2 := λs. λz. s (s z)
3 := λs. λz. s (s (s z))
4 := λs. λz. s (s (s (s z)))
n := λs. λz. s (… (s z) …)

succ := λn. λf. λx. f (n f x)
```

Each number is represented by an abstraction, i.e. by a function that takes two args and proceeds to apply the first (function) to the second (arg) the corresponding number of times.


- Iterator: a function that can apply `f` repeatedly (`n` times) to `x`
- In the Church encoding, numbers are iterators
  - `succ := λn. λf. λx. f (n f x)`
  - `zero := λs. λz. z`

in Haskell:

```hs
succ n = \f x -> f (n f x)

-- the body: f (n f x) means
f (fⁿ x) =
f¹ (fⁿ x) = 
fⁿᐩ¹ x
```


---


Church encoding is a means of representing data and operators in the lambda calculus. The Church numerals are a representation of the natural numbers using lambda notation. The method is named for Alonzo Church, who first encoded data in the lambda calculus this way.

Terms that are usually considered primitive (integers, booleans, pairs, lists, tagged unions) in other notations and in PLs, are mapped to higher-order functions (what else, really, when only functions exist).

The *Church-Turing thesis* asserts that any *computable function* and its args can be represented using Church encoding. In the untyped lambda calculus the only primitive data type is function.

Lambda calculus is often said to be the world's minimal FPL. However, it's not meant to be used as a standalone language, nor it can be. It has no notion of things like I/O, which are qiote necessary to deal with the outside world. Still, lambda calculus may be used as a pure language core, embedded inside a general-purpose, "surface" language that provides the communication with the outside world. In such a setup, lambda calculus is the *object language*, while the enclosing PL is a *meta language*. In such a setting, we could very confortably continue to explore and discuss lambda calculus.

LC is a pure calculus that only has anonymous functions (that a user needs to define from scratch) available as the sole language primitive. The Church encoding is a way to encode familiar primitives from proper PL in LC, that is, by exlusively using anonymous functions.

LC is meant to be used to a demonstration that all the familiar language constructs can be represented with functions. This means that LC is a Turing complete language since it can perform any calculation. However, the completeness is only representational: additional functions (provided by a meta language) are still required to translate the representation (i.e. λ calculus as the object language) into the common data types (in a meta language), in order for result to be shown (on the screen, e.g. in the console).

In generall, it's not possible to decide if two *functions are extensionally equal* due to the *undecidability of equivalence from Church's theorem*. The translation from the object language (LC) to a meta language (e.g. Haskell) will deal with LC's functions that stand for (encode) different things; so a translation (Haskell) may need to apply a (LC) function somehow, in order to retrieve the value it represents. Or, perhaps the metalanguage can do a table lookup, finding the matching value for a LC function interpreted as a string (that plays the role of a key). For example, if the final result of a computation in LC is `λab.a`, the meta language can search the key/value table, that maps LC terms (considered as strings) to values of the meta language; so, it would find that a key "λab.a" maps to the value `True`.

Lambda calculus is usually interpreted as using *intensional equality*. There are potential problems with the interpretation of results because of the *difference between the intensional and extensional definition of equality*.
