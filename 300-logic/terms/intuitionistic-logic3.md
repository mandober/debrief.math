# Intuitionistic logic

For expressing propositional logic, we need types (sets) that are available in many PLs, but in order to deal with the quantifiers, we need operations defined on families of sets, i.e. sets `B(x)` depending on elements `x` in some set `A`.

`∀x ∈ A. B(x)` corr. to `Πx ∈ A. B(x)` = { `λx.b(x)` | x ∈ A, b(x) ∈ B(x) }
`∃x ∈ A. B(x)` corr. to `Σx ∈ A. B(x)` = { `⟨a,b⟩`   | a ∈ A,    b ∈ B(a) }

<fieldset>
<legend>existential quantifier</legend>

Heyting's explanation of the **existential quantifier** is the following: 
A proof of `∃x ∈ A. B(x)` consists of a construction of an element `a` in the set `A` together with a proof of `B(a)`.

So, a proof of `∃x ∈ A.B(x)` is a pair whose first component `a` is an element in the set `A` and whose second component is a proof of `B(a)`.

The set corresponding to this is the *disjoint union of a family of sets*, denoted by `Σx ∈ A. B(x)`; **the elements of that set are pairs** `⟨a,b⟩`, where `a ∈ A` and `b ∈ B(a)`.

> The interpretation of the existential quantifier `∃x ∈ A. B(x)` is identified with the set `(Σx ∈ A) B(x)`, the disjoint union of a family of sets.

`∃x ∈ A. B(x)` corr. to Σx∈A.B(x) = { ⟨a,b⟩ | a ∈ A, b ∈ B(a) }

</fieldset>
<br>

<fieldset>
<legend>Universal quantifier</legend>

For the **universal quantifier**, a proof of `∀x ∈ A. B(x)` is a function (program) which to each element `a` in the set `A` gives a proof of `B(a)`.

The set corresponding to the universal quantifier is the *cartesian product of a family of sets*, denoted by `(Πx ∈ A)B(x)`.

**The elements in this set are functions** which, when applied to an element `a` in the set `A` gives an element in the set `B(a)`.

So, `(∀x ∈ A)B(x)` is identified with the set `(Πx ∈ A)B(x)`, whose elements have the form `λx.b(x)` where `b(x) ∈ B(x)` for `x ∈ A`.

> The interpretation of the universal quantifier `∀x ∈ A. B(x)` is identified with the set `(Πx ∈ A) B(x)`, the cartesian product of a family of sets.

`∀x ∈ A. B(x)` corr. to Πx∈A.B(x) = { λx.b(x) | b(x) ∈ B(x) ∧ x ∈ A }

</fieldset>
