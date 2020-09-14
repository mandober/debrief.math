# Range

Given two sets `A` and `B`, where `∀a ∈ A` and `∀b ∈ B`, and a function 
`f :: A -> B`, the set A is the domain and the set B is the codomain of the function `f`. The function `f` is defined by the set of ordered pairs 
`f = {(a,b)}`.

From the definition of a function we know that not every codomain element need be associated with a domain element. Those elements of the codomain that do participate in the functional relation constitute the **range**, which is a subset of the codomain (sometimes a proper subset).

This distinction between the entire codomain and its subset, i.e. the range, wrt to some function, brings about the controversy regarding the definition of any function and its mentioning of the codomain. Therefore, defining a function as a triplet `{f, a, b}` is insufficient because we know that the entire domain is included in this definition, but we cannot say the same about the codomain. This same triplet might repr several functions that have the same range but different codomains (btw, they'd be subsets of each other). So, more explicit repr would be `{f, A, B}` with domain and codomain explicitly mentioned.

A range is one of the two factors that makes distinction between any function, an injection and surjection. The other factor is whether an element of a range is uniquely associated (i.e. one-to-one) with a domain element, wrt some function.

* A function: *dom >= img <= cod* and *many-to-1*
* Surjection: *dom >= img =  cod* and *many-to-1*
* Injection : *dom =  img <= cod* and *1-to-1*
* Bijection : *dom =  img =  cod* and *1-to-1*
