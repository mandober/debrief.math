# Limits and Colimits


## Limits and Colimits

from Catsters: https://www.youtube.com/watch?v=yeQcmxM2e5I&list=PLE337D7DEA972E632

Limits and colimits are a kind of universal objects in a category. Universal objects have the *universal property*, which makes them "simply the best" out of all other objects that compete for the same role. One of these roles is terminal and initial object.

## Terminal object

Given a category C, the terminal object T is the object whose universal property makes sure that it is the object with an arrow from any other object (the arrows stop there).

`T ∈ C. ∀X ∈ C. !∃(X -> T)`

The object T in a category C is terminal if, given any other object, X, in the category C, there is a unique arrow from X to to the terminal object T.

For example,
* in category of sets, any singleton set is a terminal object because there can only be one function from any other (nonempty) set to the singleton set; that function takes each domain element and sends it to the only codomain element. There may be many singleton sets, tha tis, many terminal objects but due to the isomorphism of the sets/types with the same cardinality, they're virtually the same. Also they are unique up to the canonical isomorphism (being unique up to the unique isomorphism is a muc stronger categorical statement, now important here).
* in category of Groups, the trivial group is terminal
* in category of Speces, any 1-point space is terminal
* in a poset with arrows a -> b, meaning a <= b, the maximal object is teminal

Examples of cat without terminal objects
* o ⇉⇉⇉⇉⇉⇉ x (2 different arrows)
* a -----> b   c ---> d
* poset or any infinite object cat: a --> b --> c --> d --> e --> ...

terminal obj often writen 1. initial 0.

## Initial object

## Product
