# Tetration

https://en.wikipedia.org/wiki/Tetration

**Tetration** (hyper-4) is an arithmetic operation based on iterated exponentiation (hyper-3).

The usual notation for tetration is as the left-exponent `ⁿb`, or using the Knuth's up-arrow notation, `b ↑↑ n`, i.e. `b ↑² n`

Under the definition as repeated exponentiation, `ⁿa` represents a tower of exponents `a` with the height `n`. That is, `n` copies of `a` are iterated via exponentiation (right-to-left), or the application of exponentiation `n - 1` times. `n` is called the "height" of the function, while `a` is called the base, analogous to exponentiation. It would be read as "the nth tetration of `a`".

Tetration is the next hyperoperation after exponentiation, before pentation. The word was coined by Reuben Louis Goodstein from tetra- (four) and iteration.

Tetration is also defined recursively as

`a ↑↑ n := n = 0 ? 1 : a ↑ (a ↑↑ n - 1)`

where `↑` is exponentiation.
