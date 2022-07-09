# Computable numbers

https://en.wikipedia.org/wiki/Computable_number

**Computable numbers** are the real numbers that can be computed to within any desired precision by a terminating algorithm. Equivalent definitions can be given using μ-recursive functions, Turing machines, or λ-calculus as the formal representation of those algorithms.

Computable numbers are also known as the *recursive numbers*, *effective numbers*, *computable reals*, *recursive reals*.

The computable numbers form a *real closed field* and can be used in the place of real numbers for many, but not all, mathematical purposes.

## Informal definition

Informal definition using a Turing machine as example.

Marvin Minsky defines the numbers to be computed in a manner similar to those defined by Alan Turing in 1936, i.e. as sequences of digits interpreted as decimal fractions between 0 and 1.

A computable number is one for which there is a Turing machine which, given `n` on its initial tape, terminates with the `n`th digit of that number (encoded on its tape).

The key notions in the definition are
1. that some `n` is specified at the start
2. for any `n` the computation only takes a finite number of steps, after which the machine produces the desired output and terminates.

An alternate form of (2), that the machine successively prints all `n` of the digits on its tape, halting after printing the `n`th digit, emphasizes Minsky's observation:
3. that by use of a Turing machine, a finite definition (in the form of the machine's table) is being used to define what is a potentially infinite string of decimal digits.

This is however not the modern definition which only requires the result be accurate to within any given accuracy. The informal definition above is subject to a *rounding problem called the table-maker's dilemma* whereas the modern definition is not.
