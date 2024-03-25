# How to define a theory of sets





After Cantor introduces them, sets were considered mathematical objects in their own right. Trying to establish *a theory of sets* with a look toward making it a viable candidate for the FOM, we start by determining the central notion - notion at the hear tof a theory - we got that covered.

nothing but the primitive notion of set. Actually, we'll introduce everything we need as primitives objects or notions, possibly formalizing (i.e. defining) it later if an oportunity to do so arises.

Initial primitives
- central notion: *set*, i.e. the means of gathering together objects in collections called sets
- set membership: a binary relation symbolized by `∈`
- set equality: a binary relation symbolized by `=`
- the empty set, `{}`, symbolized by `∅` - **primitive or axiom or defined?**

The basic primitive is a binary relation `∈`, called *set membership*. Another primitive is the binary relation *equality*, `=`.

Mathematical theories are preferrably specified in first-order logic (FOL), and so are almost all existing set theories. *FOL is the language of set theory*.

The creation of any theory starts by determining its central concept, which we have covered. The central notion is undefined, whether it is introduced as a primitive or via axioms. We introduce the concept of sets as a primitive notion - it is actually the means by which we can gather together arbitrary *objects* to form a collection called a *set*. We posit that a set contains objects which are then called its *elements* or *members*. So far so good, but the problem is we are fresh out of objects; we don't have any to put in a set.





We first need to establish the domain of discourse (DOD) that contains individuals, which in this case are sets. This means that variables range over the DOD, i.e. they range over all possible sets. For now, we don't have any, but to avoid having the empty DOD, we can quickly define our first set as the set containing nothing, i.e. the empty set, and honor it with a distinctive symbol `∅`.

## Formal definition of the empty set

To define the empty set more formally, we can use a predicate, `E(x) := x ≠ x`, 

to restrict the objects allowed in the set `m` (the set undergoing construction intended to be empty), such that only objects that satisfy an unsatisfiable formula, like `x ≠ x`, are permitted as elements of set `m`.

A FOL formula that expresses this is `∃m(∀x(x ∈ m ⇒ E(x)))`. It says that there exists a set `m` such that for all objects `x` (vars range over the items in DOD, which are sets - but at the moment DOD is empty - so `x` already ranges over nothing, which is enough to define an empty set; but, for future's sake, we can use that as a hypothesis with the conclusion that `x` satisfies `E(x)`
implication out of it saying that ),



`∃m(∀x(x ∈ m ⇒ x ≠ x))`.


s = { x | E(x) }
E(x) := x ≠ x
∅ = { x | x ≠ x }


FOL has predicates which are actually relations. In fact, a unary predicate like `P(x)` is most often called a property, while a binary one like `R(x,y)` is most often called a predicate or a relation. Predicates of arity larger than 2, e.g. `Q(x,y,z)`, are usually called relations. A predicate yields a FOL statement (sentence).

## Ed
