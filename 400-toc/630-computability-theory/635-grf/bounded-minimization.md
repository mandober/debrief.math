# Bounded minimization

It is often useful to define a function as the least number satisfying some property or relation `P`. If `P` is decidable, we can compute this function simply by trying out all the possible numbers (0,1,2,… in ℕ), until we find the least one satisfying `P`.

>This kind of unbounded search takes us out of the realm of primitive recursive functions. However, if we're only interested in the least number *less than some independently given bound*, we stay primitive recursive.

In other words, and a bit more generally, suppose we have a primitive recursive relation `R(x,z)`. Consider the function that maps `x`, and particularly `y`, to the least `z < y` such that `R(x,z)` holds. This can also be computed by testing whether `R(x,0), R(x,1), …, R(x, y−1)` holds. But how come this is primitive recursive?

If `R(x̅,z)` is a primitive recursive relation, then so is function `m R(x̅,y)` which returns the least `z` (if it exists), less than `y`, such that `R(x̅,z)` holds; otherwise it returns `y`.

We write the function `m R` as `(min z < y) R(x̅,z)`.
