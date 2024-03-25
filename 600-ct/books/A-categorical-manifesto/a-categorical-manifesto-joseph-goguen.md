# A Categorical Manifesto

`A Categorical Manifesto` by Joseph A. Goguen, 1991

## Abstract

This paper tries to explain why and how category theory is useful in computing science, by giving guidelines for applying 7 basic categorical concepts:
1. Category
2. Functor
3. Natural Transformation
4. Limit
5. Adjoint
6. Colimit
7. Comma Category

Some examples, intuition, and references are given for each concept, but completeness is not attempted. Some additional categorical concepts and some suggestions for further research are also mentioned. The paper concludes with some philosophical discussion.

## Introduction

This paper tries to explain why CT is useful in CS. The basic answer is that CS is a young field that is growing rapidly, is poorly organised, and needs all the help it can get, and that CT can provide help with at least the following:

* Formulating definitions and theories. 
In CS, it is often more diffcult to formulate concepts and results than to give a proof. The seven guidelines of this paper can help with formulation and can be used to measure the elegance and coherence of existing formulations.

* Carrying out proofs. 
Once basic concepts have been correctly formulated in a categorical language, it often seems that proofs "just happen": at each step, there is a "natural" thing to try, and it works. *Diagram chasing* provides many examples of this. It could almost be said that the purpose of category theory is to reduce all proofs to such simple calculations.

* Discovering and exploiting relations with other fields. 
Sufficiently abstract formulations can reveal surprising connections. For example, an analogy between Petri nets and the λ-calculus might suggest looking for a closed category structure on the category of Petri nets.

* Dealing with abstraction and representation independence. 
In CS, more abstract viewpoints are often more useful, because of the need to achieve independence from the often overwhelmingly complex details of how things are represented or implemented. A corollary of the first guideline is that two objects are *abstractly the same* if they are *isomorphic* Moreover, *universal constructions* (i.e. *adjoints*) define their results uniquely *up to an isomorphism*, i.e. "abstractly" in just this sense.

* Formulating conjectures and research directions. 
Connections with other fields can suggest new questions in your own field. Also the seven guidelines can help to guide research. For example, if you have found an interesting functor, then you might be well advised to investigate its adjoints.

* Unification. 
CS is very fragmented, with many different subdisciplines having many different schools within them. Hence, it badly needs the kind of conceptual unification that category theory can provide.


Category theory can also be abused in several styles. One manner of abuse is *specious generality*, in which some theory or example is generalised in a way that doesn't actually include any new examples of genuine interest. A related style of abuse is categorical overkill, in which the *language of category theory* is used to describe phenomena that do not actually require such an elaborate treatment or terminology. An example is to describe a Galois connection in the language of adjoint functors.

Category theory has been called "abstract nonsense" by both its friends and its detractors. Perhaps what this phrase suggests to both is that category theory has relatively *more form than content*, compared to other areas of math. Its friends claim this as a virtue, in contrast to the excessive concreteness and representation dependence of set theoretic foundations, and the relatively poor guidance for discovering elegant and coherent theories that they provide.

Category theory can also be used in quite concrete ways, because categories are after all just another algebraic structure, generalising both monoids and partial orders.

The guidelines that this paper presents are necessarily imprecise, and will seem exaggerated if taken too literally, because they are not objective facts, but rather heuristics for applying certain mathematical concepts. In particular, they may seem difficult to apply, or even impossible, in some situations, and they may need refinement in others. As a reminder that they shouldn't be taken too dogmatically, I will call them *dogmas*.












>Dogma ♯ 1: To each species of mathematical structure, there corresponds a category whose objects have that structure, and whose morphisms preserve it.

In order to understand a structure, it is necessary to understand the morphisms that preserve it. Category theorists have argued that morphisms are more important than objects because they reveal what the structure really is. Moreover, the category concept can be defined using only morphisms. (Perhaps the bias of Western cultures towards objects rather than relations accounts for this).

## Sets

If we take sets to be ob jects, then their morphisms are clearly going to be functions. A set morphism, however, is not just a set of ordered pairs, because it must also specify particular source and target sets. This is consistent with practice in computation theory which assigns types to functions. The set theoretic representation of functions is an artifact of the set theoretic foundations of mathematics, and like all such representations, has accidental properties beyond those of the concept it is intended to capture. *One of those properties is that any two sets of ordered pairs can be composed to yield a third*. The category `Set` of sets embodies a contrary point of view, that each function has a domain in which its arguments are meaningful, a codomain in which its results are meaningful, and composition of functions is only allowed when meaningful in this sense.

## Relations

Just as with functions, it seems desirable to take the view that the composition of relations is only meaningful when the domains match. Thus, we may define a relation from a set `A` to a set `B` to be a triple `(A,R,B)` with `R ⊆ A⨯B`, and then allow its composition with a relation `(A₁,R₁,B₁)` to be defined only if `B = A₁` (or if `A = B₁`). This gives rise to a category that we denote `Rel`, of which `Set` can be considered a subcategory.

