# Logic :: Constructive Logic

- constructivism as a philosophy of mathematics
- constructive logic
- constructive mathematics
- intuitionistic logic
- intuitionistic mathematics
- Martin Löf logic (type theory)
- Curry-Howard isomorphism
- propositions-as-types
- programs-as-proofs (proofs-as-programs)


*Constructivism* is a school of thought in philosophy of mathematics, and particulary in mathematical logic, that arose from the disatisfaction with the treatment of proofs in classical mathematics which admits proofs, especially proofs of existence, without requiring that a witness to the fact be produced.

From the beginning of the development of constructive logic and mathematics, the central idea was that a valid proof must produce a witness - an example element to serve as the witness (evidence) of the proven proposition.

This is very different from classical mathematics where many proofs only show the existence of something without producing a proof term (a representative element, evidence, witness), nor indicate a way how to obtain it.

In constructivism, it is all about "show me a witness!". When a proof must also produce a witness, then it is usually easy to extract the corresponding algorithm, i.e. program. Constructivists insist on the computational content of proofs.

Constructivism in logic is based on the intuitionistic logic which does not admit the law of excluded middle as a god given fact. This implies that disjunction behaves very different from the classical notion of disjunction because in constructive logic knowing that `A ∨ B` holds obliges us to show which of the two disjunct actually holds. Constructively, we think of a proof of `A ∨ B true` as either a proof of `A true` or `B true`. Disjunction corresponds to a disjoint sum type `A + B`, and the two introduction rules correspond to the left and right injection into a sum type.

Constructivism has given rise to software that can be used as a proof assistant that embeds its computational aspects. The correspondence between logic and programming (in the form of simply-typed lambda calculus) was recognized long ago and it now goes under the name Curry-Howard isomorphism - and this isomorphism has expanded into other math fields as well. Martin-Löf's intuitionistic type theory was taken as the foundational logic of many constructive realizations.

## Propositions as types

The Curry-Howard isomorphism began its life as a correspondence between STLC and intuitionistic logic.

The Curry-Howard isomorphism is almost synonymous, or at least it automatically brings associations, to two other phrases, frequently encountered together in this setting: propositions-as-types and proofs-as-programs.
