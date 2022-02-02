# Propositional calculus

https://en.wikipedia.org/wiki/Propositional_calculus

Propositional calculus is a branch of logic. It is also called propositional logic, statement logic, sentential calculus, sentential logic, or sometimes zeroth-order logic. It deals with propositions (which can be true or false) and relations between propositions, including the construction of arguments based on them. Compound propositions are formed by connecting propositions by logical connectives. Propositions that contain no logical connectives are called atomic propositions.

Unlike first-order logic, propositional logic does not deal with non-logical objects, predicates about them, or quantifiers. However, all the machinery of propositional logic is included in first-order logic and higher-order logics. In this sense, propositional logic is the foundation of first-order logic and higher-order logic.

1. Explanation
2. History
3. Terminology
4. Basic concepts
  4.1. Closure under operations
  4.2. Argument
5. Generic description of a propositional calculus
6. Example 1. Simple axiom system
7. Example 2. Natural deduction system
8. Basic and derived argument forms
9. Proofs in propositional calculus
  9.1. Example of a proof in natural deduction system
  9.2. Example of a proof in a classical SL system
10. Soundness and completeness of the rules
  10.1. Sketch of a soundness proof
  10.2. Sketch of completeness proof
    10.2.1. Example
    10.2.2. Verifying completeness for the classical SL system
  10.3. Another outline for a completeness proof
11. Interpretation of a truth-functional SL
  11.1. Interpretation of a sentence of truth-functional SL
12. Alternative calculus
  12.1. Axioms
  12.2. Inference rule
  12.3. Meta-inference rule
  12.4. Example of a proof
13. Equivalence to equational logics
14. Graphical calculi
15. Other logical calculi
16. Solvers
17. See also
18. References
19. Further reading
20. External links


## Explanation

*Logical connectives* are found in natural languages. In English for example, some examples are "and" (conjunction), "or" (disjunction), "not" (negation) and "if" (but only when used to denote material conditional).

The following is an example of a very simple inference within the scope of SL:
- Premise 1: If it's raining then it's cloudy.  `p -> q`
- Premise 2: It's raining.                      `p`
- Conclusion: It's cloudy.                           `q`

Both *premises* and the *conclusion* are *propositions*. The premises are taken for granted, and with the application of modus ponens, the conclusion follows.

As propositional logic is not concerned with the *structure of propositions* beyond the point where they can't be decomposed any more by logical connectives, this inference can be restated replacing those atomic statements with statement letters, which are interpreted as variables representing statements. The above can be stated succinctly as `P, P -> Q |- Q`.

When `P` is interpreted as "It's raining", and `Q` as "it's cloudy" the above symbolic expressions can be seen to correspond exactly with the original expression in natural language. Not only that, but they will also correspond with any other inference of this form, which will be valid on the same basis this inference is.

Propositional logic may be studied through a formal system in which formulas of a formal language may be interpreted to represent *propositions*. A system of *axioms* and *inference rules* allows certain formulas to be derived. These derived formulas are called *theorems* and may be interpreted to be *true propositions*. A constructed sequence of such formulas is known as a *derivation* or *proof* and the last formula of the sequence is the *theorem*. The derivation may be interpreted as proof of the proposition represented by the theorem.

When a formal system is used to represent formal logic, only statement letters are represented directly. The natural language propositions that arise when they're interpreted are outside the scope of the system, and the relation between the formal system and its interpretation is likewise outside the formal system itself.

In classical truth-functional propositional logic, formulas are interpreted as having precisely one of two possible truth values (the truth value of true or the truth value of false). The *principle of bivalence* and the *law of excluded middle* are upheld. Truth-functional propositional logic defined as such and systems isomorphic to it are considered to be *zeroth-order logic*. However, alternative propositional logics are also possible (see Other logical calculi).

## History

Although propositional logic (which is interchangeable with propositional calculus) had been hinted by earlier philosophers, it was developed into a formal logic (Stoic logic) by Chrysippus in the 3rd century BC and expanded by his successor Stoics. The logic was focused on propositions. This advancement was different from the traditional syllogistic logic, which was focused on terms. However, most of the original writings were lost and the propositional logic developed by the Stoics was no longer understood later in antiquity. Consequently, the system was essentially reinvented by Peter Abelard in the 12th century.

Propositional logic was eventually refined using symbolic logic. Gottfried Leibniz has been credited with being the founder of symbolic logic for his work with the *calculus ratiocinator*. Although his work was the first of its kind, it was unknown to the larger community. Consequently, many of the advances achieved by Leibniz were recreated by logicians like George Boole and Augustus De Morgan-completely independent of Leibniz.