## Isomorphism

>Dogma ♯ 1a: Two objects have the same structure if they are isomorphic, and an *abstract object* is *an isomorphism class of objects*.

This provides an immediate check on whether or not some structure has been correctly formalised: unless it is satisfied, the objects, or the morphisms, or both, are wrong. This principle is so pervasive that isomorphic objects are often considered the same, so *the* is used instead of *an* `x` when `x` is actually only defined *up to an isomorphism*. In CS, this principle guided the successful search for the right definition of an Abstract Data Type.

## Commutative diagrams

A diagram commutes if whenever `p` and `p'` are paths with the same source and target, then the compositions of the morphisms along these two paths are equal.

The fact that pasting two commutative diagrams together along a common edge, yields another commutative diagram, provides a basis for a purely diagrammatic style of reasoning about equality of compositions.

## Functors

>Dogma ♯ 2: To any natural construction on structures of one species, yielding structures of another species, there corresponds a functor from the category of the first species to the category of the second.

It is part of this dogma that a construction is not merely a function from objects of one species to objects of another species, but must also preserve the essential relationships among objects, including their structure preserving morphisms, and compositions and identities for these morphisms.

This provides a test for whether or not the construction has been properly formalised. Of course, functoriality does not guarantee correct formulation, but it can be surprisingly helpful in practice.

## Free Monoids

It is quite common in CS 
to construct the free monoid `X⃰` 
over a set `X` consisting of 
all finite strings `x₁, …, xₙ` from `X`, 
including the empty string `ϵ`.

This construction gives a functor 
from the category of sets 
to the category of monoids, 
with a function `f : X → Y` 
inducing `f⃰ : X⃰ → Y⃰` 
by sending `ϵ` to `ϵ`, 
and sending `x₁, …, xₙ` to `f x₁, …, f xₙ`.

In FP, this functor is called the *polymorphic list type constructor*.

## Polymorphic Type Constructors

If we think of the types of a FPL as forming a category `T`, 
with objects like `Int` and `Bool`, 
then polymorphic type constructors 
(like `List a`, `Maybe a`, …) 
are endofunctors on `T`, 
that is, functors `T → T`. 
A type `List ⨯ List` then sends 
a type `α` to the type `List(α) ⨯ List(α)`.

## Naturality

>Dogma ♯ 3: To each natural translation from a construction `F : A → B` to a construction `G : A → B`, corresponds a **natural transformation** `F => G`.

Interestingly, the concept of natural transformation originated in category theory since Eilenberg and Mac Lane used it to formalise the notion of an equivalence of homology theories, but then found that for this definition to make sense, they had to define functors, and for functors to make sense, they had to define categories.

Examples of natural transformations:

* **Homomorphisms**   
As already indicated, in the Lawvere approach to universal algebra, algebras are functors, and so we should expect homomorphisms to be natural transformations; and indeed, they are.

* **Natural Isomorphism** (Natural Equivalence)   
A natural transformation `η : F → G` 
is a *natural isomorphism* if each 
`ηᵃ : F A → G A` is an isomorphism. 
This is the natural notion 
of isomorphism for functors, 
and is equivalent 
to the existence of 
`μ : G → F` such that
`η ∘ μ = 1ᶠ` and `η ∘ μ = 1ᴳ`

* **Polymorphic Functions**    
If polymorphic type constructors are functors, 
then polymorphic functions should be natural transformations, 
and indeed, they are. For example: `(++) :: [a] -> [a] -> [a]`.

- functors: polymorphic type ctors
- natural transformations: polymorphic functions

* **Functor Categories**    
Let A and B be categories. 
Then there is a category,
denoted `Cat[A,B]` 
whose objects are the functors from A to B, 
and whose morphisms are natural transformations. 
In particular, if `T` is a theory, 
then the T-algebras are 
a subcategory of `Cat[T,Set]`.

## Limits

>Dogma ♯ 4: A diagram `D` in a category `C` can be seen as a system of constraints, and then a limit of `D` represents all possible solutions of the system.

- Products
- Product Types
- Theories
- Equations and unification


## Adjoints

>Dogma ♯ 5: To any canonical construction from one species of structure to another corresponds an adjunction between the corresponding categories.

Although this can be seen as just a definition of *canonical construction*, it can be very useful in practice.

The essence of an adjoint is the *universal property* that is satisfied by its value objects. This property says that there is a unique morphism satisfying certain conditions.

It is worth noting that any two (right or left) adjoints to a given functor are naturally equivalent, i.e. adjointness determines a construction uniquely up to isomorphism.

Examples:
- Products and Sums
- free constructions (freebies)
- Minimal Realisation
- Syntax and Semantics
- Cartesian Closed Categories
- Kleisli Categories


### Products and Sums

Many of the constructions described above are intuitively canonical, and hence are adjoints.

