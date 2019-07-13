# Number Theory

- Factors and multiples 
- Direct proof with divisibility 
- Stay in the Set 
- Prime numbers 
- GCD and LCM 
- The division algorithm 
- Euclidean algorithm 
- Pseudocode 
- A recursive version of gcd 
- Congruence mod k 
- Proofs with congruence mod k 
- Equivalence classes 


## Number theory

Number theory is a branch of math concerned with the behavior of integers. It has important applications in cryptography and in the design of randomized algorithms.

Randomization is an important technique for creating fast algorithms for storing and retrieving objects (hash tables), testing whether two objects are the same (two files), and similar. 

Much of the underlying theory depends on divisiblity and primality.

**Divisiblity** := If `a` and `b` are ints, then `a` divides `b` if `b = a*n` for some int `n`. `a` is called a *factor* or *divisor* of `b`. `b` is called a *multiple* of `a`.

- shorthand `a divides b` is `a | b` i.e. `divisor | multiple`
- (ab e Z AND b=a*n) . a | b
- int `p` is even exactly when `2 | p`
- zero being even is a special case cuz zero is divisible by any int


7  | 77 = T
77 | 7  = F
7  | 7  = T  any integer is divisible by itself
7  | 1  = T  any integer is divisible by one
7  | 0  = T  zero is divisible by any integer
0  | 7  = F  cuz 0*7=0; *zero is a FACTOR of zero alone* 
-3 | 12 = T
3  |-12 = T


## Primes

**Prime number** := an int `q ≥ 2` is prime if its only positive factors are `q` and `1`. An integer `q ≥ 2` is *composite* if not prime.

Numbers smaller than 2 are neither prime nor composite.

**Fundanmental Theorem of Arithmetic**:
Every int ≥ 2 can be composed using a set of primes.

- every int can be written as the product of prime factors.
- save for the ordering of factors, *the prime factorization is unique*, i.e.  there is only one way to factor each integer.
- For example, 260=2·2·5·13 and 180=2·2·3·3·5

There are very fast algorithms for testing primality, but no fast algorithms for factoring a complex number. The difficulty of factoring large composite numbers is the basis for some cryptographic algorithms like the RSA.

## GCD and LCM

If `c` divides both `a` and `b`, then it is their *common divisor*. The largest such number is their **greatest common divisor**, `gcd(a, b)`.

Get GCD of 2 ints by mult their common prime factors. For example:
140=2*2*5*7 and 650=2*5*5*13, so `gcd(140, 6500) = 2*5 = 2`

Common multiple of `a` and `b` is `c` such that `a|c` and `b|c`. The **least common multiple** is the smallest positive number for which this is true.

Computable with: `lcm(a,b) = a*b / gcd(a,b)`

If two ints `a` and `b` share no common factor, then `gcd(a,b)=1`. Such pair is called **relatively prime**.

- if int `k > 0`, then `k | 0`
- `gcd(k,0) = gcd(0,k) = k` 
- `gcd(0,0)` is **not defined** since all ints are common divisors of 0 and 0, so there is no greatest one.
