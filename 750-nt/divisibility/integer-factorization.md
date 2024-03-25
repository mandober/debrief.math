# Integer factorization

https://en.wikipedia.org/wiki/Integer_factorization
https://en.wikipedia.org/wiki/Prime_factorization
https://en.wikipedia.org/wiki/Prime_decomposition

**Integer factorization** is the decomposition of a composite number into a product of smaller integers.

**Prime factorization** is the decomposition of a composite number into a product of primes.

When the numbers are sufficiently large, no efficient, non-quantum integer factorization algorithm is known. However, it has not been proven that no efficient algorithm exists. The presumed difficulty of this problem is at the heart of widely used algorithms in cryptography such as RSA. Many areas of mathematics and computer science have been brought to bear on the problem, including elliptic curves, algebraic number theory and quantum computing.

In 2019, Fabrice Boudot, Pierrick Gaudry, Aurore Guillevic, Nadia Heninger, Emmanuel Thomé and Paul Zimmermann factored a 240-digit (795-bit) number (RSA-240) utilizing approximately 900 core-years of computing power. The researchers estimated that a 1024-bit RSA modulus would take about 500 times as long.

Not all numbers of a given length are equally hard to factor. The hardest instances of these problems (for currently known techniques) are semiprimes, the product of two prime numbers. When they are both large (for instance more than two thousand bits long), randomly chosen and about the same size (but not too close, for example, to avoid efficient factorization by *Fermat's factorization method*), even the fastest prime factorization algorithms on the fastest computers can take enough time to make the search impractical; that is, as the number of digits of the primes being factored increases, the number of operations required to perform the factorization on any computer increases drastically.

Many cryptographic protocols are based on the difficulty of factoring large composite integers, or a related problem (for example, the RSA problem). An algorithm that efficiently factors an arbitrary integer would render RSA-based public-key cryptography insecure.

## Contents

- 1. Prime decomposition
- 2. Current state of the art
  - 2.1 Difficulty and complexity
- 3. Factoring algorithms
  - 3.1 Special-purpose
  - 3.2 General-purpose
  - 3.3 Other notable algorithms
- 4. Heuristic running time
- 5. Rigorous running time
  - 5.1 Schnorr-Seysen-Lenstra Algorithm
  - 5.2 Expected running time


## Prime decomposition

By the *fundamental theorem of arithmetic*, every positive integer has a unique prime factorization (by convention, 1 is the empty product).

Testing whether the integer is prime can be done in polynomial time, for example, by the *AKS primality test*. If composite, however, the polynomial time tests give no insight into how to obtain the factors.

Given a general algorithm for integer factorization, any integer can be factored into its constituent prime factors by repeated application of this algorithm.

The situation is more complicated with special-purpose factorization algorithms, whose benefits may not be realized as well or even at all with the factors produced during decomposition.

For example, if `n = 171∙p∙q` where `p < q` are very large primes, trial division will quickly produce the factors 3 and 19 but will take `p` divisions to find the next factor.

As a contrasting example, if `n` is the product of the primes 13729, 1372933, and 18848997161, where 13729∙1372933 = 18848997157, Fermat's factorization method will begin with `⌈√n⌉` = 18848997159 which immediately yields 
`b = √(a²-n) = √4 = 2b` and hence the factors `a − b = 18848997157` 
and `a + b = 18848997161`.

While these are easily recognized as composite and prime respectively, Fermat's method will take much longer to factor the composite number because the starting value of ⌈ 18848997157 ⌉ = 137292 for `a` is nowhere near 1372933.

## Current state of the art

Among the `b`-bit numbers, the most difficult to factor in practice using existing algorithms are those that are products of two primes of similar size. For this reason, these are the integers used in cryptographic applications.

The largest such semiprime yet factored was RSA-250, a 829-bit number with 250 decimal digits, in February 2020. The total computation time was roughly 2700 core-years of computing using Intel Xeon Gold 6130 at 2.1 GHz. Like all recent factorization records, this factorization was completed with a highly optimized implementation of the general number field sieve run on hundreds of machines.

## Difficulty and complexity

(...)

## Factoring algorithms

* Factoring algorithms
  * Special-purpose
    - Trial division
    - Wheel factorization
    - Pollard's rho algorithm
    - Algebraic-group factorization algorithms
      - Pollard's p−1 algorithm
      - Williams' p+1 algorithm
      - Lenstra elliptic curve factorization
    - Fermat's factorization method
    - Euler's factorization method
    - Special number field sieve
  * General-purpose
    - Dixon's algorithm
    - Continued fraction factorization (CFRAC)
    - Quadratic sieve
    - Rational sieve
    - General number field sieve
    - Shanks's square forms factorization (SQUFOF)
  * Other notable algorithms
    - Shor's algorithm, for quantum computers


### Special-purpose

A special-purpose factoring algorithm's running time depends on the properties of the number to be factored or on one of its unknown factors: size, special form, etc. The parameters which determine the running time vary among algorithms.

An important subclass of special-purpose factoring algorithms is the *Category 1* or *First Category* algorithms, whose running time depends on the size of smallest prime factor. Given an integer of unknown form, these methods are usually applied before general-purpose methods to remove small factors. For example, naive trial division is a Category 1 algorithm.

Special-purpose
- Trial division
- Wheel factorization
- Pollard's rho algorithm
- Algebraic-group factorization algorithms
  - Pollard's p−1 algorithm
  - Williams' p+1 algorithm
  - Lenstra elliptic curve factorization
- Fermat's factorization method
- Euler's factorization method
- Special number field sieve


https://en.wikipedia.org/wiki/Trial_division
https://en.wikipedia.org/wiki/Wheel_factorization
https://en.wikipedia.org/wiki/Pollard%27s_rho_algorithm
https://en.wikipedia.org/wiki/Algebraic-group_factorisation_algorithms
https://en.wikipedia.org/wiki/Pollard%27s_p_%E2%88%92_1_algorithm
https://en.wikipedia.org/wiki/Williams%27_p_%2B_1_algorithm
https://en.wikipedia.org/wiki/Lenstra_elliptic_curve_factorization
https://en.wikipedia.org/wiki/Fermat%27s_factorization_method
https://en.wikipedia.org/wiki/Euler%27s_factorization_method
https://en.wikipedia.org/wiki/Special_number_field_sieve


## General-purpose

A general-purpose factoring algorithm, also known as a *Category 2* (i.e. Second Category or Kraitchik family algorithm) has a running time which depends solely on the size of the integer to be factored.

This is the type of algorithm used to factor RSA numbers. Most general-purpose factoring algorithms are based on the *congruence of squares* method.

* General-purpose
  - Dixon's algorithm
  - Continued fraction factorization (CFRAC)
  - Quadratic sieve
  - Rational sieve
  - General number field sieve
  - Shanks's square forms factorization (SQUFOF)

https://en.wikipedia.org/wiki/Dixon%27s_algorithm
https://en.wikipedia.org/wiki/Continued_fraction_factorization
https://en.wikipedia.org/wiki/Quadratic_sieve
https://en.wikipedia.org/wiki/Rational_sieve
https://en.wikipedia.org/wiki/General_number_field_sieve
https://en.wikipedia.org/wiki/Shanks%27s_square_forms_factorization


## Other notable algorithms

* Other notable algorithms
  - Shor's algorithm, for quantum computers

https://en.wikipedia.org/wiki/Shor%27s_algorithm


## Links

* Modern Elliptic Curve Factorization, Part 1 (2010)
https://programmingpraxis.com/2010/04/23/modern-elliptic-curve-factorization-part-1/
