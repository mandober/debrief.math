# Equivalence relation :: Examples


For example, if `A` is the set of all cars, and `∼` is the equivalence relation "has the same color as", then one particular equivalence class consists of all green cars.


## Example #1: Equality is equivalence relation

A canonical example of an equivalence relation is the equality relation, `=`, which partitions a nonempty set `A` into a family of subsets each of which is a singleton set containing one element of `A`.

*Equality as an equivalence relation is the finest filter* - it always partitions a set in as much equivalence (singleton) classes as there are elements in it.

A = {1,2,3}, `R/₌ = {{1},{2},{3}}`

⟨QUERY: Which equivalence relation produces the most coarse filter? That is, which eq rel puts all elements in a single eq class?⟩


## Example #2: Universal relation is equivalence relation

If a relation `R` on a set `A` is actually `R = A²`, then `R` is indeed an equivalence relation.

>The universal relation on any nonempty set is an equivalence relation.

Let set A = {1,2,3}.   
relation `R` on a set `A`, `R ⊆ A²`, is defined as:

```
R = { (1,1) , (1,2) , (1,3)
    , (2,1) , (2,2) , (2,3)
    , (3,1) , (3,2) , (3,3)
    }
```

Is `R` an equivalence relation?

- since `R = A²`, it surely is. 


Reflexivity:
- a ∼ a
- it needs to have 3 ordered pairs (x,x) to be reflexive, which it does:
- {(1,1),(2,2),(3,3)}

Symmetry:
- if a ∼ b then b ∼ a
- if it has a pair (x,y) then it must also have a pair (x,y)
- {(1,2),(2,1)}
- {(2,3),(3,2)}
- {(1,3),(3,1)}

Transitivity:
- if a ∼ b and b ∼ c then a ∼ c
- if there's a pair (x,y) and (y,z) then there must be (x,z)
- if {(1,2),(2,3)} then {(1,3)}: it does have it

All 3 properties hold, so `R` is indeed an equivalence relation.
