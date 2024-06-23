# Boolean Algebra Laws

Boolean Algebra: axioms, laws, identities, principles


LAWS          | AND (meet)           | OR (join)
--------------|----------------------|-----------------
identity      | a ∧ 1 = a            | a ∨ 0 = a
identity elem | 1                    | 0
domination    | a ∧ 0 = 0            | a ∨ 1 = 1
dominant elem | 0                    | 1
complement    | a ∧ a' = 0           | a ∨ a' = 1
dblcomplement | a'' = a              | a'' = a
idempotency   | a ∧ a = a            | a ∨ a = a
commutativity | a ∧ b = b ∧ a        | a ∨ b = b ∨ a
absorption    | a ∧ (a ∨ b) = a      | a ∨ (a ∧ b) = a
associativity | (a∧b)∧c = a∧(b∧c)    | (a∨b)∨c = a∨(b∨c)
distributivity| (a∨b)∧c = (a∨b)∧(a∨c)| a∧(b∨c) = a∧b ∨ a∧c
deMorgan      | (a ∧ b)' = a' ∨ b'   | (a ∨ b)' = a' ∧ b'



- complement or inverse
- dominant or zero element


Laws (`⊛` stands for both ops):

- Dominance/null law:    `a + 1  = 1`, `a * 0  = 0`    a ⊛ x = x
- Inverse law:           `a + a' = 1`, `a * a' = 0`
- Double Complement Law: `a <=> a''`
- Commutative law:       `a + b <=> b + a`, `ab <=> ba`
- Associative law:       `(a ⊛ b) ⊛ c <=> a ⊛ (b ⊛ c)`
- De Morgan's Law:       `(a * b)' <=> a' + b'`,  `(a + b)' <=> a' * b'`
- Distributive law:      `a * (b + b') <=> a * b + a * b'`
- Absorption law:        `a + (a * b) = a`, `a * (a + b) = a`, `b'+(a b')=b'`
  Like terms are absorbed.
  Opposite operators must be used within and outside the brackets, for absorption to be used. The term that is outside parens must also be inside.

* ⊛ - when only operator, stands for both ops
* ⊛, ★ - the ⊛ stands for one operation, ★ for the other

(a ⊛ b)' <=> a' ★ b'       ¬(a ⊛ b) <=> ¬a ★ ¬b
 (a * b)' <=> a' + b'        ¬(a ∧ b) <=> ¬a ⋁ ¬b
 (a + b)' <=> a' * b'        ¬(a ∨ b) <=> ¬a ∧ ¬b


## Cancellation laws

Let B be a Bollean algebra and xyz ∈ B, then:
- (Axy = Axz) ∧ (Ax'y = Ax'z) ⇒ Eyz
- (Kxy = Kxz) ∧ (Kx'y = Kx'z) ⇒ Eyz
- (Axy = Axz) ∧ (Kxy  = Kxz)  ⇒ Eyz

```
x ⋁ y = x ⋁ z and x' ⋁ y = x' ⋁ z then y = z
x ⋀ y = x ⋀ z and x' ⋀ y = x' ⋀ z then y = z
x ⋁ y = x ⋁ z and x  ⋀ y = x  ⋀ z then y = z
```

With groups, we had xy = xz ⇒ y = z, but for BA this is not enough and we have to take compliments (of `x`, i.e. `x'`) into account.
