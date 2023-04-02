# PRF componets

3 initial functions:
- constant
- projection
- successor

2 combinators:
- composition
- primitive recursion

>The set of primitive recursive functions is the smallest set containing the constant, successor and projection functions, and which is closed under composition and primitive recursion.

The set of primitive recursive functions is the set of functions from `ℕⁿ → ℕ`, defined inductively by the following clauses:
1. const is primitive recursive.
2. succ is primitive recursive.
3. proj is primitive recursive.
4. If `f` is a k-ary PRF, and `k` number of n-ary `g` functions are primitive recursive functions, then the composition of `f` with `g`'s is also primitive recursive.
5. If `f` is a `k-1`-ary PRF, and `g` is a `k+1`-ary PRF, then the `k`-ary `h` function defined by primitive recursion from `f` and `g` is aslo primitive recursive.


```
ρ(f,g) = h

f     h     g
--------------
f⁰    h¹    g²
f¹    h²    g³
…
fᵏ⁻¹  hᵏ    gᵏᐩ¹
```
