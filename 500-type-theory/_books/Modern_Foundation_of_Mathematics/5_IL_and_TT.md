# Foundations 5: Intuitionistic Logic and Type Theory

https://www.youtube.com/watch?v=h6rTlirbfRI

In this video, `Foundations 5: Intuitionistic Logic and Type Theory` (published 11 Jan 2021), we introduce type-theoretic description of *Heying algebras* and *intuitionistic logic*. We prove a few important results about IL, making a bridge toward Type Theory.

## Heyting algebra

Around the cycle of trinitarianism, i.e. the correspondence between each of these: category theory ≅ type theory ≅ logic

- A Heyting algebra is a bicartesian closed poset.
- A bicartesian closed poset is a category based on poset with 
  - terminal object
  - initial object
  - products
  - coproducts
  - exponentials


- A preorder is: refl + trans
- A poset is: refl + trans + antisymm (preorder + antisymm)

```hs
🗇 Inference rules

              x ≤ y   y ≤ z           x ≤ y   y ≤ x
----- refl    -------------- trans    -------------- antisym
x ≤ x             x ≤ z                   x = y


🗇 Poset
          0
         { }
      ↙       ↘
  {a}           {b}
      ↘       ↙
        {a,b}
          1

🗇 The Greatest Element       🗇 Product, ∧, Meet, GLB, 1

                                                    z ≤ x   z ≤ y
----- ⊤              --------- π₁   --------- π₂    ------------- ∧
x ≤ 1                x ∧ y ≤ x      x ∧ y ≤ y         z ≤ x ∧ y




🗇 The Least Element          🗇 Coroduct, ∨, Join, LUB, 0

                                                  x ≤ z   y ≤ z
----- ⊥              --------- 𝒊₁   --------- 𝒊₂   ------------- ∨
0 ≤ x                x ≤ x ∨ y      y ≤ x ∨ y       x ∨ y ≤ z


🗇 Exponentials

                   z ∧ x ≤ y
---------- MP      --------- Currying
yˣ ∧ x ≤ y           z ≤ yˣ
```

## Logical reading

The inference rules above have a very sensible reading (an interpretation) in the context of intuitionistic logic.
- refl axiom `x ≤ x` may read `x -> x`, which is always true.
- trans also have a sensible meaning that holds `x → y, y → z |- x → z`
- antisym may mean equaivalence, `x → y, y → x |- x = y` i.e. `x ⇔ y`
- greatest element, 1, is interpreted as true, ⊤
  and its axiom as `x → true`
- least element, 0, is interpreted as false, ⊥
  and its axiom as `false → x` (EFQ)
- 




## aside

- In a poset, some objects (subsets) are incomparable.
  - here, {a} ≤≥ {b}, that is, {a} and {b} are not comparable
  - but the other objects are comparable as follows:
    -     ∅ ≤ ∅
    -     ∅ ≤ {a}
    -     ∅ ≤ {b}
    -     ∅ ≤ {a,b}
    -   {a} ≤ {a,b}
    -   {b} ≤ {a,b}
    -   {a} ≤ {a}
    -   {b} ≤ {b}
    - {a,b} ≤ {a,b}
  - with implicit identity arrows (refl), we can just write
    - ∅ ≤ {a} ≤ {a,b}
    - ∅ ≤ {b} ≤ {a,b}
    - {a} ≤≥ {b}
- The empty set ∅  ≅ GLB, meet, the initial  object, 0 ≅ ⊥ (false)
- The subset {a,b} ≅ LUB, join, the terminal object, 1 ≅ ⊤ (true)
- Correspondencies:
  - initial object,  LUB (0 ≤ x), is interpreted as false (⊥, 0)
    - 0 ≤ x corresponds to (⊥ -> x), ex falso quidlibet
  - terminal object, GLB (x ≤ 1), is interpreted as true  (⊤, 1)
    - x ≤ 1 corresponds to (x -> ⊤), tautology, reflexivity
  - reflexivity (x ≤ x) is interpreted as (x -> x), x implies itself
  - The product      ≅ conjunction
  - The coproduct    ≅ disjunction
  - The exponentials ≅ implication


## Q and A

- we have a poset
- poset is an inclusion relation ⊆
- {a} ⊆ {a,b}
- {a} and {a,b} and ∅, {b}, … are objects
- vars like x range over them
- so x ≤ x means x → x which holds
- *The Greatest Element* is identified by inference rule ⊤,   ∀x. x ≤ 1
- *The Least Element* is identified by inference rule ⊥,      ∀x. 0 ≤ x
- does TGE / TLE always exists? does it always exists in a Heyting algebra? or in a poset (sure! in a poset it does)
- *GLB* is `∧`
- *LUB* is `∨`
- see how GLB definition (inf rules) fare when taking diff subsets 
  (in the example poset)!
- GLB (∧) is defined by the 3 inf rules above; so is LUB (∨)
- GLB is ∧ and corres. to product, yes?
- GLB is meet, the terminal object, 1, here {a,b}
- GLB corr, or is related somehow to product, right?
- and LUB to coproduct, right?
- `x ∧ y ≤ x` is better seen as true if ≤ if interp as intersection, which would be the empty set in the example, and ∅ ≤ x
- LUB is the initial object, here ∅
- LUB is join, repr false, bottom, initial object
- TIP: when stuck try swapping operators:
  - ⊆ by ≤
  - ≤ by → thus: ⊆ by →
  - → by ⊇ (old notation)
           inconsistent! 
           ✘ (→) cannot ≅ to both ⊆ and ⊇ at the same time!
           I mean, the old notation for implication has always seemed 
           dubious… esp when compared to a Venn diagram for impl.
  - ∧ by ⋂, ∨ by ⋃
  - ∧ by ⨯, ∨ by + (maybe not applicable here)


* product has 2 projections, 
  and z in the inference rule is another product pretender, 
  but p is "better" since z can be factorized.

  x = {a}
  y = {b}
  p = {a,b}
  z = ?

            z
          ↙ | ↘
      f ↙   |   ↘ g
      ↙     ↓ m    ↘
  x <------ p ------> y
      π₁         π₂

z ≤ x       z ≤ y        |-  z ≤ x ∧ y
z → x (f)   z → y (g)    |-  z → x ∧ y (m)

- how does it relate to a poset, e.g. the poset in example (or a larger one)?
- also for coproduct, and esp. for exp. ?










## Intermezzo: about data structures

- data structure = data + structure
- structure = admin bytes
- data = payload bytes
- the purest, implicit, ds is an array of primitive values coz they depend on established convention i.e. the same (prim) value stored in contig cells
- values = objects (in memory; bytes)
- but values classify as primitive and compound
- compound values -> structure
wtf? lost the point…
