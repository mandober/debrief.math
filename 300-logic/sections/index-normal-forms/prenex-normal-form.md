# Prenex normal form

https://en.wikipedia.org/wiki/Prenex_normal_form


<!-- TOC -->

- [Conversion to prenex form](#conversion-to-prenex-form)
- [Conjunction and disjunction](#conjunction-and-disjunction)
- [Negation](#negation)
- [Implication](#implication)
- [Example](#example)
- [Intuitionistic logic](#intuitionistic-logic)
- [Use of prenex form](#use-of-prenex-form)
- [Universal-existential normal form](#universal-existential-normal-form)

<!-- /TOC -->

A formula of the predicate calculus is in **prenex normal form** (PNF) if it is written as a string of quantifiers and bound variables, called the *prefix*, followed by a quantifier-free part, called the *matrix*.

For example, if `ϕ(y)`, `ψ(z)`, `ρ(x)` are quantifier-free formulas with the free variables shown then the formula below is in prenex normal form:

```js
∀x ∃y ∀z (ϕ(y) ⋁ (ψ(z) ⟶ ρ(x)))
└─┬───┘└────────────────┬────┘
prefix:               matrix: quantifier-free part
quantifiers that
bind free vars
```

While this formula is logically equivalent but not in the prenex normal form:

`∀x [{∃y.ϕ(y)} ⋁ ({ ∃z.ψ(z)) ⟶ ρ(x) }]` i.e. 
`∀x [(∃y.ϕy) ⋁ (∃z.ψz ⟶ ρx)]`


## Conversion to prenex form

Every first-order formula in classical logic has a logically equivalent prenex normal form.

There are several conversion rules that can be recursively applied to convert a formula to prenex normal form. The rules depend on which logical connectives appear in the formula.

```js
// Conjunction
(∀x.ϕ) ⋀ ψ ≡ ∀x(ϕ ⋀ ψ)                   and: ∃x.⟙               (∀⋀)
(∃x.ϕ) ⋀ ψ ≡ ∃x(ϕ ⋀ ψ)                                          (∃⋀)

// Disjunction
(∀x.ϕ) ⋁ ψ ≡ ∀x(ϕ ⋁ ψ)                                           (∀⋁)
(∃x.ϕ) ⋁ ψ ≡ ∃x(ϕ ⋁ ψ)                   and: ∃x.⟙              (∃⋁)

// Negation
¬∀x.ϕ === ∃x.¬ϕ                                                 (¬∀)
¬∃x.ϕ === ∀x.¬ϕ                                                 (¬∃)

// Implication
∀x.ϕ ⟶ ψ ≡ ∃x(ϕ ⟶ ψ)                                          (∀→)
∃x.ϕ ⟶ ψ ≡ ∀x(ϕ ⟶ ψ)                    and: ∃x.⟙             (∃→)

ϕ ⟶ ∀x.ψ ≡ ∀x(ϕ ⟶ ψ)                                          (→∀)
ϕ ⟶ ∃x.ψ ≡ ∃x(ϕ ⟶ ψ)                    and: ∃x.⟙             (→∃)


// Conditions:

// x bound in one formula is not also bound in the other
1) x ∉ FV(ψ) ---> all the above is valid

// otherwise rename it
2) x ∈ FV(ψ) ---> ∃x'.ϕ[x ⟼ x']
```

These rules require that a variable quantified in one subformula does not appear free in the other subformula, otherwise it needs to be renamed.


Overview of all conversion rules for connectives:

## Conjunction and disjunction

```js
// conjunction
(∀x.ϕ) ⋀ ψ ≡ ∀x(ϕ ⋀ ψ)                   and: ∃x.⟙              (1)
(∃x.ϕ) ⋀ ψ ≡ ∃x(ϕ ⋀ ψ)                                          (2)

// disjunction
(∀x.ϕ) ⋁ ψ ≡ ∀x(ϕ ⋁ ψ)                                          (3)
(∃x.ϕ) ⋁ ψ ≡ ∃x(ϕ ⋁ ψ)                   and: ∃x.⟙              (4)

// both are valid if                                            (5)
x ∉ FV(ψ)
// otherwise
x ∈ FV(ψ) ---> Qx'.ϕ[x ⟼ x']
```

1. under (mild) additional condition `∃x.⟙`, or, equivalently, `¬∀x.⟘`, which means that there is at least one individual in the universe.

5. The equivalences are valid when `x` does not appear as a free variable of `ψ`; if it does, you can rename the bound `x` in `Qx.ϕ` and obtain the equivalent formula `Qx'.ϕ[x ⟼ x']`, where Q is ∀ or ∃.


* For example,

in the language of rings,   
`(∃x.x² = 1) ⋀ y = 0` === `∃x(x² = 1 ⋀ y = 0)`   

but     
`(∃x.x² = 1) ⋀ x = 0` !== `∃x(x² = 1 ⋀ x = 0)`   

because the LHS formula is true in any ring when the free var `x = 0`, while the RHS formula has no free variables and is false in any nontrivial ring (since 0² ≠ 1).

Therefore, the formula `(∃x.x² = 1) ⋀ x = 0` first needs to be rewritten by changing `x` with a fresh var `y`, `[x ⟼ y](∃x.x² = 1)` obtaining    
`(∃y.y² = 1) ⋀ x = 0`, so it can be put into the prenex normal form   
`∃y (y² = 1  ⋀ x = 0 )`.

## Negation

The rules for negation:

1. `¬∀x.ϕ` === `∃x.¬ϕ`
2. `¬∃x.ϕ` === `∀x.¬ϕ`


## Implication

There are 4 rules for implication: two that remove quantifiers from the antecedent and two that remove quantifiers from the consequent.

These 4 rules can be derived by rewriting the implication `ϕ ⟶ ψ` as `¬ϕ ⋁ ψ` and applying the rules for disjunction above. These rules also require that the variable quantified in one subformula does not appear free in the other subformula.

1. `∀x.ϕ ⟶ ψ` ≡ `∃x(ϕ ⟶ ψ)`
2. `∃x.ϕ ⟶ ψ` ≡ `∀x(ϕ ⟶ ψ)`        and ∃x.⟙
3. `ϕ ⟶ ∀x.ψ` ≡ `∀x(ϕ ⟶ ψ)`
4. `ϕ ⟶ ∃x.ψ` ≡ `∃x(ϕ ⟶ ψ)`        and ∃x.⟙


## Example

Suppose that `ϕ`, `ψ`, and `ρ` are quantifier-free formulas and no two of these formulas share any free variable. Consider the formula `(ϕ ⋁ ∃x.ψ) -> ∀z.ρ`

By recursively applying the rules starting at the innermost subformulas, the following sequence of logically equivalent formulas can be obtained:

```js
   (ϕ ⋁ ∃x.ψ) -> ∀z.ρ
    ∃x(ϕ ⋁ ψ) -> ∀z.ρ
  ¬(∃x(ϕ ⋁ ψ)) ⋁ ∀z.ρ
(∀x(¬(ϕ ⋁ ψ))) ⋁ ∀z.ρ
  ∀x (¬(ϕ ⋁ ψ) ⋁ ∀z.ρ)
   ∀x((ϕ ⋁ ψ) -> ∀z.ρ)
∀x(∀z((ϕ ⋁ ψ) -> ρ))
  ∀x∀z(ϕ ⋁ ψ) -> ρ)     (1)
```

This is not the only prenex form equivalent to the original formula. For example, by dealing with the consequent before the antecedent in the example above, we get the prenex form (2):

```js
(ϕ ⋁ ∃x.ψ) -> ∀z.ρ
∀z((ϕ ⋁ ∃x.ψ) -> ρ)
∀z((∃x(ϕ ⋁ ψ)) -> ρ)
∀z(¬(∃x(ϕ ⋁ ψ)) ⋁ ρ)
∀z((∀x(¬(ϕ ⋁ ψ))) ⋁ ρ)
∀z((∀x(ϕ ⋁ ψ)) -> ρ))
∀z∀x((ϕ ⋁ ψ) -> ρ)       (2)
```

and these two resulting formulas are equivalent:

(1) `∀x∀z(ϕ ⋁ ψ) -> ρ)` ≡ `∀z∀x((ϕ ⋁ ψ) -> ρ)` (2)


## Intuitionistic logic

The rules for converting a formula to prenex form make heavy use of rules that are only applicable in classical logic. In intuitionistic logic, not every formula has a logically equivalent prenex formula. The negation connective is not the only obstacle. Implication is also treated differently in IL than CL - in IL, it's not equivalent to the disjunction with the antecedent negated, i.e. `p -> q` != `¬p ⋁ q` (in IL).

The BHK interpretation illustrates why some formulas have no intuitionistically equivalent prenex form. In this interpretation, a proof of

`(∃x ϕ) -> ∃y ψ`     (1)

is a function which, given a concrete `x` and a proof of `ϕ(x)`, produces a concrete `y` and a proof of `ψ(y)`. In this case it is allowable for the value of `y` to be computed from the given value of `x`.

On the other hand, a proof of

`∃y(∃x ϕ -> ψ)`     (2)

produces a single concrete value of `y` and a function that converts any proof of `∃x ϕ` into a proof of `ψ(y)`. If each `x` satisfying `ϕ` can be used to construct a `y` satisfying `ψ`, but no such `y` can be constructed without knowledge of such an `x`, then formula (1) is not be equivalent to formula (2).

The rules for converting a formula to prenex form that fail in IL are:

```js
∀x (ϕ ⋁ ψ) => (∀x ϕ) ⋁ ψ            (1)
∀x (ϕ ⋁ ψ) => ϕ ⋁ ∀x ψ              (2)
(∀x ϕ) -> ψ => ∃x(ϕ -> ψ)           (3)
  ϕ -> ∃x ψ => ∃x(ϕ -> ψ)           (4)
      ¬∀x ϕ => ∃x ¬ϕ                 (5)

for:
x ∉ fv(ψ) in (1) and (3)
x ∉ fv(ϕ) in (2) and (4)
```

## Use of prenex form

Some proof calculi will only deal with a theory whose formulae are written in prenex normal form. The concept is essential for developing the arithmetical hierarchy and the analytical hierarchy.

Gödel's proof of his completeness theorem for first-order logic presupposes that all formulae have been recast in prenex normal form.

Tarski's axioms for geometry is a logical system whose sentences can all be written in universal-existential form, a special case of the prenex normal form that has every universal quantifier preceding any existential quantifier, so that all sentences can be rewritten in the form 

`∀u ∀v … ∃a ∃b ϕ`

where `ϕ` is a sentence that doesn't contain any quantifier. This fact allowed Tarski to prove that Euclidean geometry is decidable.

## Universal-existential normal form

Universal-existential form is a special case of the prenex normal form where every universal quantifier precedes any existential quantifier.
