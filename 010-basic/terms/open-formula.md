## Open formula

https://en.wikipedia.org/wiki/Open_formula

>An **open formula** is a formula that contains at least one free variable.

An open formula does not have a truth value assigned to it, as opposed to a *closed formula*, which is a *proposition* and thus may have a truth value.

An open formula can be transformed into a closed formula by quantifying free variables. This transformation is called capture of the free variables (lambda lifting) to make them bound variables.

For example, when reasoning about natural numbers, the formula `x + 2 > y` is open, since `x` and `y` are free. It may be converted into a closed formula `∃y ∀x(x + 2 > y)` by introducing two suitable quantifiers to bind free variables. Such formula is then closed and, in this instance, has the truth value of true.

Open formulas are often used in rigorous mathematical definitions of properties.

For example, "`x` is an aunt of `y` if, for some person `z`, `z` is a parent of `y`, and `x` is a sister of `z`" (with 2 free variables `x`, `y`, and 1 bound variable `z`) defining the notion of "aunt" in terms of "parent" and "sister".

A more formal example which defines the property of being a prime number: 
`∀m ∀n( (n ∈ ℕ ⇒ n > 1) ⋀ (m ∈ ℕ ⇒ m > 1) ⇒ x  ≠  m n ) ⇒ P(x)` 
(with free variable `x`, and bound variables `m` and `n`).

An example of a closed formula with truth value false, involves the sequence of Fermat numbers, `Fₙ = 2^2^n + 1`, studied by Fermat in connection to the primality. The attachment of the predicate letter `P` (to mean "is prime") to each number of the Fermat sequence gives a set of closed formulae. While they are true for `n=0..4`, no larger value of `n` is known that obtains a true formula (as of 2023). For example, F₅ = 4,294,967,297 = 641 ⨯ 6,700,417 is not a prime. Thus the closed formula `∀n.P(Fₙ)` is false.
