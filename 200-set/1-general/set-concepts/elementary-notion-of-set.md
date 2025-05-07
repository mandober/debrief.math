# Set theory :: Elementary notions :: Set

Set is often introduced as a primitive concept, together with the primitive relation of set membership (∈).

ZFC only postulates the existence of the empty set, which is anyway sufficient for all set constructions. Then the ZFC axioms define what constructions are permissable.

Some set theories (like NBG) define a set as any element of the universal class 𝒰. They also define a class as any subclass of the universal class 𝒰.

## Subset

Subset is not an elementary notion - it is defined in terms of set membership: 
`∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇔ A ⊆ B`

So equality is also defined in terms of subsets: 
`A ⊆ B ∧ B ⊆ A ⇔ A = B`

Let A = {1} and B = {1,2}, and A ⊆ B. 
Then, since `⊆` is a relation and a set, 
`⟨A,B⟩ ∈ ⊆` and 
`⊆ᴀʙ = { ⟨A, B⟩ }` is 
`⊆ᴀʙ = { ⟨{1}, {1,2}⟩ }`
