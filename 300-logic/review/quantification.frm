# Universal and existential quantification

## TL/DR

```js
// base logical equivalences
    ∀x  P(x)  ≡  ¬∃x ¬P(x)      // U1
    ∃x  P(x)  ≡  ¬∀x ¬P(x)      // E1

// derived logical equivalences
    ∀x ¬P(x)  ≡   ∀x ¬P(x)
 // ¬(∃x Px) == ¬∃x Px == ∀x ¬Px
   ¬∀x P(x)   ≡   ∃x ¬P(x)
 // ¬(∀x Px) == ¬∀x Px == ∃x ¬Px



¬∀x ¬Px  ≡  ∃x  Px



¬∃x ¬Px  ≡  ∀x  Px


// 1. negating ∀
  // 1.1. ¬(∀xPx)
   ¬(∀x Px)
  = ¬∀x Px
  =  ∃x¬Px
  // 1.2. ¬∀xPx
    ¬∀x Px
  =¬(∀x Px)
  = ¬∀x Px
  =  ∃x¬Px
  // 1.3. ¬(∀x¬Px)
   ¬(∀x ¬Px)
  = ¬∀x ¬Px
  =  ∃x¬¬Px
  =  ∃x  Px


     ∀x Px
=  ¬¬∀x Px
= ¬(¬∀x Px)
= ¬¬(∀x Px)
= ¬(¬∀x Px)
= ¬( ∃x¬Px)
=   ¬∃x¬Px)
=    ∀x Px)


 ¬(¬∀x¬Px) =

¬¬( ∀x Px) =
¬¬( ∀x¬Px) =
¬¬(¬∀x Px) =
¬¬(¬∀x¬Px) =



// at least one individual in the DoD
 ∃x ⊤ ≡ ¬∀x ⊥
¬∀x ⊥ ≡  ∃x ⊤


¬(∀xPx) = ¬∀xPx = ∃x¬Px
¬(∃xPx) = ¬∃xPx = ∀x¬Px

      ∀x Px
=  ¬¬(∀x Px)
= ¬(¬(∀x Px))
= ¬(  ∃x¬Px)
=     ∀x Px)


¬¬∀xPx  =
∃x¬Px


 ∀xPx
¬∀xPx
¬∀x¬Px
 ∀x¬Px

¬¬∀xPx
  ∀x¬¬Px
¬¬∀x¬¬Px


∀x(Px → Qx)
¬∀x(Px → Qx)
¬∀x(¬Px → Qx)
¬∀x(¬Px → ¬Qx)
¬∀x(Px → ¬Qx)
```

## Quantification



Extensions of the DeMorgan's laws
- ∀x.Px ≡ ¬∃x.¬Px
- ∃x.Px ≡ ¬∀x.¬Px

Note:
- ¬(∀x.Px) ≡  ¬∀x.Px
-  ¬∀x.Px  ≡ ¬(∀x.Px)
- ¬(∃x.Px) ≡  ¬∃x.Px
-  ¬∃x.Px  ≡ ¬(∃x.Px)

Equivalences
-   ∀x. Px  ≡  ¬∃x.¬Px
-  ¬∃x.¬Px  ≡   ∀x. Px

-   ∃x. Px  ≡  ¬∀x.¬Px
-  ¬∀x.¬Px  ≡   ∃x. Px

- ¬(∀x. Px) ≡   ∃x.¬Px
-   ∃x.¬Px  ≡ ¬(∀x. Px)

-  ¬(∃x.Px) ≡   ∀x.¬Px
-    ∀x.¬Px ≡ ¬(∃x. Px)



### Negating a quantified statement

Negating a quantified statement `Ωx.Px` is done by "pulling in" the negation: the quantifier is flipped into its dual and the predicate is negated.

`¬ℚx Px = ℚ̅x ¬Px` where ℚ = {∀,∃}, ℚ̅ = dual

### Logical connectives

1. The universal and existential quantifiers move unchanged across the logical connectives `∧`, `∨`, `→`, and `↚`, provided the other operand is not affected.

- Px ∧ ∃y Qy ≡ ∃y(Px ∧ Qy)
- Px ∧ ∀y Qy ≡ ∀y(Px ∧ Qy)    if DoD ≠ ∅

- Px ∨ ∃y Qy ≡ ∃y(Px ∨ Qy)    if DoD ≠ ∅
- Px ∨ ∀y Qy ≡ ∀y(Px ∨ Qy)

