# Relation theory :: Elementary notions :: About relations

## Terms and concepts
- relation
  - relation between sets
  - relation on a set
- finite relation (relation between a finite number of sets)
  - there's no inf rel between two finite sets (equal pairs would collapse)
- general properties/classes
  - directedness
  - finiteness
  - homogeneity
  - arity


## Elementary notion of relation

Intuitively, the concept of relation denotes the existence of some kind of connection or association between objects.


## Relations in general

- logic: predicates

Contemporary *ontologies* share many structural similarities, regardless of the ontology language in which they are expressed. Most ontologies describe individuals (instances), classes (concepts), attributes, and relations.




## Relations in math

In general, the notion of relation can refer to any association (link, connection) between two or more mathematical objects of any sort. However, most of the time, or at least "by default", relations are considered in terms of sets.

## Relations set theory

- so much so that it spawned a new math objects, almost considerd as a primitive because it lacks a stable definition verified to work with all the higher abstractions (numbers primarily).

- Kuratowski's definition is the standard de facto, but de iure mathematicians skip that part, laid back content in the knowledge that it can be defined - even no one has really verified that it works consistently in face of higher abstractions; e.g. 

>Kuratowski's definition: `(a,b)` ≝ `{ {a}, {{a,b}} }`

>Equality of ordered pairs: `[(a,b) = (x,y)] ⇔ [a = x ∧ b = y]`

Equality of ordered pairs:
- [(a,b) = (x,y)] ⇔ [a = x ∧ b = y]
- (a,b) = (x,y) 
- a = x ∧ b = y



Kuratowski's definition:
- the set repr an ord pair has two elements ✔
- the elements of the set have diff "types" ✘ (but types ∄ anyway)
- `(a,a)` collapses into `{ {a}, {{a}} }`   ✔
- function is a set of ord pairs:
  >Are fns consistent in face of the Kuratowski's definition of ordpairs?
  A = {1,2}
  B = {3,4}
  - f : A → B
    f 1 = 3
    f 2 = 3
    f is a set:
    f = { (1,3)          , (2,3)          }
      = { {{1}, {{1,3}}} , {{2}, {{2,3}}} }
  - g : A → A
    g 1 = 1
    g 2 = 2
    g is a set:
    g = { (1,1)       , (2,2)       }
      = { {{1},{{1}}} , {{2},{{2}}} }
- ℕ are defined as
  >Is it consistent in face of the Kuratowski's definition of ordpairs?
  - Definition 1:
      `0 := ∅`        base
      `n := n ∪ {n}`  rec
    `S n := n ∪ {n}`  succ


    1 := {∅}
    2 := {∅, {∅}}
    3 := {∅, {∅}, {∅, {∅}}}
    4 := {∅, {∅}, {∅, {∅}}, {∅, {∅}, {∅, {∅}}}}
    5 := { ∅, {∅}, {∅, {∅}}, {∅, {∅}, {∅, {∅}}}
        , {∅, {∅}, {∅, {∅}}, {∅, {∅}, {∅, {∅}}}}
        }

  - Definition 2:
      `0 := ∅`                base
      `n := {0, 1, …, n - 1}`  rec
    `S n := {0, 1, …, n}`     succ


==================================
>Define `+`.
1) _Is `+` the same as `∪`?_ **No!** 
   ~~m + n !=  m ∪ n~~
     2 + 3 ≠ 2 ∪ 3

2) `n ∪ m ==  max n m`
    0 ∪ 1 = 1     0 + 1 = 1
    3 ∪ 1 = 3     3 + 1 = 4
    2 ∪ 2 = 2     2 + 2 = 4

3) m + n ==?== m ∪ {n}
   0 + 1 ==?== m ∪ {n}

==================================


  - >Is it consistent in arith with +?
    0 := ∅
    1 := {0}
    2 := {0, 1}
    3 := {0, 1, 2}
    4 := {0, 1, 2, 3}
    5 := {0, 1, 2, 3, 4}



