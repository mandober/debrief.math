# Initiality and finality

http://tunes.org/wiki/initiality_20and_20finality.html

Initiality and finality are dual concepts in category theory. 

An object in a category is **initial** if there is exactly one morphism from it to any other object in the category.

An object is **final** if there is exactly one morphism from any other object in the category to it.

In a sense, *initial object* is a sort of global minimum, while a *terminal object* is a sort of global maximum. This is exactly the case in the categories of ordered sets, which are special cases of categories. In the category of sets, the initial object is the empty set, while the terminal object is a singleton set.

Initiality and finality are especially important concepts wrt (the categories of) algebras and coalgebras.

An **initial algebra** is one with exactly one homomorphism from it to any other algebra (with the same signature).

Dually, a **final coalgebra** is one with exactly one homomorphism from any other coalgebra (with the same signature) to it.

Initial algebras and final coalgebras are, in a sense, prototypical - every algebra contains the "image" of the initial algebra, and dually, the final coalgebra contains the "image" of every coalgebra.

Unsurprisingly, if a signature has an initial algebra, it will be a unique (up to isomorphism) initial algebra. Similarly, if a final algebra exists for a given signature, it will be a unique final algebra (up to isomorphism).

An initial algebra is *minimal*, while a final coalgebra is *simple*. Intuitively, if an initial algebra wasn't minimal, there would be a *proper subalgebra* of the initial algebra, which would be contained in all other algebras in a unique way. However, a proper subalgebra cannot be isomorphic to the containing algebra. By duality, this is also true for final coalgebras.

Another interesting property is the fact that the operation of an initial algebra (and similarly for a final coalgebra) is an *isomorphism*.

The properties of initial algebras and final coalgebras make them especially suited as standard models (i.e. as the standard semantics) of algebraic and coalgebraic specifications.

They are informally known as *"no junk"* (for initial algebras it means that they do not contain objects other than those that you can define by means of constructors) and *"no surprises"* (for initial algebras it means that objects that you would expect different are indeed different, and thus that the algebra has the properties you specified it should have, not other compatible properties you did not specify).

Moreover, *minimality/simplicity* imply that we can use the *induction/coinduction principles* to prove properties and to define functions on them.

Finally, *polynomial functors* always have initial algebras and final coalgebras, which can be built by means of standard constructions.

Unfortunately, one of the most relevant functors for coalgebras, used to represent infinite forms of nondeterminism, is the *powerset functor* `2^_`, for which there is no final coalgebra. If such coalgebra existed, the operation `f : A -> 2^A` would be an isomorphism, and in standard (Cantorian) set theory a set cannot be isomorphic to the set of its subsets. However, in the world of non-well-founded sets and classes such an isomorphism exists.

An example of an initial algebra is the initial algebra of the functor `1 + _`, which is the algebra of natural number with zero and successor.

This is perhaps the nicest *definition of the natural numbers*, which has all the properties of Peano's definition:

**Initiality** implies that the operation `<0, S> : 1 + ℕ -> ℕ` is an isomorphism, i.e. that the natural numbers are "as many as" (i.e. isomorphic) to the natural numbers plus another element (zero) and that the successor operation `S` is a bijection on the naturals sans zero. This fixes the first four Peano axioms.

**Minimality** yields the induction principle, which is the fifth axiom. The functor `1 + _` is perhaps the simplest one we can imagine.

An example of a final coalgebra is the *final coalgebra of streams*, infinitely long sequences of symbols from an alphabet `S`, or, equivalently, of the functions `s : ℕ -> S`, which is the final coalgebra of the functor `S × _`.
