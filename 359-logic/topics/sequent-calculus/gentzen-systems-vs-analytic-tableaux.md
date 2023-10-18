# Gentzen's systems vs analytic tableaux

https://www.cs.cornell.edu/courses/cs4860/2009sp/lec-09.pdf

Although the Gentzen-style systems (N and L for K and J) were actually developed a few years before *analytic tableaux*, Gentzen's sequents can be considered a step forward, toward a more intuitive proof methods.

Although Gentzen-style proof calculi are similar to the analytic tableau proof methods, each has a distinctive view of the nature of proofs.

The tableau method attempts to refute a formula by searching for a counterexample of its validity; it asserts that a formula is valid if that search fails, i.e. if every branch in the tableaux is closed. On the other hand, a Gentzen-style system aims to construct a proof of a formula by finding the evidence to support its truth.

Therefore, Gentzen systems deem a formula `A` as the goal of the proof, and denote its proof by `⊢ A`. In other words, in a Gentzen-style system, the theorems are those formulae `A` such that `⊢ A` is the conclusion of a valid proof.

## Example for comparison

We want to compare sequent calculus and analytic tableau by proving the formula `⊢ ((P → R) ∧ (Q → R)) → ((P ∨ Q) → R)` with both proof methods.

### With analytic tableau

```hs
¬(((P → R) ∧ (Q → R)) → ((P ∨ Q) → R))
                      |
             ((P → R) ∧ (Q → R))
                      |
            ¬((P ∨ Q) → R)
                      |
                    P → R
                    Q → R
                      |
                    P ∨ Q
                     ¬R
                    /   \
                   /     \
                  P       Q
                /  \     /  \
              ¬P    R  ¬Q    R
               |    |   |    |
               x    x   x    x
```

We close the branch as soon as we get a contradiction - no need to exapand the irrelevant formulas in the closed branch; i.e. there should be another level of child nodes: the nodes `¬P` and `R` should each branch into `¬Q` and `R` (accounting for `Q → R`); and the nodes `¬Q` and `R` should each branch into `¬P` and `R` (accounting for `P → R`), but there's no point.

### With sequent calculus

```hs
                  -----------(R) ------------(P)
                  P, R ⊢ R, Q    P, ⊢ R, Q, P
                  ---------------------------- →L ---------------- (Q)
                        P, P → R, ⊢ R, Q          Q, P → R, ⊢ R, Q
------------------- (R) ------------------------------------------- ∨L
P ∨ Q, P → R, R ⊢ R                P ∨ Q, P → R, ⊢ R, Q
--------------------------------------------------------- →R
P ∨ Q, P → R, Q -> R ⊢ R
--------------------------------------- →R
P → R, Q → R ⊢ (P ∨ Q) -> R
--------------------------------------- ∧L
((P → R) ⋀ (Q → R)) ⊢ ((P ∨ Q) → R)
--------------------------------------- →R
⊢ ((P → R) ∧ (Q → R)) -> ((P ∨ Q) → R)
```

Similarly to the analytic tableau in which we don't bother with the branching of the closed nodes, in sequent calculus, we don't bother simplifying the formulas in a sequent that can be closed off by the axiom.

### Analysis

In the proof with tableau, we have used the known tableau rules to generate children of the goal, which is the formula placed at the root of the proof tree. Some rules cause the refutation tree to branch out, but eventually we have managed to close all the branches, since we have found the conjugate pairs (i.e. `P` and `¬P`) along the path (within its scope) for every variable.

In the Gentzen proof, we start with the formula that we want to prove, here to the right of the `⊢` symbol. We then use the rules of inference that more-less follow directly from an intuitive understanding of logical connectives.

To prove `⊢ A → B`, we assume that `A` is true and try to prove `B`. We rewrite this as `A ⊢ B`, indicating that `A` is now an assumption under which we have to prove `B`. Thus, in a sequent, we write the current assumptions on the left, and the conclusions we need to prove from these assumptions on the right.