Just as propositional logic can be considered an advancement from the earlier syllogistic logic, *Gottlob Frege's predicate logic* can be also considered an advancement from the earlier propositional logic. Predicate logic ushered in a new era in logic's history; however, advances in propositional logic were still made after Frege, including natural deduction (invented by Gerhard Gentzen and Jan Łukasiewicz), truth trees (invented by Evert Willem Beth) and truth tables.

Within works by Frege and Bertrand Russell, are ideas influential to the invention of truth tables. The actual tabular structure is generally credited to Ludwig Wittgenstein and Emil Post (independently). Besides Frege and Russell, others credited with having ideas preceding truth tables include Philo, Boole, Charles Sanders Peirce, and Ernst Schröder. Others credited with the tabular structure include Jan Łukasiewicz, Alfred North Whitehead, William Stanley Jevons, John Venn, and Clarence Irving Lewis. Ultimately, some have concluded, like John Shosky, that "It is far from clear that any one person should be given the title of 'inventor' of truth-tables".

## Terminology

In general terms, a calculus is a formal system that consists of
- a set of syntactic expressions, *well-formed formulas*
- a distinguished subset of these expressions, *axioms*
- a set of *formal rules* that define a specific binary relation, intended to be interpreted as logical equivalence, on the space of expressions.

When the formal system is intended to be a logical system, the expressions are meant to be interpreted as statements, and the rules, known to be inference rules, are typically intended to be truth-preserving. In this setting, the rules, which may include axioms, can then be used to derive (infer) formulas, representing true statements from other formulas representing true statements.

The set of axioms may be empty, a nonempty finite set, or a countably infinite set (axiom schema). A *formal grammar* recursively defines the well-formed formulas (wffs) of the language. In addition, a *semantics* may be given which defines truth and *valuations* (interpretations).

A common language of a propositional calculus consists of
- a set of primitive symbols: *propositional variables* (proposition letters)
- a set of operator symbols: *logical connectives* (logical operators)

A *well-formed formula* is any atomic formula, or a compund formula built by combining atomic formulas with connectives, according to the grammar.

Mathematicians sometimes distinguish between constants, variables and schemata:
- *prop. constants* (A, B, C) represent some particular proposition
- *prop. variables* (P, Q, R) range over the set of all atomic propositions
- *prop. schemata*  (φ, ψ, χ) range over all propositions

## Basic concepts

There are different formulations of propositional calculus, all more-less equivalent, with possible distinctions in the details of:
- the language i.e. particular collection of primitive symbols and connectives
- the set of axioms, or distinguished formulas
- the set of inference rules

Any given proposition may be represented with a propositional constant, which is a letter and so analogous to representing a number by a letter in algebra (e.g. a = 5). All propositions require exactly one of two truth-values. For example, let `P` be the proposition "It's raining outside". This will be true (`P`) if it is raining outside, and false otherwise (`¬P`). We then define truth-functional operators (connectives).

* *Negation*, `¬P`, represents the negation of `P`, which can be thought of as the denial of `P`. So `¬P` expresses that "It is not the case that it is raining outside." When `P` is true, `¬P` is false, and vice-versa. As a result, `¬¬P` has the same truth-value as `P`.

* *Conjunction* is a truth-functional connective which forms a proposition out of two simpler propositions. `P ⋀ Q` expresses that each are true and is read "P and Q". For any 2 propositions, there are 4 possible truth-value assignments. The conjunction of P and Q is only true in case both are true, and is false otherwise.

* *Disjunction* forms a proposition out of two simpler propositions. `P ⋁ Q` is read "P or Q". It expresses that either `P` or `Q` is true. The disjunction is false only if both are false, oterwise it is true.

* *Material conditional* also joins two simpler propositions, written `P → Q` and read "if P then Q". `P` is the antecedent, and `Q` is the consequent. It expresses that `Q` is true whenever `P` is true. Thus `P → Q` is true in every case except when `P` is true, yet `Q` is false. The material conditional only relates two propositions by their truth-values, which is not causality relation.

* *Biconditional* joins two simpler propositions, `P <=> Q`, and read "P if and only if Q". It expresses that `P` and `Q` have the same truth-value. `P <=> Q` is true either if both are true or both are false; otherwise it is false.

## Closure under operations

Propositional logic is closed under truth-functional connectives.

