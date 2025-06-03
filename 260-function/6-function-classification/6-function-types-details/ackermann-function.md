# Ackermann function

https://en.wikipedia.org/wiki/Ackermann_function

In computability theory, the Ackermann function, named after Wilhelm Ackermann, is one of the simplest and earliest-discovered examples of a *total computable function that is not primitive recursive*.

All primitive recursive functions are total and computable, but the Ackermann function illustrates that not all total computable functions are primitive recursive.

After Ackermann's publication of his function (which had three non-negative integer arguments), many authors modified it to suit various purposes, so that today "the Ackermann function" may refer to any of numerous variants of the original function. One common version is the two-argument *Ackermann-Péter function* developed by Rózsa Péter and Raphael Robinson. This function is defined from the recurrence relation

    A(S m, S n) = A(m, A(S m, n))

with appropriate base cases. Its value grows very rapidly; for example, A(4,2) results in 2^65536 − 3, an integer with 19,729 decimal digits.

## Contents

- 1. History
- 2. Definition
  - 2.1. Definition: as m-ary function
  - 2.2. Definition: as iterated 1-ary function
- 3. Computation
  - 3.1. TRS, based on 2-ary function
  - 3.2. TRS, based on iterated 1-ary function
  - 3.3. TRS, based on hyperoperators
  - 3.4. Huge numbers
- 4. Table of values
- 5. Properties
  - 5.1. General remarks
  - 5.2. Not primitive recursive
- 6. Inverse
- 7. Usage
  - 7.1. In computational complexity
  - 7.2. In discrete geometry
  - 7.3. As a benchmark
- 8. See also

## History

In the late 1920s, the mathematicians Gabriel Sudan and Wilhelm Ackermann, students of David Hilbert, were studying the foundations of computation. Both Sudan and Ackermann are credited with discovering total computable functions that are not primitive recursive.

Sudan published the lesser-known *Sudan function*, then shortly afterwards and independently, in 1928, Ackermann published his function `φ`. Ackermann's ternary function, `φ(m,n,p)`, is defined such that for `p=[0,1,2]` it produces the basic operations of addition, multiplication, and exponentiation as:

    φ(m,n,0) = m + n
    φ(m,n,1) = m × n
    φ(m,n,2) = mⁿ

and for `p > 2` it extends these basic operations to hyperoperations:

    φ(m,n,3) = m[4](n+1)
    φ(m,n,p) = ⪆ m[p+1](n+1)    for p > 3

Aside from its historic role as a "total computable but not primitive recursive" function, Ackermann's original function is seen to extend the basic arithmetic operations, although not as seamlessly as do variants of Ackermann's function that are specifically designed for that purpose, such as *Goodstein's hyperoperation sequence*.

Rózsa Péter and Raphael Robinson later developed a binary version of the Ackermann function that became preferred by almost all authors.

The generalized hyperoperation sequence, e.g.

    G(m,a,b) = a[m]b

is a version of the Ackermann function as well.

In 1963 R.C. Buck based an intuitive two-variable (with parameter order reversed) variant `F` on the hyperoperation sequence:

    F(m,n) = 2[m]n

Compared to most other versions, Buck's function has no unessential offsets:

```
F(0,n) = 2[0]n = n + 1
F(1,n) = 2[1]n = 2 + n
F(2,n) = 2[2]n = 2n
F(3,n) = 2[3]n = 2ⁿ
F(4,n) = 2[4]n = ⁿ2 = 2^2^2^…^2 = 2 ↑ 4
…
```

Many other versions of Ackermann function have been investigated.


## Definition

### Definition as m-ary function

Ackermann's original three-argument function `φ(m,n,p)` is defined recursively as follows for nonnegative integers, `m,n,p ∈ ℕ`

```c
φ(m, n, 0) = m + n
φ(m, 0, 1) = 0
φ(m, 0, 2) = 1
φ(m, 0, p) = m                             (for p > 2)
φ(m, n, p) = φ(m, φ(m, n−1, p), p−1)       (for p > 0, n > 0)
```

```hs
ack :: Nat -> Nat -> Nat -> Nat
ack m n 0 = m + n
ack m n 1 = 0
ack m n 2 = 1
ack m 0 p = m
ack m (S n) (S p) = ack m (ack m n (S p)) p
```
