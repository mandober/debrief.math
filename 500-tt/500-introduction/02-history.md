# Type Theory :: Introduction :: Short history of Type Theory

## Problems with set theory

Although it was a relatively recent invention, the issues with set theory have already begin to arise and most were related to the problems of self-reference, the cardinality of sets, particularly of infinite sets, and the principle of comprehension which allowed any predicate to describe a set.

For, if any predicate can descibe a set then there is a set of all sets, and the question become whether, it, being a set, should also contain itself. Moreover, whether that resulting set should then also be in the set of all sets, and the resulting set too, and so on, ad infinitum, forming a descending chain of self-contained sets. Very confusing stuff, really. The possibility of there being a single all-encompassing set in the first place, despite being intuitively unlikely, could still be mathematically possible.

If `R` is the set of all sets, `∃R(R set ∧ ∀x(x set → x ∈ R)`, than `R ∈ R`.

Russell contributed to this discussion by considering the predicate "the set of all sets that do not contain themselves".

The analysis of the set thus obtained leads to a contradiction, which in logic implies that the initial assuption is incorrect, that there is no set of all sets (that do not contain themselves).

The problems with the unrestricted comprehension, but particularly with the existence of a set of all sets, lead to the developments of set theories that atempted to resolve these issues in various ways. The axiom of comprehension was discarded and replaced with the axioms that restricted set formation, as was the case with ZF set theory. Another solution was to classify sets into proper sets and classes, with a proper class containing all sets.

In set theory, objects generally have no type: some theories may distinguish between a proper set element (urelement) and a set, and then between a set as a container and a set as an element of some other set; some theories may introduce and then distinguish between sets and classes, restricting what members each may contain. But, in general, there is barely any distinction between various entities, and most often there is no distinction at all. A set is a set is a set. A set that contains a set that contains a set is the same "type" as the empty set. Basically, it's all just a bunch of sets, with "set" being the only type of object.

## Origins of type theory

The introduction of types (as new, "official" mathematical entities) was initiated by Bertrand Russell in 1900's as an attempt to avoid the paradoxes of set theory, most pressingly because he was authoring the "Principia" with A. N. Whitehead.

Russell came up with the idea to classify sets and establish the rules that dictated the conditions under which a set contains or is contained by a set. This is called Ramified (stratified) Type Theory, and in it, each object (set) has an associated type; a set of a type `i` could only be a member of a set whose type was at least `i + 1`, thus forming an infinite hierarchy of types. Not all ideas from Russell's ramified type theory were accepted, but the hierarchy of types is one that is today found in many proof assistants like Agda.



Alonzo Church invented the λ-calculus in 1930's, a formalism he indended to be used as a logic system but it turned out it was inconsistent. Nevertheless, he extracted a notion for denoting and analysing functions from it, which became the now ubiquitous lambda calculus. In the 1940's, Church came up with a consistent system, simply-typed λ-calculus, by introducing types to the lambda calculus.

In 1972, Per Martin-Löf introduced a series of type theories, and included dependent types. One of the key features of a dependent type theory is that it unifies set theory and logic.

In 2006, Awodey and Warren, and Voevodsky, discovered that type theory has homotopical models, with Voevodsky introducing homotopy type theory which has a new notion of equality of types as homotopies (paths on manifold).


## History of Type Theory

Type Theory was initiated by Bertrand Russell, soon after he discovered the Russell's paradox in set theory. Most pressingly, he was authoring "Principia Mathematica" with Whitehead, and needed to quickly find a way out of the problems of set theory, especially those brough about by the axiom of (unrestricted) comprehension. Russell and Whitehead were creating a system of logic for their book which, of copurse, needed to be consistent and free of paradoxes, particularly because their aim was to show that mathematics is entirely based on logic. This position is called logicism and it was gaining popularity at the time, even though it eventually failed.
