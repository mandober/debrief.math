# Metalogic 

https://en.wikipedia.org/wiki/Metalogic

**Metalogic** is the study of the metatheory of logic. Whereas logic studies how logical systems can be used to construct valid and sound arguments, *metalogic studies the properties of logical systems*.

Logic concerns the truth that may be derived using a logical system; *metalogic concerns the truth that may be derived about the language and system that is used to express truths*.

The basic objects of metalogical study are *formal languages*, *formal systems*, and *their interpretations*. 

The study of interpretation of formal systems is the branch of mathematical logic known as *model theory*, while the study of deductive systems is known as *proof theory*.

## Overview

### Formal language

Main article: [Formal language](https://en.wikipedia.org/wiki/Formal_language)

A **formal language** is an organized set of symbols, the symbols of which precisely define it by shape and place. Such a language therefore can be defined without reference to the meanings of its expressions; it can exist before any interpretation is assigned to it, i.e. before it has any meaning. First-order logic is expressed in a formal language. A *formal grammar* determines which symbols and sets of symbols are formulas in a formal language.

A formal language can be formally defined as a set `A` of strings (finite sequences) on a fixed alphabet `α`. Some authors, including Rudolf Carnap, define the language as the ordered pair `<α, A>`. Carnap also requires that each element of `α` must occur in at least one string in `A`.

### Formation rules

Main article: [Formation rule](https://en.wikipedia.org/wiki/Formation_rule)

**Formation rules**, also called *formal grammar*, are a precise description of the *well-formed formulas* (wffs) of a formal language. They are synonymous with the set of strings over the alphabet of the formal language that constitute wffs. However, it does not describe their semantics.

### Formal systems

Main article: [Formal system](https://en.wikipedia.org/wiki/Formal_system)

A **formal system**, also called a *logical calculus* or a *logical system*, consists of a formal language together with a deductive system.

The deductive apparatus consists of a set of *transformation rules* (also called *inference rules*) and a set of axioms (usually both).

A formal system is used to derive one expression (conclusion) from a set of other expressions (premises).

A formal system can be formally defined as an ordered triple `<α,𝓘,𝒟d>`, where `𝒟d` is the relation of *direct derivability*. This relation is understood in a comprehensive sense such that the primitive sentences of the formal system are taken as directly derivable from the empty set of sentences. **Direct derivability** is a relation between a sentence and a finite, possibly empty set of sentences.

Axioms are so chosen that every first place member of `𝒟d` is a member of `𝓘` and every second place member is a finite subset of `𝓘`.

A formal system can also be defined with only the relation `𝒟d`, thereby omittiong `𝓘` and `α` in the definitions of interpreted formal language and interpreted formal system. However, this method is more difficult to understand and use.

### Formal proofs

Main article: [Formal proof](https://en.wikipedia.org/wiki/Formal_proof)

A **formal proof** is a sequence of wffs of a formal language, the last of which is a theorem of a formal system.

A **theorem** is a *syntactic consequence* of all the wffs that precede it in the proof system.

For a wff to qualify as part of a proof, it must result from applying a rule of the deductive apparatus of some formal system to the previous wffs in the proof sequence.

### Interpretations

Main articles:
- [Interpretation](https://en.wikipedia.org/wiki/Interpretation_(logic))
- [Formal semantics](https://en.wikipedia.org/wiki/Formal_semantics_(logic))

An **interpretation of a formal system** is the assignment of meanings to the symbols and truth-values to the sentences of the formal system. 

The study of interpretations is called *formal semantics*. 

Giving an interpretation is synonymous with constructing a model.

## Important distinctions

### Metalanguage-object language
https://en.wikipedia.org/wiki/Metalanguage

### Syntax-semantics
https://en.wikipedia.org/wiki/Syntax_(logic)
https://en.wikipedia.org/wiki/Formal_semantics_(logic)

### Use-mention
https://en.wikipedia.org/wiki/Use%E2%80%93mention_distinction

### Type-token
https://en.wikipedia.org/wiki/Type%E2%80%93token_distinction


## History

Metalogical questions have been asked since the time of Aristotle. However, it was only with the rise of formal languages in the late XIX and early XX century that investigations into the foundations of logic began to flourish.

In 1904, David Hilbert observed that the investigation of the foundations of mathematics presupposes logical notions, and therefore a simultaneous account of metalogical and metamathematical principles was required. 

Today, metalogic and metamathematics are largely synonymous with each other, and both have been substantially subsumed by mathematical logic in academia. 

A possible alternate, less mathematical model may be found in the writings of Charles Sanders Peirce and other *semioticians*.

## Results

Results in metalogic consist of such things as formal proofs demonstrating the consistency, completeness, and decidability of particular formal systems.

Major proofs in metalogic include:
- 1891 Cantor's theorem: Proof of uncountability of the power set of ℕ.
- 1915 Löwenheim-Skolem theorem. Leopold Löwenheim 1915; Thoralf Skolem 1919.
- 1920 Emil Post: proof of consistency of truth-functional propositional logic.
- 1920 Emil Post: Proof of semantic completeness of truth-functional propositional logic (TFPL) (Paul Bernays 1918).
- 1920 Emil Post: Proof of the syntactic completeness of TFPL.
- 1920 Emil Post: Proof of the decidability of TFPL.
- 1915 Löwenheim: Proof of consistency of monadic FOL.
- 1915 Löwenheim: Proof of semantic completeness of monadic FOL.
- 1915 Löwenheim: Proof of the decidability of monadic FOL.
- 1928 David Hilbert and Wilhelm Ackermann: Proof of the consistency of FOL.
- 1930 Gödel's completeness theorem: Proof of semantic completeness of FOL.
- 1934 Gentzen's Hauptsatz: cut-elimination theorem for sequent calculus.
- 1936 Church's theorem: Proof of undecidability of FOL.
- 1931 Gödel's first incompleteness theorem.
- 1931 Gödel's second incompleteness theorem.
- 1930s Tarski's undefinability theorem (Gödel and Tarski).
