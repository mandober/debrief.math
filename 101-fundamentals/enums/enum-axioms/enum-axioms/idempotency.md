# Idempotency

https://en.wikipedia.org/wiki/Idempotence

**Idempotence** is a property of a unary function with respect to its argument: given a function `f : a -> b` and an argument `x : a`,    
if `f(f(x))` = `f(f(f(x)))` = `f(…f(x)…)`, then `f` is idempotent.

Idempotent operations:
- sets: union, intersection
- logic: AND, OR


```
// sets
A ∪ A = A
A ∩ A = A

// logic
p ∨ p = p
p ∧ p = p
```


The concept of idempotence arises in a number of places in abstract algebra (in particular, in the theory of projectors and closure operators).

The term was introduced by Benjamin Peirce in the context of elements of algebraic structures that would remain *invariant* following the initial operation. The term "idempotence" means "same power", from the Latin `idem`, meaning same.

An idempotent operation has the same effect whether performed once or many times.
