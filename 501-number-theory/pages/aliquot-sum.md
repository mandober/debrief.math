# Aliquot sum

https://en.wikipedia.org/wiki/Aliquot_sum


- 1 is the only number whose aliquot sum is 0
- A number is prime iff its aliquot sum is 1
- The aliquot sum of   perfect number n = n
- The aliquot sum of deficient number n < n
- The aliquot sum of  abundant number n > n


In number theory, the **aliquot sum** `s(n)` of a positive integer `n` is the sum of all proper divisors of `n`.

**Proper divisors** of `n` are all divisors of `n` other than `n` itself.

The aliquot sum can be used to characterize the prime numbers, perfect numbers, deficient numbers, abundant numbers and untouchable numbers. Also, to define the *aliquot sequence* of a number.

For example, the proper divisors of 28 are {1,2,4,7,14}, so the aliquot sum of 28 is 28, making it the perfect number.


The sequence *A001065* in the *OEIS* is made of values of s(n) for ℕᐩ:

0, 1, 1, 3, 1, 6, 1, 7, 4, 8,   
1, 16, 1, 10, 9, 15, 1, 21, 1, 22,   
11, 14, 1, 36, 6, 16, 13, 28, 1, 42,    
1, 31, 15, 20, 13, 55, 1, 22, 17, 50,    
1, 54, 1, 40, 33, 26, 1, 76, 8, 43, ...

meaning the aliquot sum of 1 is s(1)=0, s(2)=1, s(3)=1, s(4)=3

n  | s(n)  | D(n)
---|-------|------
1  |     0 | ∅
2  |     1 | {1}
3  |     1 | {1}
4  |     3 | {1,2}
5  |     1 | {1}
6  |     6 | {1,2,3}
7  |     1 | {1}
8  |     7 | {1,2,4}
9  |     4 | {1,3}
10 |     8 | {1,2,5}
