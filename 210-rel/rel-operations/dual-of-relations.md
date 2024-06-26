# Dual of relation

For an arbitrary relation R, `Rᵈ := (Rᶜ)ᵀ = R̅ᵀ` is called its **dual**.

`Rᵈ := R̅ᵀ`

Converse `Rᶜ` followed by transposition `Rᵀ` of a relation `R` results in its dual relation, `Rᵈ`.

## Dual illustarted

Let relation `R` be `<`
- Then, the converse of `<ᶜ` is `≥`
- Then, the transposition of `≥ᵀ` is `≤`
- LT (`<`) -->> GE (`≥`) -->> LE (`≤`)

```
  <                   <ᶜ = ≥               ≥ᵀ = ≤
┌───┬───┬───┬───┐    ┌───┬───┬───┬───┐    ┌───┬───┬───┬───┐
│ < │ 1 │ 2 │ 3 │    │ ≥ │ 1 │ 2 │ 3 │    │ ≤ │ 1 │ 2 │ 3 │
├───┼───┼───┼───┤    ├───┼───┼───┼───┤    ├───┼───┼───┼───┤
│ 1 │ ∙ │ y │ y │    │ 1 │ y │ ∙ │ ∙ │    │ 1 │ y │ y │ y │
│ 2 │ ∙ │ ∙ │ y │    │ 2 │ y │ y │ ∙ │    │ 2 │ ∙ │ y │ y │
│ 3 │ ∙ │ ∙ │ ∙ │    │ 3 │ y │ y │ y │    │ 3 │ ∙ │ ∙ │ y │
└───┴───┴───┴───┘    └───┴───┴───┴───┘    └───┴───┴───┴───┘
```

## Duals of some concrete relations

R  | R̅  | R̅ᵀ = Rᵈ
---|----|--------
≤  | >  | <
<  | ≥  | ≤
≥  | ≤  | <
>  | <  | ≤


- LE (`≤`) -->> GT (`>`) -->> LT (`<`)
- LT (`<`) -->> GE (`≥`) -->> LE (`≤`)
- GE (`≥`) -->> LT (`<`) -->> GT (`>`)
- GT (`>`) -->> LE (`≤`) -->> GE (`≥`)

R  Rᶜ Rᵀ Rᵈ
LE GT    LT
LT GE    LE
GE LT    GT
GT LE    GE


GE (≥) -->> ?? (?) -->> ?? (?)

```
  ≤                   ≤ᶜ = >               >ᵀ = <
┌───┬───┬───┬───┐    ┌───┬───┬───┬───┐    ┌───┬───┬───┬───┐
│ ≤ │ 1 │ 2 │ 3 │    │ > │ 1 │ 2 │ 3 │    │ < │ 1 │ 2 │ 3 │
├───┼───┼───┼───┤    ├───┼───┼───┼───┤    ├───┼───┼───┼───┤
│ 1 │ y │ y │ y │    │ 1 │ ∙ │ ∙ │ ∙ │    │ 1 │ ∙ │ y │ y │
│ 2 │ ∙ │ y │ y │    │ 2 │ y │ ∙ │ ∙ │    │ 2 │ ∙ │ ∙ │ y │
│ 3 │ ∙ │ ∙ │ y │    │ 3 │ y │ y │ ∙ │    │ 3 │ ∙ │ ∙ │ ∙ │
└───┴───┴───┴───┘    └───┴───┴───┴───┘    └───┴───┴───┴───┘
```



LE (≤) -->> GT (>) -->> LT (<)

```
┌───┬───┬───┬───┐    ┌───┬───┬───┬───┐    ┌───┬───┬───┬───┐
│ ≤ │ 1 │ 2 │ 3 │    │ > │ 1 │ 2 │ 3 │    │ < │ 1 │ 2 │ 3 │
├───┼───┼───┼───┤    ├───┼───┼───┼───┤    ├───┼───┼───┼───┤
│ 1 │ y │ y │ y │    │ 1 │ ∙ │ ∙ │ ∙ │    │ 1 │ ∙ │ y │ y │
│ 2 │ ∙ │ y │ y │    │ 2 │ y │ ∙ │ ∙ │    │ 2 │ ∙ │ ∙ │ y │
│ 3 │ ∙ │ ∙ │ y │    │ 3 │ y │ y │ ∙ │    │ 3 │ ∙ │ ∙ │ ∙ │
└───┴───┴───┴───┘    └───┴───┴───┴───┘    └───┴───┴───┴───┘
```
