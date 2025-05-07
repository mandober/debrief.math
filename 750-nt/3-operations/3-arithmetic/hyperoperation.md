1# Hyperoperation

https://en.wikipedia.org/wiki/Hyperoperation

**Hyperoperation** is a concept in arithmetic for operations that are based on iteration and which follow exponentiation.

Taking the *successor* operation as the base case hyperoperation (hyper-0), the *addition* (hyper-1) of `m + n` may be understood as iterating the successor operation `n` times over `m`, `(… (S (S (S m))))`, i.e. applying the `S` function `n` times with `m` as the initial value. *Multiplication* (hyper-2), is then iterated addition since `m∙n` represents adding up `n` copies of `m` as `m + m + … + m`. And *exponentiation* (hyper-3) is iterated multiplication, since `mⁿ` means multiplying `n` copies of `m` as `m ∙ … ∙ m`.

Continuing with this process, the next operation, *tetration*, is the iterated exponentiation: `ⁿm` means exponentiation of `n` copies of `m`, as `m^m^…^m`, and respecting the right-associativity of exponentiation, `m^(…(m^(m^m)))`.

**The hyperoperation sequence** is an infinite sequence of arithmetic operations, called hyperoperations in this context, each of which is based on the iterated application of the previous hyperoperation, except the successor operation which serves as the base case.

The hyperoperation sequence starts with a unary operation of successor (n = 0) as hyper-0, and continues with the binary operations of addition (n = 1) as hyper-1, multiplication (n = 2) as hyper-2, exponentiation (n = 3) as hyper-3, tetration (n = 4) as hyper-4, and so on.

Sequences similar to the hyperoperation sequence have historically been referred to by many names, including: the ternary Ackermann function, the Ackermann hierarchy, the Grzegorczyk hierarchy (which is more general), Goodstein's version of the Ackermann function, operation of the nth grade, `z-fold` iterated exponentiation of `x` with `y`, arrow operations, reihenalgebra, hyper-n.

After the first four hyperoperations (which are actually the usual arithmetical operations of successor, addition, multiplication and exponentiation), the sequence is extended keeping the *right-associativity* of the exponentiation, with each successive hyperoperation defined in terms of the previous one (with successor as the base case).

For the operations after exponentiation, the nth member of this sequence is named by Reuben Goodstein after the Greek prefix of `n` suffixed with "-ation" (from "iteration").

The hyperoperation sequence:
0. successor      (n = 0) as hyper-0
1. addition       (n = 1) as hyper-1
2. multiplication (n = 2) as hyper-2
3. exponentiation (n = 3) as hyper-3, `m ↑  n`, `mⁿ`
4. tetration      (n = 4) as hyper-4, `m ↑² n`, `ⁿm`
5. pentation      (n = 5) as hyper-5, `m ↑³ n`, `m ↑↑↑ n`
6. hexation       (n = 6) as hyper-6, `m ↑⁴ n`, `m ↑↑↑↑ n`

and so on.

Each hyper-`n` operation (after multiplication) may be written in *Knuth's up-arrow notation* as `n − 2` separate arrows, or one arrow with `n − 2` as the exponent, i.e. `↑ⁿ⁻²`.

Each hyperoperation may be understood recursively in terms of the previous one. The definition of the first four elementary operations is as usual, then the tetration, `↑↑`, is defined in term of exponentiation, `↑`, as:

```js
// 1. Addition, m+n
m +   0  = m
m + S(n) = S (m + n)

// 2. Multiplication, m∙n
m ⨯   0  = 0
m ⨯ S(n) = m + (m ⨯ n)

// 3. Exponentiation, m^n = m ↑¹ n
m ↑¹   0  = 1
m ↑¹ S(n) = m * (m ↑¹ n)

// 4. Tetration, m ↑² n
m ↑²   0  = 1
m ↑² S(n) = m ↑¹ (m ↑² n)

// 5. Pentation, , m ↑³ n
m ↑³   0  = 1
m ↑³ S(n) = m ↑² (m ↑³ n)
```

The hyperops after the exponentiation follow exponentiation's behaviour:
- the identity is `1`
- they are right-associative

```js
// ↑ᵏ
m ↑ᵏ   0  = 1
m ↑ᵏ S(n) = m ↑ᵏ⁻¹ (m ↑ᵏ n)
// or
m ↑ᵏ 0  = 1
m ↑ᵏ n = m ↑ᵏ⁻¹ (m ↑ᵏ n - 1)

// hyper-k
hyperᵏ m   0  = 1
hyperᵏ m S(n) = hyperᵏ⁻¹ m (hyperᵏ m n)
// or
hyperᵏ m 0 = 1
hyperᵏ m n = hyperᵏ⁻¹ m (hyperᵏ m (n - 1))
```
