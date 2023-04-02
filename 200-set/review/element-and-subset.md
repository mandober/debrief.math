# Set FAQ

https://www.quora.com/Can-a-set-A-be-a-subset-and-an-element-of-a-set-B
https://www.quora.com/Can-an-element-of-a-set-be-a-subset-itself-Are-there-any-examples
https://www.quora.com/How-do-I-explain-that-A-is-an-element-of-set-A-and-set-A-is-a-subset-of-set-B
https://www.quora.com/Discrete-Mathematics-What-is-the-difference-between-being-an-element-of-a-set-or-being-a-subset-of-a-set
https://www.quora.com/What-are-some-sets-A-and-B-such-that-A-is-an-element-of-B-and-A-is-not-a-subset-of-B



## Can set A be an element and a subset of set B?

_A ∈ B ∧ A ⊆ B_ ?

* Examples, such as `A = {1}` and `B = {{1},1}`, are correct, but might seem artificial. Here are examples that occur "naturally" and early on: let `A = ∅`, `∅` is a subset of every set, `∀A(∅ ⊆ A)`; let `B = 𝒫(A)`, the power set of set `A`. Then `A` is an element of `B`, and `A` is also a subset of `B`.

* If we take a set `A`, we can construct the set `B = A ⋃ {A}`. Since every element of `A` is (by definition of union) in the new set `B`, so `A` is both a subset and an element of `B`. So, `A ⊆ B ∧ A ∈ B`.
- `A ∈ (A ⋃ {A})`
- `A ⊆ (A ⋃ {A})`

## Recall the definitions

* (definition 1) **Subset**    
  A set `A` is a subset of set `B` iff each element of `A` is also in `B`. 
  `∀a(a ∈ A -> a ∈ B) ⇔ A ⊆ B`

* (definition 2) **Subset**    
  A set `A` is a subset of set `B` iff `A ∈ 𝒫(B)`. 
 `∀A ∀B [A ⊆ B     ⇔   A ∈ 𝒫(B)]`
  ∀A ∀B [A ⊆ B     ->   A ∈ 𝒫(B)]
 `∀A ∀B [A ⊈ B     ⋁    A ∈ 𝒫(B)]`    ie  ∀A ∀B [¬(A ⊆ B) ∨ A ∈ 𝒫(B)]
 `∀A ∀B [A ∉ 𝒫(B)  ->   A ⊈ B]`       ie  ∀A ∀B [¬(A ∈ 𝒫(B)) -> ¬(A ⊆ B)]
  ∀A ∀B [A ∈ 𝒫(B)  ->   A ⊆ B]
 `∀A ∀B [A ∉ 𝒫(B)  ⋁    A ⊆ B]`       ie  ∀A ∀B [¬(A ∈ 𝒫(B)) ∨ A ⊆ B]
 `∀A ∀B [A ⊈ B     ->   A ∉ 𝒫(B)]`    ie  ∀A ∀B [¬(A ⊆ B) -> ¬(A ∈ 𝒫(B))]


* (definition 3) **Equality via inclusion**    
  A set `A` is equal to set `B` if and only if, 
  each element is in `A` if and only if it is also in `B`. 
  `∀a(a ∈ A ⇔ a ∈ B) ⇔ A = B`
  A ⊆ B ∧ B ⊆ A ⇔ A = B
  ∀a(a ∈ A -> a ∈ B) ⇔ A ⊆ B
  ∀a(a ∈ A <- a ∈ B) ⇔ A ⊇ B



## _A ∈ S_ AND _A ⊆ S_ ?

* let S = {1, {1}}
  then A = {1}
  is both `A ∈ S` (the "last" one)
  and `A ⊆ S` since every element of `A` is in `S`, i.e. 1 ∈ A AND 1 ∈ S
  THUS, `A ∈ S ∧ A ⊆ S`

* let S = { {1}, {{1}} }
  then A = {1}
  is both `A ∈ S` (the "first" one)
  but `A ⊈ S` since every element of `A` is NOT in `S`, i.e. 1 ∈ A but 1 ∉ S

* let A be any set, 
  then `A ∈ A ∪ {A}` and `A ⊆ A ∪ {A}`


## _A ∈ A ∪ {A}_ AND _A ⊆ A ∪ {A}_ ?

Sure! For any set `A`, the union of `A ∪ {A}` by def means that `A ∈ A ∪ {A}`. Also, `A ⊆ A ∪ {A}` since for any set `A`, `A ⊆ {A}` holds.

* Example, `A = {1}`, then `B = A ⋃ {A} = {1} ⋃ {{1}} = {1,{1}}`
  So, `A ∈ B` since `{1} ∈ {1,{1}}`
  and `A ⊆ B` since `{1} ⊆ {1,{1}}`


## Powersets

S             = {}
𝒫(S)          = {∅}
𝒫(𝒫(S))       = {∅, {∅}}
𝒫(𝒫(𝒫(S)))    = {∅, {∅}, {{∅}}, {∅,{∅}}}
𝒫(𝒫(𝒫(𝒫(S)))) =
  {           ∅
  ,          {∅}
  ,        { {∅} }
  ,       {{ {∅} }}
  ,     {∅,{ {∅} }}
  ,   {{∅},{ {∅} }}
  , {∅,{∅},{ {∅} }}
  ,               {∅,{∅}}
  ,             { {∅,{∅}} }
  ,           {∅, {∅,{∅}} }
  ,         {{∅}, {∅,{∅}} }
  ,       {∅,{∅}, {∅,{∅}} }
  ,       {{{∅}}, {∅,{∅}} }
  ,     {∅,{{∅}}, {∅,{∅}} }
  ,   {{∅},{{∅}}, {∅,{∅}} }
  , {∅,{∅},{{∅}}, {∅,{∅}} }
  }





## leftovers


a = ∅
b = {∅}
c = {{∅}}
d = {∅,{∅}}

(1 + 4 + 6 + 4 + 1 = 2⁴)
𝒫(a,b,c,d) =
  { ∅
  , {a}
  , {b}
  , {c}
  , {d}
  , {a,b}
  , {a,c}
  , {a,d}
  , {b,c}
  , {b,d}
  , {c,d}
  , {a,b,c}
  , {a,b,d}
  , {a,c,d}
  , {b,c,d}
  , {a,b,c,d}
  }



S ∈ 𝒫(S)
S ⊆ 𝒫(S)

Z = {a,b,c,d}
