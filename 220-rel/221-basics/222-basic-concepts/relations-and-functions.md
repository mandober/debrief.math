# Relations :: General :: Relations and functions

## Functions are specializations of relations

Relations are generalizations of functions, that is, functions are specializations of relations. All functions are relations, but not vice versa. Functions are only those relations with special properties, the most important of which is functionality aka right-uniqueness. Functional or right-unique (right-definite, univalent) property of relations is the essential property of functions.

If `R` is a relation `R ⊆ A⨯B`, then `R` is a *functional* or *right-unique* relation if those elements of domain elements that do participate in `R` are each associated to exactly one codomain element.

`R ⊆ A⨯B. ∃xyz(x ∈ A ∧ y,z ∈ B ∧ (xRy ∧ xRz -> y = z))`

A relation `R` with functional propoperty is a *partial function*, and for such a relation, domain `A` is called the *primary key* of `R`.

*Total functions* are sticter than partial functions in that they require an additional property, *left-totality*.
- `R ⊆ A⨯B. ∀x∃yz((x ∈ A ∧ y,z ∈ B) -> (xRy ∧ xRz -> y = z))`, or just
- `R ⊆ A⨯B. ∀x ∈ A. ∃!y ∈ B. xRy`

Note that these two formulas are almost identical save for the type of quantification. The first formula is existentially quantifies domain elements implying that at least one domain element must participate in the relation for it to be functional. The second formula universally quantifies domain elements to ensure they all participate in the relation if it is to be called a *total function*.

## Relations as functions

Interestingly, a relation may be expresses as function, that is, as a *multi-valued function*, which, for each domain element as input, outputs a list of codomain elements to which the domain element is associated.

```hs
A = {a,b}
B = {1,2,3}
R ⊆ A⨯B
R = { (a,1), (a,2), (b,1), (b,3) }
-- R as a function r
r := a ⟼ (1,2)
     b ⟼ (1,3)
```
