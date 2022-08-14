# Exponentiation

## Preceding operations

Operations that precede exponentiation in the hierarchy of aritmetic operations and in terms of which exponentiation is defined.


## Hyperops






## Exponentiation: properties

  `a^b^c^d^e^f^g^h`

* Exponentiation is right-associative:
  1. 

  a^b^c^d = a^(b^(c^d)) ≠ ((a^b)^c)^d

  (a^b)^c^d^e = (a^b)^(c^d^e) = (a^b)^(c^(d^e))

  (a^b)^c^d^(e^f)^g^h

  attention B:
  ((a^b)^c)^d = a^b^c^d = a^(bcd)


## Exponentiation: definition

* Exponentiation: definition given `mul`/`(*)`

```hs
(^) n 0 = 1             n^0 = 1
(^) n 1 = n             n^1 = n
(^) n (m + 1) = n       n^(m+1) = n * n^m

pow n    0  = 1
pow n    1  = n
pow n (S m) = mul n (pow n m)

n^0 = 1
n^1 = n
n^(m + 1) = nm ∙ n
```

1. n⁰   = 1                     n^0 = 1
2. n¹   = n                     n^1 = n
3. nᵐᐩ¹  = nᵐ∙n¹ = n∙nᵐ      n^(m + 1) = nᵐ∙n

+ nᵃ ⨯ nᵇ = nᵃᐩᵇ
+ nᵃ ÷ nᵇ = nᵃ⁻ᵇ

+ nᵃᐩᵇ    = nᵃ ⨯ nᵇ
+ nᵃ⁻ᵇ    = nᵃ ÷ nᵇ

2. a) n^a ⨯ n^b = n^(a+b)
   b) n^a ⨯ n^b = n^(a+b)

2. a) n^(a+b) = n^a ⨯ n^b
   b) n^(a-b) = n^a ÷ n^b


* nᵃ⁻ᵇ = nᵃ ÷ nᵇ
- n^(a-b) = n^a ∙ n^b

* nᵃᵇ = nᵃ  nᵇ
- n^(a∙b) = n^a + n^b

* (nᵃ)ᵇ = nᵃᵇ
- (n^a)^b = n^(a∙b)


* (nᵃ)ᵇ ≠ n^(aᵇ)
