# Examples of predicate formulae

Some examples of translations from a natural language to a predicate logic formulae. Formalising natural language means replacing names (individuals), verbs (functions), properties (predicates) with symbols, using the common notation for logical connectives and quantifiers to arrive at the unambiguous form.

In general:
- ∀x ∈ S. P(x) ≡ ∃x. x ∈ S `->` P(x)
- ∃x ∈ S. P(x) ≡ ∃x. x ∈ S `∧` P(x)

"Every dog has an owner whose mother is not red-headed."
  - ∀x. D(x) -> ∃y. H(y) ∧ O(y,x) ∧ ¬R(m(y))
  - `x` and `y` range over individuals, `m` maps individuals to their mother, the others are predicates (`d`, `h`, `o`, `r` stand for the predicates is-a-dog, is-a-person, ownership relation, and is-red-headed).

"Every girl has kissed a boy"
  - `∀x.G(x) -> ∃y.B(y) -> K(x,y)` - possibly different in each case
  - `∃y.B(y) ∧ ∀x.G(x) -> K(x,y)`  - the one and the same

"Every robot has a brain"
- forall
- is-a
- has-a
- ∀r. Robot(r) -> ∃b.Brain(b) ∧ Has(r,b)
- `∀r. R(r) -> ∃b.B(b) ∧ H(r,b)`

```hs
heartFact :: Person -> Bool
heartFact p = has p (heart p)
  where heart :: Person -> Heart
  -- ...
```
