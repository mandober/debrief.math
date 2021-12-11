# Combinatorics

https://en.wikipedia.org/wiki/Combinatorics

https://en.wikipedia.org/wiki/Pascal%27s_triangle
https://en.wikipedia.org/wiki/Pascal%27s_pyramid
https://en.wikipedia.org/wiki/Pascal%27s_simplex
https://en.wikipedia.org/wiki/Binomial_theorem
https://en.wikipedia.org/wiki/Binomial_distribution


Combinatorics primarily studies *counting*, both, for its own sake and as a tool in exploring certain properties of finite structures.

The scope of combinatorics traverses many subjects, so it might be better described by the problems it addresses:
- **enumeration** (counting) in connection with discrete structures, known as *arrangements* or *configurations*.
- existence of these structures that satisfy certain criteria.
- possibilities of constructing these structures.
- *optimization problem*: finding the best among possible candidates that satisfy some optimality criteria.

Combinatorics are used in algebra, probability theory, topology, geometry. In the late XX century, powerful theoretical methods were developed that helped promote combinatorics into the independent branch of math. Combinatorics is present in CS through graph theory, and it's often used in complexity theory.


## Fields of combinatorics
- Enumerative combinatorics
- Analytic combinatorics
- Partition theory
- Graph theory
- Design theory
- Finite geometry
- Order theory
- Matroid theory
- Extremal combinatorics
- Probabilistic combinatorics
- Algebraic combinatorics
- Combinatorics on words
- Geometric combinatorics
- Topological combinatorics
- Arithmetic combinatorics
- Infinitary combinatorics

## Related fields
* Combinatorial optimization
* Coding theory
* Discrete and computational geometry
* Combinatorics and dynamical systems
* Combinatorics and physics




---


https://rosettacode.org/wiki/Combinations_and_permutations
https://rosettacode.org/wiki/Combinations
https://rosettacode.org/wiki/Combinations_with_repetitions
https://rosettacode.org/wiki/Permutations
https://rosettacode.org/wiki/Permutations_with_repetitions


## Combinatorics

https://rosettacode.org/wiki/Combinations


- Combinations (order unimportant)
  - without replacement
  - with replacement
- Permutations (order important)
  - without replacement
  - with replacement


## Combinations without replacement
- order unimportant
- without replacement

$$
\displaystyle{
^{n} \! \operatorname{C} _{k} = 
\binom {n} {k} = 
\binom {n} {n-k} = 
\frac {n!} {(n-k)! \ k!} =
\frac 
{ n \cdot (n-1) \cdots (n-k+1) }
{ k \cdot (k-1) \cdots 1      }
}
$$

## Combinations with repetitions
- order unimportant
- with replacement
- with repetitions

$$
\displaystyle{
^{n+k-1} \! \operatorname {C} _{k} =
\binom {n+k-1} {k} = \ \ 
\frac {(n+k-1)!} {(n-1)! \ k!}
}
$$


## Permutations
- order important
- without replacement

$$
\displaystyle{
^{n} \! \operatorname {P} _{k} =
n \cdot (n-1) \cdot (n-2) \cdots (n-k+1)
}
$$


## Permutations with repetitions
- order important
- with replacement
- with repetitions

$$
\displaystyle {
    n^{k}
}
$$
