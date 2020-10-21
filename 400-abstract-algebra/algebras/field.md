# Field

https://en.wikipedia.org/wiki/Field_(mathematics)

In abstract algebra, a field is a set on which addition, subtraction, multiplication, and division are defined, and behave as the corresponding operations on rational and real numbers do.

## Definition

Informally, a field is
- a carrier set `S`
- along with two binary operations over the set,
  - addition operation, `+`, written as a + b
  - multiplication operation, `⋅`, written as a ⋅ b (or juxtaposition, ab)
- a set of axioms
  - Identity, i.e. neutral element ∀x ∈ S. ∃ϵ ∈ S. x ⨂ ϵ = x = ϵ ⨂ x
    - for addition, one:        x + ϵ⁺ = x = ϵ⁺ + x
    - for multiplication, zero: x ⋅ ϵᵐ = x = ϵᵐ ⋅ x
  - Invertibility, i.e. two inverses, one for each operation
    - additive inverse `−a`:        ∀a ∈ S. ∃a⁻¹ ∈ S. a + (-a) = ϵ⁺
    - multiplicative inverse `b⁻¹`: ∀b ∈ S. b ≠ 0. ∃b⁻¹ ∈ S. b ⋅ b⁻¹ = ϵᵐ
  - Associativity
    - of addition: a + (b + c) = (a + b) + c
    - of multiplication: a · (b · c) = (a · b) · c
  - Commutativity
    - of addition: a + b = b + a
    - of multiplication: a · b = b · a
  - Distributivity of multiplication over addition: a(b+c) = (ab) + (ac)


This may be summarized by saying: a field has two operations, called addition and multiplication; it is an abelian group under addition with 0 as the additive identity; the nonzero elements are an abelian group under multiplication with 1 as the multiplicative identity; and multiplication distributes over addition.


Alternatively, a field may be defined by 4 binary operations (addition, subtraction, multiplication, and division) and their required properties. Division by zero is, by definition, excluded.

Avoiding existential quantifiers is important in constructive mathematics and computing. In order to avoid it, a field can be defined by:
- two binary operations (addition and multiplication),
- two unary operations (yielding the additive and multiplicative inverses)
- two nullary operations (the constants 0 and 1)
These operations are then subject to the conditions above.

Equivalently, a field may be defined by the same two binary operations, one unary operation (the multiplicative inverse), and two constants 1 and −1, since `0 = 1 + (−1) and −a = (−1)a`.
