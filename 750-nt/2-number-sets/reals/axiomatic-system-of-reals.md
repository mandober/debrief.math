# Axiomatic system of real numbers

(from: Elementary Geometry from an Advanced Standpoint)

- [P0] ∃!0 ∈ ℝ
- [P1] ∀n ∈ ℝ. S n ∈ ℝ
- [P2] ∀n ∈ ℝ. S n ≠ 0
- [P3] ∀nm ∈ ℝ. n = m ⇔ S n = S m

Addition
- [A1] ∀ab ∈ ℝ. a + b ∈ ℝ
- [A2] ∀abc ∈ ℝ. a + (b + c) = (a + b) + c
- [A3] ∃!0 ∈ ℝ. ∀a ∈ ℝ. a + 0 = a = 0 + a
- [A4] ∃!0 ∈ ℝ. ∀a ∈ ℝ. ∃(-a) ∈ ℝ. a + (-a) = 0 = (-a) + a
- [A5] ∀ab ∈ ℝ. a + b = b + a

Multiplication
- [M1] ∀ab ∈ ℝ. ab ∈ ℝ
- [M2] ∀abc ∈ ℝ. a(bc) = (ab)c
- [M3] ∃!1 ∈ ℝ. ∀a ∈ ℝ. a1 = a = 1a
- [M4] ∃!1 ∈ ℝ. ∀a ∈ ℝ. ∃a⁻¹ ∈ ℝ. aa⁻¹ = 1 = a⁻¹a   [for:a,a⁻¹≠0]
- [M5] ∀ab ∈ ℝ. ab = ba
- [M6] 1 ≠ 0
- [AM1] ∀abc ∈ ℝ. a(b+c) = ab + ac, ∀abc ∈ ℝ. (a+b)c = ac + bc

Statements
- [E1] ∀abcd ∈ ℝ. a=b ∧ c=d ⇒ a+c = b+d
- [E2] ∀abcd ∈ ℝ. a=b ∧ c=d ⇒ ac = bd

In a formal presentation like this, any symbol may be used and, strictly, it has no meaning (no bagage) except what is explicitly defined. So just because some symbol looks like `1` (or `0`, `0⁻¹`, `1⁻¹`, etc.) it has nothing to do with the number 1 until we explicitly establish such association. This is also why one of the axioms says that `1≠0` - these are just two "arbitrary" symbols, it might as well said `a≠b`. The M6 axioms which says claims `1 ≠ 0` means that the element that was denoted "1" must be different from the element that kept getting (suggestively) being denoted as "0". It's merely suggestive symbolism.



Subtraction follows by definition
- ∀ab ∈ ℝ. a - b = a + (-b)

Division follows by definition
- ∀ab ∈ ℝ. b≠0. a/b = a ÷ b = ab⁻¹

Theorems
- (T1) ∀a ∈ ℝ. a0 = 0 = 0a
- (T2) ∀ab ∈ ℝ. ab=0 ⇒ a=0 ∨ b=0
- (T3) ¬∃x ∈ ℝ. x0 = 1 (0 has no reciprocal)
- TH4. Cancellation Law of Addition, a+b = a+c ⇒ b=c
- TH5. Cancellation Law of Multiplication. ab = ac ∧ a≠0 ⇒ b=c
- TH6. ∀a ∈ ℝ. -(-a) = a
- ∀ab ∈ ℝ. (-a)b = -(ab)
- ∀ab ∈ ℝ. (-a)(-b) = ab
- TH9. reciprocal of products is product of reciprocals, 
  ∀ab ∈ ℝ. a≠0 ∧ b≠0. a⁻¹b⁻¹ = (ab)⁻¹
- TH10. negative of the sum is sum of negatives. -(a + b) = (-a) + (-b)

Identities
- ∀ax ∈ ℝ. x² - a² = (x - a)(x + a)
- a(b - c) = ab - ac
- -0 = 0
- a + a = 2a
- aa = a²
- aaa = a³
- (a + b)(c + d) = ac + bc + ad + bd
- (x + a)² = x² + 2ax + a²
- (x - a)² = x² - 2ax + a²
- (2x - a)(x + a) = 2x² + 2ax - ax - a² = 2x² + ax - a²

## Fields

* Let F be the set of all numbers of the form `p/2ᵃ`, where `p` and `a` are integers and `q ≥ 0`. These numbers are called *dyadic rationals*. Do they satisfy the field axioms?

* Let F be the set of all *complex numbers with absolute value equal to 1*. Does F form a field, under the usual definitions of `+` and `×`?

* How about the set of all positive real numbers, `ℝᐩ`?

* Let F be the set of all real numbers of the form `a + b√2`, where a and b are rational. Is `(F, +, ×)` a field?

* An algebraic structure `(F, +, ×)` is called a *commutative ring with unity* if it satisfies all of the field postulates except possibly for M4.

* If the inequation `a₁b₂ - a₂b₁ ≠ 0` is true, then the system of equations `a₁x + b₁y = c₁` and `a₂x + b₂y = c₂` is satisfied by exactly one pair of numbers `(x, y)`. Does this theorem hold true in any commutative ring with unity? Does it hold true in any field?

* Consider a coordinate plane, with points identified by pairs `(x, y)` of numbers. We define the "sum" of two points `(u, v)` and `(x, y)` to be the point `(u + x, v + y)`. Does this system satisfy A1 through A5? Is it possible, and how, to define the "product" of two points in such a way as to get a field?

- [A1] A + B ∈ F. The sum of 2 elements of F is also in F.

      (u, v) + (x, y) = (u+x, v+y) ∈ F

- [A2] A + (B + C) = (A + B) + C. Associativity of addition.

      (u,v) + ((x,y) + (a,b)) = ((u,v) + (x,y)) + (a,b)

        (u,v) + ((x,y) + (a,b)) =
        (u,v) + (x+a, y+b) =
        (u+x+a, v+y+b)

      ((u,v) + (x,y)) + (a,b) =
        (u+x, v+y) + (a,b) =
        (u+x+a, v+y+b)

- [A3] ∃!0 ∈ F. ∀A ∈ F. A + 0 = A = 0 + A

      Additive identity, 0 := (0, 0)

      (x, y) + (0, 0) = (x, y)

- [A4] ∃!0 ∈ F. ∀a ∈ F. ∃(-a) ∈ F. A + (-A) = 0 = (-A) + A
   A = (a, b)
  -A := -(a, b) = (-a, -b)
  A + (-A) = 0
  (A,B) + -(A,B) = 0

    (a, b) + -(a, b)
  = (a, b) + (-a, -b)
  = (a + (-a), b + (-b))
  = (0, 0)

- [A5] ∀ab ∈ F. A + B = B + A
  (a, b) + (x, y) = (x, y) + (a, b)
  (a, b) + (x, y) = (a+x, b+y) = (x+a, b+y)
  (x, y) + (a, b) = (x+a, b+y) = (a+x, b+y)
