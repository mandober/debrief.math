# Progress and Preservation

https://github.com/plfa/plfa.github.io/blob/dev/papers/sbmf/query.lagda

*Progress* and *Preservation* are (whatchamacallit: rules, motos, something-to-strove-toward?) in typed calculi.

`∅ ⊢ M : A` indicates that term `M` has type `A` (for a closed term `M`)

**Progress**:   
If `∅ ⊢ M : A` then either `M` is a value or `M ->> N` for some term `N`.

**Preservation**:   
If `∅ ⊢ M : A` and `M ->> N` then `∅ ⊢ N : A`.


It is easy to combine these two proofs into an evaluator. 
`=>>` is the transitive and reflexive closure of `->>`.

Evaluation:

If `∅ ⊢ M : A`, then for every natural number `n`, either
- `M =>> V`, where `V` is a value, 
  and the reduction sequence has no more than `n` steps, or 
- `M =>> N`, where `N` is not a value, 
  and the reduction sequence has exactly `n` steps.

Evaluation implies that either `M =>> V` or there is an infinite sequence 
`M ->> M₁ ->> M₂ ->> …` that never reduces to a value. However, this last result is not constructive, as deciding which of the two results holds is not decidable.

An Agda implementation of *Evaluation* provides an evaluator for terms: given a number `n` it will perform up to `n` steps of evaluation, stopping early if a value is reached. This is entirely obvious (at least in retrospect), but I have not seen it written down anywhere. For instance, this approach is not exploited in "Software Foundations" to evaluate terms (other methods are used instead).

Philip Wadler, re his book:
*Programming Language Foundations in Agda*
https://plfa.github.io/
