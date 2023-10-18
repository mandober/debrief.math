# Rel

[Def.1] Properties of binary relations
- Let `X` be a set
- A homogeneous binary relation `R` on `X` is a subset of `X×X`

then a relation `R` is called

01. reflexive,        ∀x ∈ X. xRx
02. irreflexive,      ∀x ∈ X. ¬xRx
03. co-reflexive,     ∀x,y ∈ X. xRy → x = y
04. left quasi-refl   ∀x,y ∈ X. xRy → xRx
05. right quasi-refl  ∀x,y ∈ X. xRy → yRy
06. quasireflexive    ∀x,y ∈ X. xRy → (xRx ⋀ yRy)

07. symmetric         ∀x,y ∈ X. xRy →  yRx
08. asymmetric        ∀x,y ∈ X. xRy → ¬yRx
09. anti-symmetric    ∀x,y ∈ X. (xRy ⋀ x≠y) → ¬yRx

10. transitive        ∀xyz ∈ X. (xRy ⋀ yRz) →  xRz
11. anti-transitive   ∀xyz ∈ X. (xRy ⋀ yRz) → ¬xRz
12. dense             ∀x,z ∈ X. ∃y ∈ X. xRz → (xRy ⋀ yRz)
13. quasi-transitive  ∀xyz ∈ X. ( xRy ⋀ ¬yRx) ⋀ ( yRz ⋀ ¬zRy) → ( xRz ⋀ ¬zRx)
14. incomparab.trans  ∀xyz ∈ X. (¬xRy ⋀ ¬yRx) ⋀ (¬yRz ⋀ ¬zRy) → (¬xRz ⋀ ¬zRx)

16. connex:           ∀x,y ∈ X. xRy ⋁ yRx
15. semi-connex:      ∀x,y ∈ X. xRy ⋁ yRx ⋁ x = y

26. dichotomous:      ∀x,y ∈ X. xRy ⊕ yRx
27. trichotomous:     ∀x,y ∈ X. xRy ⊕ yRx ⊕ x = y

17. left Euclidean    ∀xyz ∈ X. (yRx ⋀ zRx) → yRz
18. right Euclidean   ∀xyz ∈ X. (xRy ⋀ xRz) → yRz
19. Euclidean         ∀xyz ∈ X. (yRx ⋀ zRx) ⋀ (xRy ⋀ xRz) → yRz

20. left-serial     ∀a ∈ A. ∃b ∈ B. aRb  (∀A domain, `∀A.∃B`, function-prop-2)
21. right-serial    ∀b ∈ B. ∃a ∈ A. aRb  (∀B codomain, `∀B.∃A`)

22. left-unique    ∀a,a₁, y ∈ X. aRy ⋀ a₁Ry → a = a₁
23. right-unique   ∀a, y,y₁ ∈ X. aRy ⋀ aRy₁ → y = y₁    (function-prop-1)

24. semi-order-1:  ∀wxyz ∈ X. wRx ⋀ (¬xRy ⋀ ¬yRx) ⋀ yRz -> wRz
25. semi-order-2:  ∀wxyz ∈ X. (xRy ⋀ yRz) →
                              (xRw ⋀ wRx) ⋁
                              (yRw ⋀ wRy) ⋁
                              (zRw ⋀ wRz)




Legend
- scheme that uses capitalized abbreviations
- 2-letter codes scheme of abbreviations

We say that `x` and `y` are incomparable wrt `R` if `¬xRy ⋀ ¬yRx` holds.


N | Relation type       | Short | cc | formula
--|---------------------|-------|----|-----------------------------------
01| reflexive           | Refl  | rf | ∀x(x ∈ X → (x, x) ∈ R)
02| irreflexive         | IrRef | ir | ∀x(x ∈ X → (x, x) ∉ R)
03| coreflexive         | CoRef | cr | ∀x,y ∈ X. xRy → x = y
04| left quasireflexive | lQR | lq | ∀x,y ∈ X. xRy → xRx
05| right quasireflexive| rQR | rq | ∀x,y ∈ X. xRy → yRy
06| quasireflexive      | QRef  | qr | ∀x,y ∈ X. xRy → xRx ⋀ yRy
--|---------------------|-------|----|-----------------------------------
07| symmetric           | Sym   | sy | ∀x,y ∈ X. xRy → yRx
08| asymmetric          | ASym  | as | ∀x,y ∈ X. xRy → ¬yRx
09| anti-symmetric      | AntSy | an | ∀x,y ∈ X. xRy ⋀ x ≠ y → ¬yRx
--|---------------------|-------|----|-----------------------------------
10| 
--|---------------------|-------|----|-----------------------------------
22|incomparability-trans|       |    | 
23| left unique         |       |    | ∀a,ä,y ∈ X. aRy ⋀ äRy → a = ä
24| right unique        |       |    | ∀a,y,ÿ ∈ X. aRy ⋀ aRÿ → y = ÿ
