# Number Theory with Glenn Olsen
YouTube Playlist (83 vids), Published on Jul 25, 2014
[https://www.youtube.com/playlist?list=PLr3WmPgPWZfX1HUpeyKkP6ir2wOFhqXMO]

## Number Theory Topics

- Subsets of Numbers
- Divisibility
- Primes
- GCD (Greatest Common Divisor)
- Euclidean Algorithm
- LCM (Least Common Multiple)
- Relationship between GCD and LCM
- Total Number of Factors
- Units Digit
- Remainder
- Trailing Zeros
- Counting Multiples
- Sum of the First n Natural Numbers
- Linear Diophantine Equations
- Modular Arithmetic
- Gear Problem
- Number Sense


## Subsets of Numbers

Subsets: conventions used (what is meant by different sets):

### Number sets:
- Integers: $$\mathbb{Z} = \{ \dots, -2, -1, 0, 1, 2, \dots \}$$
- Whole numbers: $$\mathbb{N_0} = \{0, 1, 2, \dots\}$$
- Counting numbers: $$\mathbb{N^+} = \{1, 2, \dots\}$$

### Parity subsets

$$
\begin{align}
Even =& \{ n|n=2k,   & {n,k\in\mathbb{Z}} \} = \{0,2,4,6\dots \} \\
Odd  =& \{ n|n=2k+1, & {n,k\in\mathbb{Z}} \} = \{1,3,5,7\dots \}
\end{align}
$$


### Perfect Squares

* $$f(n)=n^2$$
* sum of first n odd numbers:    
  sum of first 7 off numbers = 1+3+5+7+9+11+13=


$$
\displaystyle
\sum_{i=0}^{n} 2i+1 \equiv f(n)=n^2,\ n\in\mathbb{N^+}\\
$$


$$
\displaystyle
\sum_{i=0}^{k=5} 2k+1 = \\
1 + (2+1) + (2\cdot2+1) + (3\cdot2+1) + (4\cdot2+1) = \\
1 + 3 + 5 + 7 + 9 = 25
$$

```
1 2 3 4 5  6  7  8
1                   = 1
1+3                 = 4
 " +5               = 9
  "  +7             = 16
   "   +9           = 25
1+3+5+7+9+11        = 36
1+3+5+7+9+11+13+15  = 49


[1]:1,    [2]:4,    [3]:9,    [4]:16,   [5]:25,   
[6]:36,   [7]:49,   [8]:64,   [9]:81,   [10]:100,   
[11]:121, [12]:144, [13]:169, [14]:196, [15]:225,...
```

$$
n^2 = 0^2 = 1^2 = 1 \quad n \in \mathbb{N_0} \\
n^2 = 1^2 = 1       \quad n \in \mathbb{N^+}
$$

### Pythagorean Triples

* $$a^2 + b^2 = c^2$$
* It isa very common that two elements in a triple differ by 1 or 2
* most common: (3,4,5)
* common: (5,12,13), (8,15,17), (7,24,25)
* not so common: (20,21,29), (12,35,37), (9,40,41)


## Divisibility

Divisibility: if `a` and `b` are ints, then `a` divides `b` if `b = a*n` for some int `n`. 

## Divisibility rules

The integer, $$n$$, consisting of $$k+1$$ (base 10) digits, $$d_k \dots d_1 d_0$$, is divisible by $$m$$ if:
- rule 2, m=2: if the last digit is divisible by 2
- rule 4, m=4 (2^2): if the last 2 digits are divisible by 4
- rule 8, m=8 (2^3): if the last 3 digits are divisible by 8
- rule 3, m=3: if the sum of all the digits is divisible by 3
- rule 9, m=9: if the sum of all the digits is divisible by 9
- rule 5: last digit must be 0 or 5
- rule 10: last digit must be 0
- rule 6 (2*3): if rules 2 and rule 3 both hold
- rule 12 (3*4)




$$
\displaystyle
\sum_{i=0}^{k} d_i \cdot 10^i \\
n = d_{k+1} \dots d_1 d_0
$$
