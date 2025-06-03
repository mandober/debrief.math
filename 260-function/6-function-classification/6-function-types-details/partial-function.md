# Partial function

https://en.wikipedia.org/wiki/Partial_function


A function that is not defined for some domain elements. A well-known example is the division function, `(÷) : ℝ² → ℝ`, which is undefined when the second argument (the devisor) is 0. Generally, all functions can be considered partial functions as partiality makes for a bigger set then totality. However, when the term "function" appears unqualified, it normally denotes a total function; more often then not, we have to qualify partial functions explicitly. So, total functions are a subset of partial functions, which, in turn, are a subset of relations, TF ⊆ PF ⊆ Rel. In other words, total functions are partial functions whose all domain elements participate in the relation.

Partial functions show that the most important property of being a function is right-uniqueness (aka univalence, functional relation), i.e. that an element of the domain (which participates in the relation) is associated to exactly one element on the codomain; if it would be associated to more then one codomain element that would be a relation, not a function; and, due to partiality, a domain element may not be associated at all. So, if any domain element is associated exactly once, that is a total function; if it is associated more then once, that is a relation; if it is associated zero times or once, that is a partial function.

If `f : A → B`, then `∀x ∈ A. ∃yz ∈ B. f x = y ∧ f x = z ⇒ y = z`, i.e. if `x` is mapped by `f` to `y` and `x` is mapped by `f` to `z`, then `y` and `z` better be the same element or this is not a function (total or partial).

But just how many domain elements are allowed to skip participation in the relation for that relation to be called a partial function? What if all domain element fail to participate? Curiously, that is allowed! The empty function is an example of a partial function where no elements participate in the relation.
