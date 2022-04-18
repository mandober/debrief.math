# Existential quantification

https://en.wikipedia.org/wiki/Existential_quantification

In predicate logic, an *existential quantification* is a type of quantifier, a logical constant interpreted as "there exists" or "there is at least one". It is denoted by the logical operator symbol `∃`, and when used together with a predicate variable is called an *existential quantifier*, `∃x`.

Existential quantification asserts that a predicate `ϕ` holds for some members of a domain, `∃αϕ`.

It is rare to make an unconditional claim, more common are *restricted existential claims*, such as "Some doctors are smart", translated as `∃x(D(x) ⋀ S(x))`.

Existential quantification is a generalization of logical disjunction applied to all domain elements.

In mathematics, the proof of an existential statement may be achieved either by a constructive proof, which produces a witness, i.e. an object satisfying the "some" statement, or by a nonconstructive proof, which shows that there must be such an object without producing a witness.

## Properties

### Negation

A quantified propositional function is a statement; thus, like statements, quantified functions can be negated.

Negating `∃x.P(x)` is `¬∃x.P(x)`, which is equivalent to `∀x.¬P(x)`.

Where the negation sign is placed matters as these statements are not equivalent: `¬∃x.P(x)` ≠ `∃x.¬P(x)` ≠ `¬∃x.¬P(x)`.


`¬∃x. P(x)` = `∀x. ¬P(x)`
`¬∀x. P(x)` = `∃x. ¬P(x)`


 ∀x. P(x)     ∃x. P(x)
 ∀x.¬P(x)     ∃x.¬P(x)
¬∀x.¬P(x)    ¬∃x.¬P(x)


 ∀x. P(x) = ¬∃x.¬P(x)   flip and negate the quantifier, negate the predicate
 ∃x. P(x) = ¬∀x.¬P(x)   flip and negate the quantifier, negate the predicate
 ∀x.¬P(x) = ¬∃x. P(x)   ← and flip the quantifier
 ∃x.¬P(x) = ¬∀x. P(x)   ← and flip the quantifier
¬∀x. P(x) =  ∃x.¬P(x)   → and flip the quantifier
¬∃x. P(x) =  ∀x.¬P(x)   → and flip the quantifier
