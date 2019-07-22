# Successor function

https://en.wikipedia.org/wiki/Successor_function


- **Successor** function: $$S$$, $$Succ$$
- Successor operation: $$n'$$ ("prime" as the successor operator)
- $$S(n) = n'$$
- application term: **succession**
- Hyperoperation:
  - hyperop name: *zeration*
  - hyperop number: 0th (zeroth) 
  - $$H_0(m, n) = 1 + n$$
- Classification
  - recursive function
  - primitive recursive function (PRF)



**Successor function**, $$S$$, is a *primitive recursive function*.
Successor is used in the *Peano axioms* which define the natural numbers. Successor is used to define all natural numbers and addition. 


~~hmm, what is that cross-like symbol?! don't think it was defined, was it?~~

$$S(n) = n+1 , \quad n \in \mathbb{N}$$



For example,
- 1 is defined to be S(0)
- addition on natural numbers is defined recursively by:
  - m + 0	= m
  - m + S(n) = S(m) + n

$$
\quad 5 + 2 \\
= 5 + S(1) \\
= S(5) + 1 \\
= 6 + 1 \\
= 6 + S(0) \\
= S(6) + 0 \\
= 7 + 0 \\
= 7
$$


## Natural numbers ℕ

The set of natural numbers, $$\mathbb{N}$$

A common approach to define natural numbers in terms of set theory:

$$
1: 0 \in \mathbb{N} \\
2: 0 = \varnothing \\
3: S(n) = n \cup \{n\} \\
n, S(n) \in \mathbb{N} 
$$

- define the number $$0$$ to be the empty set $$\{\}$$
- define successor $$S(n)$$ to be $$n \cup \{ n \}$$
- The axiom of infinity then guarantees the existence of a set ℕ
- The set $$\mathbb{N}$$ contains $$0$$ and is closed under $$S$$
- members of $$\mathbb{N}$$ are called natural numbers.


It is also one of the primitive functions used in the characterization of computability by recursive functions.
