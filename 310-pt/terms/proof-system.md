# General proof systems
(`General proof systems` by Anita Wasilewska)

**Proof systems** are built to prove statements. Proof systems can be thought as *inference machines* that produce special statements called *provable statements or theorems*.

The starting point of such a system is a set of *axioms of the system*. Two kinds of axioms are distinguished: logical axioms (LA) and specific axioms (SX).

When building a proof system for a given language and its semantics (i.e. for a logic defined semantically), a set of *logical axioms* is selected as a subset of all tautologies in that language. This is why we call them logical axioms. A proof system with only logical axioms is also called a **logic proof system**. A proof system for which there is no known semantics (like in the case of classical, intuitionistic, and modal logics), we think about the logical axioms as universally true statements. The finite set of axioms is made out of the universally true statements, and whatever semantics follows, these statements must be tautologies with respect to it. Logical axioms are hence not only tautologies under an established semantics, but they also guide us how to establish a semantics, when it is still unknown.

For the set of *specific axioms*, we choose the formulas of the language that describe our knowledge about the universe we want to prove facts about. These are not universally true statements - they are only true in the specific universe we are interested in describing. This is why we call them specific axioms.

A proof system with both logical axioms and specific axioms is called a **formal theory**.

The inference machine is defined by a finite set of inference rules. The rules of inference describe the valid ways of transforming the information within the system, starting from the axioms. This transformation is called a **formal proof**.

Initially, a formal proof proceeds by applying the inference rules to the axioms, obtaining derived formulas, some of which are already theorems. By the further application of inference rules to the derived formulae, new provable formulae are derived, and so on.

The *provable formulas* for which we have a proof are called *consequences of the axioms* or *theorems*.

When building a proof system, we choose not only the set of logic axioms but also the set of specific rules of inference. This choice of rules is often constrained by the given semantics.

Rules that preserve the truth value of the things we are proving are called sound rules and such system is said to be a **sound proof system**.

**Soundness theorem** establishing the soundness of a given proof system. It states that: for any formula `A` in the language of the logic proof system `S`, if `A` is provable, then `A` is a tautology.

A proof system `S` with logical axioms `LA` and speciflc axioms `SA` is called a formal theory with specific axioms `SA` based on a logic defined by the axioms LA. We denote a formal theory by `Thꜱ(SA)`, or, when the proof system `S` is fixed, by `Th(SA)`.

A proof system can be sound under one semantics, but unsound under another. This is why we talk about proof systems for classical logic, for modal logic, for intuitionistic logic, etc.

In general, there may be many proof systems that are sound under a specific semantics; i.e. given a logic, there may exist a number of sound proof systems for it.
