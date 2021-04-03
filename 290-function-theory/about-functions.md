# About functions



# Functions in programing languages

A mathematical function is *pure* and side-effects free. Side-effects do not occur in math, but their absence complements what is intended by the notion of a pure function when the concept of functions is transplanted into a PL, which are abundant in effects.



> A function is an abstract model of computation.

A function takes an input and produces an output (that we interpret as the result).

The essential property of functions is that the output is completely determined by the input. A pure function always produces the same output given the same input.

If a pure function is repeatedly applied to the same argument, it produces the same result every time.

Functions are an important tool in math, even more so in computing because they provide the principal mechanism of code abstraction; parts of related code can be extracted and grouped under the same name, becoming a new named unit in a PL, similar to the predefined primitives.

There are a few ways to formalize the meaning of a function:
- function as special relations
- a function can be completely determined by its graph of `{(x, f(x))}` pairs
- a function can be completely determined by a formula/rule for how to produce the results
- a function can also be completely opaque, a "black box" whose internal details need not be known; to use it, a programmer just needs to know its public methods, i.e. its public interface (the API).



## Functions as special relations

Function as a special type of relation (serial and functional i.e. left-total, right-unique); thus, considering two sets `A` and `B`, their Cartesian product, `A×B = { (a,b) | a ∈ A ∧ b ∈ B }`, is the set of all ordered pairs. Relations between A and B are a subset of the Cartesian product. The Cartesian product is, in fact, an extreme relation called the total relation. The other extreme relation is the null relation, a relation that is the empty set. In between these two extremes are all other relations between A and B, some of which have properties needed to be deemed functions.



```hs
dotProduct :: Set a -> Set b -> Set (a,b)
dotProduct as bs = [ (a,b) | a <- as, b <- bs ]
```

functions are subset of relations 
`Fn ⊆ Rel ⊆ A×B`

## Graph of a function

A function is a relation that is functional (left-total) and serial (right- unique). Like any relation, a function is determined by a set of ordered pairs, where the first component of an ordered pair comes from the function's domain set, and the second component comes from the the function's codoamin set.

If we have a function from set A to set B, `f: A -> B`, where `a ∈ A ∧ b ∈ B`, then the function is a set of ordered pairs, formally denoted by:

f = { (a,b) | ∀a ∈ A. ∃!b ∈ B. f(a) = b }

This set of ordered pairs may be interpreted as the set of Carthesian coorinates and plotted on the 2D plane, rendering the graph of the function.

This representation of a function is called a *function graph*, and it is similar to the digraph used to represent relations.

This is the intentional definition of a function.

A function `f` with type `A -> B` is a relation with domain `A` and codomain `B`, such that

∀x∀x' ∈ A. ∃y ∈ B. [(x,y) ∈ f ∧ (x',y) ∈ f] -> (x = x')

A is called the argument type and B is called the result type of the function.

Stating that a function `f` is not defined at `x` is denoted by `f x = ⊥` (e.g. the reciprocal function `f(x) = 1/x` is not defined at `x=0`).
