# Willan's formula

https://en.wikipedia.org/wiki/Formula_for_primes

Willan's formula is a formula that calculates the n-th prime number. It takes a natural number `n` and produces the `n`-th prime, `pₙ`.

```js
                      ⎢  ⎛                   n                    ⎞ 1/n ⎥
                      ⎢  ⎜ -------------------------------------- ⎟     ⎥
p_n = 1 + ∑ {i=1..2ⁿ} ⎢  ⎜            ⎢ ⎛     (j − 1)! + 1   ⎞² ⎥ ⎟     ⎥
                      ⎢  ⎜ ∑ {j=1..i} ⎢ ⎢ cos ------------ π ⎢  ⎢ ⎟     ⎥
                      ⎣  ⎝            ⎣ ⎝           j        ⎠  ⎦ ⎠     ⎦
```

In 1964, Willans published the formula. The formula works fine but it's terribly inefficient to be practical. However, it is nevertheless interesting because it showcases some solutions in pure math that would otherwise need to be implemented in a programming language. Things liek the loops are here replaced with the sum and the consitionals with e.g. the floor function.

$$\displaystyle \huge p_{n} = 1 + \sum _{i=1}^{2^{n}}
\left \lfloor \left({\frac {n}{\sum _{j=1}^{i}\left \lfloor 
\left(\cos {\frac {(j-1)!+1}{j}}\pi \right)^{2}
\right\rfloor }}\right) ^{1/n}\right \rfloor$$

## Explanation

https://www.youtube.com/watch?v=j5s0h42GfvM

At its core, the Willan's formula relies on the Wilson's Theorem for testing of primality: an integer `n > 1` is prime iff `(n − 1)!` has the remainder `n − 1` after division by `n`. In other words, any integer `n` is a prime number iff `(n − 1)! + 1` is divisible by `n`, i.e. `(n − 1)! ≡ −1 (mod n) ==> n ∈ ℙ`.

For example, let `n = 7`, then (7 - 1)! + 1 = 6! + 1 = 721, which is divisible by 7 (721 / 7 = 103) and thus 7 is a prime.

Scrutinizing the Willan's formula, we see it uses the Wilson's Theorem in its guts - the equation

`((j − 1)! + 1) / j`     (1)

means that `(j - 1)! + 1` is divisible by `j` precisely when `j` is a prime number or `j` is `1`. In other words, the equation (1) produces integers when `j` is a prime or 1 (it takes care of 1 later), and non-integers if `j` is composite. This is the test for primality at the heart of Willan's formula.

We can use this prime detector to compute the n-th prime in a trivial way. For example, to compute the 4th prime, we could iterate `j` and check each number for primality while keeping track of how many primes we've seen so far, and stop once we've seen 4 primes.

j | ((j − 1)! + 1) / j | n-th prime       | is the result r ∈ ℕ
--|--------------------|------------------|------------------------
1 | 2                  | (exception)      | r ∈ ℕ but 1 is excepted
2 | 1                  | 1st prime        | r ∈ ℕ (thus prime)
3 | 1                  | 2nd prime        | r ∈ ℕ
4 | 7/4                |                  | r ∉ ℕ (thus composite)
5 | 5                  | 3rd prime        | r ∈ ℕ
6 | 121/6              |                  | r ∉ ℕ
7 | 103                | 4th prime        | r ∈ ℕ
8 | 5041/8             |                  | r ∉ ℕ
9 | 40321/9            |                  | r ∉ ℕ
10| 362881/10          |                  | r ∉ ℕ
11| 329891             | 5th prime        | r ∈ ℕ


In a PL, we could easily implement this with a while loop and a counter to keep track of how many primes we've seen. But Willan manages to solve this using only math functions.

First, he modifies the prime detector so that it outputs 1 if the result is an integer, and 0 if the result is a non-integer. To achive this he needs an integer detector, which he gets by first multiplying the result with `π` and then feeding that to the `cos` function.

```js
     (j − 1)! + 1
cos ------------- π           (2)
          j
```

The graph of `cos π x` has `y = 1` when x={0,2,4,…}, i.e. when `x` is an even integer. When `x` is an odd integer, the result of `y = -1`. When `x` is a non-integer `y` is in the interval `(-1,1)`, i.e. `-1 < y < 1`.

So, the `cos π x` in Willans' formula outputs ±1 if `j` is prime or 1. Otherwise, it outputs a number strictly between -1 and 1 if `j` is composite. To iron this out, i.e. to have the function output just 1 (and not both 1 and -1) if `j` is prime or 1, he squares it. This forces 1 and -1 into 1, and all the other results (betwen -1 and 1) into the interval `[0,1)`, i.e. `0 ≤ y < 1`.

```js
⎛      (j−1)! + 1    ⎞²
⎢ cos ------------ π ⎢         (3)
⎝           j        ⎠
```

Taking the floor of that, yields the function that returns 1 if `j` is prime or 1, but after the flooring it now returns just 0 if `j` is a composite number. This completes the primality detector.

```js
⎢ ⎛      (j−1)! + 1    ⎞² ⎥
⎢ ⎢ cos ------------ π ⎢  ⎢           (4)
⎣ ⎝           j        ⎠  ⎦
```

