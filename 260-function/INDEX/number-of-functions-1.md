# Number of functions

>Total number of k-ary functions, `f : Aᵏ -> B`, is `b^(a^k) = b^a^k = b^aᵏ`

where `a = |A|` and `b = |B|`.

```
fᵏ : aᵏ -> b
   = a^k → b
   = b^(a^k)
   = b^a^k
```


## Total number of surjective functions
https://www.geeksforgeeks.org/total-number-possible-functions/


## Total number of k-ary Boolean functions

http://valjok.blogspot.com/2014/05/how-many-functions-of-m-variables-can.html

For example, the total number of k-ary Boolean functions

|fᵏ| = b^(a^k) = 2^(2^k)

```
fᵏ : 𝔹ᵏ -> 𝔹
fᵏ = 2ᵏ -> 2
   = 2^k → 2
   = 2^(2^k)
   = 2^2^k
----------------------------------------------------------------
k = 0

f⁰ = 2⁰ -> 2
   = 2^2^0
   = 2^1
   = 2
----------------------------------------------------------------
k = 1

f¹ = 2¹ -> 2
   = 2^2^1
   = 2^2
   = 4        = 2^2 (previous result with k=0 squared)
----------------------------------------------------------------
k = 2

f² = 2² -> 2
   = 2^2^2
   = 2^4
   = 16       = 4^2 (previous result with k=1 squared)
----------------------------------------------------------------
k = 3

f³ = 2³ -> 2
   = 2^2^3
   = 2^8
   = 256      = 16^2 (previous result with k=2 squared)
              =  4^4
              =  2^8
----------------------------------------------------------------
k = 4

f⁴ = 2⁴ -> 2
   = 2^2^4
   = 2^16     = (2^2^3)^2
              = (2^8)^2
              = 256^2 (previous result with k=3 squared)
              = 65,536
----------------------------------------------------------------
etc.
```


## Details

The total number of unary functions betwen two sets `A` and `B` is `nᵐ`, provided `m = |A|` and `n = |B|`.

The total number of `k`-ary functions betwen sets `A` and `B` is `(nᵐ)ᵏ`.

`(nᵐ)ᵏ = nᵐᵏ`

**Note**: exponentiation is right-associative, `n^m^k` = `n^(m^k)` ≠ (n^m)^k



`(A ⨯ A ⨯ A) -> B` ≅ `A -> (A -> (A -> B))`

```hs
-- k = 3, n = |A| = 2, m = |B| = 2
(A ⨯ A ⨯ A) -> B  ≅  A -> (A -> (A -> B))
(n ⨯ n ⨯ n) -> m  =  n -> (n -> (n -> m))
(2 ⨯ 2 ⨯ 2) -> 2  =  2 -> (2 -> (2 -> 2))
          8 -> 2  =  2 -> (2 -> (2²))
          8 -> 2  =  2 -> (4²)
              2⁸  =  16²
              256 = 256

-- k = 3
(A ⨯ A ⨯ A) -> B  ≅  A -> (A -> (A -> B))
(n ⨯ n ⨯ n) -> m  = n -> (n -> (n -> m))
    m^(n ⨯ n ⨯ n) = ((m^n)^n)^n
             mⁿⁿⁿ = ((mⁿ)ⁿ)ⁿ
           m^(n³) = m^(n³)
              mⁿ³ = m³ⁿ


(m^n)^k ≠ m^(n^k)
(2^2)^2 = 2^(2^2)  the only exception!
    4^2 = 2^4
     16 = 16

(m^n)^k ≠ m^(n^k)
(2^2)^3 ≠ 2^(2^3)
    4^3 ≠ 2^8
    2^6 ≠ 2^8

(m^n)^k ≠ m^(n^k)
(2^2)^4 ≠ 2^(2^4)
    4^4 ≠ 2^16
    2^8 ≠ 2^16


(mⁿ)ᵏ ≠ m^(nᵏ)
(mⁿ)ᵏ = mⁿᵏ
(m^n)ᵏ = m^(nk)

(mⁿ)ᵏ ≠ m^(nᵏ)

```


fᵏ : Aᵏ -> B
m = |A|
n = |B|
k - arity

>Total number of k-ary functions: `m^(n^k) = m^(nᵏ)` ≠ `(mⁿ)ᵏ = mⁿᵏ`
