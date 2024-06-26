# Curry's formalism

In 1930, building the concept first presented by M. Schönfinkel, and aiming at a mathematical analysis of the *substitution process*, Curry has introduced a formal language based on the *combinators* (basic general operators):

- `B`, composition:  `Bxyz = x(yz)`
- `C`, permutation:  `Cxyz = xzy`
- `W`, duplication:  `Wxy  = xyy`
- `K`, cancellation: `Kxy  = y`
- `Q`, equality:     `Qxyz = x(zy)`
- logical constants, like `∀` and `->` (implication)

Expressions are then inductively generated by application from constants.

A term `M` stands for a function, and the applicative term `M N` denotes the value of the term obtained by replacing the first variable of `M` with `N`, which λ-calculus denotes as `[x:=N]M` (provided the first parameter is `x`).

Self-application, `M M`, is admissible and this feature tells us that the objects of combinatory logic cannot be simply interpreted as set-theoretic functions.

The formal system consists of
- standard equations on combinators
- rules for equality
- the logical constants

The main goal of combinatory logic is to derive equalities `X = Y` and to make assertions of the form `⊢ X` (i.e. `X` is provable).

**Combinatory logic** is a theory which analyzes the modes of combinations of formal objects, substitution and the notions of proposition and propositional function.

https://plato.stanford.edu/entries/logic-combinatory

For Curry, the root of the paradoxes is found in assuming that combinations of concepts are always propositions. The notion of proposition becomes a theoretical concept, which is decided by the theory. Types are not assigned to the expressions of the formal system at the outset, but are instead inferred by means of the system itself, which has a dual nature: it can derive identities, but also truths.

In particular, if `⊢ M N` is derived, this can be read as "N is of type M" or "N is an element of M".

These ideas foreshadow fundamental developments such as the *Curry-Howard corespondence* finalized in 1969 of *formulas-as-types interpretation*. The Curry-Howard correspondence is the interpretation of mathematical proofs as programs and logical formulae as types in a programming language.
