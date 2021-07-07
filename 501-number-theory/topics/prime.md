# Prime numbers

https://en.wikipedia.org/wiki/Prime_number

Glossary of prime numbers
https://primes.utm.edu/glossary/


A natural number greater than 1, `n ∈ ℕᐩᐩ`, is a **prime** number
- if it is not a product of two (smaller) natural numbers
- if it is only divisible by 1 and itself
- ∀m,n ∈ ℕ. m ∤ n -> n ∈ ℙ    for n > 1, m ∉ {0,1,n}

Primality is a *polarizing property*: a natural number is either a prime or a composite number 



## Sieve of Eratosthenes

https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

The sieve of Eratosthenes starts with a sieve of numbers, all unmarked. It starts by skipping 2 but then marking all 2k numbers > 2 (to be discarded). Then it finds the first unmarked number (3) and marks all 3k numbers > 3.

It repeatedly finds the first unmarked number p (next prime number), then marks p² and all the multiples of p that are larger then p² as composite. After marking the multiples of 2, 3, 5, 7, all primes up to the square root of the table size have been processed.


Primality is a *polarizing property* of numbers: a number is either prime or composite.

Primality is about number factorization, whether a number n can be expressed as multiplication k*m (with 1 < k, m < n).

If a number is expressed in a unary number system (which has only a single symbol), then a unary numeral formation represents a composite natural number if the constituent symbols cannot be partitioned (clustered) in equally-sized groups. For example, in a unary numeral system where the only symbol is `"o"`, number 7 is denoted by 7 `o`'s, as `ooooooo`. We can see that this formation represents a prime number because it cannot be partition into equally-sized subsets.


For example, a tally-mark numeral system is a unary numeral system where the only symbol is usually denoted by a "tally", which is a bar-like or a "stick-like" symbol such as `|`; e.g. `||||` represents number 4.


Therefore, to see whether a number is prime, convert it into a unary numeral representation, then check if a sequence of the symbol can be clustered into equal groups of 2; if not, check for groups of 3, 4, 5, etc., up to `√n` floored. This primality check may be implemented as a regex.



* *Mersenne numbers* have the form 2ᵏ−1 and those that are prime are called **Mersenne primes**. By the end of the XVI century, the highest Mersenne prime was 2¹⁹−1 (524,287). At the start of the XXI century, 2⁴²¹¹²⁶⁰⁹−1 was the highest, containing approximately 13 million digits.

* The *prime factorisation* of the integers is a central point of study in number theory and can be visualised with Ulam spiral.

* **Fundamental theorem of arithmetic (FTAr)**, also called the **unique factorisation theorem**, states that every integer greater than 1, is either prime or the unique product of primes. This is the reason 1 is not a prime; if 1 were a prime, the product of primes would not be unique; instead of having a unique product (e.g 24=2³×3), there would be arbitrary number of 1 factors (24=2³×3×1 or 24=2³×3×1×1, etc.).

* Prime number distribution: The German mathematician Carl Gauss had proved (at the age of 14) that as x → ∞, the function π(x), which estimates the number of primes up to x, is given by `π(x) ~ x/ln x`.

* **Proper factors** of a number are its divisors save for the number itself. For example, PF(6) = {1,2,3}. In relation to the sum of its proper divisors, a number is either:
- **perfect**, n == PF(n)
- **abundant**, n < PF(n), 12 since PF(12) = {1,2,3,4,6} and their sum is 16
- **deficient**, n > PF(n), e.g. any prime p since p > 1


Euclid proved that 2ⁿ⁻¹(2ⁿ-1) is an even perfect number when 2ⁿ-1 is a Mersenne prime. These are now called Euclid numbers. Euler had proved that all even perfect numbers have this form, for n ∈ ℙ.

The sequence of perfect numbers begins with (6, 28, 496,...)

n | 2ⁿ⁻¹ | 2ⁿ-1 | 2ⁿ⁻¹(2ⁿ-1) | 2ⁿ-1
--|------|------|------------|----------
1 | 1    | 1    |   1        | 
2 | 2    | 3    |   6        | 3 = 2ⁿ-1 is Mersenne prime, n ∈ ℙ
3 | 4    | 7    |  28        | 7 = 2ⁿ-1 is Mersenne prime, n ∈ ℙ
4 | 8    | 15   | 120        | 



* A **perfect number** equals the sum of its proper factors (e.g. 6=1+2+3). This sequence begins with: 6, 28, 496, 8128, 33550336. Euclid had proved that if `m` is a Mersenne prime, then `m(m+1)/2` is an even perfect number.

* **Twin primes** are a pair of primes that differ by 2.

* A **coprime** numbers are a pair of numbers that have no common factors.

* **Wilson's theorem**: iff `n` is prime then `(n-1)!+1` is a multiple of `n`:

    `(n-1)! ≡ -1 (mod n)`

* **Goldbach's Conjecture**: every even number (>= 6) can be written as the sum of two odd prime numbers. Goldbach also conjectured that all odd numbers are the sum of three odd primes. **Vinogradov's theorem** shows this to be true, in general (save for finitely many odd numbers).




https://www.mathsisfun.com/numbers/prime-numbers-advanced.html
