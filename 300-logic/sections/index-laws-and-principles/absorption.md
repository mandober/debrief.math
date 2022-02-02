# Absorption

https://en.wikipedia.org/wiki/Absorption_(logic)

Absorption is a valid argument form and rule of inference of propositional logic.

`(p -> q) |- p -> (p ⋀ q)`

The rule states that if `p -> q` then `p -> (p ⋀ q)`. The rule makes it possible to introduce conjunctions to proofs. It is called the law of absorption because the term `q` is "absorbed" by the term `p` in the consequent.

* The absorption rule may stated as an inference block:

```
    p -> q
-------------
∴ p -> (p ⋀ q)
```

where the rule is that: wherever an instance of `(p -> q)` appears on a line of a proof, then `p -> (p ⋀ q)` can be placed on a subsequent line.

* The absorption rule may be expressed as a sequent: `(p -> q) |- p -> (p ⋀ q)`,where `⊢` is a metalogical symbol meaning that the succedent is a syntactic consequence of the antecedent in some logical system;

* The absorption rule may also be expressed as a truth-functional tautology or theorem of propositional logic, `(p -> q) <=> p -> (p ⋀ q)`, where `p` and `q` are propositions expressed in some formal system. It was stated as a theorem of propositional logic by Russell and Whitehead in Principia Mathematica.


Example
- If it will rain, then I will wear my coat.
- Therefore, if it will rain, then it will rain and I will wear my coat.
