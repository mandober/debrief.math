# Assumption

```hs
----- AS
A ⊢ A
```

- assuming `A`, thus `A`, i.e. `A -> A`
- `A -> A ≡ ⊤`
- any formula implies itself
- aka: AS, ASSUMPTION, Ax, Axiom I, Identity Rule, Initial Rule
- accepted in any logic system


The items to the left of the turnstile are understood to be connected by conjunction, and those to the right by disjunction. Therefore, when both consist only of atomic symbols, the sequent is accepted axiomatically (and always true) *iff at least one of the symbols on the right also appears on the left*. `Γ` and `Δ` can be other arbitrary formulas.

```hs
-- in the Gentzen-style

------------- [AS] of ND
Γ, A ⊢ A


------------- [AS] of SQ
Γ, A ⊢ A, Δ



-- as a rule of inference (an instance of the →I rule)

 [A]¹ true
  ⫶
  A true
------------ AS¹
A ⟶ A true


-- in the Fitch notation

1 assume A           assumption
2   A                R 1 (reiterate 1)
3 thus A -> A        →I 1,2
```

>When both cedents consist only of atomic symbols, the sequent is axiomatically true iff at least one of the symbols on the right also appears on the left.
`Γ` and `Δ` can contain any other arbitrary formula.

Assumption is the fundamental axiom (also, a rule of inference) relying on the fact that any formula always implies itself, in any calculus.

Normally, assumption is the only rule of inference without premises (undischarged assumptions). An axiom is a *tautology* or an *unconditional assertion*.

A rule of inference without premises is an *axiom*. Axioms can be grouped together with other rules of inference, but they are different in that they lack premises.

A derived formula (or a rule of inference) that has no premises is called a *theorem* (also an axiom). The designation of being an axiom has also to do with the specific role, besides the form, of a formula. Axioms are usually initial formulas (initial rules), while theorems are usualy the derived formulas. They both appear as leaves of a proof tree.


ASS hold for all calculi
- cPL - Classic Propositional Logic
- iPL - Intuitionistic Propositional Logic
- cQL - Classic Quantified (predicate) Logic
- iQL - Intuitionistic Quantified (predicate) Logic

ASS hold for all presentations
- ND - natural deduction
- SQ - sequent calculus




## Examples

```hs
---------- AS
p ⊢ p

---------- AS
p ⊢ p,q

---------- AS
p,q,r ⊢ r

-------------- AS
p,q,r ⊢ r,s,t

-------------- AS
p,q,r ⊢ p,q,s



r ⊢ r          r ⊢ r
--------      --------
r ⊢ p, r      q, r ⊢ r
------------------------ →L
      p → q, r ⊢ r
```
