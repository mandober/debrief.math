# Function notion

In math, the most general function form is denoted by `f(x) = y`. This could be considered a *named function* form since `f` represents the functions name.

Math also has a notation for anonymous functions, often called mapping instead, of the form `x ⟼ y`.

Also, math recognizes a piece-wise form for function definition, often used for defining recursive functions that have to deal with several (at least two) cases.

```
       ⎧ 1                        if n = 1
F(n) = ⎨ 1                        if n = 2
       ⎩ F(n-1) + F(n-2)          if n > 2
```

Math doesn't really have a defined notation for function application. A function defined as `f(x) = 10 - x` may be called as `f(5) = 10 - 5 = 5`, but any more complicated function call will look strange (if correct), especially the calls of curryied functions, e.g. `f(5)(8)`. Probably something unseen in math is a (completely legitimate) form for defining an anonymous function and immediately applying it to some args, e.g. `(x ⟼ y ⟼ x + y)(5)(8)`.