That is to say, propositions combined with logical connectives result in a proposition still. Since this can produce very complex propositions, we use parentheses to delineate the components. Compositions built solely with ⋀ or ⋁ are associative, so parens are not a concern. However, some combinations are distinguished only by the parentheses.

## Argument

The propositional calculus then defines an argument to be a list of propositions. A *valid argument* is a list of propositions, the last of which follows from, or is implied by, the rest. All other arguments are invalid.

Any conclusion (proposition) `C` follows from any set of premises (propositions) `P₁,…,Pₙ`, if `C` must be true whenever every member of the set of propositions is true.

In the argument `P -> Q`, for any P and Q, whenever `P → Q` and `P` are true, necessarily `Q` is true. Notice that, when P is true, we don't consider the cases for P being false. And when `P → Q` is true, we cannot consider case the case where P is true and Q is false. This leaves only the case in which both P and Q are true. Thus the conclusion `Q` is implied by the premises, `P` and `P -> Q`.

An example of invalid argument would be if the premise `P → Q` is false, as is the premise `Q`. With both premises false, while the conclusion (`P`) is true, the argument is invalid.

p | q | p → q, q ⊢ p         | note
--|---|----------------------|-------------------------
1 | 1 | ... 1 ...... 1 ... 1 | invalid argument:
1 | 0 | ... 0 ...... 0 ... 1 | ← in this row
0 | 1 | ... 1 ...... 1 ... 0 | both premises are 0
0 | 0 | ... 1 ...... 0 ... 0 | and the conclusion is 1

This generalizes schematically, so `φ` and `ψ` may repr any propositions at all:

```js
1. φ → ψ
2. φ
--------- MP
∴  ψ
```

Given a complete set of axioms, *modus ponens* is sufficient to prove all other argument forms in propositional logic. Other argument forms are convenient, but not necessary; thus, they may be considered a derivative.

This is not true of the extension of propositional logic to other logics like FOL. FOL requires at least one additional rule of inference in order to obtain *completeness* (a formal system is complete with respect to a particular property if every formula having the property can be derived using that system).

The significance of argument in formal logic is that one may obtain new truths from established truths. In this way, we define a **deduction system** to be a set of all propositions that may be deduced from another set of propositions. 

For instance, given the set of propositions `A = { P ∨ Q, ¬Q ∧ R, (P ∨ Q) → R }`, we can define a deduction system, `Γ`, which is the set of all propositions which follow from `A`. Since reiteration is always assumed, each proposition in `A` is already a deducible proposition, `A ∈ Γ`. From the first and last element of `A`, by applying modus ponens, we get that `R ∈ Γ`.

However, because we have not included sufficiently complete axioms, though, nothing else may be deduced. Thus, even though most deduction systems studied in propositional logic are able to deduce `(P ∨ Q) <=> (¬P → Q)`, our examplary deductuive system is too weak to prove this proposition.

## Generic description of a propositional calculus

A propositional calculus is a formal system `𝓛 = (𝓐, 𝛀, 𝓩, 𝓘)` where:

* The set `𝓐` is a countably infinite set of elements called proposition symbols (propositional variables). Syntactically speaking, these are the most basic elements of the formal language `𝓛`, otherwise referred to as atomic formulas or terminal elements. In the examples to follow, the elements of `𝓐` are typically the letters `p`, `q`, `r`, etc.

* The set `𝛀` is a finite set of elements called operator symbols or logical connectives. This set is partitioned into disjoint subsets as follows:

`𝛀 = 𝛀₀ ⋃ 𝛀₁ ⋃ 𝛀₂ ⋃ … ⋃ 𝛀ₖ`    

where each partition `𝛀ᵢ` is a subset of `i`-ary operator symbols.

A typical partitioning of `𝛀` is:
- `𝛀₀` = { ⟙, ⟘ }
- `𝛀₁` = { ¬ }
- `𝛀₂` = { ⋀, ⋁, ⟶, <=> }

where the logical constants are treated as nullary logical operators.

* The set `𝓩` is a finite set of transformation rules, called the rules of inference when they acquire logical applications.

* The set `𝓘` is a countable set of initial points that are called axioms when they receive logical interpretations.

The `𝓛` language, also identified by its set of well-formed formulas, is inductively defined by the following rules:
* (base) Any element of the set `𝓐` is a wff of `𝓛`.
* If `p₁, p₂, …, pₖ` are wffs and `f` is in `𝛀ᵢ`, then `f(p₁,p₂,…,pₖ)` is a wff
* (closed) Nothing else is a wff of `𝓛`.

