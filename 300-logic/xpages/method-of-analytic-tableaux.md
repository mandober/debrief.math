# Method of analytic tableaux

https://en.wikipedia.org/wiki/Method_of_analytic_tableaux

In proof theory, the **semantic tableau** or **truth tree** is a decision procedure for sentential and related logics, and a proof procedure for formulae of FOL.

An **analytic tableau** is a tree structure computed for a logical formula, having at each node a subformula of the original formula to be proved or refuted. Computation constructs this tree and uses it to prove or refute the whole formula. The tableau method can also determine the satisfiability of finite sets of formulas of various logics. It is the most popular proof procedure for modal logics (Girle 2000).

## Contents

- 1. Introduction
- 2. Propositional logic
  - 2.1. And
  - 2.2. Or
  - 2.3. Not
  - 2.4. Closure
  - 2.5. Set-labeled tableau
  - 2.6. Conditional
- 3. First-order logic tableau
  - 3.1. First-order tableau without unification
  - 3.2. First-order tableau with unification
- 4. Tableau calculi and their properties
- 5. Proof procedures
- 6. Searching for a closed tableau
  - 6.1. Reducing search
- 7. Clause tableaux
  - 7.1. Connection tableau
  - 7.2. Regular tableaux
- 8. Tableaux for modal logics
  - 8.1. Formula-deleting tableau
  - 8.2. World-labeled tableau
  - 8.3. Set-labeling tableaux
  - 8.4. Auxiliary tableaux
  - 8.5. Global assumptions
- 9. Notations
  - 9.1. Uniform notation
  - 9.2. Signed formulae
- 10. History



## Introduction

For **refutation tableaux**, the objective is to show that the negation of a formula cannot be satisfied.

There are rules for handling each of the usual connectives, starting with the main connective. In many cases, applying these rules causes the subtableau to divide into two. Quantifiers are instantiated. If any branch of a tableau leads to an evident contradiction, the branch closes. If all branches close, the proof is complete and the original formula is a logical truth.


Although the fundamental idea behind the analytic tableau method is derived from the cut-elimination theorem of structural proof theory, the origins of tableau calculi lie in the meaning (or semantics) of the logical connectives, as the connection with proof theory was made only in recent decades.

More specifically, a tableau calculus consists of a finite collection of rules with each rule specifying how to break down one logical connective into its constituent parts. The rules typically are expressed in terms of finite sets of formulae, although there are logics for which we must use more complicated data structures, such as multisets, lists, or even trees of formulas. Henceforth, "set" denotes any of {set, multiset, list, tree}.

If there is such a rule for every logical connective then the procedure will eventually produce a set which consists only of atomic formulae and their negations, which cannot be broken down any further. Such a set is easily recognizable as satisfiable or unsatisfiable with respect to the semantics of the logic in question. To keep track of this process, the nodes of a tableau itself are set out in the form of a tree and the branches of this tree are created and assessed in a systematic way. Such a systematic method for searching this tree gives rise to an algorithm for performing deduction and automated reasoning. Note that this larger tree is present regardless of whether the nodes contain sets, multisets, lists or trees.

## Propositional logic

This section presents the tableau calculus for classical propositional logic. A tableau checks whether a given set of formulae is satisfiable or not. It can be used to check either validity or entailment: *a formula is valid if its negation is unsatisfiable* and formulae `A1,…,An` imply `{A1,…,An,¬B}` is unsatisfiable.

The main principle of propositional tableaux is to attempt to "break" complex formulae into smaller ones until complementary pairs of literals are produced or no further expansion is possible.

The method works on a tree whose nodes are labeled with formulae. At each step, this tree is modified; in the propositional case, the only allowed changes are additions of a node as descendant of a leaf. The procedure starts by generating the tree made of a chain of all formulae in the set to prove unsatisfiability.

A variant to this starting step is to begin with a single-node tree whose root is labeled by `⊤`; in this second case, the procedure can always copy a formula in the set below a leaf.

As a running example, the tableau for the set `{(a∨¬b)∧b,¬a}` is shown.

