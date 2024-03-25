# Propositional Logic

**Truth tables** are a sure way to determine the truth value of a logical expression, but testing whether a proposition is a tautology, contradiction or satisfiable, requires testing every possible truth assignment, which gets expensive very quickly.

The number of distinct assignments of `n` logical variables is `2^2ⁿ`. This makes complexity of operations exponential. There are 16 (2⁴) distinct permutations with only 2 logical variables, which jumps to 256 (2⁸) with three vars, and 2¹⁶ with four, etc. With only 3 vars it already is too unwiedly - we need a different reasoning system that is at a "higher-level" then truth tables, a system that is more adept to our way of reasoning.

**Deductive reasoning**, and its method, **deduction**, is the process of reasoning that starts from *premises* and, using rules of inference, proceeds to derive a conclusion that is necessarily true. Assuming the premises are true, then following the rules of inference will produce a conclusion that is necessarily true. Here, the notion of truth is strictly syntactical. In fact, the contents behind the logical propositions, even if available (e.g. if we have translated a set of sentences from a natural language into a set of propositional symbols) should be completely ignored! When dealing with the formulas of propositional logic, we must only regard their syntactic validity.

Deduction is only concerned with *syntactic validity*, which means the conclusion must necessarily follow from the premises, based on the syntax alone.

Deduction does not care about the semantic content and the actual truth of premises - they are accepted as true and they need not be proven. Therefore, deduction itself is another version of a logical implication: assuming a given a set of premises is true (after all they are also called assumptions), then some particular conclusion necessarily follows. You can deny the premises, but you cannot deny the conclusion. Or less fatalistically: if you accept a certain set of premises as true (your have a choice), then here's the conclusion that necessarily follows (no choice, it just is). Symbollically, if `Γ` represents a set of premises that entail the conclusion `q`, then you can argue about `Γ`, but not about the fact that `Γ |- q`.

An **interpretation** (assignment, state) is a procedure that assigns to each variable a truth value. An interpretation is usually represented by a function `σ` from the set of logical variables to the set of truth values `{1,0}`, that is `σ : { pᵢ } -> {1,0}`, where `pⁱ` are vars indexed by e.g. `i ∈ ℕ`.

**Natural deduction** is a logical system, developed by Gerhard Getzen, that is commonly conducted using the notation of *sequent calculus*, which is a logical framework and a notational system also invented by Getzen.

As a notational system, sequent calculus uses the entailment form, `Γ |- Δ`, where `Γ` represents a set of premise wffs, the turnstyle symbol is pronounced as "entails", and `Δ` represents a set of concusion wffs. We apply the applicable rules of inference to derive a conclusion based on the premises.

We can build a proof tree, with the proposition we want to prove as the root, and with the initial assumptions and/or axioms as the leaves. We can then start at the leaves and try to arrive to the root. Or, we can flip this flow and start at the root, working our way backward in the attempt to make a path to the leaves.
