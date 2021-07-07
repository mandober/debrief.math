# List of Axioms

Binary operations
- ⨀ a binary operation
- ⨁ a binary operation corresponding to addition
- ⨂ a binary operation corresponding to multiplication


In general
- identity:
  - left identity   : ϵ ⨀ x = x
  - right identity  : x ⨀ ϵ = x
  - total identity  : x ⨀ ϵ = x = ϵ ⨀ x

- associativity:
  - left-associative    : a ⨀ b ⨀ c ⨀ d = ((a ⨀ b) ⨀ c) ⨀ d
  - right-associative   : a ⨀ b ⨀ c ⨀ d = a ⨀ (b ⨀ (c ⨀ d))
  - fully-associative   : a ⨀ (b ⨀ c) = (a ⨀ b) ⨀ c = a ⨀ b ⨀ c
  - non-associative

- commutativity     : a ⨀ b = b ⨀ a

- idempotency       : a ⨀ a = a

- invertibility     : a ⨀ a⁻¹ = ϵ = a⁻¹ ⨀ a

- closure, totality : ∀a,∀b ∈ S -> a ⨀ b ∈ S

- distributivity:
  - left distributivity  : a ⨂ (b ⨁ c) = (a ⨂ b) ⨁ (a ⨂ c)
  - right distributivity : (b ⨁ c) ⨂ a = (b ⨂ a) ⨁ (c ⨂ a)
  - total distributivity : left and right distributivity
  - when ⨂ is commutative, these 3 axioms are logically equivalent
