# GCD and LCM

If `c` divides both `a` and `b`, then it is their *common divisor*. The largest such number is their **greatest common divisor**, `gcd(a, b)`.

Get GCD of 2 ints by mult their common prime factors. For example:
140=2*2*5*7 and 650=2*5*5*13, so `gcd(140, 6500) = 2*5 = 2`

Common multiple of `a` and `b` is `c` such that `a|c` and `b|c`. The **least common multiple** is the smallest positive number for which this is true.

Computable with: `lcm(a,b) = a*b / gcd(a,b)`

If two ints `a` and `b` share no common factor, then `gcd(a,b)=1`. Such pair is called **relatively prime**.

- if int `k > 0`, then `k | 0`
- `gcd(k,0) = gcd(0,k) = k` 
- `gcd(0,0)` is **not defined** since all ints are common divisors of 0 and 0, so there is no greatest one.

# Greatest Common Divisor


Greatest common divisor (GCD)
- domain: Integers $$\mathbb{Z}$$
A simple calculator to determine the greatest common divisor of any two regular integers.

gcd(a,b)=\deltagcd(a,b)=δ
$$\mathbb{N}$$