Then, the following procedure may be repeatedly applied nondeterministically:
- Pick an open leaf node. (The leaf node in the initial chain is marked open).
- Pick an applicable node on the branch above the selected node.
- Apply the applicable node, which corresponds to expanding the tree below the selected leaf node based on some expansion rule (detailed below).
- For every newly-created node that is both a literal/negated literal, and whose complement appears in a prior node on the same branch, mark the branch as closed. Mark all other newly-created nodes as open.

An applicable node is a node whose outermost connective corresponds to an expansion rule, and which has not already been applied at any prior node on the selected leaf node's branch.

Eventually, this procedure will terminate, because at some point every applicable node gets applied, and the expansion rules guarantee that every node in the tree is simpler than the applicable node used to create it.

The principle of tableau is that formulae in nodes of the same branch are considered in conjunction while the different branches are considered to be disjuncted. As a result, a tableau is a tree-like representation of a formula that is a disjunction of conjunctions. This formula is equivalent to the set to prove unsatisfiability. The procedure modifies the tableau in such a way that the formula represented by the resulting tableau is equivalent to the original one. One of these conjunctions may contain a pair of complementary literals, in which case that conjunction is proved to be unsatisfiable. If all conjunctions are proved unsatisfiable, the original set of formulae is unsatisfiable.

```js
// DOUBLE NAGATION
¬¬A                        A
  A                      ¬¬A

// AND                    NAND
A ⋀ B                   ¬(A ⋀ B)
  A                        / \
  B                      ¬A  ¬B

// OR                      NOR
A ⋁ B                    ¬(A ⋁ B)
 / \                        ¬A
A   B                       ¬B

// IMPLICATION        NON-IMPLICATION
 A -> B                  ¬(A -> B)
  / \                        A
¬A   B                      ¬B

// BICONDITIONAL     NON-BICONDITIONAL
A ⇔ B                   ¬(A ⇔ B)
 / \                        / \
A  ¬A                      A  ¬A
B  ¬B                     ¬B   B
```

### Derivation

The aim of tableaux is to generate progressively simpler formulae until pairs of opposite literals are produced or no other rule can be applied.

Assume negation of the conclusion and try to derive a contradiction.

```
a ∨ ¬b, b |- a       initial formula
------------------
     a ∨ ¬b          premise 1
       b             premise 1
      ¬a             negation of the conclusion
------------------
      / \            premise 1 splits the tree
     a   ¬b          a here and ¬a (negation of the conclusion) means ⟘
    ⟘     ⟘         ¬b here and b (in premise 1) means ⟘
------------------
thus, since all branches are closed the formula is satisfiable
```

The truth tree is *complete* iff either
- all branches are closed
- all applicable rules have been applied

## First-order logic tableau

Tableaux are extended to first-order predicate logic by two rules for dealing with universal and existential quantifiers, respectively.

Two different sets of rules can be used; both employ a form of *Skolemization* for handling existential quantifiers, but differ on the handling of universal quantifiers.

The set of formulae to check for validity is here supposed to contain no free variables; this is not a limitation as *free variables are implicitly universally quantified*, so universal quantifiers over these variables can be added, resulting in a formula with no free variables.

### First-order tableau without unification

A first-order formula `∀x.γ(x)` implies all formulae `γ(t)` where `t` is a ground term. The following inference rule is therefore correct:

```js
     ∀x.γ(x)
(∀) --------- where `t` is an arbitrary ground term
      γ(t)
```

Contrarily to the rules for the propositional connectives, multiple applications of this rule to the same formula may be necessary.

As an example, the set `{ ¬P(a) ∨ ¬P(b), ∀x.P(x) }` can only be proved unsatisfiable if both `P(a)` and `P(b)` are generated from `∀x.P(x)`.

Existential quantifiers are dealt with by means of *Skolemization*. In particular, a formula with a leading existential quantifier like `∃x.δ(x)` generates its Skolemization `δ(c)`, where `c` is a new constant symbol.

```js
     ∃x.δ(x)
(∃) --------- where `c` is a new constant symbol
      δ(c)
```

