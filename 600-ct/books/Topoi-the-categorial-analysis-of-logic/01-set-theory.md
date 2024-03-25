# 1. MATHEMATICS = SET THEORY?

## 1.1. Set theory

The basic concept upon which set theory rests is the notion of set membership. A set may be initially thought of simply as a collection of objects, these objects being called elements of that collection. Membership is the relation that an object bears to a set by dint of its being an element of that set.

From these fundamental ideas we may build up a catalogue of definitions and constructions that allow us to specify particular sets, and construct new sets from given ones. Two techniques used here are tabular form and set-builder form.

The *set-builder form* is a powerful device that specifies a set by stating a property that is possessed by all the elements of the set, and by no other object.

The use of properties to define sets is enshrined in the **Principle of Comprehension**: if `P(x)` is a property pertaining to objects `x`, then there is a set whose elements are precisely the objects with the property `P(x)`.

The set corresponding to a property `P(x)` is denoted `{ x: P(x) }` 
(the set of all the objects `x` such that `P` is true of `x`).
- union,        A ⋃ B ≡ { x | x ∈ A ⋁ x ∈ B }
- intersection, A ⋂ B ≡ { x | x ∈ A ⋀ x ∈ B }
- complement of A, ¬A ≡ { x | x ∉ A }
- empty set:        ∅ ≡ { x | x ≠ x }

Notice that we have already "widened our ontology" from the original conception of a set as something with members to admit as a set something that has no members at all.

The justification for calling ∅ *the* empty set is that there can be only one set with no members. This follows from the definition of equality of sets as embodied in the **Principle of Extensionality**: two sets are equal iff they have the same elements, `∀A∀B.∀a(a ∈ A <=> a ∈ B) <=> A = B`.

- equality, `∀A∀B.∀a(a ∈ A <=> a ∈ B) <=> A = B`
- subset,   `∀A∀B.∀a(a ∈ A  => a ∈ B) <=> A ⊆ B`

Properties
- V = { x | x = x } Universe
- R = { x | x ∉ x } Russell set


### NBG set theory

Set theory now has a rigorous axiomatic formulation - in fact several of them, each offering a particular resolution of the paradoxes.

John von Neumann proposed a solution in the mid-1920's that was later refined and developed by Paul Bernays and Kurt Godel. The outcome is a group of axioms known as the NBG system. Its central feature is a very simple and yet powerful conceptual distinction between sets and classes.

All entities referred to in NBG are to be thought of as *classes*, which correspond to our intuitive notion of collections of objects. The word *set* is reserved for those classes that are themselves members of other classes.
- everything is a `class`
  - `set` is a class that may be a member (of another class)
  - `proper class` is a class that is not a set (cannot be a member)

The statement "x is a set" is then short-hand for "there is a class у such that x ∈ y". Classes that are not sets are called *proper classes*. Intuitively we think of them as "very large" collections.

The Comprehension Principle is modified by requiring the objects x referred to to be sets. Thus, from a condition φ(x), we can form the class of all sets (elements of other classes) that satisfy φ(x), denoted `{x|x is a set ⋀ φ(x)}`.

The definition of the Russell class is made safe as it now just reads:   
`R = { x | x is a set and х ∉ x }`

In order to derive `R ∈ R`, we'd need the extra assumption that `R` is a set. If this were true the contradiction would obtain as before, and so we reject it as false. Thus, the paradox disappears and the argument becomes nothing more than a proof that `R` is a proper class i.e. a large collection that is not an element of any other collection. In particular `R ∉ R`.

Another example of a proper class is `V`, which we now take to be the class 
`{ x | x is a set and x = x }` whose elements are all the sets.

In fact, NBG has further axioms that imply that `V = R`, i.e. *no set is a member of itself*.

### ZF set theory

A somewhat different and historically prior approach to the paradoxes was proposed by Ernst Zermelo in 1908. This system was later extended by Abraham Fraenkel and is now known as ZF.

ZF can be informally regarded as a theory of "set-building". There is only one kind of entity, the set. All sets are built up from certain simple ones (in fact one can start just with ∅) by operations like intersection, union, and
complementation.

The axioms of ZF legislate as to when such operations can be effected. They can only be applied to sets that have already been constructed, and the result is always a set. Thus proper classes like `R` are never actually constructed within ZF.

The Comprehension Principle can now only be used relative to a given set, i.e. we cannot collect together all objects satisfying a certain condition, but only those we already know to be members of some previously denned set.

In ZF this is known as the **Separation Principle**: given set `A` and a condition φ(x) there exists a set whose elements are precisely those members of `A` that satisfy φ(x), denoted `{ x | x is a set ⋀ φ(x) }`.

