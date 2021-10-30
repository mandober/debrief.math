# Function fixed points

A fixed point (or "fix point", or most often, "fixpoint") of a function is an input such that the function's value is equal to the input. That is, when an input `x` equals the output `y` of a function `f`, then `x` is f's fixpoint.

The graph of a function `f(x) = y` is a set consisting of ordered pairs `(x,y)` with `x ∈ dom(f)` and `y = f(x) ∈ ran(f)`. Unlike domain and range, a function's codomain cannot be derived from a function's definition alone, but it must be explicitly specified, usually as a function's type signature that is of the general form `f : A -> B`.

```js math
f : A -> B
f x = y

// example of a concrete function:
bar : ℕ -> ℕ
bar x = 10 - x
```

The function `bar` in the example has a single fixpoint at `x = y = 5`.


where `y` is understood to represent the value `f(x)`.

all the fixpoints are easily recognized as beingthe order pairs of the form `(x,x)`. That is, a graph of a function like `f(x)=y` consists of the set of ordered pairs `(x, f(x))`;

where `x = y`, so `(x,x)`.


f you have a function from any set to itself, then a fixpoint of that function is any input that maps to itself. On a standard, graph you can think of these as being values that fall on the line x = y.


In general, deciding whether a function has fixpoints or not can be difficult. So there are many different fixpoint theorems. For example, Brouwer’s fixpoint theorem says that any continuous function from a closed ball into itself in Euclidean space must have a fixpoint. Another, which will be important in a bit, is the Knaster-Tarski theorem, which says that any order-preserving function on a complete lattice has a complete lattice of fixpoints.