The Skolem term `c` is a constant (a function of arity 0) because the quantification over `x` does not occur within the scope of any universal quantifier. If the original formula contained some universal quantifiers such that the quantification over `x` was within their scope, these quantifiers have evidently been removed by the application of the rule for universal quantifiers.

The rule for existential quantifiers introduces *new constant symbols*. These symbols can be used by the rule for universal quantifiers, so that `∀y.γ(y)` can generate `γ(c)` even if `c` was not in the original formula but is a Skolem constant created by the rule for existential quantifiers.

The above two rules for universal and existential quantifiers are correct, and so are the propositional rules: if a set of formulae generates a closed tableau, this set is unsatisfiable.

*Completeness* can also be proved: if a set of formulae is unsatisfiable, there exists a closed tableau built from it by these rules.

However, actually finding such a closed tableau requires a suitable policy of application of rules. Otherwise, an unsatisfiable set can generate an infinite-growing tableau.

As an example, the set `{ ¬P(f(c)), ∀x.P(x) }` is unsatisfiable, but a closed tableau is never obtained if one unwisely keeps applying the rule for universal quantifiers to `∀x.P(x)`, generating for example `…P(c),P(f(c)),P(f(f(c))),…`. A closed tableau can always be found by ruling out this and similar "unfair" policies of application of tableau rules.

The rule for universal quantifiers `(∀)` is the *only non-deterministic rule*, as it does not specify which term to instantiate with. Moreover, while the other rules need to be applied only once for each formula and each path the formula is in, this one may require multiple applications.

Application of this rule can however be restricted by *delaying the application of the rule until no other rule is applicable* and by restricting the application of the rule to ground terms that already appear in the path of the tableau. The variant of tableaux with unification shown below aims at solving the problem of non-determinism.

```
{ ∀x.P(x), ∃x(¬P(x) ⋁ ¬P(f(x)) }
--------------------------------
1            ∀x.P(x)                  1        premise
2     ∃x(¬P(x) ⋁ ¬P(f(x))             2        premise
3        ¬P(c) ⋁ ¬P(f(c)              2(∃)     ∃-instantiation of 2
4             P(c)                    1(∀)     ∀-instantiation of 1
              /  \
             /    \
5       ¬P(c)      ¬P(f(c)            3(⋁)
6                   P(f(c)            1(∀)     ∀-instantiation of 1
                      ⟘                        contradiction 5(right),6(right)
           ⟘                                   contradiction 5(left),4
```

### First-order tableau with unification

The main problem of tableau without unification is how to choose a ground term `t` for the universal quantifier rule. Indeed, every possible ground term can be used, but clearly most of them might be useless for closing the tableau.

A solution to this problem is to "delay" the choice of the term to the time when the consequent of the rule allows closing at least a branch of the tableau.

This can be done by using a variable instead of a term, so that `∀x.γ(x)` generates `γ(x′)`, and then allowing substitutions to later replace `x′` with a term. The rule for universal quantifiers becomes:

```js
     ∀x.γ(x)
(∀) --------- where `x′` does not occur in the tableau
      γ(x′)
```

While the initial set of formulae is supposed not to contain free variables, a formula of the tableau may contain the free variables generated by this rule. These free variables are implicitly considered universally quantified.

This rule employs a variable instead of a ground term. What is gained by this change is that these variables can be then given a value when a branch of the tableau can be closed, solving the problem of generating terms that might be useless.

(σ) if `σ` is the *most general unifier* of two literals `A` and `B`, where `A` and the negation of `B` occur in the same branch of the tableau, `σ` can be applied at the same time to all formulae of the tableau.

As an example, `{ ¬P(a), ∀x.P(x) }` can be proved unsatisfiable by first generating `P(x1)`; the negation of this literal is unifiable with `¬P(a)`, the most general unifier being the substitution that replaces `x1` with `a`; applying this substitution results in replacing `P(x1)` with `P(a)`, which closes the tableau.

This rule closes at least a branch of the tableau - the one containing the considered pair of literals. However, the *substitution has to be applied to the whole tableau*, not only on these two literals.

