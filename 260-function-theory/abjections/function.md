# Function (abjections)

f : A -> B

f(a) = b

graph(f) = { (a, f(b)) | a ∈ A }

∀a ∈ A. ∃b ∈ B. f(a) = b
∀a∃b.[a ∈ A ⋀ b ∈ B -> f(a) = b]

∀aa' ∈ A. f(a) = f(a') <=> a = a'
∀aa'.[(a ∈ A ⋀ a' ∈ A) -> (f(a) = f(a') <=> a = a')]

∀b ∈ B. ∃a ∈ A. f(a) = b


∀b∃a ∈ A. f⁻¹(b) = a <=> f(a) = b

∀b ∈ B. ∃a ∈ A. f⁻¹(b) = a <=> f(a) = b



A total function (or just function) is a relation where each member of the domain is associated with (at most) one element of the codomain.

Properties:
- all elements of the domain are engaged
- some elements of the codomain are engaged
- a distinct domain element, `x`, cannot be associated with more than one codomain element: 


A function is a special relation `R` between two sets `A` and `B`, consisting of a set of ordered pairs `(a,b)` where `a ∈ A` and `b ∈ B`


R ⊆ A ⨯ B

denoted `f : A -> B`, and 

f : A -> B
graph(f) = { (x, y₁), (x, y₁) }

 f(x) = y ⋀ f(x) = z ⋀ y ≠ z

in non-injective and non-surjective if 
