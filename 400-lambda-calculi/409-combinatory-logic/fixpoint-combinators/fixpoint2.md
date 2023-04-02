# Fixpoint operator


> Y := λf. (λx. f (x x)) (λx. f (x x))    ...the fixpoint operator Y

> Y f = f (Y f)                           ...the fixpoint identity

The fixpoint operator is a function (HOF) that takes a function as an arg and produces the (least) fixpoint of the input function arg.

A function, `f`, has a single formal parameter, `x` (polyadic function are viewed as being curryied), so it takes a single argument and produces a single output `y`, the computation which is, in general, denoted by `f(x) = y`. 

Now, a fixpoint is such an argument, `z`, for which the output is `z` also, the fact denoted by, `f(z) = z`.

The number of fixpoints and the least fixpoint:
* some functions have don't have a fixpoint (for example, `f(x) = x + 1`)
* some fn have several fixpoints in which case the one we're intersted in is the *least fixpoint*; e.g. `f : ℕ -> ℕ`, `f(x) = x`, the identity function has infinite number of fixpoints, but the least one is 0 (0 ∈ ℕ)
* some fn have a single fixpoint, in which case it is vacuously the least.

These are all the proper fixpoints, i.e. these fixpoints are some concrete (numeric) values, like 5 is the fixpoint to the function `f(x) = 10 - 5`.

However, there are fixpoints and there are "fixpoints". In λ-calculus, where the only values are functions, the famous `Y` combinator is said to calculate the fixpoint of any input function argument...sort of. In fact, it seems as if it's a trick because Y doesn't really spits back a "proper" solution. What it actually does is establish a kind of the equality relation. There are equivalent combinators that also satisfy the requested equality relation, but `Y` is the most famous one.

`Y f = f (Y f)`

Namely, `Y` promises to take a function as an arg, `f`, and to produce a value that is the fixpoint of `f`. And this equation (relation), `Y f = f (Y f)` establishes just that.

## Deriving

In general, a mathematical function has the form:

f x = y

and when the fixpoint of the function `f` is fed as its arg, then it has the following form:

f x = x

the input, `x`, is equal to the output, `x` since `x` is the fixpoint of `f`. This also establishes an equality relation - this equation states that the LHS, `f x`, is the same as the RHS, `x`.

Now, we introduce the magical function `fix`, which claims it can find the fixpoint of any input function argument (the input arg is a function since we're genearally studying this in λ-calculus which only has unary functions as values; unary because all functions are curryied):

fix f = x

the output value `x` is the fixpoint of `f`, such that:

f x = x

We now have two related equations, each expressing an equality relation:

x = f x     (1)
x = fix f   (2)

These two equations are related by `f` and `x`, where `f` is a function and `x` is not just any possible argument to `f`, but a very specific one - it is the fixpoint of `f`. Thus:

x = f x            (1)
x = fix f          (2)
----------------------
fix f = f x        (3)

We get (3) by equating the two equation on `x`.

We can now replace the `x` on the RHS in (3), in the expression `f x` with the value of `x` at the RHS of (1), since `x = f x`.

```
  fix f = f    x         [x/fix f]f x
= fix f = f (fix f)
```

and this gets us the equation we wanted to justify, `fix f = f (fix f)`. In lambda calculus `fix` is called `Y` combinator and it has a different, but equivalent, definition:

> Y := λf. (λx. f (x x)) (λx. f (x x))

Both `fix` and `Y` satisfy the fundamental need to keep "producing" the argument function indefinitely. They produce it by forming larger and larger expresion with the function of interest accumulating its copies at the head of the expression - which definitely must be derived to be understood:

```
fix f =    f (fix f)
              └┬──┘
               ├───────────── fix f = f x
              ┌┴┐
fix f =    f (f x)
              └┬┘
               ├───────────── x = fix f
              ┌┴──┐
fix f = f (f (fix f))
```

Every evaluation cycle keeps spawning another `f` at the head of the expression.

> fix f = f (...(f (fix f))...)




## Y combo

It's the same with Y-combo

> Y h = h (Y h) = h (h (Y h)) = h (...h (Y h)...)


```
Y h
= h (Y h)
= h (h (Y h))
= h (h (h (Y h)))
= h (h (h (h (Y h))))
= h (... (h (Y h)...)
```


fac = Y h = h (Y h) = h fac

Y (λf. λn. if (ISZERO n) then (1) else (n * f (n−1)))
