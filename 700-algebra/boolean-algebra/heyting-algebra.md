# Heyting algebra

https://en.wikipedia.org/wiki/Heyting_algebra

https://ncatlab.org/nlab/show/Heyting+algebra

In mathematics, a Heyting algebra (pseudo-Boolean algebra) is a *bounded lattice* equipped with a binary operation of implication, `x ⇨ y`, such that   
`(z ∧ x) ≤ y` = `z ≤ (x ⇨ y)`

The axiom above desc Currying, since `≤` may be interpreted as `→` so

```
  (z ∧ x) ≤ y
≅ (z ∧ x) ⇨ y
= z → (x ⇨ y)
= z ≤ (x ⇨ y)
= z ≤ yˣ
= z ⇨ yˣ
= (yˣ)ᶻ
= yˣᶻ
```

A bounded lattice has 2 characteristic elements and 2 binary operations:
- the greatest element `1`
- meet `∧`
- the least element `0`
- join `∨`


From a logical standpoint, `A → B` is by this definition the weakest proposition for which modus ponens (inference rule: `A → B, A ⊢ B`) is sound.

Like Boolean algebras, Heyting algebras form a *variety* axiomatizable with finitely many equations. Heyting algebras were introduced by Arend Heyting (1930) to formalize intuitionistic logic.

Heyting algebras are *distributive lattices*.

Every Boolean algebra is a Heyting algebra when `a → b` is defined as `¬a ∨ b`, as is every *complete distributive lattice* satisfying a one-sided infinite distributive law when `a → b` is taken to be the supremum of the set of all `c` for which `(c ∧ a) ≤ b`.

In the finite case, every nonempty distributive lattice, in particular every nonempty finite chain, is automatically complete and completely distributive, and hence a Heyting algebra.

It follows from the definition that `1 ≤ (0 → a)`, corresponding to the intuition that any proposition `a` is implied by a contradiction, `0`, EFQ (_ex falso quodlibet_ or the principle of explosion).

Although the negation operation `¬a` is not part of the definition, it is definable as `a → 0`. The intuitive content of `¬a` is the proposition that to assume `a` would lead to a contradiction. The definition implies that `a ∧ ¬a = 0`. It can further be shown that `a ≤ ¬¬a`, although the converse, `¬¬a ≤ a`, is not true in general, that is, double negation elimination does not hold in general in a Heyting algebra.

Heyting algebras generalize Boolean algebras in the sense that Boolean algebras are precisely the Heyting algebras satisfying `a ∨ ¬a = 1` (excluded middle), equivalently `¬¬a = a`. Those elements of a Heyting algebra `H` of the form `¬a` comprise a Boolean lattice, but in general this is not a subalgebra of `H`.

>Heyting algebras serve as the algebraic models of propositional intuitionistic logic in the same way Boolean algebras model propositional classical logic.

The internal logic of an elementary topos is based on the Heyting algebra of subobjects of the terminal object 1 ordered by inclusion, equivalently the morphisms from 1 to the subobject classifier Ω.

The open sets of any topological space form a complete Heyting algebra. Complete Heyting algebras thus become a central object of study in pointless topology.

Every Heyting algebra whose set of non-greatest elements has a greatest element (and forms another Heyting algebra) is subdirectly irreducible, whence every Heyting algebra can be made subdirectly irreducible by adjoining a new greatest element. It follows that even among the finite Heyting algebras there exist infinitely many that are subdirectly irreducible, no two of which have the same equational theory. Hence no finite set of finite Heyting algebras can supply all the counterexamples to non-laws of Heyting algebra. This is in sharp contrast to Boolean algebras, whose only subdirectly irreducible one is the two-element one, which on its own therefore suffices for all counterexamples to non-laws of Boolean algebra, the basis for the simple truth table decision method. Nevertheless, it is decidable whether an equation holds of all Heyting algebras.

Heyting algebras are less often called pseudo-Boolean algebras, or even Brouwer lattices, although the latter term may denote the dual definition, or have a slightly more general meaning.
