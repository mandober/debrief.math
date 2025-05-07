# Decimal fractions

https://en.wikipedia.org/wiki/Decimal_fractions

https://encyclopediaofmath.org/wiki/Decimal_fraction

**Decimal fractions** (sometimes called decimal numbers, especially in contexts involving explicit fractions) are the rational numbers that may be expressed as a fraction whose denominator is a power of ten. 

For example, these decimal expressions can be expressed as decimal fractions:
- 0.8     =      8/10     =  80000/100000 =     0.8e5 ÷ e5
- 9.79    =    979/100    = 979000/100000 =    9.79e5 ÷ e5
- 4.893   =   4893/1000   = 489300/100000 =   4.893e5 ÷ e5
- 1.6182  =  16182/10000  = 161820/100000 =  1.6182e5 ÷ e5
- 3.14159 = 314159/100000 = 314159/100000 = 3.14159e5 ÷ e5

An example of a fraction that cannot be represented by a decimal expression (with a finite number of digits) is 1/3⁠ because 3 is not a power of 10.

More generally, a decimal with `n` digits after the radix point represents the fraction with denominator `10n`, whose numerator is the integer obtained by removing the separator.

It follows that a number is a decimal fraction iff it has a *finite decimal representation*.

Expressed as fully *reduced fractions*, the decimal numbers are those whose denominator is a product of a power of 2 and a power of 5. Thus the smallest denominators of decimal numbers are
- 1  = 2⁰ × 5⁰
- 2  = 2¹ × 5⁰
- 4  = 2² × 5⁰     5 = 2⁰ × 5¹
- 8  = 2³ × 5⁰    10 = 2¹ × 5¹
- 16 = 2⁴ × 5⁰    20 = 2² × 5¹
- 32 = 2⁵ × 5⁰    25 = 2⁰ × 5²
- etc


## Approximation using decimal numbers

Decimal numerals do not allow an exact representation for all real numbers. Nevertheless, they allow approximating every real number with any desired accuracy, e.g. the decimal 3.14159 approximates π, being less than 10⁻⁵ off.

More precisely, for every real number `x` and every positive integer `n`, there are two decimals `L` and `u` with at most `n` digits after the decimal mark such that `L ≤ x ≤ u` and `(u − L) = 10⁻ⁿ`.

Numbers are very often obtained as the result of measurement. As measurements are subject to measurement uncertainty with a known upper bound, the result of a measurement is well-represented by a decimal with `n` digits after the decimal mark, as soon as the absolute measurement error is bounded from above by `10⁻ⁿ`.

In practice, measurement results are often given with a certain number of digits after the decimal point, which indicate the error bounds. 

For example, although 0.080 and 0.08 denote the same number, the decimal numeral 0.080 suggests a measurement with an error less than 0.001, while the numeral 0.08 indicates an absolute error bounded by 0.01. In both cases, the true value of the measured quantity could be, for example, 0.0803 or 0.0796 (see also significant figures).







```
 0.8e-3 = 0.0008
 8.0e-3 = 0.008
 0.8e-2 = 0.008
80.0e-2 = 0.8
80.0e-1 = 8
 8.e-1 = 0.8
 8.e+0 = 8
     8e+1 = 80
   0.8e+2 = 80
  0.08e+3 = 80
 0.008e+4 = 80
0.0008e+5 = 80
```
