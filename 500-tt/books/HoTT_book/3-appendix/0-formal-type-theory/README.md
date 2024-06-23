# Formal type theory

HoTT Book > Appendix > Formal type theory

Just as one can develop mathematics in set theory without explicitly using the axioms of Zermelo-Fraenkel set theory, in this book we have developed mathematics in univalent foundations without explicitly referring to a formal system of homotopy type theory. Nevertheless, it is important to have a precise description of homotopy type theory as a formal system in order to, e.g
- state and prove its metatheoretic properties, including logical consistency
- construct models, e.g. in simplicial sets, model categories, higher toposes
- implement it in proof assistants like coq or agda

Even the logical consistency of homotopy type theory, namely that in the empty context there is no term `a : 0`, is not obvious: if we had erroneously chosen a definition of equivalence for which `0 ≃ 1`, then univalence would imply that 0 has an element, since 1 does. Nor is it obvious that, for example, our definition of S1 as a higher inductive type yields a type which behaves like the ordinary circle.

There are two aspects of type theory which we must pin down before addressing such questions. Recall from the Introduction that type theory comprises a set of rules specifying when the judgments `a : A` and `a ≡ a′ : A` hold-for example, products are characterized by the rule that whenever `a : A` and `b : B, (a, b) : A × B`.

To make this precise, we must first define precisely the syntax of terms - the objects a, a′, A, . . . which these judgments relate; then, we must define precisely the judgments and their rules of inference-the manner in which judgments can be derived from other judgments.

In this appendix, we present *two formulations of Martin-Lof type theory*, and of the extensions that constitute homotopy type theory. 

The first presentation (Appendix A.1) describes the syntax of terms and the forms of judgments as an extension of the untyped λ-calculus, while leaving the rules of inference informal. 

The second (Appendix A.2) defines the terms, judgments, and rules of inference inductively in the style of natural deduction, as is customary in much type-theoretic literature.

## Preliminaries