Some rules, like the decomposition rule `∨L` for a disjunction in the assumptions, cause a proof to branch. If we want to prove the goal `G` from the assumption `A ∨ B`, then it is sufficient to show how to prove `G` from the assumption `A`, and how to prove `G` from the assumption `B`. Thus, the rule `∨L` decomposes the sequent `A ∨ B ⊢ G` into two sequents: `A ⊢ G` and `B ⊢ G`, which become the new proof obligations.

```hs
   A ∨ B ⊢ G
--------------- ∨L
A ⊢ G    B ⊢ G
```

Notice that proof rules generate *sufficient conditions* for proving the validity of a sequent. If we knew which of the two formulas, `A` or `B`, in the assumption `A ∨ B` was true, we wouldn't have to prove both `A ⊢ G` and `B ⊢ G`. But once we have shown `A ⊢ G` and `B ⊢ G`, we need only know that `A` or `B` is true, because then we can prove `G` in either case.


However, the formulation of the proof rules tries to make sure that applying them doesn't create irreversible effects. This can best be seen in the rule `→L`, which decomposes an implication in the assumptions. The only way to make use of the formula `A → B` in the sequent `A → B ⊢ G` is to prove `A` and then use `B` to prove the goal `G`. That is, the `→L` rule generates two new proof obligations, `⊢ A` (but read on) and `B ⊢ G`.

The rationale is that if we have a proof for `A`, and know that `A` implies `B`, and we have a proof for `G` from `B`, then we can surely conclude `G` by putting all the evidence together.

We'll discuss later how to compose such evidence in a more formal setting which will tell us exactly how to build evidence for the validity of the formula that we wanted to prove.

Unfortunately, the proof obligation `⊢ A` may cause the proof to fail if the validity of `G` does not depend on `A → B` but follows from the other assumptions in the proof.

While all the other rules for assumptions only decompose an assumption without modifying the goal, `→L` drops the original proof goal and generates a new one, which may not be provable even if the intial formula is valid. To resolve this issue, the original proof goal is preserved as an *alternative proof goal*, so the `→L` rule actually generates the sequent `⊢ A, G` (not just `⊢ A` as stated above), along with the sequent, `B ⊢ G`.

```hs
     A → B ⊢ G
--------------- →L
⊢ G, A   B ⊢ G
```

As a consequence, sequents may not only have several assumptions, or hypotheses, but also multiple goals, or conclusions.

Formally, sequents are defined as objects of the form `H ⊢ G` where both `H` and `G` are multisets of formulas (making sure the order of formulas is irrelevant).

We understand a sequent as "under the assumption that all the formulas in `H` are true, we can show that at least one of the formulas in `G` is true".

Proof rules decompose a formula in the assumptions or in the conclusions until we finally arrive at a sequent that is trivially true, because one of the conclusions is identical to one of the assumptions. Such a sequent is proven by the axiom rule `A ⊢ A`, which closes the current branch of the proof tree.

The tableau proof method and the Gentzen proof method appear to be entirely different, but there are some similarities. For one, we used the corresponding proof rules in the same order in both methods: F-implication (→R), then T-conjunction (∧L), F-implication (→R), T-disjunction (∨L), and finally T-implication (→L) in each path, which then by the axiom rule resulted in a closed branch. We also observe that each sequent contains exactly those (irrelevant) formulas of the tableau that we haven't (needlessly) decomposed.


## Gentzen system and tableaux

The Gentzen system is a proof calculus that tries to construct a proof for a given formula. In that regard it is different from the tableux method that tries to refute a given formula, concluding from a failed refutation that the formula is valid. The Gentzen system actually provides evidence for the truth of a formula, and each rule has the associated method for constructing the corresponding evidence.

## Presentation of inference rules

Inference rules can be stated in the *synthetic style*, that is, the premises of the rule are written on top of the inference line and the conclusion derived from these premises is below the line.

Another manner of presenting the inference rules is the *analytic style*, or top-down approach, in which the main goal is above the line and the derived subgoals are below it. Although the meaning is still that the subgoals are premises that imply the main goal (i.e. conclusion), this refinement style better reflects the way how proofs are actually developed: we start with a goal which is a formula we want to prove, and we apply the rules to get the subgoals that we prove; we continue this until there are no more unproven subgoals left. Once we complete the proof (going top-to-bottom), the evidence is constructed in the bottom-up direction.

