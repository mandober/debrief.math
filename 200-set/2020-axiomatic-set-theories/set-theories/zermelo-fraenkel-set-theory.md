# Set theory :: Set theories :: Zermelo-Fraenkel set theory

https://en.wikipedia.org/wiki/Zermelo-Fraenkel_set_theory

Zermelo-Fraenkel set theory, named after mathematicians Ernst Zermelo and Abraham Fraenkel, is an axiomatic system proposed in the early XX century in order to formulate a theory of sets free of paradoxes (free of Russell's paradox in particular).

Today, Zermelo-Fraenkel set theory (ZF) with the historically controversial Axiom Of Choice (AC) included, abbreviated as ZFC, is the standard form of axiomatic set theory, and as such is the most common foundation of mathematics.

- `Z-`  Zermelo set theory
- `ZF`  Zermelo-Fraenkel set theory
- `ZFC` Zermelo-Fraenkel set theory with the Axiom of Choice
- `AC`  Axiom of Choice

ZF is intended to formalize a single primitive notion, that of a *hereditary well-founded set*, aiming to declare all entities in the universe of discourse as such sets.

In ZF, everything is a set, so ZF axioms refer only to *pure sets* (everything is a set), preventing its models from containing *urelements* (set elements that are not themselves sets).

Furthermore, proper classes can only be treated indirectly. A *proper class* is a collection of objects defined by a property that is shared by all the elements, and thus defined collection is too big to be a set.

Specifically, ZF doesn't permit the existence of a *universal set* (a set containing all sets) nor for *unrestricted comprehension*, thereby avoiding Russell's paradox.

*Von Neumann-Bernays-Gödel set theory (NBG)* is a commonly used conservative extension of ZF that does allow explicit treatment of proper classes.

There are many equivalent formulations of the ZF axioms. Most of the axioms state the existence of particular sets defined from other sets. For example, the axiom of pairing says that given any two sets `a` and `b` there is a new set `{a,b}` containing exactly `a` and `b`. Other axioms describe properties of set membership.

One goal of the axioms is that each axiom should be true if interpreted as a statement about the collection of all sets in the *von Neumann universe* (also known as the *cumulative hierarchy*).

Formally, ZFC is a one-sorted theory in first-order logic. The signature has equality and a single primitive binary relation, set membership (∈), and the formula `a ∈ b` means that the set `a` is in (is a member of) the set `b`.

Some landmark results in the metamathematical study of ZF are:
- logical independence of AC from the remaining ZF axioms
- logical independence of the *continuum hypothesis* from ZFC

The consistency of a theory such as ZFC cannot be proved from within the theory itself due to Gödel's second incompleteness theorem.

## History

The modern study of set theory was initiated by Georg Cantor in the 1870s. The discovery of paradoxes in naive set theory saw the need for a more rigorous approach that would free it from paradoxes.

In 1908, Ernst Zermelo proposed the first axiomatic set theory, *Zermelo set theory*. However, in 1921 Abraham Fraenkel pointed out that Zermelo set theory was incapable of proving the existence of certain sets and cardinal numbers (whose existence was taken for granted by most set theorists of the time):
- the cardinal number `ℵ⍵`
- the set `{Z₀, 𝓟(Z₀), 𝓟(𝓟(Z₀), …}` where `Z₀` is any infinite set

Moreover, one of Zermelo's axioms invoked a concept, that of a "definite" property, whose operational meaning was not clear. In 1922, Fraenkel and Thoralf Skolem independently proposed operationalizing a "definite" property as one that could be formulated as a well-formed formula in a first-order logic whose atomic formulas were limited to set membership and identity. They also independently proposed replacing the axiom schema of specification with the axiom schema of replacement. Appending this schema, as well as the axiom of regularity (first proposed by John von Neumann), to Zermelo set theory yields the theory denoted by ZF. Adding to ZF either the axiom of choice (AC) or a statement that is equivalent to it yields ZFC.
