# Reflexivity-based relations

Reflexivity-based relations are those relations and their nagations based around the property of reflexivity:
- reflexive relation              non-reflexive relation
- irreflexive relation            non-irreflexive relation
- coreflexive relation            non-coreflexive relation
- quasireflexive                  non-quasireflexive
- left quasireflexive             non-left quasireflexive
- right quasireflexive            non-right quasireflexive


These are simple, atomic relations gathered around the notion of reflexivity.

The two very well-known relations in this class are reflexive and irreflexive relation, with coreflexive and quasireflexive relation not being very common.

## Reflexive and irreflexive relation

Reflexivity or irreflexivity are actually properties of a relation - a relation that is reflexive is said to have the property of reflexivity (and similarly for irreflexivity and other relational properties). That is, reflexivity is a property of reflexive relations.

>A *reflexive relation* is said to have the *reflexive property* or is said to possess *reflexivity*.

A reflexive and irreflexive relations are only possible on a single set - they are endorelations. Unlike many other relations, these two require that *all elements of a set are engaged* in the relation, besides the usual requirement that the predicate must be to satisfied. Namely, for most other relations, only those elements that actually participate in a relation are required to satisfy the predicate, but for reflexivity-based relations, all elements must satisfy the predicate because all elements must participate in the relation.

Reflexivity requires not only that all elements of a set are enagaged in the relation but also that each element stands in the relation to itself, that is, `∀x ∈ A. x ~ x`. Irreflexivity is the same only the predicate is negated, that is `∀x ∈ A. x ≁ x`.

## Non-reflexive and Non-irreflexive relation

It would seem that reflexivity and irreflexivity are opposite relations, especially since the prefix "ir-" means negation, like "un" or "non". However, this is only partially true. Their proper opposite relations would be obtained by negating the entire formula (not just the predicate).

Considering reflexivity, `∀x ∈ A. x~x`, its opposite is a non-reflexive relation, which holds if the negation of this formula is true. First the expanded formula of reflexive relation is `∀x(x ∈ A ⇒ x~x)`. Then we negate this formula to get the forumla for non-reflexive relations:

```
∀x ∈ A(x ~ x)             refl
∀x(x ∈ A ⇒ x ~ x)         refl expanded
¬(∀x(x ∈ A ⇒ x ~ x))      refl negated
∃x(¬(x ∈ A ⇒ x ~ x))      negating ∀ gives ∃, pull in negation
∃x(¬((x ∈ A) ⇒ (x ~ x)))  merely bracketing subexp
∃x(¬(¬(x ∈ A) ∨ (x ~ x)))  material impl to disjunction
∃x(¬¬(x ∈ A) ∧ ¬(x ~ x))   DeMorgan
∃x(x ∈ A ∧ x ≁ x)          DN, prettifying
∃x ∈ A(x ≁ x)              abbreviating
```

Thus, a non-reflexive relation is specified by: `∃x ∈ A(x ≁ x)`. Similarly, by hegating the formula for irreflexive relations, we get the formula for *non-irreflexive relations*, `∃x ∈ A(x ~ x)`.

Now we can present all 4 formulas side by side:
- `∀x ∈ A(x ~ x)` refl          ≡ `¬∀x ∈ A(x ≁ x)`
- `∀x ∈ A(x ≁ x)` non-refl      
- `∃x ∈ A(x ≁ x)` irrefl        
- `∃x ∈ A(x ~ x)` non-irrefl    


∀x(φx)  ≡ ¬∀x(¬φx)                ∀x( φx) ≠ ¬∀x(φx)
∀x(¬φx) ≡ ¬∀x(¬¬φx)               ∀x(¬φx) ≠ ¬∀x(¬φx)


∀x(Px ⇒ Qx)
  ≡  ∀x(¬Px ∨ Qx)
  ≡ ¬∀x(¬(Px ⇒ Qx))
  ≡ ¬∀x(¬(¬Px ∨ Qx))
  ≡ ¬∀x(Px ∧ ¬Qx)
  ≡  ∃x(¬(Px ∧ ¬Qx))
  ≡  ∃x(¬Px ∨ Qx)

refl
-  ∀x ∈ A(x ~ x)
- ¬∀x ∈ A(¬(x ≁ x))
- ¬∀x ∈ A(x ≁ x)

refl
- ∀x(  x ∈ A  ⇒ x ~ x)
- ∀x(¬(x ∈ A) ∨ (x ~ x))
- ∀x( (x ∉ A) ∨ (x ~ x)) either x is not in A or it is related to itself


- ¬∀x(x ∈ A ∧ x≁x)




A relation is reflexive if all source elements participate in it **and** each source element is related to itself.

`∀x(x ∉ A ∨ x~x)` either `x` is not in `A`, or `x` is related to itself.

This does not exclude additional elements (ordered pairs) from being present in the graph of a relation, which in turn means that the identity relation on this set is reflexive, as is the total relation on the set, as well as any relations in between that are supersets of the identity relation.

>A relation on a set is reflexive if it is a superset of the identity relation on that set.







- Reflexivity-based relations
  - reflexive relation
    - non-reflexive relation
  - irreflexive relation
    - non-irreflexive relation
  - coreflexive relation
    - non-coreflexive relation
  - quasireflexive
    - non-quasireflexive
    - left quasireflexive
    - right quasireflexive
