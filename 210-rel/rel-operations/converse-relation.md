# Converse

**Converse** (**inverse**, **inversion** or **compliment**) of a relation `R` is the relation `R̅` or `Rᶜ` that has all its fields inverted. More precisely, when representing relations as Boolean matrices, for each field `R[i][j] = x` of relation `R`, the same field in `R̅` becomes `R[i][j] = ¬x`.

R[i][j] = x -->> R[j][i] = ¬x

When relations are denoted using set builder notation,   
if `R` is a binary relation over sets `X` and `Y`,   
`R = { (x, y) | x ∈ X, y ∈ Y }`   
then the converse (compliment) of R is the relation   
`R̅ = { (y, x) | x ∈ X, y ∈ Y, xRy }`

## Converse example

Converse (compliment) of `≤` is `>`:
┌───┬───┬───┬───┐   ┌───┬───┬───┬───┐
│ ≤ │ 1 │ 2 │ 3 │   │ > │ 1 │ 2 │ 3 │
├───┼───┼───┼───┤   ├───┼───┼───┼───┤
│ 1 │ y │ y │ y │ → │ 1 │ ∙ │ ∙ │ ∙ │
│ 2 │ ∙ │ y │ y │   │ 2 │ y │ ∙ │ ∙ │
│ 3 │ ∙ │ ∙ │ y │   │ 3 │ y │ y │ ∙ │
└───┴───┴───┴───┘   └───┴───┴───┴───┘


## Some converses

Converse of some concrete relations
- `=` is its own converse, (=ᶜ) = (=)
- `≠` is its own converse, (≠ᶜ) = (≠)
- converse of `≤` is `>`
- converse of `<` is `≥`


>A binary relation is equal to its converse if and only if it is *symmetric* or *antisymmetric*.

>*Theorem*: for __=, ≠, ≤, <, >, ≥__, transposition followed by converse is the same as converse followed by transposition.