This is expressed by saying that the **free variables of the tableau are rigid**: if an occurrence of a variable is replaced by something else, all other occurrences of the same variable must be replaced in the same way.

Formally, the free variables are (implicitly) universally quantified and all formulae of the tableau are within the scope of these quantifiers.

Existential quantifiers are dealt with by Skolemization. Contrary to the tableau without unification, *Skolem terms* may not be simple constants. Indeed, formulae in a tableau with unification may contain free variables, which are implicitly considered universally quantified.

As a result, a formula like `∃x.δ(x)` may be within the scope of universal quantifiers; if this is the case, the Skolem term is not a simple constant but a term made of a new function symbol and the free variables of the formula.

```js
        ∃x.δ(x)
(∃) --------------- where `f` is a new function symbol and FV(x₁, …, xₙ) ∈ δ
    δ(f(x₁, …, xₙ))
```

This rule incorporates a simplification over a rule where `x₁, …, xₙ` are the free variables of the branch, not of `δ` alone. This rule can be further simplified by the reuse of a function symbol if it has already been used in a formula that is identical to `δ` up to variable renaming.

The formula represented by a tableau is obtained in a way that is similar to the propositional case, with the additional assumption that free variables are considered universally quantified.

As for the propositional case, formulae in each branch are conjoined and the resulting formulae are disjoined. In addition, all free variables of the resulting formula are universally quantified. All these quantifiers have the whole formula in their scope.

In other words, if `F` is the formula obtained by disjoining the conjunction of the formulae in each branch, and `x₁, …, xₙ` are the free variables in it, then `∀x₁, …, xₙ.F` is the formula represented by the tableau.

The following considerations apply:

* The assumption that free variables are universally quantified is what makes the application of a most general unifier a sound rule: since `γ(x′)` means that `γ` is true for every possible value of `x′`, then `γ(t)` is true for the term `t` that the most general unifier replaces `x` with.

* *Free variables in a tableau are rigid*: all occurrences of the same variable have to be replaced all with the same term. Every variable can be considered a symbol representing a term that is yet to be decided. This is a consequence of free variables being assumed universally quantified over the whole formula represented by the tableau: if the same variable occurs free in two different nodes, both occurrences are in the scope of the same quantifier.

As an example, if the formulae in two nodes are `A(x)` and `B(x)`, where `x` is free in both, the formula represented by the tableau is something in the form `∀x.(…A(x)…B(x)…)`.

This formula implies that `(…A(x)…B(x)…)` is true for any value of `x`, but does not in general imply `(…A(t)…A(t′)…)` for two different terms `t` and `t′`, as these two terms may in general take different values. This means that `x` cannot be replaced by two different terms in `A(x)` and `B(x)`.

* Free variables in a formula to check for validity are also considered universally quantified. However, these variables cannot be left free when building a tableau, because tableau rules works on the converse of the formula but still treats free variables as universally quantified.

For example, `P(x) → P(c)` is not valid (it is not true in the model where 
`D = {1,2}, P(1) = ⊥, P(2) = ⊤, c = 1`, and the interpretation where 
`x=2`). Consequently, `{P(x), ¬P(c)}` is satisfiable (it is satisfied by the same model and interpretation). However, a closed tableau could be generated with P(x) and ¬P(c), and substituting `x` with `c` would generate a closure. A correct procedure is to first make universal quantifiers explicit, thus generating `∀x.(P(x) → P(c))`.

The following two variants are also correct.

* Applying to the whole tableau a substitution to the free variables of the tableau is a correct rule, provided that this substitution is free for the formula representing the tableau. In other worlds, applying such a substitution leads to a tableau whose formula is still a consequence of the input set. Using most general unifiers automatically ensures that the condition of freeness for the tableau is met.

* While in general every variable has to be replaced with the same term in the whole tableau, there are some special cases in which this is not necessary.

Tableaux with unification can be proved complete: if a set of formulae is unsatisfiable, it has a tableau-with-unification proof. However, actually finding such a proof may be a difficult problem. Contrarily to the case without unification, applying a substitution can modify the existing part of a tableau; while applying a substitution closes at least a branch, it may make other branches impossible to close (even if the set is unsatisfiable).

