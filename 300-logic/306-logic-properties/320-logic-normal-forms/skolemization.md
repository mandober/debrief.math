# Skolemization

https://en.wikipedia.org/wiki/Skolem_normal_form
https://en.wikipedia.org/wiki/Existential_quantification


## Simplest case of Skolemization

Given a sentence of the form `∀x∃yP(x,y)` in some first-order language, we Skolemize it by choosing a function symbol `f` not in the language and writing `∀x∃yP(x,f(x))`.

Every world that makes the Skolemization true also makes the original sentence true. Every world that makes the original sentence true can be turned into one that makes the Skolemization true by interpreting the function symbol `f` by a function `φ` which picks out, for any object `b` in the domain, some object `c` such that they satisfy the wff `P(x,y)`.
