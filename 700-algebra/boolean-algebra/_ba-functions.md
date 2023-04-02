# Boolean functions

* 𝔹 = {0,1}
* by `Bɴᴍ` or `𝔹 (n,m)` we denote the set of Boolean functions `f : 𝔹ⁿ -> 𝔹ᵐ`
* For functions `f ∈ Bⁿ` we have `2ⁿ` different inputs, each of them can be mapped to 2 different values (0 or 1), so
* there are `2^(2ⁿ)` functions in `𝔹ⁿ`
* for n = 1, there are 2^2  =      4 distinct functions in 𝔹₁
* for n = 2, there are 2^4  =     16 distinct functions in 𝔹₂
* for n = 3, there are 2^8  =    256 distinct functions in 𝔹₃
* for n = 4, there are 2^16 = 65,536 distinct functions in 𝔹₄
* for n = 5, there are 2^32          distinct functions in 𝔹₅
* for n = 6, there are 2^64          distinct functions in 𝔹₆

* 𝔹₁ : 𝔹  -> 𝔹 = { ⟘ (00), ¬ (01), id (10), ⟙ (11) }
* 𝔹₂ : 𝔹² -> 𝔹 = { ⟘ (0000), ↑ (0001), ¬<- (0010), …, ⋁ (1110), ⟙ (1111) }

p | ⟘ ¬ i ⟙
--|--------- total 4 = 2^(2¹)
1 | 0 0 1 1
0 | 0 1 0 1

p q | ⟘ ↑ ¬←       ⋁ ⟙
----|-------- … --------
0 0 | 0 0  0       1  1
0 1 | 0 0  0       1  1
1 0 | 0 0  1       1  1
1 1 | 0 1  0       0  1
----|-------------------
no. | 0 1  2   …   e  f

* Let `x¹ = x` and `x⁰ = x'`
* For `a,b,c ∈ 𝔹` we get 8 different functions of type-⋀, namely `(xᵃ ⋀ yᵇ)ᶜ`
*            x ⋁ y = ¬(x ⋀ y)           is of type-⋀
* NAND(xy) = x ↑ y = ¬(x ⋀ y)           is of type-⋀
* NOR(xy)  = x ↓ y = ¬(x ⋁ y) = x ⋀ y   is of type-⋀
* XOR (or parity) is denoted by `x ⊕ y` and `x ⊕ y = 1 <=> x != y`
* EQUIVALENCE is the negation of XOR, `x ≡ y = ¬(x ⊕ y) = 1 ⊕ x ⊕ y`
* `⊕` and `≡` are type-⊕ functions.


(xᵃ ⋀ yᵇ)ᶜ
1. x ⋀ y                        = 1 ⟺ x = y = 1
2. x ⋁ y = ¬(¬x ⋀ ¬y)           = 0 ⟺ x = y = 0
3. x ↑ y = ¬( x ⋀  y)           = 0 ⟺ x = y = 1
4. x ↓ y = ¬( x ⋁  y)  = x ⋀ y  = 1 ⟺ x = y = 0
5. x ⊕ y = (x ⋁ y) ⋀ ¬(x ⋀ y)   = 1 ⟺ x ≠ y
6. x ≡ y = ¬(x ⊕ y)            = 1 ⟺ x = y
7. 0
8. 1

a ⊕ a =  0
1 ⊕ a = ¬a
0 ⊕ a =  a

¬a = 1 ⊕ a
¬(x ⊕ y) = 1 ⊕ (x ⊕ y) = 1 ⊕ x ⊕ y

## Laws of computation

let `x`, `y` and `z` be Boolean variables

1. Calculations with constants:
  x ⋁ 0 = x
  x ⋁ 1 = 1
  x ⋀ 0 = 0
  x ⋀ 1 = x
  x ⊕ 0 = x
  x ⊕ 1 = ¬x

2. ⋁, ⋀ and ⊕ are associative and commutative

3. (⋁,⋀), (⋀,⋁) and (⊕,⋀) are distributive
  `x ⋀ (y ⊕ z) = (x ⋀ y) ⊕ (x ⋀ z)`

4. Laws of simplification:
  x ⋁ x = x
  x ⋁ ¬x = 1
  x ⋀ x = x
  x ⋀ ¬x = 0
  x ⊕ x = 0
  x ⊕ ¬x = 1
  x ⋁ (x ⋀ y) = x
  x ⋀ (x ⋁ y) = x

5. De Morgan laws:
  ¬(x ⋁ y) = ¬x ⋀ ¬y
  ¬(x ⋀ y) = ¬x ⋁ ¬y


These laws of computation remain correct if we replace Boolean variables by Boolean functions. By induction we may generalize the laws of deMorgan to `n` variables. We remark that `(𝔹, ⊕, ⋀)` is the Galois field `ℤ₂`. Instead of `x ⋀ y` we often write only `xy`. `⋀` has higher precedence to `⋁`.