A solution to this problem is delayed instantiation: no substitution is applied until one that closes all branches at the same time is found. With this variant, a proof for an unsatisfiable set can always be found by a suitable policy of application of the other rules. This method however requires the whole tableau to be kept in memory: the general method closes branches, which can be then discarded, while this variant does not close any branch until the end.

The problem that some tableaux that can be generated are impossible to close even if the set is unsatisfiable is common to other sets of tableau expansion rules: even if some specific sequences of application of these rules allow constructing a closed tableau (if the set is unsatisfiable), some other sequences lead to tableaux that cannot be closed. General solutions for these cases are outlined in the "Searching for a tableau" section.


## Tableaux for modal logics

In a modal logic, a model comprises a set of possible worlds, each one associated to a truth evaluation; an accessibility relation specifies when a world is accessible from another one.

A modal formula may specify not only conditions over a possible world, but also on the ones that are accessible from it.

As an example, `□A` is true in a world if `A` is true in all worlds that are accessible from it.

As for propositional logic, tableaux for modal logics are based on recursively breaking formulae into its basic components. Expanding a modal formula may however require stating conditions over different worlds.

As an example, if `¬□A` is true in a world then there exists a world accessible from it where `A` is false. However, one cannot simply add the following rule to the propositional ones.

```js
¬ □ A
-----
 ¬ A
```

In propositional tableaux all formulae refer to the same truth evaluation, but the precondition of the rule above holds in one world while the consequence holds in another. Not taking into account this would generate incorrect results. For example, formula `a ∧ ¬□a` states that `a` is true in the current world and `a` is false in a world that is accessible from it. Simply applying (∧) and the expansion rule above would produce `a` and `¬a`, but these two formulae should not in general generate a contradiction, as they hold in different worlds. Modal tableaux calculi do contain rules of the kind of the one above, but include mechanisms to avoid the incorrect interaction of formulae referring to different worlds.

Technically, tableaux for modal logics check the satisfiability of a set of formulae: they check whether there exists a model `M` and world `w` such that the formulae in the set are true in that model and world. In the example above, while `a` states the truth of `a` in `w`, the formula `¬□a` states the truth of `¬a` in some world `w′` that is accessible from `w` and which may in general be different from `w`. Tableaux calculi for modal logic take into account that formulae may refer to different worlds.

This fact has an important consequence: formulae that hold in a world may imply conditions over different successors of that world. Unsatisfiability may then be proved from the subset of formulae referring to a single successor. This holds if a world may have more than one successor, which is true for most modal logics. If this is the case, a formula like `¬□A ∧ ¬□B` is true if a successor where `¬A` holds exists and a successor where `¬B` holds exists. In the other way around, if one can show unsatisfiability of `¬A` in an arbitrary successor, the formula is proved unsatisfiable without checking for worlds where `¬B` holds. At the same time, if one can show unsatisfiability of `¬B`, there is no need to check `¬A`. As a result, while there are two possible way to expand `¬□A ∧ ¬□B`, one of these two ways is always sufficient to prove unsatisfiability if the formula is unsatisfiable. For example, one may expand the tableau by considering an arbitrary world where `¬A` holds. If this expansion leads to unsatisfiability, the original formula is unsatisfiable. However, it is also possible that unsatisfiability cannot be proved this way, and that the world where `¬B` holds should have been considered instead. As a result, one can always prove unsatisfiability by expanding either `¬□A` only or `¬□B` only; however, if the wrong choice is made the resulting tableau may not be closed. Expanding either subformula leads to tableau calculi that are complete but not proof-confluent. Searching as described in the "Searching for a closed tableau" may therefore be necessary.

Depending on whether the precondition and consequence of a tableau expansion rule refer to the same world or not, the rule is called static or transactional. While rules for propositional connectives are all static, not all rules for modal connectives are transactional: for example, in every modal logic including axiom T, it holds that `□A` implies `A` in the same world. As a result, the relative (modal) tableau expansion rule is static, as both its precondition and consequence refer to the same world.
