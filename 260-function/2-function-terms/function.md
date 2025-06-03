# Function Theory :: Definitions :: Function

[definition_function-as-relation] 
A function `f : A -> B` between a domain set `A` and a codomain set `B` is
- a relation, `f ⊆ A⨯B`, that is
- right-unique: `∀a,a′ ∈ A. ∃b ∈ B. aRb ⋀ a′Rb ⟹ a = a′`
- left-total:   `∀a    ∈ A. ∃b ∈ B. aRb`

[definition_fn-as-fn] 
A function `f : A -> B` between a domain set `A` and a codomain set `B` is
0. a relation, `f ⊆ A⨯B`
1. right-unique: `∀a,a′ ∈ A. ∃b ∈ B. f(a) = f(a′) ⟹ a = a′`
2. left-total:   `∀a    ∈ A. ∃b ∈ B. f(a) = b`




The most important property of functions is (1) right-uniqueness or univalence
  `∀a,a′ ∈ A. f(a) = f(a′) ==> a = a′`    
i.e. the fact that any domain element is associated to *exactly one* codomain element. In other words, it cannot ever happen that there are two outgoing arrows from a single domain element. (however, it is ok if there are two incoming arrows in a single codomain element in case of general functions; but not in case of injections).


The property (2) says that the entire domain must be covered.
  `∀a ∈ A. ∃b ∈ B. f(a) = b`    
left-total (or left-serial) property holds only for total functions, while (1) must hold for both partial and total functions.



[def_fn-as-rel] A binary relation `R ⊆ A⨯B` is a *functional relation* (i.e. a function) if it is both:
- left-total:   `∀a    ∈ A. ∃b ∈ B. aRb`
- right-unique: `∀a,a′ ∈ A. ∃b ∈ B. aRb ⋀ a′Rb ⟹ a = a′`


[definition_partial-function] 
A function `f : A -> B` between a domain set `A` and a codomain set `B` is a partial function if it is only right-unique, without also being left-total (i.e. some domain elements do not participate in the relation):
- right-unique:   `∀a,a′ ∈ A. ∃b ∈ B. aRb ⋀ a′Rb ⟹ a = a′`
- non-left-total: `∃a    ∈ A. ∃b ∈ B. aRb`
