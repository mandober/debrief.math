# Set theory :: Elementary notions :: Set Equality

- name: set equality
- symbol: `=`
- logical element: binary relation (predicate), `x = y`
- kind: primitive notion inherited from FOL

Equality of sets is an elementary notion in set theories, with the notion of equality inherited from FOL.

There are FOL variants which do not postulate equality as a primitive notion, in which case a theory that has such variant of FOL as its formal language needs to define the notion of equality for itself. In set theories, this is easily done and anyway postulated by the axiom of extensionality: 
`∀A∀B∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B`

It defines that two sets are equal, `A = B`, precisely when they have the same elements. A consequence of Extensionality is also the fact that the order in a set is immaterial, as well as the fact that the multiplicity of elements is immaterial.

The equality is defined in terms of the primitive notion of set membership. 
>Both membership and equality are binary relations.

A half of this bijection actually defines the notion of a subset: 
`∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇔ A ⊆ B`

So, equality is defined in terms of subsets as: 
`A ⊆ B ∧ B ⊆ A ⇔ A = B`
