# Division algorithm

https://en.wikipedia.org/wiki/Division_algorithm

A division algorithm is an algorithm which, given two integers `N` and `D`, computes their quotient and remainder (i.e. the result of Euclidean division).

Division algorithms fall into two main categories: slow and fast division. Some division algorithms are applied by hand, while others are employed by digital circuit designs and software.

* Division algorithms
  * slow division
    - restoring division
    - non-performing restoring division
    - non-restoring division
    - SRT division
  * fast division
    - Newton-Raphson division algorithm
    - Goldschmidt division algorithms

*Slow division algorithms* produce one digit of the final quotient per iteration. Examples of slow division include restoring, non-performing restoring, non-restoring, and SRT division.

*Fast division algorithms* start with a close approximation to the final quotient and produce twice as many digits of the final quotient on each iteration. Newton-Raphson and Goldschmidt algorithms fall into this category.

Variants of these algorithms allow using fast multiplication algorithms. It results that, for large integers, the computer time needed for a division is the same, up to a constant factor, as the time needed for a multiplication, whichever multiplication algorithm is used.

Discussion refers to the form `N / D = (Q, R)` where
- N = numerator (dividend)
- D = denominator (divisor)
- Q = quotient
- R = remainder
