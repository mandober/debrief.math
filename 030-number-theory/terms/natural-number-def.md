# Defining natural numbers in set theory

- https://en.wikipedia.org/wiki/Implementation_of_mathematics_in_set_theory#Finite_sets_and_natural_numbers
- https://en.wikipedia.org/wiki/Set-theoretic_definition_of_natural_numbers


- a natural number is defined as a cardinality of a set
- `succ(n) = n U {n}`
- every natural number is to be equal to the set of its predecessors

First few von Neumann ordinals:

```
el#   1     2     3         4
0 = {                                      } == ∅
1 = { ∅                                    } == {0}
2 = { ∅ ,  {∅}                             } == {0,1}
3 = { ∅ ,  {∅} , {∅,{∅}}                   } == {0,1,2}
4 = { ∅ ,  {∅} , {∅,{∅}} , {∅,{∅},{∅,{∅}}} } == {0,1,2,3}

|∅| = 0
|{0}| = 1
|{0,1}| = 2
|{0,1,2}| = 3
|{0,1,2,3}| = 4

P(∅)    = {∅}         ∅ ∈ P(∅)   P(∅) = 1
P(P(∅)) = {∅, {∅}}    ∅ ∈ P(∅)   P(∅) = 1


∩ ∉ ∈
```