With the prime detector done, we can now start counting primes by summing over a range of values for an iterator `j` that starts at `1` and goes up to `i`, i.e. `j = 1..i`.

```js
           ⎢ ⎛      (j−1)! + 1    ⎞² ⎥
∑ {j=1..i} ⎢ ⎢ cos ------------ π ⎢  ⎢       (5)
           ⎣ ⎝           j        ⎠  ⎦
```

For concreteness, here's the sum when `i=10`. `j` takes each value from 1 to 10, and the detector contributes 1 to the sum every time `j` is prime or 1.

```h
for i = 10, j = 1..10
j = 1   2   3   4   5   6   7   8   9  10
Σ = 1 + 1 + 1 + 0 + 1 + 0 + 1 + 0 + 0 + 0 = 5
```

There are 4 primes in this range, so the sum is 5 because 1 is also included. In other words, this is the number of primes up to 10, plus another one (for 1).

`4 + 1 = (# of primes ≤ 10) + 1`

In general, when we sum up to `i`, we get the number of primes up to `i` (including `i`), plus 1, `π(i) = (number of primes ≤ i) + 1`. So the equation (5) returns exactly that - the number of primes up to some integer.

But why are we counting primes? Willan's formula is supposed to compute the nth prime. We just determined that there are 4 primes up to 10, but we want to determine the 4th prime. Well, that's basically the inverse function of what we currently have.

The idea is that if we want to know the 4th prime, then we ask:
- Is the number of primes up to 1 less than 4?  ✔
- Is the number of primes up to 2 less than 4?  ✔
- Is the number of primes up to 3 less than 4?  ✔
- Is the number of primes up to 4 less than 4?  ✔
- Is the number of primes up to 5 less than 4?  ✔
- Is the number of primes up to 6 less than 4?  ✔
- Is the number of primes up to 7 less than 4?  ✘

Eventually the answer will be ✘, and the first time the answer is ✘ is when we are at the 4th prime (i.e. number 7).

In general it asks: Is the number of primes up to `i` less than `n` (by iterating on `i`)? This will tell us when we've reached the nth prime. But it requires another clever bit of engineering though.

Let's look at the next component equation, where we finally see an `n` (in the numerator and exponent).

`n` is divided by the denumerator which calculates the number of primes up to `i` plus 1. Then the whole quotient is raised to the power of `1/n`.

```js
⎛               n                   ⎞ 1/n
⎜ --------------------------------  ⎟
⎜ ⎲i ⎢ ⎛     (j − 1)! + 1   ⎞² ⎥  ⎟            (6)
⎜ ⎳  ⎢ ⎢ cos ------------ π ⎢  ⎢  ⎟
⎝ j=1  ⎣ ⎝           j        ⎠  ⎦  ⎠
```

When we eventually evaluate Willan's formula we're going to fix `n` and iterate `i`, but this part is easier to understand if we fix `i` and iterate `n`.

Let `i=10` again - we know there are 4 primes up to 10. 
The graph of `(x / 4+1) ^ 1/x` stars at 0 and rises, reaching the maximum value of y=1 (actually a little over 1, about 1.3) when x=5, after which it drops toward but never again reaches y=1 as the x → ∞ (tends to infinity).

Clearly, if we take the floor of this function, we can force the result of the function into a discrete range:
- when x ≤ 4, the result is 0
- when x = 4, the result is 1
- when x > 4, the result stays 1

```js
⎢ ⎛   n   ⎞ 1/n ⎥      ⎛ 1     if n > 4
⎢ ⎢ ----- ⎢     ⎢ =    ⎨
⎣ ⎝ 4 + 1 ⎠     ⎦      ⎝ 0     if n ≤ 4
```

The result is that we've just implemented an inequality, using nothing but arithmetic. We have a detector for numbers that are greater than 4.

In our current example, 4 is the number of primes up to 10. 
In general, this will be replaced by the number of primes `π(i)` up to `i`.

```js
⎢ ⎛        n       ⎞ 1/n ⎥      ⎛ 1     if n > (π(i) ≤ i)
⎢ ⎢ -------------- ⎢     ⎢ =    ⎨
⎣ ⎝ (π(x) ≤ i) + 1 ⎠     ⎦      ⎝ 0     if n ≤ (π(i) ≤ i)
```

This lets us answer the question: 
Is the number of primes up to `i` less than `n`?

(...)







## Refs

* An Exact Formula for the Primes: Willans' Formula - YouTube
https://www.youtube.com/watch?v=j5s0h42GfvM

* Wilson's Theorem
https://www.theoremoftheday.org/NumberTheory/Wilson/TotDWilson.pdf

* Theorem of the Day
https://www.theoremoftheday.org/Resources/TheoremNotes.htm#194

* Factorials mod n and Wilson's theorem
https://fredrikj.net/blog/2012/03/factorials-mod-n-and-wilsons-theorem/

* The Australasian Journal of Combinatorics
http://ajc.maths.uq.edu.au/?page=get_volumes&volume=49

* N147.dvi
http://ajc.maths.uq.edu.au/pdf/49/ajc_v49_p265.pdf

* Pete L. Clark's papers
http://alpha.math.uga.edu/~pete/papers.html

* [1807.08416] Some Fundamental Theorems in Mathematics
https://arxiv.org/abs/1807.08416