Again we can no longer form the Russell class per se, but only for each set `A` the set `R(A) = { x | x ∈ A and х ∉ х }`.

To obtain a contradiction involving statements `R(A) ∈ R(A)` and `R(A) ∉ R(A)` we'd need to know that `R(A) ∈ A`. Our conclusion then is that `R(A) = A`.

In fact, in ZF and NBG no set is an element of itself, so `R(A) = A` (note the similarity of this argument to the resolution in NBG - replacing `V` everywhere by `A` makes the latter formally identical to the former).

NBG and ZF then offer some answers to the questions posed earlier. In practical uses of set theory, members of collections may well be physical objects. In axiomatic presentations of set theory however all objects have a conceptual rather than a material existence. The entities considered are "abstract" collections, whose members are themselves sets.

NBG offers a "larger" ontology than ZF. Indeed, ZF can be construed as a subsystem of NBG, consisting of the part of NBG that refers only to sets, (i.e. classes that are not proper).

We still have not shed any real light on what we mean by a "condition pertaining to objects x" (since sets are never members of themselves, the "less than 22 words" condition mentioned earlier will not be admissible in ZF or NBG). Some clarification of this notion will come later when we consider formal languages and take a closer look at the details of the axioms for systems like ZF.

### Consistency

The fact that a particular system avoids Russell's Paradox does not guarantee that it is consistent, i.e. entirely free of contradictions. It is known an inconsistency in either ZF or NBG would imply an inconsistency in the other, and so the two systems stand or fall together.

They have been intensively and extensively studied in the last 60 or so years
without any contradiction emerging. However there is a real conceptual barrier to the possibility of proving that no such contradiction will ever be found.

This was demonstrated by Godel, around 1930, who showed in effect that any proof of consistency would have to depend on principles whose own consistency was no more certain than that of ZF and NBG themselves.

In the decade prior to Godel's work a group of mathematicians lead by David Hilbert had attempted to establish the consistency of arithmetic and mathematics generally by using only so-called finitary methods. These methods are confined to the description of concrete, particular, directly perceivable objects, and principles whose truth is evident by direct inspection. Godel showed that such methods could never establish the consistency of any system that was powerful enough to develop the arithmetic of ordinary whole numbers. This discovery is regarded as one of the major mathematical events of the 20th century. Its impact on Hilbert's program was devastating, but many people have found in it a source of encouragement, an affirmation of the essentially creative nature of mathematical thought, and evidence against the mechanistic thesis that the mind can be adequately modelled as a physical computing device. As Godel himself has put it, "either mathematics is too big for the human mind, or the human mind is more than a machine." (cf.Bergamini [65]).

While it would seem there can be no absolute demonstration of the consistency of ZF, there is considerable justification, of an experiential and epistemological nature, for the belief that it contains no contradictions.

Certainly, if the opposite were the case then, in view of the central role of set theory in contemporary mathematics, a great deal more would be at stake than simply the adequacy of a particular set of postulates.

Which of ZF and NBG is a "better" treatment of set theory? The choice is largely a matter of philosophical taste, together with practical need. ZF
seems to enjoy the widest popularity amongst mathematicians generally.

Its principle of relativising constructions to particular sets closely reflects
the way set theory is actually used in mathematics, where sets are specified within clearly given, mathematically defined contexts (universes). The collection of all sets has not been an object of concern for most working mathematicians. Indeed the sets that they need can genergenerally be obtained within a small fragment of ZF. It is only very recently, with the advent of category theory that a genuine need has arisen amongst mathematicians (other than set-theorists) for a means of handlhandling large collections. These needs are met in a more flexible way by the class-set dichotomy, and have offered a more significant role to NBG and even stronger systems.

The moral to be drawn from these observations is that there is no "correct" way to do set theory. The system a mathematician chooses to work with will depend on what he wishes to achieve.


## 1.2. Foundations of mathematics

The aim of Foundational studies is to produce a rigorous explication of the nature of mathematical reality. This involves a precise and formal definition, or representation of mathematical concepts, so that their interrelationships can be clarified and their properties better understood. Most approaches to foundations use the axiomatic method. The language to be used is first introduced, generally itself in a precise and formal descripdescription. This language then serves for the definition of mathematical notions and the statement of postulates, or axioms, concerning their properties.

The axioms codify ways we regard mathematical objects as actually behaving. The theory of these objects is then developed in the form of statements derived from the axioms by techniques of deduction that are themselves rendered explicit.