With synthetic rules, we would either have to develop the proof going bottom to top, or start with the leaves and build the proof, assuming we know exactly what is needed. That is, the synthetic style is good for writing down proofs once we know them, but bad for developing them.

Top-down proof rules are designed for computer-supported, *interactive reasoning*, which is important if we go beyond propositional or even FOL, where fully automated proof methods are not sufficient anymore.

Keeping the entire state of the current proof *locally, in a single sequent*, is also an advantage of Gentzen systems that makes sequents a desirable format for computation, as contrasted by the tableau method where the entire proof tree needs to be consulted at almost each step of the proof.

## Advantages and disadvantages of Gentzen systems

Both advantages and disadvantages of Gentzen systems seem to stem from the same feature - the possibility of multiple conclusions.

On the one hand, this makes us unable to keep track and know what premise was used to prove which conclusion. It allows us to use the *bait-and-switch tactic*, in which the concusion we are seemingly in the proces of proving is all of a sudden switched and the alternative conclusion is proven instead. This is possible because a subgoal sequent is successfully "closed" if there is the same atomic variable on both sides (possibly with other variables also present). Even though this tactic produces logically sound proofs, it is somehow "morally" dubious.

On the other hand, it is exactly the possibility of havingmultiple conclusions that makes the rule fully reversible. A rule is *reversible*, if applying it does not destroy information, that is, if the main goal of a rule is still equivalent to the collection (conjunction) of all the subgoals.

## Consistency and completeness of Gentzen Systems

In a sense, Gentzen systems and the tableau method are dual to each other and therefore we can prove consistency and completeness of Gentzen systems by providing a translation between Gentzen and tableau proofs, showing that the two are actually isomorphic.

To formalize this isomorphism, we need to modify the tableaux method to make that each step keeps all the relevant formula, so that we need not consult any other part of the proof tree.

Then we can show that the Gentzen systems and block tableaux are essentially the same.

If we put `H` and `G` cedents together into one set `S`, we get exactly the rules of the block tableau calculus. And if we do it the other way around, and split the set `S` into formulas signed with `T` (for true, or we can simply leave the formula as is) and `F` (for false, or we can simply prefix the formula with `¬`), then the block tableau rules exactly correspond to the Gentzen system rules.

Thus, Gentzen Systems, although totally different in spirit, are actually isomorphic to block tableau. Technically, the difference between the two is just a simple syntax transformation.

## Similarities and differences between Gentzen Systems and tableaux

1. We have the same starting point: `⊢ X` corresponds to `F(X)` or just `¬X`.
2. We have exactly the same rules
3. We have exactly the same nodes in our proof trees. Every sequent corresponds to a finite set of signed formulas. Conversely every set `S` of signed formulae corresponds to the sequent `H ⊢ G`, where `H = {X|X ∈ S}` and `G = {X|¬X ∈ S}`.
4. We have exactly the same condition for closing a proof branch: the axiom rule corresponds to the `*`-rule for closing block tableaux.

As an immediate consequence of this result is that the multi-succedent sequent calculus is consistent and complete, based on the proof of consistency and completeness for analythic tableau (because they are isomorphic).

Although tableaux and Gentzen systems are formally almost identical, they have *different intentions*:

Tableaux vs Gentzen systems:
- goal-wise
  - `¬X` means search for a counterexample
  - `⊢ X` means try to prove `X`
- α-step
  - counterexample must involve both `α1` and `α2` (AND branching)
  - proof must show either `α1` or `α2` (OR-branching)
- β-step
  - counterexample uses either `β1` or `β2` (OR-branch)
  - proof must show both `β1` and `β2` (AND branch)
- closed branch
  - counterexample impossible
  - partial proof sucessful
- open leaf
  - consistent valuation possible (counterexample found)
  - proof fails at this leaf
- validity
  - implicit proof of validity - no counterexample
  - explicit justification of validity
- polarity
  - negative, indirect approach
  - positive, constructive proof


However, the technical similarity shows us that the indirect proof can be converted into a direct one. Actually, there are even methods which start way in the compact matrix proofs and end up in the refinement logic.
