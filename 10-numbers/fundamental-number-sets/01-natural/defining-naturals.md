# Defining natural numbers

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
