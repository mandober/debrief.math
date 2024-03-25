# Using sets to emulate logic

Approaches to emulating logic using sets to represent truth values

Approach 1
- empty set as `false`
- singltons as `true`

We need to be able to obtain either the empty set or a singleton set. A singleton set must have precisely one element, no more and no less. Due of this restriction it already seems like the second approach is way easier (where any non-empty set represents 'true'). This is a problem because we can almost emulate conjunction with the Catesian product, except in the case when we need to obtain a singlton set from `{∅} ⨯ {∅}`, which actiually amounts to:

- {∅} ⨯ {∅} = {(∅,∅)}
-  ∅  ⨯ {∅} =  ∅
- {∅} ⨯  ∅  =  ∅
-  ∅  ⨯  ∅  =  ∅


- {a} ⨯ {a} = {(a,a)}
- {1} ⨯ {1} = {(1,1)}

(a,b) := {{a}, {{a,b}}}
(a,a) := {{a}, {{a}}} = {{a}, {{a,a}}}
(∅,∅) := {{∅}, {{∅}}} = {{∅}, {{∅,∅}}}



Approach 2
- empty set as `false`
- non-empty set as `true`


We can simulate logical connnectives `¬`, `→`, `∨`, `∧` with operations on sets
- Cartesian product
- disjoint union
- obtaining quotient sets by equvalence relations


If P is `∅` (false, logical 0) 
and Q is `{∅}` (true, logical 1), 
and the set we need is `∅` (false, logical 1), 
we can use the Cartesian product:
`∅ ⨯ {∅} = ∅`
since `∅ ⨯ A = ∅ = A ⨯ ∅`.





If both P and Q are `{∅}` (logical 1) and we need to get the set `{∅}` (logical 1) 





In the first approach, the connectives

p | q | p ∧ q | P | Q | P ⋀ Q
1   1     1    {∅} {∅}  {∅} by a quotient set



(e.g. as a result of `∧` or `∨`)

We obtain a quotient set `{∅}` 
