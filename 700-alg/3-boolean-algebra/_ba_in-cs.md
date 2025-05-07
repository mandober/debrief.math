# Boolean algebra

To make efficient circuits, they must be as simplified as possible while still carrying out the same operations. Truth tables are one way to work this out, but for larger circuits it would take a long time to write out the truth table for every gate. Boolean algebra is a way to simplify circuits similarly to mathematical simplification.

| Mathematical paradigm | Boolean equivalent |
|-----------------------|--------------------|
| Multiplication        | AND                |
| Addition              | OR                 |
| Complement            | NOT                |
| Subtraction           | null               |
| Division              | null               |
| "2"                   | null               |

This mathematical equivalence allows you to use BIDMAS on boolean expressions, so that you can simplify them easier.


## Boolean Identities

NOT (¬)
  - complement
    - p̅ = ¬p
  - negation
    - ¬T = F
    - ¬F = T
  - double negation
    - ¬¬p = p
    - p = ¬¬p
    - ¬¬T = T
    - ¬¬F = F
- AND (⋀)
  - identity element: `T`
  - identity: p ∧ T = p = T ∧ p      ✔ `T` acts as neutral
    - identity left:  T ∧ p = p      ✔
    - identity right: p ∧ T = p      ✔
  - inverse: ¬p ∧ p = F = p ∧ ¬p     ✘ should be the identity elem `T`
    - inverse left : ¬p ∧ p = F      ✘
    - inverse right: p ∧ ¬p = F      ✘

- OR (∨)
  - identity element: `F`
  - identity: p ∨ F = p = F ∨ p      ✔ `F` acts as neutral
    - identity left:  F ∨ p = p      ✔
    - identity right: p ∨ F = p      ✔
  - inverse: ¬p ∨ p = T = p ∨ ¬p     ✘ should be the identity elem `F`
    - inverse left : ¬p ∨ p = T      ✘
    - inverse right: p ∨ ¬p = T      ✘

- XOR (⊕)
  - identity element: `F`
    - identity: p ⊕ F = p = F ⊕ p   ✔ `F` acts as neutral
    - identity left:  F ⊕ p = p     ✔
    - identity right: p ⊕ F = p     ✔
  - inverse : ¬p ⊕ p = T = p ⊕ ¬p   ✘ should be the identity elem `F`


T ⊕ T = F
F ⊕ T = T
F ⊕ F = F
T ⊕ F = T


p ⊕ T = ¬p = T ⊕ p




law               | AND              | OR            | XOR
------------------|------------------|---------------|------------------
identity element  | T                | F             | F
identity left     | T ∧ p = p        | F ∨ p = p     | F ⊕ p = p
identity right    | p ∧ T = p        | p ∨ F = p     | p ⊕ F = p
zero element      | F                | T             | 
annihil. left     | p ∧ F = F        |
annihil. right    | F ∧ p = F        |
domination left   |                  | T ∨ p = T
domination right  |                  | p ∨ T = T


identity element  | 1                | 0
identity          | p * 1 = p        | p + 0 = p
zero element      | 0                | 1
annihil/domination| p * 0 = 0        | p + 1 = 1


idempotence       | a * a = a           | a + a = a
inverse           | a * a' = 0          | a + a' = 1
commutativity     | ab = ba             | a+b = b+a
associativity     | (ab)c = a(bc)       | (a + b) + c = a + (b + c)
distributivity    | (a+b)c = (a+b)(a+c) | a * (b + c) = a * b + a * c
absorption        | a * (a+b) = a       | a + a * b = a
de morgan's law   | (ab)' = a' + b'     | (a + b)' = a' * b'
double complement | a'' = a             | a'' = a


Laws (`⊛` stands for both ops):

- Dominance/null law:    `a + 1  = 1`, `a * 0  = 0`
  a ⊛ ζ = ζ

- Inverse law:           `a + a' = 1`, `a * a' = 0`

- Double Complement Law: `a <=> a''`

- Commutative law:       `a + b <=> b + a`, `ab <=> ba`

- Associative law:       `(a ⊛ b) ⊛ c <=> a ⊛ (b ⊛ c)`

- De Morgan's Law:       `(a * b)' <=> a' + b'`,
                         `(a + b)' <=> a' * b'`

- Distributive law:      `a * (b + b') <=> a * b + a * b'`
  - distributive law is multiplying/factorizing parens

- Absorption laws:
  - `a + (a * b) = a`
  - `a * (a + b) = a`
  - `b'+(a b')=b'`
  - Like terms are absorbed.
  - Opposite operators must be used within and outside 
    the brackets, for absorption to be used.
  - The term that is outside parens must also be inside.


* ⊛ - when only operator, stands for both ops
* ⊛, ★ - the ⊛ stands for one operation, ★ for the other

(a ⊛ b)' <=> a' ★ b'       ¬(a ⊛ b) <=> ¬a ★ ¬b
 (a * b)' <=> a' + b'        ¬(a ∧ b) <=> ¬a ∨ ¬b
 (a + b)' <=> a' * b'        ¬(a ∨ b) <=> ¬a ∧ ¬b
