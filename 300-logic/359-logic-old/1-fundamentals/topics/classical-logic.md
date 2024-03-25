# Classical logic

*Classical logic* or *traditional logic* are in fact many deductive systems of logic based on a certain set of inter-related properties such as the notion of truth, the admitted laws and rules of inference.

Based on their atomic parts, the 3 main systems of classical logic are
- term logic
- sentential logic
- predicate logic

*Term logic* (Aristotelian logic, syllogistic logic) uses terms, i.e. subject and predicate, as its atoms. *Sentential logic* (propositional logic) uses entire sentences (propositions) as its atoms. *Predicate logic* (quantified logic) is the most granular: its atoms are individual terms (subject), but the predicates are relations that allow us to express more complex associations between terms; it also has constants, variables and quantifiers that can be combined in many ways allowing us to talk about specific individuals, groups of individuals (some), and all the individuals (all) and to express many intricate relationships beteween them. Quantifiers quantify variables, which in *first-order logic* range over individuals, in *second-order logic* also range over sets of individuals, in *third-order logic* range over sets of sets, and so on in *higher-order logics*.

The essentail properties of classical logic can be specified as the particular laws or principles it adheres to.

The fundamental principles of predication:
- The Principle of Bivalence, `POB`
- The Law of non-contradiction, `LNC`
- The Law of excluded middle, `LEM`
- The Law of Identity, `LID`
- The Principle of Explosion, `EFQ` (ex falsum quidlibet)

## Classical reasoning

## The Principle of Bivalence

Classical logic is *bivalent*. *Bivalence* is the property of logics that have two truth values. Such logics are called *bivalent logic* or *two-valued logics*. The two truth values are the familiar 'true' and 'false', commonly symbolized by 0 and 1. The set that has these two values as elements is called *Boolean set* or *Boolean domain*, `𝔹 = {true, false}` or `𝔹 = {1, 0}`.

Having two truth values may seem obvious but it need not be the case - *multi-valued logics* have more. Specifically, *3-valued logics* have 3 truth values ('true', 'false', 'unknown'). *4-valued logics* have 4 truth values ('true', 'false', 'both', 'none'). *Fuzzy logic* has an uncountable infinity of truth values in the interval from 0 to 1, where 0 means absolute falsity, and `0 < values < 0.5` represent diffferent levels of falsity; and similarly for the levels of veracity, from `0.5 < values < 1`.

## The Law of non-contradiction

*The Law of Non-Contradiction* (LNC) has been posited by Aristotle who held (quite reasonably) that a predicate either holds of a thing or it does not. A thing either exists or it does not exists. A thing either has some property or it does not. Two oppositing predicates cannot both hold at the same time for the same thing. Two oppositing predicates that hold of a thing at the same time are *contradictory*, and even a single contradiction renders a system of logic *inconsistent*, and results in explosion.

## The Principle of Explosion (EFQ)

In classical logic, encountering a contradiction is disasterous because anything follows from contradiction due to *the explosion principle*, in Latin "ex falsum quidlibet" (EFQ), i.e. anything follows from falsity.

One way to show why any proposition, `q`, can be derived from a contradiction, `p ∧  ¬p`, is:

```hs
1  p ∧  ¬p            -- assumption
2  p                 -- conjunction simplification left, 1
3  p ∨ q             -- disjunction introduction (addition), 2
4  ¬p                -- simplification right, 1
5  q                 -- disjunctive syllogism, 3,4
```

Starting with the assumption that `p ∧  ¬p` is true: a conjuction is true iff both conjuncts are true. Thus, we can simplify this formula to extract the first conjunct, `p` (on line 2), as well as the second conjunct, `¬p` (on line 4). On line 3, we introduce disjunction by adjoining `q` to `p`; we can add any proposition (true or not) as a disjunct, whenever we have a true disjunct, like `p` is here. Since `p` is true, `p ∨ q` is still true. On line 4, we have `¬p`, which indicates that the truth of `p ∨ q` is not due to `p` - since we have `¬p` - but due to `q`. And since we know that the disjunction `p ∨ q` is true AND that `¬p`, therefore `q` must be true (this rule is called *disjunctive syllogism*), which we assert on line 5.

This shows the disasterous effect a contradiction has in a formal system - a contradictory proposition (that is both true and false) lets us derive any proposition whatsoever, which renders the notions of truth and falsity trivial. Such a system is said to be *inconsistent*.

Most systems of logic are classical, so they have to take their consistency concerns very seriously. However, there are logics that are designed to handle contradictions safely.

One such logic is *4-valued logic* (with truth values 'true', 'false', 'both', 'none') that is used to model systems that aggregates facts from different sources, so it can happen that a proposition turns out both true and false (such propositons are assigned the truth value 'both'). The rules of interaction between logical connectives are specified in a partuclar way so that the system remain consistent and capable of answering queries; e.g. `both ∧ none = false`, `both ∨ none = true` (where 'none' denotes the fact that no sources exists to determine the proposition's truth value).

While 4-valued logic handles inconsistency by adding more truth values and then also redesigning the truth tables for logical connectives, there is a general approach in phylosophy of logic, called *dialetheism*, that acknowledges and handles contradictions in a consistent manner by using alternative inference rules.

*Paraconsistent logics* are systems of logic based on dialetheism, and they may be bivalent or multi-valued. These systems may handle contradiction by dissallowing, e.g. addition (disjunct introduction) or the rule of disjunctive syllogism of classical logic, while introducing some alternative rules of inference.

https://en.wikipedia.org/wiki/Paraconsistent_logic

Paraconsistent logic is especially useful to model some aspects of human rasoning, where a person can hold two constradictory views at the same time. Paraconsistent logic is also useful in computer science where it can be used to model computer systems that are resilent to data corruption. It has uses is quantum computing as well.

## The Law of Excluded Middle

*The Law of Excluded Middle* (LEM) is a strict binary view of the world: propositions are either true or false; a property is either present or absent. LEM insists that there are only ever two options and that no other (middle) option exists.

>In classical logic, a proposition can either be true or false, not both and not neither.

The principle of bivalence, LEM and LNC together imply something very important: every proposition has exactly one of the two truth value: it is either true or false, **not both, nor neither**.

Due to bivalence, there are two truth values, but due to LEM, any proposition must have a truth value, immediately! This is a much stronger requirement. It implies that the truth value of any proposition is always known - we may or may not discover it eventually, but it already exists. If no one else, God knows what it is.

## Identities

Due to all this, classical logic has many *logical equivalences*.
- `¬(p ∧ ¬p)` LNC
- `p ∨ ¬p`    LEM
- `p ≡ p`     LID
- `⊥ → p`     EFQ

Due to LEM, these are the logical equivalences that hold between truth values in relation to negation:
- `true ≡ ¬false`
- `false ≡ ¬true`
- `true ≡ ¬¬true`
- `false ≡ ¬¬false`
- Double negation introduction (DNI), `p ≡ ¬¬p`
- Double negation elimination (DNE), `¬¬p ≡ p`

(Later, when we cover logical connectives, we'll see more identities)
