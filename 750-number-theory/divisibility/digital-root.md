# Digital root

https://en.wikipedia.org/wiki/Digital_root

The **digital root** or a **repeated digital sum** of a natural number in a given radix is the (single digit) value obtained by an iterative process of summing digits, until a single-digit number is reached.

D(dₙ…d₂d₁d₀) = Σ {i=0..n} dᵢ

For example, in base 10, the digital root of the number 12345 is 6 (since 1+2+3+4+5=15, 1+5=6).

If `n ∈ ℕ` then the digital root of `n` is `r`, i.e. the remainder of the integer division of `n` by `9`, `n ÷ 9 = (q,r)`.

In base 10, this is equivalent to taking the remainder upon division by 9 (except when the digital root is 9, where the remainder upon division by 9 will be 0).

`D(n) = ∀n(n ∈ ℕ -> n % 9)`

The divisor is 9 coz it is the largest 10-base numeral.

```js
12345 =
1 ⨯ 10000 = 1 ⨯ (1 + 9999) = 1⨯1 + 1⨯9999 = 1 + 1⨯9999
2 ⨯  1000 = 2 ⨯ (1 +  999) = 2⨯1 + 2⨯999  = 2 + 2⨯999
3 ⨯   100 = 3 ⨯ (1 +   99) = 3⨯1 + 3⨯99   = 3 + 3⨯99
4 ⨯    10 = 4 ⨯ (1 +    9) = 4⨯1 + 4⨯9    = 4 + 4⨯9
5 ⨯     1 = 5 ⨯ (1 +    0) = 5⨯1 + 5⨯0    = 5 + 0
                                            └┬┘  └─┬──┘
                        the sum of these is 15     │
                                                   │
                              these are obviously divisible by 9
```

If the digital root of a natural number `n` is divisible by 9, then `n` is also.

`9|D(n) ⇔ 9|n` where `n` consists of digits `dₙ…d₁d₀` and `D(n) = dₙ+…+d₁+d₀`


`9|(dₙ…d₁d₀)₁₀ ⇔ 9|dₙ+…+d₁+d₀`



Even if the immediate sum of the digits (without iterating toward the digital root) of a natural number `n` is divisible by 9, then `n` is also.

`9|76284 ⇔ 9|7+6+2+8+4 ⇔ 9|27 ⇔ 9|2+7 ⇔ 9|9` which is true.

If you can tell immediately after summing the digits of a number whether it is divisible by 9, then there's no need to iterate the process further (toward the digtal root).

D(76284): 7+6+2+8+4 = 27, 2+7 = 9, so D(76284) = 9


## Formal definition

Let `n ∈ ℕ` and the base `ʙ > 1`. We define the digit sum `Fʙ = ℕ -> ℕ` by

`Fʙ(n) = Σ {i=0..k-1} dᵢ` where

`k = ⌊logʙ n⌋ + 1` is the number of digits of a number in base `ʙ`, and

`dᵢ = 1/ʙᵢ (n mod ʙⁱᐩ¹ - n mod ʙⁱ)` is the value of each digit of the number.

A number `n ∈ ℕ` is a digital root if it's a fixpoint of the function `Fʙ`.
