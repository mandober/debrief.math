# Sequent Calculus

https://en.wikipedia.org/wiki/Sequent_calculus

Logitext online solver for SC
- http://logitext.mit.edu/main
- code: https://github.com/ezyang/logitext
- Interactive tutorial: http://logitext.mit.edu/logitext.fcgi/tutorial
- IL interface: http://logitext.mit.edu/Intuitionistic/main
- About impl: http://blog.ezyang.com/2012/05/what-happens-when-you-mix-three-research-programming-languages-together/

- Sequent calculus is a style of formal logical argumentation
- Sequent calculus was invented by Gerhard Gentzen in 1934
- Sequent calculus is a proof calculus
- Sequent calculus is a Gentzen-style proof calculus
- Sequent calculus generalizes the form of a natural deduction judgment to a syntactic object called a sequent
- Gentzen-style calculi, unlike Hilbert-style calculi, favor rules of inference (conditional tautologies) over axioms (unconditional tautologies)
- a theorem is an unconditional tautology


Sequent calculus is a Gentzen-style proof calculus. In contrast to the Hilbert-style proof calculi that favor axioms (unconditional tautologies) over the rules of inference (conditional tautologies), sequent calculus favors inference rules over the axioms.

Sequent calculus generalizes the form of a natural deduction judgment to a syntactic object called a *sequent*. Natural deduction is another Gentzen-style proof calculus, but unlike sequent calculus, the succedent can only contain a single formula.

Sequent calculus is a style of *formal logical argumentation* where every line of a proof, called a sequent, is a conditional tautology, rather then an unconditional one (like in a Hilbert-style proof calculus).

In a formal argument of sequent calculus, each conditional tautology is inferred from other conditional tautologies on earlier lines, according to the rules of inference. The only rules of inference without premises is the assumption (the I axiom, the initial rule) which ends (or begins) a proof tree.

As in natural deduction, theorems are those `B` where `⊢ B` is the conclusion of a valid proof.

The sequents `A₁, …, Aₙ ⊢ B₁, …, Bₘ` and `⊢ A₁, …, Aₙ -> B₁, …, Bₘ` are equivalent in the sense that a proof of either one may be extended to a proof of the other.

In a classical context the semantics of the sequent can also (by propositional tautology) be expressed as: `⊢ (¬A₁ ∨ … ∨ ¬Aₙ) -> (B₁ ∧ … ∧ Bₘ`) which means that it cannot be the case that all of the antecedents are true and all of the succedents are false. This means that a symmetry such as De Morgan's laws, which manifests itself as logical negation on the semantic level, translates directly into a left-right symmetry of sequents - and indeed, the inference rules in sequent calculus for dealing with conjunction are mirror images of those dealing with disjunction.

## Inference rules of Sequent Calculus

- `⊢` separates the assumptions on the LHS from the conclusions on the RHS
- LHS sequence of formulas is considered conjunctively: 
  it is assumed that all hold at the same time
- RHS sequence of formulas is considered disjunctively: 
  at least one of the formulas must hold for any assignment of variables
- `A` and `B` are FOL formulae
- Γ, Δ, Σ, Π are (possibly empty) sequences of formulae called contexts
- `t` denotes an arbitrary term
- `x` and `y` denote variables
- a variable is said to occur free within a formula if it occurs outside the scope of quantifiers ∀ or ∃
- `A[t/x]` denotes the formula that is obtained by substituting the term `t` for every free occurrence of the variable `x` in formula `A` with the restriction that the term `t` must be free for the variable `x` in `A`, i.e. no occurrence of any variable in `t` becomes bound in `A[t/x]`.
- Theare are 6 structural rules. Each of the 3 structural rules has left and right version: Weakening, Contraction, Permutation.


### From theorems to axioms

The following rules are for moving in the **top to bottom direction**: *from theorems to axioms*.

