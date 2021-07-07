# Category

A category, `𝒞`, consists of these components:
- collection of objects, `Obj(𝒞)`, that are merely anchors for arrows
- collection of arrows, `Arr(𝒞)`, the true elements of a category
- the binary operation of composition of arrows, `∘`
- the axiom of *associativity* wrt the composition of arrows
- the axiom of *identity*: each object has an identity arrow (id element)
- the axiom of transitive *closure*


**The axiom of transitive closure** states

**The axiom of identity** states that each object, `A`, in a category, `𝒞`, must have an identity arrow, denoted by `1ᴀ` or `idₐ`.


`∀A ∈ Obj(𝒞). ∃idᴀ. idᴀ ∈ Arr(𝒞)` ∧ `idᴀ = 𝒞(A,A)` i.e. `idᴀ: A -> A`

idᴀ = 1ᴀ = idₐ
∀A ∈ Obj(𝒞)
1ᴀ ∈ Arr(𝒞)
1ᴀ ∈ 𝒞(A,A)
1ᴀ: A -> A

The identity axiom usually ensures that the attached binary operation (here composition of arrows) has a unit. However, the same category may have many objects, so there will be an identity arrow for each object. This means there is no single identity element (arrow as an element) that is a unit wrt to the binary operation of composition. At least, not with composition as a whole i.e. wrt composition as the operation that acts on the entire category.


Normally, a unit, or identity or neutral element, leaves the other operand unaffected when combined with other elements in a particular operation.

. Here, the elements are arrows in a category, so there are as much of identity arrows as there are objects in a category.

This is not really how thing work with set-carried algebraic structures - these have only one identity wrt to their binary operation. The id element is a unique element in the underlying set, and it acts as a neutral element when combined (via the binop) with other elements (members of the underlying carrier set). However, with a category, there are multiple identity elements i.e. arrows, one for each object in the category.


Does a category, as a whole, have an identity element (arrow or something). Sure! But it's not an arrow but a functor, the identity functor.


the identity element of the binary operation, which is composition of arrows.


every time there is an arrow `f: a -> b` and an arrow `g: b -> c`, then there must be an arrow `g ∘ f: a -> c`, i.e. their composition. Formally,

`∀fg ∈ 𝒞` . (`f: a -> b` ∧ `g: b -> c`) => `g ∘ f: a -> c`

A category is a collection of objects, arrows that go between the objects, the binary operation of arrow composition, and the two axioms that need to be respected: the axiom of identity and the axiom of associativity. These two axioms need to be satisfied by objects and arrows of a category with respect to the composition operation, `∘`.

Categories are directed multigraphs with a composition and identity structure.

As a mathematical algebraic structure, a category has abstract objects as a elements, although they are really just anchors for the arrows, which are the real elements, together with a binary operation of composition of arrows, which is associative and has an identity element (id element is an arrow, not an object).

In abstract algebra, group-like algebraic structure include structures with a set, called carrier set, and a binary operation over the set's elements, with a set of axioms upheld. The hierarchy of group-like structures begins with *magma*, which only respects the *axioms of closure*, meaning that the combination of any two elements of the carrier set, yields a result that is also in the set. A magma, whose binary operation is additionally associative, is a *semigroup*. A semigroup whose binop has the identity element (a memeber of the carrier set) is a *monoid*. And a monoid  whose binop supports invertability is a *group*. Finally, a group that is commutative (with respect to its binop) is an *Abelian group*. A *category as an algebraic structure* is the most similar to a monoid, but without the closure requirement, only associativity and identity of its binary operation i.e. composition wrt to the arrows in a category.

*The essence of a category* are primarily the arrows that relate one object to another, as well as all the ways the arrows are composed. Arrows reveal relations between objects, they show us how an object is related to other objects in a category and in that way we can gather info about it.

Category theory emphasizes the arrow-orientated view, rather than an object-orientated view into categories. Objects are just abstractions necessary to anchor the arrows, but objects themselves hardly provide any information. It is from its network of connections that we obtain info about a category. So any object is determined only by its connections to other objects, related by the arrows (an object is the company it keeps).

Beginning CT, it is instructional to consider 𝗦𝗲𝘁 category first, after all, categories are generalization of sets, and sets reveal a lot of info about their structure, a task that is not so easy (but it is still achievable) from a categorical perspective, i.e. when we examine 𝗦𝗲𝘁 category and the sets within. We just have to be careful not to conflate functions with arrows in general because arrows are much more general and sometimes don't even resamble functions. That said, in many categories, however, arrows are indeed functions.