It would be somewhat misleading to infer from this that foundational systems act primarily as a basis out of which mathematics is actually created. The artificiality of that view is evident when one reflects that the essential content of mathematics is already there before the basis is made explicit, and does not depend on it for its existence. We may for example think of a real number as an infinite decimal expression, or a point on the number line. Alternatively it could be introduced as an element of a complete ordered field, an equivalence class of Cauchy sequences, or a Dedekind cut. None of these could be said to be the correct explanation of what a real number is. Each is an enbodiment of an intuitive notion and we evalute it, not in terms of its correctness, but rather in terms of its effectiveness in explicating the nature of the real number system.

Mathematical discovery is by no means a matter of systematic deductive procedure. It involves insight, imagination, and long explorations along paths that sometimes lead nowhere. Axiomatic presentations serve to describe and communicate the fruits of this activity, often in a different order to that in which they were arrived at. They lend a coherence and unity to their subject matter, an overview of its extent and limitations.

Having clarified our intuitions, the formal framework may then be used for further exploration. It is at this level that the axiomatic method does have a creative role. The systematisation of a particular theory may lead to new internal discoveries, or the recognition of similarities with other theories and their subsequent unification. This however belongs to the "doing" of mathematics. As far as Foundational studies are concerned the role of axiomatics is largely descriptive. A Foundational system serves not so much to prop up the house of mathematics as to clarify the principles and methods by which the house was built in the first place.

"Foundations" is a discipline that can be seen as a branch of mathematics standing apart from the rest of the subject in order to describe the world in which the working mathematician lives.

## 1.3. Mathematics as set theory

The equation of mathematics with set theory can with some justification be seen as a summary of the direction that mathematics has taken in modern times.

Many will have heard of the revolution in school curricula called the "New Math". This has largely revolved around the introduction of set theory into elementary education and indicates the preoccupation of the mathematical community with that subject. Of all the foundational frameworks that have been proposed, the set theories have enjoyed the widest acceptance and the most detailed attention. Systems like ZF and NBG provide an elegant formalisation and explanation of the basic notions that the mathematician uses.

Paul Cohen, whose work on the independence of the Continuum Hypothesis in 1963 lead to a veritable explosion of set-theoretic activity, has said "by analysing mathematical arguments logicians became convinced that the notion of "set" is the most fundamental concept of mathematics".

Apart from, or perhaps because of, its central role in Foundations, set theory has also dominated the stage of mathematical practise. This is not intended to imply that mathematicians think in set-theoretical concepts, although that is very often the case. Rather the point is that set theory is the basic tool of communication and exposition. It has provided the vehicle for an enormous proliferation of mathematics, both in terms of quantity of knowledge and range of topics and applications. It would be hard to find a recent book on any pure mathematical subject, be it algebra, geometry, analysis, or probability theory, that used no settheoretical symbolism.

The group of French mathematicians who work under the name of Nicolas Bourbaki undertook in 1935 the formidable task of producing a "fully axiomatised presentation of mathematics in entirety". The result, over 40 years, has been about that many volumes to date, ranging over algebra, analysis and topology. Book 1 of this influential work is devoted to the theory of sets, which provides the framework for the whole enterprise.

Bourbaki has said 1949) "all mathematical theories may be regarded as extensions of the general theory of sets ... on these foundations I state that I can build up the whole of the mathematics of the present day".

The point to be made in this book is that the emergence of category theory has changed the perspectives just described, and that Cohen's statement is no longer even prima facie acceptable. It may be the case that the objects of mathematical study can be thought of as sets, but it is not certain that in the future they will be so regarded. No doubt the basic. language of set theory will continue to be an important tool whenever collections of things are to be dealt with. But the conception of the things themselves as sets has lost some of its prominence through the development of a natural and attractive alternative.

It seems indeed very likely that the role of set theory as the lingua universalis for mathematical foundations will be a declining one in the years to come. In case the wrong impression should have been conveyed by the last quotation above, it should be noted that the French mathematicians have been amongst the first to recognise this.

Rene Thorn [71] has written that "the old hope of Bourbaki, to see mathematical structures arise naturally from a hierachy of sets, from their subsets, and from their combination, is, doubtless, only an illusion". And in an address given in 1961, Jean Dieudonne made the following prophetic statement: 

"In the years between 1920 and 1940 there occurred, as you know, a complete reformation of the classification of different branches of mathematics, necessitated by a new conception of the essence of mathematical thinking itself, which originated from the works of Cantor and Hilbert. From the latter there sprang the systematic axiomatization of mathematical science in entirety and the fundamental concept of mathematical structure. What you may perhaps be unaware of is that mathematics is about to go through a second revolution at this very moment. This is the one which is in a way completing the work of the first revolution, namely, which is releasing mathematics from the far too narrow conditions by 'set'; it is the theory of categories and functors, for which estimation of its range or perception of its consequences is still too early…" (Quoted from Fang [70]).
