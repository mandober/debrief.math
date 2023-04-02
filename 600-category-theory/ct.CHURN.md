# Category Theory :: THE CHURN

## Epimorphism and monomorphism

The definition of an epimorphism states:    
In a cat `C`,   
for all objects `c`   
and for all arrows `g₁, g₂ : b -> c`    
if <g₁ ∘ f = g₂ ∘ f> => <g₁ = g₂>    
then `f : a -> b` is an **epimorphism**.

And similarly for the definition of monomorphism.

However, I have a problem with the implication:    
<g₁ ∘ f = g₂ ∘ f> => <g₁ = g₂>    

taken as a lemma (which it often is, when trying to carry out this proof), it makes absolutely no sense. That equality of the composite functions cannot imply the equality of the two `g` functions! I can preset g₁ and g₂ to be distinct functions differing, e.g. in at least one elem outside the `ran f`, and agreeing on all the elements in `ran f`. Then the two composite functions will necessarily be equal but the two `g` functions will necessarily be distinct.
