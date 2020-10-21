
# Examples of translations

Some examples of translations from a natural language (English) to a formal language.

Formalising natural language means replacing names (individuals), verbs (functions), properties (predicates) with symbols, using the common notation for logical connectives and quantifiers to arrive at the unambiguous form.

- *"Every dog has an (human) owner whose mother is not red-headed."*
- ∀x. D(x) -> ∃y. H(y) ∧ O(y,x) ∧ ¬R(m(y))

where x and y range over individuals, m is a function mapping every individual to their mother; d, h, o, r stand for the predicates is-a-dog, is-a-person, ownership relation, and is-red-headed.


- *"Every girl has kissed a boy."*
- ∀x.G(x) -> ∃y.B(y) -> K(x,y)

- *"Every girl has kissed that boy."*
- ∃y.B(y) ∧ ∀x.G(x) -> K(x,y)
