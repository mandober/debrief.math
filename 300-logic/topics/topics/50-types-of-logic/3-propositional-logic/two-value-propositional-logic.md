# Two-valued propositional logic

## Boolean Functions and Formulas

Two-valued logic is based on two foundational principles
1. The principle of bivalence
2. The principle of extentionality

The principle of bivalence means that such a logic only recognizes two truth values (true and false). *The principle of extentionality* states that the truth value of expressions depends only on the truth values of their parts, not on their meaning. We don't even have to know exactly what the truth values (true and false) actually are. We can identify these two constants with the symbols 1 and 0 (or T and F). The advantage of this is that all conceivable interpretations of true and false remain open including those of a purely technical nature, for instance, the two states of a Boolean gate.

The interpretation of connectives is as usual, e.g. the conjunction of sentences `A` and `B`, formalized as `A ⋀ B`, is true if and only if both `A` and `B` are true, otherwise false. So, conjunction corresponds to a binary function over the set of truth values `{0,1}`; it is called the AND-function and denoted by `⋀`. The AND-function is defined by its value matrix that is here represented using its binary code (1 0 0 0).

In general, `(1◦1 1◦0 0◦1 0◦0)` represents the value matrix (truth table) of a binary function `◦` with inputs (arguments) and outputs (function values) in the set `𝔹 = {0,1}`.

A function `f : 𝔹ⁿ -> 𝔹` is called an n-ary Boolean or truth function. There are `2ⁿ` n-tuples of 0,1, so the number of n-ary Boolean functions is `2^2ⁿ`, the totality of which is denoted by `𝔹ₙ`.

* The set `𝔹₀` (nullary Boolean functions) consists of the constants 0 and 1
* The set `𝔹₁` (unary Boolean functions) has 2² members, the only interesting of which is the negation function, defined by ¬1 = 0 and ¬0 = 1
* The set `𝔹₂` (binary Boolean functions) has 2⁴ members

Sentences formed using connectives are *logically equivalent* if their corresponding truth tables are identical.

The converse implication is `A <- B`; it is used in e.g. Prolog as `A :- B`. Its truth table is obtained by swapping A and B in the implication A -> B.


Every time we deal with a propositional language, we need to give in advance the set of its logical symbols, called the *logical signature*, and the set of its variables.

In the terms of set theory, `𝓛` is the smallest (i.e. the intersection) of all sets of strings `S` built from the symbols in the set of propositional variables `PV = {p₁, p₂, …}` (each var is an atomic or primitive formula) and the logical connectives, with the properties:
1. p₁, p₂, … ∈ S
2. α, β ∈ S --> ¬α, (α ⋀ β), (α ⋁ β) ∈ S

The third condition (no other strings is in 𝓛) is sometimes added, but this at most underlines that (1) and (2) are the only formula-building rules, while (3) follows from the definition anyway.

The formulas thus defined are *Boolean formulas* because they are obtained using the Boolean signature `{⋀,⋁,¬}`. The additional connectives may be added by extending (2) or by introducing them as *definitional abbreviations*.

Occasionally, it is useful to add the symbols for always true, `⟙` (verum), and always false, `⟘` (falsum), in the logical signature. They may also be denoted by reusing 0 and 1. They are regarded as extra primetives (atomic formulas), so the clause (1) needs to be adjusted. In the Boolean signature, they are introduced as abbreviations: `⟘ := p ⋀ ¬p` and `⟙ := p ⋁ ¬p`.

Induction principle for formulas
- let `E` be a property of strings such that
- `Eπ` holds for all prime formulas `π`
- `Eα,Eβ --> E(α ⋀ β), E(α ⋁ β), E¬α` ∀α,β ∈ F
- then `Eϕ` holds for all formulas `ϕ`

*Unique reconstruction property*: each compound formula `ϕ ∈ 𝓛` is of the form `¬α` or `(α◦β)`, where `α,β ∈ 𝓛` and `◦ ∈ {⋀,⋁}` are uniquely determined by ϕ.

The set `Sf ϕ` of all *subformulas* of `ϕ` is defined inductively as
- `Sf π = {π}` for prime formulas `π`
- `Sf ¬α = Sf α ⋃ {¬α}`
- `Sf (α ◦ β) = Sf α ⋃ Sf β ⋃ {(α ◦ β)}` for a binary connective `◦`.   
- A formula is always regarded as a subformula of itself.
- e.g. `(q ⋀ ¬p)` is a subformula of formula `(p ⋁ (q ⋀ ¬p))`.

*Rank of a formula*, `rk ϕ`, provides a measure of complexity of ϕ other than its length as a string; `rk ϕ` is the highest number of nested pairs of parentheses or nested negation signs in ϕ.
- `rk π = 0` for prime formulas `π`
- if `rk α` and `rk β` are given, then `rk ¬α = rk α + 1` and 
- `rk (α ◦ β) = max(rk α, rk β) + 1` for a binary connective `◦`