Repeated applications of these rules permits the construction of complex formulas.


## Example 1. Simple axiom system

* The countably infinite set of symbols representing logical propositions:   
  `𝓐 = { p , q, r, … }`

* The functionally complete set `𝛀` of logical operators:
  - `𝛀₁ = { ¬ }`
  - `𝛀₂ = { → }`

* The set `𝓘` (the set of initial points of logical deduction, i.e. logical axioms) is the axiom system proposed by Jan Łukasiewicz, and used as the propositional-calculus part of a Hilbert system. The axioms are all substitution instances of:
  - K: `p -> (q -> p)`
  - S: `(p -> (q -> r)) -> ((p -> q) -> (p -> r)`
  - CP: `(¬q -> ¬p) -> (p -> q)`

* The set `𝓩` of transformation rules (rules of inference) is a singleteon set with modus ponens as its only member. Then `a ⋁ b` is defined as `¬a -> b`, and `a ⋀ b` as `¬(a -> ¬b)`.

This system is used in *Metamath* formal proof database, as the system `set.mm`.


## Example 2. Natural deduction system

* The countably infinite set of symbols representing logical propositions:   
  `𝓐 = { p , q, r, … }`

* The functionally complete set `𝛀` of logical operators:
  - `𝛀₁ = { ¬ }`
  - `𝛀₂ = { ⋀, ⋁, ->, <=> }`

* The set of initial points is empty, `𝓘 = ∅`. The particular system presented here has no initial points, which means that its interpretation for logical applications derives its theorems from an empty axiom set.

* In the following example of a propositional calculus, the transformation rules are intended to be interpreted as the inference rules of a natural deduction system. The set `𝓩` has 11 transformation rules.

These 11 rules allow us to derive other true formulas given a set of formulas that are assumed to be true. The first 10 rules simply state that we can infer certain wffs from other wffs. The last rule, however, uses hypothetical reasoning in the sense that in the premise of the rule we temporarily assume an (unproven) hypothesis to be part of the set of inferred formulas to see if we can infer a certain other formula. Since the first ten rules don't do this, they are usually described as *non-hypothetical rules*, and the last one as a *hypothetical rule*.

1. Negation introduction,       `p -> q, p -> ¬q |- ¬p`
2. Negation elimination,                     `¬p |- p -> r`
3. Double negation elimination,             `¬¬p |- p`
4. Conjunction introduction,               `p, q |- p ⋀ q`
5. Conjunction elimination,  `p ⋀ q |- p`     and `p ⋀ q |- q`
6. Disjunction introduction,     `p |- p ⋁ q` and     `q |- p ⋁ q`
7. Disjunction elimination,  `p ⋁ q, p -> r, q -> r |- r`
8. Biconditional introduction, `p -> q, q -> p |- p <=> q`
9. Biconditional elimination,  `p <=> q |- p -> q` and `p <=> q |- q -> p`
10. Conditional elimination (modus ponens), `p, p -> q |- q`
11. Conditional introduction (conditional proof), `(p |- q) |- p -> q`

## Basic and derived argument forms

- Modus Ponens,                        `p, p -> q |- q`
- Modus Tollens,                    `¬q, ¬q -> ¬p |- ¬p`
- Hypothetical Syllogism,         `p -> q, q -> r |- p -> r`
- Disjunctive  Syllogism,              `p ⋁ q, ¬p |- q`
- Constructive  Dilemma, `p -> q, r -> s,  p ⋁ r  |-  q ⋁ s`
- Destructive   Dilemma, `p -> q, r -> s, ¬q ⋁ ¬s |- ¬p ⋁ ¬r`
- Bidirectional Dilemma, `p -> q, r -> s,  p ⋁ ¬s |-  q ⋁ ¬r`
- Conjunction,                              `p, q |- p ⋀ q`
- Simplification,                          `p ⋀ q |- p`
- Addition,                                    `p |- p ⋁ q`
- Composition,                    `p -> q, p -> r |- p -> (q ⋀ r)`
- De Morgan's Theorem (1)               `¬(p ⋀ q) |- ¬p, ¬q`
- De Morgan's Theorem (2)               `¬(p ⋁ q) |- (¬p ⋀ ¬q)`
- Transposition,                          `p -> q |- ¬q -> ¬p`
- Commutation for ⋀, ⋁, <=>
- Association for ⋀, ⋁
- Distribution:
  - ⋀ over ⋁
  - ⋁ over ⋀
- Double Negation




## Proofs in propositional calculus
