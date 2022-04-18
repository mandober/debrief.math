# Algebraic Data Types

https://bartoszmilewski.com/2015/01/13/simple-algebraic-data-types/
https://codewords.recurse.com/issues/three/algebra-and-calculus-of-algebraic-data-types

0 ≅ Void
1 ≅ ()
2 ≅ Bool
3 ≅ Ordering
(+) sum-type
(×) product
a type-var
L type-ctor
C data-ctor

- product: `a × b` ≅ `Pair   a b` ≅ `(a,b)` ≅ `And a b` ≅ `a ∧ b`
- sumtype: `a + b` ≅ `Either a b` ≅ `(a|b)` ≅ `Or  a b` ≅ `a ∨ b`

a -> b -> c ≡ a -> (b -> c)

a -> b ≅ bᵃ


* Pairs

`(a, b) -> c` ≅ `a -> b -> c`     CURRY/UNCURRY

`a -> (b * c)` ≅ `(a -> b * a -> c)`  a -> (b, c) ≅ (a -> b, a -> c)

a -> (b + c) ≅ (a -> b + a -> c)

* Arithmetics

(a * b)ˢ = aˢ * bˢ    (a * b) ^ n = a ^ n * b ^ n

m1 a b n = (a ^ n) * (b ^ n)
m1 :: (Integral b, Num a) => a -> a -> b -> a

m2 a b n = (a * b) ^ n
m2 :: (Integral b, Num a) => a -> a -> b -> a