```hs
-- conjunction

Γ, A ∧ B ⊢ Δ                               Γ ⊢ Δ, A ∧ B
-------------- ∧L                       ----------------------- ∧R
Γ, A, B  ⊢ Δ                           Γ ⊢ Δ, A    Γ ⊢ Δ, B

-- disjunction

    Γ, A ∨ B ⊢ Δ                           Γ ⊢ Δ, A ∨ B
---------------------- ∨L                  -------------- ∨R
Γ, A ⊢ Δ   Γ, B ⊢ Δ                       Γ ⊢ Δ, A, B

-- implication

    Γ, A → B ⊢ Δ                           Γ ⊢ Δ, A → B
----------------------- →L                ----------------- →R
Γ ⊢ Δ, A   Γ, B ⊢ Δ                       Γ ⊢ Δ, ¬A ∨ B

-- negation

Γ, ¬A ⊢ Δ                                  Γ ⊢ Δ, ¬A
------------ ¬L                            ------------ ¬R
Γ ⊢ Δ, A                                   Γ, A ⊢ Δ




----------- AXIOM
p,r ⊢ q,r

```

Starting with any formula in propositional logic, by a series of steps, the RHS is processed until it includes only atomic symbols. Then, the same is done for the LHS.

Since every logical operator appears in one of the rules above, and is removed by the rule, the process terminates when no logical operators remain: the formula has been decomposed.

Thus, the sequents in the leaves of the trees include only atomic symbols, which are either provable by the axiom or not, according to whether one of the symbols on the right also appears on the left.

It is easy to see that the steps in the tree preserve the semantic truth value of the formulas implied by them, with conjunction understood between the tree's different branches whenever there is a split.

It is also evident that an axiom is provable iff it is true for every assignment of truth values to the atomic symbols. Thus this system is sound and complete for classical propositional logic.


### Derivation of implication rules above

```
Deriving L→ rule:                         Deriving R→ rule:

      Γ, A → B ⊢ Δ                         Γ ⊢ Δ, A → B
-------------------------- (→ to ∨)       ----------------- (→ to ∨)
      Γ, ¬A ∨ B ⊢ Δ                       Γ ⊢ Δ, ¬A ∨ B
-------------------------- L∨             ----------------- R∨
Γ, ¬A ⊢ Δ      Γ, B ⊢ Δ                  Γ ⊢ Δ, ¬A, B
-------------------------- L¬             ----------------- R¬
Γ ⊢ A, Δ       Γ, B ⊢ Δ                   Γ, A ⊢ Δ, B

```





### From axioms to theorems

The following rules are for moving in the **bottom to top direction**: *from axioms to theorems*.

```hs

------- I (axiom)
A ⊢ A


Γ ⊢ Δ, A   A, Σ ⊢ Π
---------------------- CUT (cut rule)
      Γ,Σ ⊢ Δ,Π



-- LEFT LOGICAL RULES                       RIGHT LOGICAL RULES

-- conjunction

Γ, A     ⊢ Δ                             Γ ⊢ A,     Δ
-------------- ∧L₁                        -------------- ∨R₁
Γ, A ∧ B ⊢ Δ                             Γ ⊢ A ∨ B, Δ


Γ,     B ⊢ Δ
-------------- ∧L₂
Γ, A ∧ B ⊢ Δ



-- disjunction

Γ ⊢ A, Δ    Γ' ⊢ B, Δ'                   Γ ⊢     B, Δ
-------------------------- ∧L               -------------- ∨R₂
Γ,Γ' ⊢ A ∧ B, Δ, Δ'                       Γ ⊢ A ∨ B, Δ


Γ, A ⊢ Δ     Γ', B ⊢ Δ'
-------------------------- ∨L
Γ,Γ', A ∨ B ⊢ Δ,Δ'


-- implication

Γ ⊢ A, Δ     Σ, B ⊢ Π                  Γ, A ⊢ B, Δ
------------------------ →L            --------------- →R
  Γ, Σ, A → B ⊢ Δ, Π                    Γ ⊢ A → B, Δ


Γ ⊢ A, Δ                                   Γ, A ⊢ Δ
------------- ¬L                         -------------- ¬R
Γ, ¬A ⊢ Δ                                 Γ ⊢ ¬A, Δ



QUANTIFIERS (y is a fresh variable)


Γ, A[t/x] ⊢ Δ                             Γ ⊢ A[y/x], Δ
--------------- ∀L                        ---------------- ∀R
Γ, ∀x.A   ⊢ Δ                             Γ ⊢ ∀x.A  , Δ


Γ, A[y/x] ⊢ Δ                            Γ ⊢ A[t/x], Δ
--------------- ∃L                       --------------- ∃R
Γ, ∃x.A   ⊢ Δ                             Γ ⊢ ∃x.A, Δ




LEFT STRUCTURAL RULES                   RIGHT STRUCTURAL RULES:

Γ ⊢ Δ                                        Γ ⊢ Δ
---------- WL                               ---------- WR
Γ, A ⊢ Δ                                    Γ ⊢ A, Δ


Γ,A,A ⊢ Δ                                   Γ ⊢ A,A,Δ
------------ CL                             ------------ CR
Γ,A   ⊢ Δ                                   Γ ⊢ A,Δ


Γ₁, A, B, Γ₂ ⊢ Δ                           Γ ⊢ Δ₁, A, B, Δ₂
------------------- PL                    ------------------- PR
Γ₁, B, A, Γ₂ ⊢ Δ                           Γ ⊢ Δ₁, B, A, Δ₂

```

