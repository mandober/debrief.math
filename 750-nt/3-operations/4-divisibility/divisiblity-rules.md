# Divisibility rules

## Divisibility by 2

The numbers divisible by 2 are even in decimal number system. In other bases, check if the least significant digit (lsd) is even.

## Divisibility by 3

- sum of digits is divisible by 3 (works because 9 is divisible by 3)
- `3|n` is the *digit sum* of `n` is divisible by 3
- 345 → 3+4+5 = 12 → 1+2 = 3, so 3|345, 345/3 = 115

Subtract the count of the digits 2, 5, 8 in the number from the count of the digits 1, 4, 7 in the number. The result must be divisible by 3. For example, this big number 16,499,205,854,376 has 4 of the digits {1, 4, 7} and 4 of the digits {2, 5, 8}; since the difference is 0 (4-4=0) and 0 is a multiple of 3, the number is divisible by 3.

Subtracting twice the last digit from the rest gives a multiple of 3. Works because 21 is divisible by 3; e.g. 405: 40−5×2 = 40−10 = 30 = 3×10.


## Divisibility by 4

- last 2 digits in decimal are F = {00, 04, 08, 12, 16, 20}
- F ± n20, and +/- n20 (± multiples of 20)
  - 00, 04, 08, 12, 16, 20
  - 20, 24, 28, 32, 36, 40
  - 40, 44, 48, 52, 56, 60
  - 60, 64, 68, 72, 76, 80
  - 80, 84, 88, 92, 96, 100
- -12=8-20, 4|⁻12
- -384=16-400, 4|⁻384
- 252 = 20×12 + 12 = 240 (ignore multiples of 20), so 12 means 4|252


## Divisibility by 9

- `9|n` is the *digit sum* of `n` is divisible by 9
- 288 → 18 → 9, 9|288


## Divisibility by 10 in any base

"General" divisibility rule: to check divisibility by 10 in decimal numeral system, you only have to check if the last digit is 0. So, to check if `d|n`, express `n` in the base `d`, then check if the last digit is 0.

- Does `13|26`? 26 in base-13 is `20₁₃`, so, yes, 13 divides 26.
- Does `128|12454028`? `100|BE088C`, so no, it doesn't

- dec 16|256 -> hex 10|100 ✔

11₁₀ = 14₇ = 13₈

## Divisibility by 2ⁿ or 5ⁿ

To test the divisibility of a number by a `2ⁿ` or `5ⁿ`, where `n ∈ ℕ`, we only need to look at the last `n` digits of the number.
- 2² ∣ 8764, 4 ∣ 64 ⇒ 4 ∣ 8764 (8764/4 = 2191)
- 2³ ∣ 9112, 4 ∣ 112 ⇒ 4 ∣ 12 ✔ thus 4 ∣ 9112 (9112/4 = 2278)
- 5² ∣ 2525
- 5³ ⫮ 32156185 ✘

## Divisibility by prime factors

To test divisibility by any number expressed as the product of prime factors `aᵏ bʲ cⁿ`, we can separately test for divisibility by each prime to its appropriate power.

2³ 3² 13 = 8 × 9 × 13 = 936

For example, testing divisibility by 24 (24 = 8×3 = 2³×3) is equivalent to testing divisibility by 8 (2³) and 3 simultaneously, thus we need only show divisibility by 8 and by 3 to prove divisibility by 24.


## Links

- https://en.wikipedia.org/wiki/Divisibility_rule
- http://www.numberbases.com/divisibilitytest.html
- https://teresamccullough.wordpress.com/2011/05/25/divisibility-rules-for-numbers-in-bases-other-than-ten/
- http://mathforum.org/library/drmath/view/72740.html
- https://math.stackexchange.com/questions/52778/divisibility-rules-and-congruences
- https://math.stackexchange.com/questions/148784/divisibility-rules-for-bases-other-than-10
