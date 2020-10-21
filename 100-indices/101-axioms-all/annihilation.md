# Annihilation

The axiom of annihilation (annihilation law) makes its appearance in Boolean Algebra:

- annihilator for ∧: x ∧ 0 = 0
- annihilator for ∨: x ∨ 1 = 1

Basically, with `∧`, if *false* is one of the values, the other value can be safely ignored as it cannot change the result in any way. Similarly for `∨` and *true* value. Strict programming languages rely on this law of annihilation so they avoid even evaluating the second operand in these situations. This is called **short-circuiting**.

In the expression `0 && x`, once the left operand is determined to be 0 (zero, false), the need to even look, let alone evaluate, the second operand becomes futile; it cannot possibly influence the result. This means that even if the second operand is syntactically invalid, it won't cause an error. The parallel situation is with the expresion involving OR and the true value as the first operand, e.g. `1 || (++x)`. In general, it doesn't matter which position the annihilator takes, but in programming languages, the evaluation usually left to right, so that is the sole reason why the annihilator must be the left-side operand in order for short-circuiting to kick in.

Concerning Elementary algebra, multiplication (and higher operations) has annihilator element i.e. zero, such that `x * 0 = 0`, `0 ^ x = 0` (however,   
`x ^ 0 = 1`), `0 ↑↑ x = 0`, etc.
