# Course-of-values recursion

https://en.wikipedia.org/wiki/Course-of-values_recursion



Contrary to course-of-values recursion, in primitive recursion the computation of a value of a function requires only the previous value; for example, for a unary primitive recursive function `g` the value of `g(n + 1)` is computed only from `g(n)` and `n`.

[..but to get the value of g(99) you still need g(98) and to get the value of g(98) you still need g(97) and to get the value of g(97) you still need g(96) and to...wtf?! it's not recursion for nothing]

>The factorial is a primitive recursion because it can compute the next value of the function based on the previous value of the function and the current value of the recursive argument.

The factorial is a primitive recursion because it can compute the next value of the function, `(n + 1)!`, based on the current value of the rec arg `n` and the previous value of the function, `n!`.

For example, 
to calculate the next value of fac, `(n + 1)!`, i.e. `5!` 
based on the current value of the rec arg `n`, i.e. `n = 4` 
and the previous value of the function, `n!`, i.e. `4! = 24`.

Thus, to do `(n + 1)! = 5!` 
based on `n = 5` and `(n - 1)! = 4! = 24` 
we do
`(n + 1)! = n ⨯ n!`
i.e. 
`5! = 5 ⨯ 4! = 5 ⨯ 24 = 120`
[sure!, but what about calculating `4!`]
how the hell is this any better or worse than any other recursion?


>On the other hand, the Fibonacci function `Fib(n)`, which returns the nth Fibonacci number, *needs the last two values* of the `Fib` function to compute `Fib(n+2)`.

so whaaat

## Equivalence to primitive recursion

In order to convert a definition by course-of-values recursion into a primitive recursion, an auxiliary (helper) function is used. Suppose that one wants to have
