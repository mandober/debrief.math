## Quantifiers

## Duality of quantifiers

Main Q   | Dual Q     | Main example        | Dual example
--------:|-----------:|--------------------:|--------------------:
 ∀x. Ax  | ¬∃x.¬Ax    |     All x is     A  |      No x is not A
 ∀x.¬Ax  | ¬∃x. Ax    |     All x is not A  |      No x is     A
¬∀x. Ax  |  ∃x.¬Ax    | Not All x is     A  |    Some x is not A
¬∀x.¬Ax  |  ∃x. Ax    | Not All x is not A  |    Some x is     A
 ∃x. Ax  | ¬∀x.¬Ax    |    Some x is     A  | Not All x is not A
¬∃x. Ax  |  ∀x.¬Ax    |      No x is     A  |     All x is not A
 ∃x.¬Ax  | ¬∀x. Ax    |    Some x is not A  | Not All x is     A
¬∃x.¬Ax  |  ∀x. Ax    |      No x is not A  |     All x is     A


```js
 ∀x. Ax === ¬∃x. ¬Ax            All x is     A  ===       No x is not A
 ∀x.¬Ax === ¬∃x.  Ax            All x is not A  ===       No x is     A
¬∀x. Ax ===  ∃x. ¬Ax        Not All x is     A  ===     Some x is not A
¬∀x.¬Ax ===  ∃x.  Ax        Not All x is not A  ===     Some x is     A

 ∃x. Ax === ¬∀x.¬Ax            Some x is     A  ===  Not All x is not A
¬∃x. Ax ===  ∀x.¬Ax              No x is     A  ===      All x is not A
 ∃x.¬Ax === ¬∀x. Ax            Some x is not A  ===  Not All x is     A
¬∃x.¬Ax ===  ∀x. Ax              No x is not A  ===      All x is     A
```

## Main syllogistic forms in FOL

Form                         | Infix | FOL formula
-----------------------------|-------|--------------------------------
All  A is B (No  A is not B) | A a B | ∀x(Ax →  Bx) ⟺ ¬∃x(Ax ∧ ¬Bx)
No   A is B (All A is not B) | A e B | ∀x(Ax → ¬Bx) ⟺ ¬∃x(Ax ∧  Bx)
Some A is B                  | A i B | ∃x(Ax ∧  Bx)
Some A is not B              | A o B | ∃x(Ax ∧ ¬Bx)
