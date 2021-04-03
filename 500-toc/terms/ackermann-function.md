# Ackermann function

https://en.wikipedia.org/wiki/Ackermann_function

In computability theory, the Ackermann function, named after Wilhelm Ackermann, is one of the simplest and earliest-discovered examples of a *total computable function that is not primitive recursive*.

All primitive recursive functions are total and computable, but the Ackermann function illustrates that not all total computable functions are primitive recursive.

After Ackermann's publication of his ternary function, many authors modified it to suit various purposes, so that today "the Ackermann function" may refer to any of numerous variants of the original function. One common version, the binary *Ackermann-Péter function*, is defined as follows for nonnegative integers m and n:

```hs
ack 0 n = n + 1
ack m 0 = ack (m - 1) 1
ack m n = ack (m - 1) (ack m (n - 1))
```

Its value grows rapidly, even for small inputs. For example, `A 4 2` is an integer with 19,729 digits, equivalent to `2⁶⁵⁵³⁶ − 3` or `⁵2 - 3`.


## Sudan function

https://en.wikipedia.org/wiki/Sudan_function

The Sudan function is an example of a function that is recursive, but not primitive recursive. The Sudan function was the first function having this property to be published. It was discovered and published in 1927 by Gabriel Sudan, a Romanian mathematician who was a student of David Hilbert.
