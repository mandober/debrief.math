# Function :: Function notation

```js

// function definition: defining a brand new function
f(x) = 3x³ + 2x² + 5x - 1
// function application: calling the function with an arg
f(-1) = 3(-1)³ + 2(-1)² + 5(-1) - 1 = -3 + 2 - 5 - 1 = -7

// function definition: defining identity function
id(x) = x
// in fact identity is one of the builtins, available as
1ₓ
// or
idₓ

// function definition: defining a function 'g'
g(x) = x²
// referring to a previously defined function 'g' by name
g
// referring to a previously defined fn 'f'; this is an alterantive
// notation (alt notation) which is technically incorrect, but typical:
g(x)
// referring to a previously defined function 'f' by definition
x²
// referring to the first derivative of 'g' by name:
g′
// referring to the first derivative of 'g' by name:

// a previously defined function 'f' by definition
```

## Referring to a function

Referencing a (previously defined) function named `f`:
- reference by name: `f`
- reference by prototype: `f(x)`, `g(x, y)`
- reference by definition: `x²` (if `f` was indeed defined as `f(x) = x²`)

A defined function should be referred to by name, e.g. just by `f`, there is no need to use the technically incorrect form `f(x)`. It is incorrect because `f(x)` denotes function application, so writing `f(x)` may be used for exactly that - to direct attention to the function application. However, functions should be referenced by their name. Writing just `f` is sufficient to identify the function `f`. However, too often people use the form `f(x)` for no good reason, so there's that. Usually, this does not introduce ambiguity, but why use the longer form? There's no ambiguity since, in math, function application is denoted by immediately performing the substitution of the parameter (like `x`) with the argument (such as `5`), e.g. if the function `g` is defined as `g(x) = 4x² + 6x² + x - 4`, then applying it to the argument -1 is denoted as: `g(-1) = 4(-1)² + 6(-1)² + (-1) - 4`.

An alternative notation is to refer to a function by its definition - writing only the function body; e.g. a function `f(x) = x²` is referred to as `x²`. This can be useful as it allows *anonymous functions*.

Another way to define an *anonymous function* is to use the arrow convention, typically used to emphasize a map (mapping), `x ⟼ x + 1`. This is an anonymous function and de facto *lambda abstraction*; in lambda calculus we'd write it as `λx.x+1`. Applying these anonymous functions cannot be done without repeating the entire definition - that's why the application typically follows immediately after definition, `(x ⟼ x + 1)(5) = 5 + 1`.

## Function types

The type of function is stated separately for named functions. First the function type is stated, e.g. `f : ℕ → ℕ`, followed by the function definition, `f(x) = x²`. This immediately shows that a definition alone is not enough to distinguish functions; many functions are defined as `f(x) = x²`, but they are all distinct depending on their type; i.e. the function with type `f : ℕ → ℕ` is different from one with type `f : ℕ → ℝ`, despite the same definition.

For *arrow functions*, it is possible to state the type inline (as one-liner), e.g. `x ⟼ x² : ℝ → ℝ`. 

As well as to apply it: `(x ⟼ x³ : ℝ → ℝ)(-1) = (-1)³ = -1`.