For example, 
binary products in a category 𝒞 
give a functor `Π : C ⨯ C → C` 
which is left adjoint to `Δ : C → C ⨯ C`, 
(the diagonal functor) 
sending an object `C` in 𝒞 to the pair `(C,C)`, 
and sending a morphism 
`(c : C → C')` in 𝒞 to 
`(c,c) : (C,C) → (C',C')` in 𝒞 ⨯ 𝒞.

>Moreover, `C` has coproducts if `Δ` has a right adjoint.

This beautifully simple way to formalise two mathematical concepts of basic importance is due to Mac Lane, and extends to general limits and colimits.


### Free constructions



### Minimal Realisation


### Syntax and Semantics

One of the more spectacular adjoints is that between syntax and semantics for algebraic theories, again due to Lawvere in his thesis.

### Cartesian Closed Categories

A Cartesian closed category has binary products, and a right adjoint to each functor sending `A` to `A ⨯ B`. It is remarkable that this concept turns out to be, essentially, the typed λ-calculus. This connection has been used, for example, as a basis for the efficient compilation of higher order functional languages. An advantage is that optimisation techniques can be proved correct by using purely equational reasoning.

### Kleisli Categories

Another way to generalise Lawvere theories is to view an arbitrary adjunction as a kind of theory. Monads (also called triples) are an abstraction of the necessary structure, and the Kleisli category over a monad gives the category of free algebras.

There are many examples:

The paper `What is unification? A categorical view of substitution, equation and solution` by Joseph Goguen from 1988, shows how a Kleisli category generates a generalised Lawvere theory, and then shows that many different problems of unification (that is, of solving systems of equations) can be naturally formulated as finding equalizers in Kleisli categories. Examples include unification in order sorted and continuous theories.

In the paper `Computational lambda-calculus and monads` by Eugenio Moggi from 1988, Moggi uses Kleisli categories to get an abstract notion of computation which gives rise to many interesting generalisations of the λ-calculus.


## Colimits

>Dogma ♯ 6: Given a species of structure, say widgets, then the result of interconnecting a system of widgets to form a super-widget corresponds to taking the colimit of the diagram of widgets in which the morphisms show how they are interconnected.

## Comma Categories

>Dogma ♯ 7: Given a species of structure C, then a species of structure obtained by "decorating" or "enriching" that of C corresponds to a comma category under C (or under a functor from C).


## Further topics

- 2-categories
- Monoidal categories
- Indexed categories
- Topoi


The traditional view of *foundations* requires giving a *system of axioms*, preferably first order, that assert the existence of certain primitive objects with certain properties, and of certain primitive constructions on objects, such that all objects of interest can be constructed, and all their relevant properties derived, within the system. The axioms should be as self-evident, as few in number, and as simple as possible, in order to nurture belief in their consistency, and to make them as easy to use as possible. This approach is inspired by the classical account of plane geometry by Euclid.

The best known *foundation for mathematics is set theory*, which has been very
successful at constructing the objects of greatest interest in mathematics. *It has, however, failed to provide a commonly agreed upon set of simple, self- evident axioms*.

For example, classical formulations of set theory (such as Zermello-Frankel) have been under vigorous attack by intuitionists for nearly 80 years. 

More recently, there has been debate about whether the *Generalised Continuum Hypothesis* is "true", following the originally startling proof (by Paul Cohen) that it is independent of other, more widely accepted axioms of set theory (particularly independent of AC).

Still more recently, there has been debate about the *Axiom of Foundation*, which asserts that there is no infinite sequence of sets `S₁, S₂, S₃, …` such that each `Sᵢ + 1` is an element of `Sᵢ`. In fact, Aczel et al have used an *Anti-Foundation Axiom*, which positively asserts the existence of such non-well founded sets, to model various phenomena in computation, including communicating processes.

It seems fair to say that most mathematicians no longer believe in the heroic ideal of a single generally accepted foundation for mathematics, and that many no longer believe in the possibility of finding "unshakable certainties" upon which to found all of mathematics.

Set theoretic foundations have also failed to provide fully satisfying accounts of mathematical practice in certain areas, including category theory itself, and moreover have encouraged research into areas that have little or nothing to do with mathematical practice, such as large cardinals.

In any case, attempts to find a minimal set of least debatable concepts upon which to erect mathematics have little direct relevance to computing science. Of course, the issue no longer seems as urgent as it once did, because no new paradoxes have been discovered for a long time.

This paper has tried to show that category theory provides a number of broadly useful, and yet surprisingly specific, guidelines for organising, generalising, and discovering analogies among and within various branches of mathematics and its applications; suggesting that the existence of such guidelines can be seen to support an alternative, more pragmatic view:

>Foundations should provide general concepts and tools that reveal the structures and interrelations of various areas of mathematics and its applications, and that help in doing and using mathematics.

In a field which is not yet very well developed, such as CS, where it often seems that getting the definitions right is the hardest task, foundations in this sense can be very useful, because they can suggest which research directions may be fruitful, using relatively explicit measures of elegance and coherence. The successful use of category theory for such purposes suggests that it provides at least the beginnings of such a foundation.
