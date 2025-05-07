# Mathematical statements

A statement is a declarative sentence which is either true or false. A statement is an *atomic statement* if it cannot be divided into smaller statements, otherwise it is called a *compound (or molecular) statement*.

e.g.
- 2 + 2 = 5
- 1 + 4 > 7
- 49 is a perfect square


The expression `3 + x = 12` is not a statement because it contains a variable. Depending on what `x` is, the sentence is either true or false, but right now it is neither. One way to make the sentence into a statement is to specify the value of the variable in some way. This could be done in a number of ways. For example, "3+x=12 where x=9" is a true statement, as is "3+x=12 for some value of x". This is an example of *quantifying over a variable*.

We can build complex statements out of simpler (atomic or compound) ones using *logical connectives* (¬ ∧ ∨ ⇒ ⇔). Which connective we use to modify statements will determine the truth value of the compound statement, based on the truth values of the constituent statements. 

To analyze logical connectives, we don't really need full sentences - we can replace each atomic sentence by a *propositional variable* (P, Q, R, …). These variables can take on one of two truth values.

To use variables in mathematical statements we have to quantify them first. For example, `P(n) → ¬P(n+7)` means if `n` is prime, then `n+7` is not a prime, but this is not a statement because it has a *free variable* (a variable that we have not specified anything about). If we plug in a specific value for `n`, we do get a statement. In fact, no matter what value we plug in for `n`, we get a true implication. So what we really want to say is that for all values of `n`, if `n` is prime, then `n+7` is not. We need to quantify the variable using *universal quantification*, `∀n(n ∈ ℕ ∧ P(n)) → ¬P(n+7)`. We also needed to restrict the domain over which the variable ranges to the set of the natural numbers, `n ∈ ℕ`, since only naturals can be primes.
