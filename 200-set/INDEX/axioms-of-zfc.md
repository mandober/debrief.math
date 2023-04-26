# ZFC Axioms

1. Axiom of Extensionality:     
  `∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ (a = b))`

2. Axiom of Regularity:    
  `∀x (x ≠ ∅ -> ∃y((y ∈ x) ⋀ (y ⋂ x = ∅)))`

3. Axiom Schema of Specification:     
  `∀(w₁ … wₙ) ∀a (∃b (∀x (x ∈ b -> (x ∈ a ⋀ φ(x, w₁, …, wₙ, a)))))`

4. Axiom of Pairing:    
  `∀x ∀y ∃p ((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))`

5. Axiom of Union:    
  `∀𝓕 ∃a ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 -> x ∈ a)`

6. Axiom Schema of Replacement:   
  `∀a ∀(w₁ … wₙ) ∀x ((x ∈ a -> !∃y.ϕ) -> ∃b ∀x (x ∈ a -> ∃y (y ∈ b ⋀ ϕ)))`

7. Axiom of Infinity:   
  `∃x ∃e (∀z (z ∉ e) ⋀ (e ∈ x) ⋀ ∀y (y ∈ x -> (Sy ∈ x)))`

8. Axiom of Powerset:    
  `∀z ∀x (z ⊆ x -> ∀q (q ∈ z -> q ∈ x))`

9. Well-Ordering Theorem:   
  `∀x ∃R (R 𝙬𝙚𝙡𝙡-𝙤𝙧𝙙𝙚𝙧𝙨 x)`







7 core axioms of Zermelo Fraenkel set theory
https://www.youtube.com/watch?v=qfEe9luJmVE


1. Axiom of extensionality 
states that any two sets with the same members are considered equal.

`∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ a = b`

a = {1,2}, b = {1,2}, a = b

* The sum axiom (flatten)
states that, for any set `a` (of sets), one can form a set `c`, comprised of all elements belonging to the sets contained in `a`.

`∀a ∃c (∀x (x ∈ c ⟺ ∃b (x ∈ b ⋀ b ∈ a)))`

a = { b₁ = {1,2}, b₂= {3,4}, b₃ = {5,6} }   
c = {1,2,3,4,5,6}


* The power set axiom 
states that given any set `a` one can form the set `b` of all subsets of `a`.

If every el of `s` is in `a`,
then `s` is a subset of `a`.

s ⊆ a := ∀a ∃s (∀x (x ∈ s ⋀ x ∈ a))
s ⊆ a := ∀a ∀s (∀x (x ∈ s -> x ∈ a))

If `s` is a subset of `a`, 
then `s` is an element of `p`.

`∀a ∃p (∀s (s ⊆ a -> s ∈ p))`

`𝓟(a) = p = { x ∈ p | x ⊆ a }`

a = {1,2}   
p = { b₀ = {}, b₁ = {1}, b₂= {2}, b₃ = {1,2} }


* Axiom of union



* Axiom of infinity



* Axiom schema of replacement



* Axiom of power set



* Axiom of regularity



* Axiom schema of specification






the axiom of regularity states that no infinite descending chain of nested sets is possible. 

the axiom of infinity states that there is at least one infinite set. this axiom allows us to form our concept of the number system 

the axiom of Cardinals pertains to different sizes of infinity to infinity are considered equal in size when the respective objects can be placed in one-to-one correspondence otherwise the infinities are of unequal value

the axiom of replacement states that for a functional predicate Phi one can apply the functional predicate to all elements of a given set a transforming it into a new set B consisting of the resulting values.
