## Predicate abstraction

https://en.wikipedia.org/wiki/Predicate_abstraction

In logic, *predicate abstraction* is the result of creating a predicate from a sentence.

If `Q` is any formula then the predicate abstract formed from that sentence is `λy.Q`, where `λ` is an *abstraction operator*, and in which every occurrence of `y` occurs bound by `λ` in `λy.Q`.

The resultant predicate `λx.Q(x)` is a monadic (unary) predicate capable of taking a term `t` as argument as in `(λx.Q(x)) (t)`, which says that the object denoted by `t` has the property of being such that `Q`.

The **law of abstraction** states `(λx.Q(x)) (t) ≡ Q[x:=t]`, where Q[x:=t] is the result of replacing all free occurrences of `x` in `Q` by `t`.

This law is shown to fail in general in at least two cases:
- when `t` is irreferential
- when `Q` contains modal operators

In modal logic the *de re* and *de dicto* distinction is stated as:
1. DE DICTO: `□A(t)`
2. DE RE:    `(λx.□A(x)) (t)`

- In (1), the modal operator applies to the formula `A(t)` and the term `t` is within the scope of the modal operator.
- In (2), `t` is not within the scope of the modal operator.

## References

For the semantics and further philosophical developments of predicate abstraction see:
- `First-order Modal Logic` by Fitting and Mendelsohn, 1999
