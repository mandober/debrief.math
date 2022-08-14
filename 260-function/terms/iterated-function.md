# Iterated function

https://en.wikipedia.org/wiki/Iterated_function

An **iterated function** `f : X → X` is the result of composing another function `f' : X → X` with itself a certain number of times.

The composition of a function with itself, a certain number of times, is called *folding a function*; if the number of iterations is `n`, it's an *n-fold*.

The process of repeatedly applying a function (to its result) is called *iteration*, and the iteration is usually managed by a higher-order function that takes two arguments: the function to iterate, and an initial argument. The result of the first iteration is the application of the supplied function to the argument. That result is then fed back as a new input argument allowing the process to proceed.

```hs
-- makes an infinite list
iterate :: forall a. (a -> a) -> a -> [a]
iterate f x = x : iterate f (f x)
```
