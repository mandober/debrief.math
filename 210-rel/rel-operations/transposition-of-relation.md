# Transposition of relation

# Transposition of relations

Transposition flips a relation around the main diagonal.

Diagonal relations (like EQ and NE) remain unchanged by the transposition. More generally, symmetric and antisymmetric relations remain unchanged by the transposition.

>If R is (anti)symmetric, then Rᵀ = R.

So, EQᵀ = EQ, and NEᵀ = NE.

- R[i][j] -->> R[j][i]
- (2,2) -->> (2,2)
- (1,3) -->> (3,1)
- (3,7) -->> (7,3)

More precisely, when representing relations as Boolean matrices, for each field `R[i][j] = x` of relation `R`, set the (symmetric) field `R[j][i] = x` in the transposed relation `Rᵀ`.

When relations are denoted using set builder notation,   
if `R` is a binary relation over sets `X` and `Y`,   
`R = { (x, y) | x ∈ X, y ∈ Y }`   
then the transposition of R is the relation `Rᵀ`,   

First decompose `R` into diagonal relation `Δʀ`, and `Rʹ = R ∖ Δʀ`.

R
Δʀ
Rʹ = R ∖ Δʀ
-----------------
R = Δʀ ∪ Rʹ
R = Δʀ ∪ (R ∖ Δʀ)

Rʹ = R ∖ Δʀ
(Rʹ)ᵀ = (R ∖ Δʀ)ᵀ = Rᵀ ∖ Δʀᵀ


R = ≤
Δʀ = (=)
Rʹ = R ∖ Δʀ = (≤) ∖ (=) = (<)

R = Δʀ ∪ Rʹ
≤ = (=) ∪ (<)

Rᵀ = (Δʀ ∪ Rʹ)ᵀ
   = (Δʀ ∪ (R ∖ Δʀ))ᵀ



## Transposition of some concrete relations

LE, LT, GE, GT, EQ, NE

Transposition of `≤` is `>`:
```
┌───┬───┬───┬───┐   ┌───┬───┬───┬───┐
│ ≤ │ 1 │ 2 │ 3 │   │ > │ 1 │ 2 │ 3 │
├───┼───┼───┼───┤   ├───┼───┼───┼───┤
│ 1 │ y │ y │ y │ → │ 1 │ ∙ │ ∙ │ ∙ │
│ 2 │ ∙ │ y │ y │   │ 2 │ y │ ∙ │ ∙ │
│ 3 │ ∙ │ ∙ │ y │   │ 3 │ y │ y │ ∙ │
└───┴───┴───┴───┘   └───┴───┴───┴───┘
```


## Table of transpositions

R,  relation      | = | ≠ | ≤ | < | > | ≥ |
:-----------------|---|---|---|---|---|---|
Rᶜ  converse      | ≠ | = | > | ≥ | ≤ | < |
Rᵀ  transposition | = | ≠ | ≥ | > | < | ≤ |
Rᵀᶜ trans + conv  | ≠ | = | < | ≤ | ≥ | > |
Rᶜᵀ conv + trans  | ≠ | = | < | ≤ | ≥ | > |

>Theorem: for __=, ≠, ≤, <, >, ≥__, transposition followed by converse is the same as converse followed by transposition.


```
┌───┬───┬───┬───┐   ┌───┬───┬───┬───┐   ┌───┬───┬───┬───┐   ┌───┬───┬───┬───┐
│ ≤ │ 1 │ 2 │ 3 │   │ < │ 1 │ 2 │ 3 │   │ > │ 1 │ 2 │ 3 │   │ ≥ │ 1 │ 2 │ 3 │
├───┼───┼───┼───┤   ├───┼───┼───┼───┤   ├───┼───┼───┼───┤   ├───┼───┼───┼───┤
│ 1 │ y │ y │ y │   │ 1 │ ∙ │ y │ y │   │ 1 │ ∙ │ ∙ │ ∙ │   │ 1 │ y │ ∙ │ ∙ │
│ 2 │ ∙ │ y │ y │   │ 2 │ ∙ │ ∙ │ y │   │ 2 │ y │ ∙ │ ∙ │   │ 2 │ y │ y │ ∙ │
│ 3 │ ∙ │ ∙ │ y │   │ 3 │ ∙ │ ∙ │ ∙ │   │ 3 │ y │ y │ ∙ │   │ 3 │ y │ y │ y │
└───┴───┴───┴───┘   └───┴───┴───┴───┘   └───┴───┴───┴───┘   └───┴───┴───┴───┘

┌───┬───┬───┬───┐   ┌───┬───┬───┬───┐
│ = │ 1 │ 2 │ 3 │   │ ≠ │ 1 │ 2 │ 3 │
├───┼───┼───┼───┤   ├───┼───┼───┼───┤
│ 1 │ y │ ∙ │ ∙ │   │ 1 │ ∙ │ y │ y │
│ 2 │ ∙ │ y │ ∙ │   │ 2 │ y │ ∙ │ y │
│ 3 │ ∙ │ ∙ │ y │   │ 3 │ y │ y │ ∙ │
└───┴───┴───┴───┘   └───┴───┴───┴───┘
```



```
R               EQ    NE    LE    LT    GE     GT
R             : =     ≠     ≤     <      >     ≥
Rᵀ            : =ᵀ    ≠ᵀ    ≤ᵀ    <ᵀ     >ᵀ     ≥ᵀ
Rᶜ = R̅        : =ᶜ    ≠ᶜ    ≤ᶜ    <ᶜ     >ᶜ     ≥ᶜ
Rᵈ = Rᶜᵀ = R̅ᵀ : =ᶜᵀ   ≠ᶜᵀ   ≤ᶜᵀ    <ᶜᵀ    >ᶜᵀ    ≥ᶜᵀ
Rᵀᶜ           : =ᵀᶜ   ≠ᵀᶜ   ≤ᵀᶜ    <ᵀᶜ    >ᵀᶜ    ≥ᵀᶜ
```
