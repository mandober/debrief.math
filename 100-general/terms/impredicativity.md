# Impredicativity

https://en.wikipedia.org/wiki/Impredicativity

In mathematics, logic and philosophy of mathematics, something that is impredicative is a self-referencing definition.

Roughly speaking, a definition is impredicative if it references (invokes or quantifies over) the set being defined, or, more commonly, another set that contains the thing being defined.

There is no generally accepted precise definition; there are different but related definitions by various authors.

The opposite of impredicativity is predicativity, which essentially entails building *stratified* (ramified) theories where quantification over lower levels results in variables of some new type, distinguished from the lower types that the variable ranges over. A prototypical example is *intuitionistic type theory*, which retains *ramification* so as to discard impredicativity.

Russell's paradox is a famous example of an impredicative construction; namely the set of all sets that do not contain themselves. The paradox is that such a set cannot exist: if it would exist, the question could be asked whether it contains itself or not; if it does then by definition it should not, and if it does not then by definition it should.

The greatest lower bound of a set `X`, `glb(X)`, also has an impredicative definition: `y = glb(X)` iff for all elements `x` of `X`, `y` is LE to `x`, and any `z` LE to `x` is LE to `y`.

∀x ∈ X. (y <= x) ∧ (z <= x) -> (z <= y) <=> y = glb(X)

This definition quantifies over the set (potentially infinite, depending on the order in question) whose members are the lower bounds of `X`, one of which being the `glb` itself. Hence predicativism would reject this definition.
