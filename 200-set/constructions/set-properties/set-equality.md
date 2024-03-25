# Set equality

Equality on sets is extensional:
1. Two sets are equal iff they have the same elements.
2. Two sets are equal iff they are subsets of each other.


1. Two sets are equal iff they have the same elements:

`(∀x(x ∈ A ⟺ x ∈ B)) ⟺ A = B`

If 
  all elements in `A` are elements in `B` 
and 
  all elements in `B` are elements in `A` 
then 
  `A = B`


2. Set equality may also be expressed in terms of the subset (inclusion) relation. Set A is a subset of set B if all elements in A are elements in B:   
`(∀x(x ∈ A -> x ∈ B)) ⟺ A ⊆ B`   
If all elements in set `A` are elements in set `B` then `A ⊆ B`.

Therefore, two sets are equal iff 
set `A` is subset of set `B` 
and `B` is subset of `A`:    
`(∀x(x ∈ A -> x ∈ B)) ⟺ A ⊆ B` AND    
`(∀x(x ∈ B -> x ∈ A)) ⟺ B ⊆ A` THEN `A = B`    
that is,   
`(∀x ((x ∈ A -> x ∈ B) ⋀ (x ∈ B -> x ∈ A)) ⟺ A = B)`   
that is,   
`A ⊆ B ⋀ B ⊆ A -> A = B`

# Set equality

Two sets are *equal* if they contain the same elements.

```js
∀x(x ∈ A -> x ∈ B) -> A ⊆ B
∀x(x ∈ A <- x ∈ B) -> B ⊆ A
----------------------------
∀x(x ∈ A ⟺ x ∈ B) ⟺ A = B
----------------------------
(A ⊆ B ⋀ B ⊆ A) ⟺ A = B
```

Two sets are *equivalent* if and only if a bijection (one to one correspondence) exists between them.
