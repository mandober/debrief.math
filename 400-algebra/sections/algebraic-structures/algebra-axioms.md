# Axioms of abstract algebra

axiom         | a | aa | aaa |      |
--------------|---|----|-----|------|-------------
closure       | C |    |     |      | CLOS    C
associativity | A |    |     |      | assoc   A
identity      | I |    |     |      | id      I
invertability | R |    |     |      | inv     R
commutativity | M |    |     |      | comm    M
absorption    | B |    |     |      | absor   B
idempotence   | P |    |     |      |         P




algebra = binop (binary operation) + (carrier) set + axioms


Axioms:
- closure (totality)  CLOS    C
- associativity       assoc   A
- identity            id      I
- invertability       inv     R
- commutativity       comm    M
- absorption (annihilation):  B
  - `∃0 ∈ T. ∀a ∈ T. a • 0 = 0`
- idempotence                 P
  - `A ∪ A = A`
  - `p ∨ p = p`

Elements:
- identity element: only 1 in the entire set
- inverse element: each element has one
- element one (addition identity): only 1
- element zero (multiplicative identity): only 1
  - annihilator element, `p ∧ F = F` regardless of `p`, 
  - `p ∧ F = F` no matter what `p` is
  - `S ∩ ∅ = ∅` intersection of any set with ∅ is ∅
  - `x * 0 = 0` multiplying by 0 annihilates all other integers giving zero



Two binary operations, `⩘` and `⩗`, are said to be connected by the absorption law if: `a ⩘ (a ⩗ b) = a ⩗ (a ⩘ b) = a`

**The axiom of absorption** states that there exists an element in the carrier set, called element *zero*, such that when any other element is combined with it, the result is always zero. Unlike the identity/neutral element, commonly called *one*, which leaves the other element intact, "zero" completely annihilates everything it comes in contact with.

∃0 ∈ T. ∀x ∈ T. x • 0 = 0
∃1 ∈ T. ∀x ∈ T. x • 1 = x = 1 • x