- Px → ∃y Qy ≡ ∃y(Px → Qy)    if DoD ≠ ∅
- Px → ∀y Qy ≡ ∀y(Px → Qy)

- Px ↚ ∃y Qy ≡ ∃y(Px ↚ Qy)
- Px ↚ ∀y Qy ≡ ∀y(Px ↚ Qy)   if DoD ≠ ∅

2. Conversely, for the logical connectives `↑`, `↓`, `↛`, and `←`, the quantifiers flip:

- Px ↑ ∃y Qy ≡ ∀y(Px ↑ Qy)
- Px ↑ ∀y Qy ≡ ∃y(Px ↑ Qy)    if DoD ≠ ∅

- Px ↓ ∃y Qy ≡ ∀y(Px ↓ Qy)    if DoD ≠ ∅
- Px ↓ ∀y Qy ≡ ∃y(Px ↓ Qy)

- Px ↛ ∃y Qy ≡ ∀y(Px ↛ Qy)   if DoD ≠ ∅
- Px ↛ ∀y Qy ≡ ∃y(Px ↛ Qy)

- Px ← ∃y Qy ≡ ∀y(Px ← Qy)
- Px ← ∀y Qy ≡ ∃y(Px ← Qy)    if DoD ≠ ∅


## Universal quantification

### Negation of universal quantification

1. Negating a universally quantified statement `∀x.Px` is the same as negating the universal quantifier (not the same as negating both the quantifier andthe predicate):

`¬(∀x.Px)` = `¬∀x.Px` (≠ `¬∀x.¬Px`)

2. Negating a universally quantified statement `∀x.Px`, yields an existentially quantified statement with the predicate negated:

`¬∀x.Px` ≡ `∃x.¬Px`

(This is a generalization of De Morgan's laws to predicate logic)


### Rules of inference with universal quantification

A rule of inference is a rule justifying a logical step from hypothesis to conclusion. There are several rules of inference which utilize the universal quantifier.

**Universal instantiation** (UI or `∀I`) concludes that, if the propositional function is known to be universally true, then it must be true for any arbitrary element `a` in the universe of discourse.

`∀x Px -> Pa`

**Universal generalization** (UG or `∀G`) concludes the propositional function must be universally true if it is true for any arbitrary element `a` in the universe of discourse.

`Pa -> ∀x Px`

The element `a` must be completely arbitrary, otherwise the logic does not follow: if `a` is not arbitrary, and is instead a specific element of the universe of discourse, then `Pc` only implies an existential quantification of the propositional function, `Pa -> ∃x Px`.

**Empty DoD**: By convention, the formula `∀x Px` when `DoD = ∅` is always vacuously true, regardless of the formula `Px`.

### Universal closure

The universal closure of a formula `Φ` is the formula with all free vars of `Φ` universally quantified. For example, the universal closure of

`Py ∧ ∃x Q(x,z)` is `∀y∀z( Py ∧ ∃x Q(x,z) )`


## Existential quantification

### Negation of existential quantification

1. Negating an existentially quantified statement `∃x.Px` is the same as negating the existential quantifier (not the same as negating both the quantifier andthe predicate):

`¬(∃x.Px)` = `¬∃x.Px` (≠ `¬∃x.¬Px`)

2. Negating an existentially quantified statement `∃x.Px` yields an universally quantified statement with the predicate negated:

`¬∀x.Px` ≡ `∃x.¬Px`

(This is a generalization of De Morgan's laws to predicate logic)

3. Unlike the universal quantifier, *the existential quantifier distributes over disjunction*:

`∃x(Px ⋁ Qx)` -> `∃x Px ⋁ ∃x Qx`

4. Negation of the existential quantifier is also expressible through a statement of *"for no"* (as opposed to "for some")

`∄x Px ≡ ¬∃x Px`


### Rules of inference with existential quantification

A rule of inference is a rule justifying a logical step from hypothesis to conclusion. There are several rules of inference which utilize the existential quantifier.

**Existential introduction** (EI or `∃I`) concludes that, if the propositional function is known to be true for a particular element of the domain of discourse, then it must be true that there exists an element for which the proposition function is true.

`Pa -> ∃x Px`





## Refs

* Quantifier
https://en.wikipedia.org/wiki/Quantifier_(logic)#Notation

* Universal quantification
https://en.wikipedia.org/wiki/Universal_quantification

* Existential quantification
https://en.wikipedia.org/wiki/Existential_quantification

* `First-class Polymorphism with Type Inference` Mark P. Jones 1997
