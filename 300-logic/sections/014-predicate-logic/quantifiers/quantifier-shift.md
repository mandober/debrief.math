# Quantifier shift

https://en.wikipedia.org/wiki/Quantifier_shift

A *quantifier shift* (transposition) is a logical fallacy in which the order of distinct quantifiers is (erroneously, humorously) transposed; the change in the logical structure may not always be evident when expressed in e.g. English.

## Definition

The fallacious deduction is that: for every `∀A`, there is a `∃B`, such that `C(A,B)`; thus, there is a `∃B`, such that for every `∀A`, `C(A,B)`.   
`∀a ∃b. C(a,b) ⊬ ∃b ∀a. C(a,b)`. However, an inverse switching, `∃y ∀x (xRy) |- ∀x ∃y (xRy)`, is logically valid.

Transposition of quantifiers of the same type has no effect.

An exemple of the quantifier transposition: "In the USA, someone steals a car every 15 seconds. We should really find that person and stop them".
`∀x ∃y (xRy) |- ∃y ∀x (xRy)`

## Examples

1. Every person has a woman that is their mother. Therefore, there is a woman that is the mother of every person.

∀x∃y(px -> (Wy ⋀ M(y,x))) ⊬ ∃y∀x(px -> (Wy ⋀ M(y,x)))

It is fallacious to conclude that there is one woman who is the mother of all people. However, if the major premise ("every person has a woman that is their mother") is assumed to be true, then it is valid to conclude that there is some woman who is any given person's mother.







<!-- #region -->

```
0. (initial consitions)

Initially, 

  Selection unrestricted.
  The Scope is as broad as the domain of discurse,
  such that a bound variable 
  ranges over all domain members.

1. (nesting of identical quantifiers)

∀a                ∀a
  ∀b       =      ∀b
    ∀c            ∀c

∃a                ∃a
  ∃b       =      ∃b
    ∃c            ∃c


Quantifier nesting, as long as the quantifiers are identical, doesn't restrict the scope. The scope remains as broad as it was. Each quantifier sinks deeper in the expression but that doesn't mean shit. Arbitrary permutations of the same-type quantifiers doesn't change the meaning of the formula.


∀x      selects all domain members; scope remains broad.
  ∀y    selects all domain members; scope remains broad.

∃x    selects at least 1 domain member;
  ∃y    selects at least 1 domain member

∀x    selects all members of the domain; 
  ∃y    selects all members of the domain; 

∃x    selects all members of the domain;
  ∀y    selects all members of the domain; 

```

<!-- #endregion -->
