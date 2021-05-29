# Canonical normal form

https://en.wikipedia.org/wiki/Canonical_normal_form

Canonical forms include:
- `CDNF`: canonical disjunctive normal form, *minterms* in Boolean algebra
- `CCNF`: canonical conjunctive normal form, *maxterms* in Boolean algebra
- complete sum of prime implicants
- Blake canonical form (dual to ANF)
- algebraic normal form (ANF)

Minterms are called products because they are the logical AND of a set of variables, and maxterms are called sums because they are the logical OR of a set of variables. These concepts are dual because of their complementary-symmetry relationship as expressed by De Morgan's laws.

Two dual canonical forms of any Boolean function
- sum of minterms
- product of maxterms

The term "Sum of Products" (SoP or SOP) is widely used for the canonical form that is a disjunction (OR) of minterms. Its De Morgan dual is a "Product of Sums" (PoS or POS) for the canonical form that is a conjunction (AND) of maxterms. These forms can be useful for the simplification of these functions, which is of great importance in the optimization of Boolean formulas in general and digital circuits in particular.

## Conjunctive normal form
https://en.wikipedia.org/wiki/Conjunctive_normal_form

## Disjunctive normal form
https://en.wikipedia.org/wiki/Disjunctive_normal_form


A formula is in **conjunctive normal form (CNF)** (clausal normal form) if it is a conjunction of clauses, where a clause is a disjunction of literals. CNF is a product of sums (AND of ORs). The only connectives CNF may contain is `∧`, as the clause binder, which can only have `∨` and `¬` (can only precede a var).

CNF: `(cᵢ) ∧ (..) ∧ (..)`, DNF: `(dᵢ) ∨ (..) ∨ (..)`

cᵢ: ¬p ∨ q, dᵢ: ¬p ∧ q

All con/disjunctions of literals are trivially in CNF, as they can be seen as conjunctions of one-literal clauses or conjunctions of a single clause.


CNF                               | DNF
----------------------------------|-------------------------
 p                                | p
¬p                                | ¬p
----------------------------------|-------------------------
(p ∨ q)                           |  p ∨ q
 p ∧ q                            | (p ∧ q)
¬p ∧ ¬q                           |  p ∨ q
 p ∧ q                            | ¬p ∨ ¬q
----------------------------------|-------------------------
(p ∨ q) ∧ c                       | ((p ∨ q) ∧ c)
p ∧ ¬q ∧ (p ∨ ¬q)                 | 
(p ∨ ¬q ∨ ¬r) ∧ (¬s ∨ t)          | 

Not CNF nor DNF:
- `¬(p ∧ q)`
- `p ∧ (q ∨ (r ∧ s))`

> Any formula can be converted into an equivalent formula in CNF, based on rules about logical equivalences - double negation elimination, De Morgan's laws and the distributive law.

However, in some cases this conversion to CNF can lead to an exponential explosion of the formula.

DNFtoCNF `a ∧ b ⋁ c ∧ d`
  = a ∨ c ⋀ a ∨ d ⋀ b ∨ c ⋀ b ∨ d

DNFtoCNF `(a ∧ b) ⋁ (c ∧ d) ⋁ (e ∧ f)`
  = (a ∨ (c ∨ e))
  ⋀ (a ∨ (c ∨ f))
  ⋀ (a ∨ (d ∨ e))
  ⋀ (a ∨ (d ∨ f))
  ⋀ (b ∨ (c ∨ e))
  ⋀ (b ∨ (c ∨ f))
  ⋀ (b ∨ (d ∨ e))
  ⋀ (b ∨ (d ∨ f))
