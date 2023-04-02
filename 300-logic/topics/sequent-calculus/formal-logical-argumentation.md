# Styles of formal logical argumentation

*Formal logical argumentation* always implies some particular, "underlying" logic, which may be left underdetermined (defined by fixing only some of its general aspects, e.g. being bivalent, propositional, classical) to allow for general discussions; or completely determined, with all the varying aspects fixed, to allow for the introduction of a deduction system.

The styles of formal logical argumentation usually pertain to the deduction system, less to the exact underlying logic, although these aspects may be intertwined.

Considered separately from the underlying logic, numerous styles of deduction systems exists, each attempting to present the derivations in a reasonable manner. Some differences between the styles are purely cosmetic, having to do with the layout, e.g., whether the presentation is tree-like or tabular; or whether the assumptions are marked by labels or indentations. On the other hand, some differences are more fundamental, having to do with the prescribed ways in which the derivations are performed.

Namely, one such system of formal logical argumentation is a *Hilbert-style* system, that is often used as the base case for comparisions with other styles, which is characterized by favoring axioms over inference rules. Considering propositional logic, an example of the concrete Hilbert-style system is one with a single rule of inference (modus ponens) and 3 axioms (K, S and CP). The axioms K and S, known from the combinatory logic, and the contraposition axiom, along with the modus ponens are sufficient to derive all theorems in the system. However, this style can be very verbose and cubersome, since it requires instantiating very long formulas, then restating them many times, possibly also instantiating additional formulas, during a single proof. These long formulas, especially their repetitions, makes a Hilbert-style proof very verbose and hard to follow.

*Gentzen-style* is often prefered to Hilbert-style as it makes derivations more clear, despite having its own drawbacks. The biggest difference between them is that, unlike a Hiilbert system, a Gentzen-style system prefers rules of inference to axioms. In fact, natural deduction and sequent calculus are two variants of Gentzen-style derivation systems with only a single axiom, the I axiom (the identity axiom).

~ ~ ~

Even though there are many styles of formal logical argumentation, it's important to be know that these styles never define a logic, but only attempt to convey and present the process of derivations of proofs. No matter which style is used, starting with the same formula, we should always arrive at the same conclusion.
