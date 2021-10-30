# Mathematical induction

Let P(n) be a statement about the natural number n, where P is a predicate and n > 0. In order to show that P(n) is true for all natural numbers, it is sufficient to show that it holds in the base case; and that if it holds for some n then it holds for the successor of n.

1. P(1)
2. P(n) -> P(n+1)


## Example: Sum of odd integers yields squares

Conjecture: 1 + 3 + 5 + ... + (2ⁿ−1) = n²

Proof by induction:
1. P(1) holds because 1 = 1²
2. We assume P(n) holds so we need to show that P(n+1) holds as well

The idea is to start with the formula P(n),     
then to add the next odd number, 2⁽ⁿᐩ¹⁾ − 1 to both sides,  
then to try to transform the equation into P(n+1)


## Example: Sum of consecutive natural numbers


P(n) := 0 + 1 + 2 + ... + n = n(n+1)/2

This states a general formula for the sum of the natural numbers LE to a given number; in fact, it's an infinite sequence of statements obtained by substituting each natural for `n` in the rightmost formula:

```
0 = 0(0+1) / 2
0 + 1 = 1(1+1) / 2
0 + 1 + 2 = 2(2+1) / 2
```

*Proposition*. For any n ∈ ℕ it holds that n(n+1)/2

*Proof*. Let P(n) be the statement `0 + 1 + 2 + ... + n = n(n+1)/2`

The proof is by induction on n.

Base case: Show that the statement holds for the smallest natural number n = 0.

P(0) is clearly true:    
0 = n(n+1)/2
0 = 0(0+1)/2 = 0*1/2 = 0/2

*Inductive step*: Show that for any k ∈ ℕ, if P(k) holds then P(k+1) holds

Assume the induction hypothesis that for a particular k, the single case n = k holds, meaning P(k) is true:

0 + 1 + 2 + ... + k = k(k+1)/2

and show that it holds for k + 1:

0 + 1 + 2 + ... + k + (k + 1) = k(k+1)/2 + (k+1)

Algebraically, the right hand side simplifies as:

```
k(k+1)           k(k+1) + 2(k+1)   k² + k + 2k + k   k² + 3k + k
------ + (k+1) = --------------- = --------------- = ------------ =
  2                     2                  2               2

(k + 1)(k + 2)    (k+1) (k+1 + 1)
-------------- =  ----------------
      2                  2

Equating the initial LHS and RHS above, we deduce that (case when n = k+1)

                                (k+1) (k+1 + 1)        n (n + 1)
0 + 1 + 2 + ... + k + (k + 1) = ----------------     = ---------
                                       2                   2
```

That is, the statement P(k+1) also holds true, establishing the inductive step.

*Conclusion*: Since both the base case and the inductive step have been proved as true, by mathematical induction the statement P(n) holds for every natural number n.

∎