## Rules with quantifiers

All the rules are straightforward, except for maybe the 4 quantifier rules; in fact, two of those 4 rules, namely, **∀L** and **∃R**, are also straightforward.

In both cases, the individual to instantiate the variable with can be anything, including variables which already exist in the sequent. Intuitively, it should make sense why these are the two true statements:
- in the case of **∀L**: if you know something about all individuals, you know something about a particular individual
- in the case of **∃R**: in order to show the existence of something, all you need to do is produce the individual which exists

The **∀L** rule is the easiest, `∀x.P(x)`: if you know that something holds about all individuals, then you know something holds about one particular individual. The rule says that all you need to do is instantiate the variable `x` in `P(x)`. You can instantiate it to anything without even worrying about free vars and capturing. The notation A[t/x] means exactly that: that var `x` is instantiated to some term `t`. If that term `t` is e.g. `a`, then instantiating `∀x.P(x)` becomes `P(a)`.

The **∃R**rule is similar: in order to show the existence of something, you need to produce it by instantiating the existential quantifier to anything you want.

```
------------------------ axiom: P(a) ⊢ P(a)
Γ,    P(a) ⊢ P(a), Δ
------------------------ ∀L
Γ, ∀x.P(x) ⊢ P(a), Δ



------------------------ axiom: P(a) ⊢ P(a)
Γ, P(a) ⊢    P(a), Δ
------------------------ ∃R
Γ, P(a) ⊢ ∃x.P(x), Δ

```

The universal quantification on the LHS of a sequent means that some predicate `P` holds for all bound variables `x`, i.e. `∀x.P(x)`. Since the LHS is a conjunction of formulas, the universal quantifier like `∀x.P(x)`, where `x` is any RHS formula, could be interpreted as: conjunctions of predicate `P` instantiated to all RHS formulas:

          ∀x.P(x) ⊢ Δ
------------------------------- ∀L
P(a) ∧ P(b) ∧ P(c) ∧ P(d) ⊢ Δ


~ ~ ~

In the case of __∀R__ and __∃L__ rules, the variables are instantiated to fresh vars (distinct from anything pre-existing in the sequent); this is often referred to as the "no free occurrence" rule.

To understand this constrain, consider this: it is generally harder to prove something is true for all individuals, than it is to show it is true for one.

In practice, this means is that the order you apply tactics is important. For example, consider this derivation:

```
------------------ Ax
   P(y) ⊢ P(y)
------------------ ∀L
∀x.P(x) ⊢ P(y)
------------------ ∀R
∀x.P(x) ⊢ ∀x.P(x)
```

We must first instantiate the RHS's `∀x.P(x)`, which produces `P(y)` with a fresh var `y`. Only then we should instantiate `∀x.P(x)` on the LHS, choosing the (existing) variable `y` as the instantiation variable. However, if you start with the LHS's forall, when you instantiate the RHS's forall, you will have to pick a fresh variable, different from the one on the LHS!