```hs
(+) : ℕ → ℕ → ℕ
0   + m = m
S n + m = S (n + m)
=================================================
-- (+) in terms of sets
  0 = ∅                    -- base
S n = n ∪ {n}              -- rec1

  n = {0, 1, …, n - 1}      -- rec2
S n = {0, 1, …, n - 1, n}   -- rec3
=================================================
  0 + m = m      ∅ + m = m
S n + m = m    S n + m = S (m + n)
-------------------------------------------------
  n + m = {0, …, n-1}    + m
S n + m = {0, …, n-1, n} + m
-------------------------------------------------
S {0, …, n-1} + m = S (n + m)
S {0, …, n-1} + m = S ({0, …, n-1} + m)
-------------------------------------------------
4         + 1 = 5
S 3       + 1 = S (3       + 1)
S {0,1,2} + 1 = S ({0,1,2} + 1)
-------------------------------------------------
S {0,1,2} + 1 = ?
= S (S {0,1}) + 1
= S (S (S {0})) + 1
= S (S (S (S {}))) + 1
= S (S (S (S 0))) + (S 0)
= S (S (S (S 0)) + (S 0))
= S (S (S (S (S 0)) + 0))
= S (S (S (S (S 0) + 0)))
= S (S (S (S (1 + 0))))
= S (S (S (S (1))))
= S (S (S (S 1)))
= S (S (S 2))
= S (S 3)
= S 4
= 5
-------------------------------------------------





0 = {} = ∅
S 0 = 1        S {} = {∅}       = 1
S 1 = 2        S {∅} = {∅, {∅}} = 2

S 0 = 1
S 1   = S (S 0)
S 1 = S {0} 


= S {∅} = {0,1} = {∅, {∅}} = 2
S 2 = S {0,1} = {∅, {∅}, {∅, {∅}}} = 3




-------------------------------------------------
S {0, …, n-1} + m = S ({0, …, n-1} + m)




=================================================
S n = {0, 1, …, n - 1, n}   -- rec3
S 0 = 1 = {0}
S 1 = 2 = {0, 1}
S 2 = 3 = {0, 1, 2}
S 3 = 4 = {0, 1, 2, 3}
    S n = {0, 1, …, n - 1, n}
=================================================
S n = n ∪ {n}              -- rec1
--------------
S 0 = 1
  = 0 ∪ {0}
    = {} ∪ {{}}
    = {{}}
    = 1
  = {0}
    = 1
--------------
S 1 = 2
  = 1 ∪ {1}
    = {∅} ∪ {{∅}}
    = {∅ }∪{ {∅}}
    = {∅  , {∅}}
    = {∅, {∅}}
    = 2
  = {0, 1}
    = 2
--------------
S 2 = 3
  = 2 ∪ {2}
    = {∅,{∅}} ∪ {{∅,{∅}}}
    = {∅,{∅} }∪{ {∅,{∅}}}
    = {∅,{∅}  , {∅,{∅}}}
    = {∅, {∅}, {∅,{∅}}}
    = 3
  = {0, 1, 2}
    = 3
--------------
S 2 + 1 = 4
  = (2 ∪ {2}) + 1
    = {∅, {∅}, {∅,{∅}}} + 1
    = {∅, {∅}, {∅,{∅}}} + {∅}
    ? {∅, {∅}, {∅,{∅}}} ∪ {∅} = {∅, {∅}, {∅,{∅}}}
    ? 3 ∪ 1 = 3

    = {∅, {∅}, {∅,{∅}}, {∅,{∅},{∅,{∅}}}}
    = 4

  = {0, 1, 2} + 1


  = {0, 1, 2 ,3}
    = 4

=================================================
-- ∅        + m = m         0 + m = m
-- {∅}      + m = S m       1 + m = S m
-- {∅, {∅}} + m = S S m     2 + m = S (S m)
-- S n      + m = S (n + m)
-- S n      + m = S ({0, 1, …, n - 1} + m)
-- S 0 + m = S ({0} + m)
-- S n = {0, 1, …, n - 1, n} -- successor#D1

  0 = {}         -- base
S n = n ∪ {n}    -- rec
S 0 = {} ∪ {{}} = {{}}


  1 = {∅}
  1 = {∅} ∪ {{∅}} = {{∅}, {{∅}}}

  1 = {0}

  1 = 1 ∪ {1} = {1, {1}}

  2 = {∅, {∅}}
  3 = {∅, {∅}, {∅, {∅}}}
  4 = {∅, {∅}, {∅, {∅}}, {∅, {∅}, {∅, {∅}}}}

S n = {0, 1, …, n - 1, n} -- successor#D2
  n = {0, 1, …, n - 1}    -- nominal#D2
  0 = {}
  1 = {0}
  2 = {0, 1}
  3 = {0, 1, 3}
  4 = {0, 1, 2, 3}
```


    - 1 + 0 = 1
      {∅} + ∅ = {∅}
  - >Is it consistent in arith with + of pairs?



---
Representations of relations:
- graph
- matrix
- adjacency list
- incidence list

* Relations in the context of set theory:
  - Let:
   `A` set, 
   `B` set, 
   `S` set, 
   `n = |A|`, 
   `m = |B|`, 
   `s = |S|`, 
   `P = A ⨯ B`
   `W = A ⨯ A`
   `𝒫(S)` powerset of S
   `𝒫(A ⨯ B)` powerset of S
   `𝒫(A ⨯ A)` = `𝒫(A²)`, powerset of S
- In general, a relation is an association between math objects.
- In set theory (there is nothing but sets so), a relation is an association between sets. However, a rel between A and B is completely defined by the associations of elements of A to elements of B.

- set, set of ordered pairs
- as a function, `A -> {B}`, maps each elem a ∈ A to a subset of B s.t. 
  `a ⟼ {f a | f a ∈ B}`
- `R ⊆ A⨯B`, a rel R between A and B is a subset of Cartesian product
  - each rel `Rᵢ` between A and B is a subset of the Cartesian product, `Rᵢ ⊆ A⨯B`

   powerset `Rᵢ = 𝒫(A⨯B)` where `i = {0, 1, …, 2ⁿᵐ}`
  - each rel `Rᵢ` between A and B is an element in the powerset `Rᵢ = 𝒫(A⨯B)` where `i = {0, 1, …, 2ⁿᵐ}`
