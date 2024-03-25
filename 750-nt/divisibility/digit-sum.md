# Digit sum

https://en.wikipedia.org/wiki/Digit_sum

The **digit sum** of a natural number in a given number base is the sum of all its digits.

For example, the digit sum of the decimal number 9045 would be 9+0+4+5=18.

## Definition

Let `n` be a natural number. We define the digit sum for base `b > 1` as the function `Fʙ : ℕ → ℕ` defined as:

`Fʙ(n) = Σ {i=0..k-1} dᵢ`

where `k = ⌊logʙ n⌋ + 1` is the number of digits in the number in base `b`, and `dᵢ` is the value of each digit of the number:

`dᵢ = (n mod bⁱᐩ¹ - n mod bⁱ) / bⁱ`

For example, in base 10, the digit sum of 84001 is

```js
n = 84001
b = 10

dᵢ = (n mod bⁱᐩ¹ - n mod bⁱ) / bⁱ

i=0: d₀ = (84001 mod 10¹ - 84001 mod 10⁰) / 10⁰
        = (84001 mod 10 - 84001 mod 1)
        = (1 - 0)
        = 1

i=1: d₁ = (84001 mod 10² - 84001 mod 10¹) / 10¹
        = (84001 mod 100 - 84001 mod 10) / 10
        = (1 - 1) / 10
        = 0 / 10
        = 0

i=2: d₂ = (84001 mod 10³ - 84001 mod 10²) / 10²
        = (84001 mod 1000 - 84001 mod 100) / 100
        = (84001 mod 1000 - 84001 mod 100) / 100
        = (1 - 1) / 100
        = 0

i=3: d₃ = (84001 mod 10⁴ - 84001 mod 10³) / 10³
        = (84001 mod 10000 - 84001 mod 1000) / 1000
        = (4001 - 1) / 1000
        = 4000 / 1000
        = 4

i=4: d₄ = (84001 mod 10⁵ - 84001 mod 10⁴) / 10⁴
        = (84001 mod 100000 - 84001 mod 10000) / 10000
        = (84001 - 4001) / 10000
        = 80000 / 10000
        = 8


Fʙ(n) = Σ {i=0..k-1} dᵢ

F₁₀(84001) = Σ 1+0+0+4+8 = 13
```

For any two bases `2 <= b₁ <= b₂` and for sufficiently large `n ∈ ℕ`:

`Σ {k=0..n} Fʙ₁(k) < Σ {k=0..n} Fʙ₂(k)`

The sum of the base 10 digits of ℕ is given by the sequence id A007953 in the OEIS (On-Line Encyclopedia of Integer Sequences). Borwein & Borwein (1992) use the generating function of this integer sequence (and of the analogous sequence for binary digit sums) to derive several rapidly converging series with rational and transcendental sums.

## Extension to negative integers

The digit sum can be extended to the negative integers by use of a signed-digit representation to represent each integer.

## Applications

The concept of a decimal digit sum is closely related to, but not the same as, *the digital root*, which is the result of repeatedly applying the digit sum operation until the remaining value is only a single digit. The digital root of any non-zero integer will be a number in the range 1 to 9, whereas the digit sum can take any value. 

Digit sums and digital roots can be used for quick divisibility tests: a natural number is divisible by 3 or 9 iff its digit sum (or digital root) is divisible by 3 or 9, respectively.

For divisibility by 9, this test is called *the rule of nines* and is the basis of *the casting out nines* technique for checking calculations.

Digit sums are also a common ingredient in *the checksum algorithms* to check the arithmetic operations of early computers.

Earlier, in an era of hand calculation, Edgeworth (1888) suggested using sums of 50 digits taken from mathematical tables of logarithms as a form of random number generation; if one assumes that each digit is random, then by *the central limit theorem*, these digit sums will have a random distribution closely approximating a *Gaussian distribution*.

The digit sum of the binary representation of a number is known as its *Hamming weight* or population count. Algorithms for performing this operation have been studied, and it has been included as a builtin operation in some computer architectures and PLs. These operations are used in computing applications including cryptography, coding theory and computer chess.

*Harshad numbers* are defined in terms of divisibility by their digit sums, and *Smith numbers* are defined by the equality of their digit sums with the digit sums of their *prime factorizations*.
