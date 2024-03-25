# Theories of truth

https://www.youtube.com/watch?v=6NUgwXoKN1E

One of the central debates in philosophy, which also concerns logic, is the question: what is truth? What is it that makes a proposition true or false? These questions have prompted the formulation of many different *theories of truth*.

## Correspondence theory of truth

The standard common-sensical theory of truth is the **correspondence theory of truth**, according to which a proposition `p` is true just in case it corresponds to the facts; just in case `p` matches the way the world actually is; just in case `p` is aligned with reality; just in case `p` corresponds to the actual state of affairs (state of the world).

Consider, for example, the proposition "The cat is on the mat". What makes this proposition true according to the correspondence theory of truth is that this proposition corresponds to the actual state of affairs in the world. Assuming this proposition is true, means 'cat' and 'mat' refer to the (concrete or abstract) objects in the world, and that these objects are related in the way as described by the proposition.

>Truth is a relation between propositions and facts.

If we have a list of all propositions on the one hand, and a list of all objective states of affairs on the other, then *true propositions* are those that match the actual state of affairs.

NOTE: The notion of "matching" may be vague, but for now it is be taken intuitively. Or perhaps it can be defined by saying that two propositions match if they express the same proposition. Proposition is an abstract logical concept that is expressed using concrete sentences of some natural language, but many sentences can express the same proposition. Of course, the issue is then how exactly to tell when two propositions are the same (esp. regarding the edge cases).

A major objection to the correspondence theory is that it places truth beyond our grasp. The correspondence theory states that a proposition is true just in case it corresponds to the reality, but we can never go out of our perspective to view reality as it is in itself, in order to check whether the proposition does in fact correspond to it. We can't look at propositions on the one hand, and mind-independent reality on the other, to see how they relate. Thus, truth becomes a matter of metaphysical speculation completely irrelevant to practical inquiry. This means that even a theory of the world that passes all imaginable tests and exhibits all possible theoretical virtues may still be false since there could be facts about reality that we just cannot know because they are beyond our grasp. The correspondence theory may make truth inaccessible or completely unusable.

## Realist theories of truth

The correspondence theory of truth is an example of a realist theory of truth.

>According to **realist theory of truth** propositions are true or false independently of whether anybody can, in principle, come to know their actual truth value.

According to realist theories of truth, there could be truths that will never be known to us, that we can never know; truth is something that exists independent of us. We can discover some truths through our activities, but there is no reason to expect that we'll eventually discover all truths; i.e. that all truths are knowable.

## Anti-realist theories of truth

These worrying considerations about realist theories have motivated the anti-realist theories of truth, which attempt to draw a stronger association between truth and our means of justifying it.

*Logical positivism* proposes that any truth is in principle open to verification. According to positivists, the meaning of a sentence is given by the *verification principle*, which is the set of observations that would confirm or deny the sentence.

Or, the truth is whatever we would believe in given the *ideal epistemic circumstances*. Whatever theory we would develop, under these ideal circumstances of total evidence and perfect rationality, that is the truth by definition.

Or, following Charles Pierce, the truth is whatever we agree upon at the end of inquiry. "The truth is the opinion fated to be ultimately agreed to by all who investigate".

## Knowability paradox

Anti-realist theories are committed to the knowability principle.

>*Knowability principle* states that every truth is, in principle, knowable.

Knowability principle (KP), `∀p(p → ◊Kp)`, says that for all propositions, `p`, if `p` is true then it is possible to know that `p`.

>*Knowability paradox* states that the claim that all truths are knowable entails that all truths are known.

Knowability paradox aims to show that the knowability principle - the claim that all truths are knowable, `∀p(p → ◊Kp)` - entails that all truths are (already) known: `∀p(p → ◊Kp) ⊢ ∀p(p → Kp)`.

Given our technological and cognitive limitations, it may not be the case that we are now in a position to know `p`, but, *in principle*, we can come to know `p`.

*Fitch's paradox of knowability* is one of the fundamental puzzles of epistemic logic. It provides a challenge to the knowability thesis. The paradox is that knowability principle entails *omniscience principle*, which asserts that all truths are known, `∀p(p ∧ Kp)`.

>*Omniscience principle* asserts that every truth is known.

The claim that all truths are knowable (knowability principle) entails that all truths are known (omniscience principle), `∀p(p → ◊Kp) ⊢ ∀p(p → Kp)`.

* *Realist theory*:       some truths are unknowable.
* *Moderate anti-realism*: all truths are   knowable.
* *Extreme anti-realism*:  all truths are   known.

If successfull, the knowability paradox rules out the moderate anti-realism: it becomes that either not all truths are knowable or that all truths are known.

## Derivation: the basic idea

Let's consider some proposition `p`, where `p` is true, but it is not known to be true; so, `p` is an *unknown truth*.

(U) `p` is true and `p` is not known.

Now, if all truths are in principle knowable, like the moderate anti-realism claims, then it must be possible to know that the sentence (U) is true, i.e. that *`p` is true and `p` is not known*.

But once we know that the conjunction (U) is true, then we know each of the conjuncts: we know that *`p` is true*, AND we know that *`p` is not known*.

But if we know the first conjunct - that *`p` is true* - then by the knowability principle, we know that *`p` is known*, it is no longer not known. That is, if `p` is true then it is possible to know `p`, `∀p(p → ◊Kp)` (KP). It must be false that *`p` is true and `p` is not known*.

This shows is that the sentence *"`p` is true and `p` is not known"* cannot, even in principle, be both *true* and *known to be true*, at the same time.

## Formal derivation I

Anti-realism wants to endorse both knowability and non-omniscience.

Knowability principle: if `p` is true then it is possible to know `p`
- `∀p(p → ◊Kp)` (KP)

Omniscience principle: all truths are known
- `∀p(p ∧ Kp) ` (OP)

Non-omniscience principle: some truths are not known (unknown truths exist)
- `∃p(p ∧ ¬Kp)` (NO)

The non-omniscience principle says that there are truths out there that are not known to us, since we are not omniscient.

Anti-realists endorse the view that all truths are *in principle* knowable, but *in fact* not all truths are (now) known, since we are not omniscient.

```hs
1 p ∧ ¬Kp                      assumption: p is an unknown truth
2 ∀p(p → ◊Kp)                  KP restated
3 ◊K(p ∧ ¬Kp)                  KP applied to 1
4 ◊(Kp ∧ K¬Kp)                 distribute K to conjuncts
5 ◊(Kp ∧ ¬Kp)                  from K¬Kp to ¬Kp
```

- instantiating NO, `∃p(p ∧ ¬Kp)`, gives us the assumption `p ∧ ¬Kp` (1)
- KP is restated (2)
- KP, `∀p(p → ◊Kp)`, applied to `r := (p ∧ ¬Kp)`, gives `r → ◊Kr`, which expanded gives `(p ∧ ¬Kp) → ◊K(p ∧ ¬Kp)`. MP of 2 and 1 gives `◊K(p ∧ ¬Kp)` (3)
- distributing `K` to conjuncts: from `◊K(p ∧ ¬Kp)` we get `◊(Kp ∧ K¬Kp)` (4)
- from `K¬Kp` we get `¬Kp`, and thus `◊(Kp ∧ ¬Kp)` (5). This is justified by the fact that, if a proposition `p` is known (`Kp`), then that proposition is true (`p`), i.e. `Kp ⊢ p`, so from `K¬Kp` to `¬Kp`.

ASIDE: Whaaa?! KP says the exact opposite, `p ⊢ ◊Kp`, which is pretty much `p ⊢ ◊Kp`. But where did `◊Kp ⊢ p` or `Kp ⊢ p` came from all of a sudden? It turns out, it is the epistemic principles of modal logic that `Kp ⊢ p`.

## Formal derivation

Fitch's paradox of knowability - complete proof from the Standford Encyclopedia of Philosophy.

Knowability principle: if `p` is true then it is possible to know `p`
- `∀p(p → ◊Kp)` (KP)

Non-omniscience principle: some truths are not known (unknown truths exist)
- `∃p(p ∧ ¬Kp)` (NO)

The principles of epistemic logic:
- (A) `K(p ∧ q) ⊢ Kp ∧ Kq`
- (B) `Kp ⊢ p`

The principles of modal logics:
- (C) if `⊢ p` then `⊢ □p`
- (D) `□¬p ⊢ ¬◊p`

The knowability paradox can be formalised with modal logic
- `K` stands for *known*
- `◊K` means *possibly known*, in other words, *knowable*.


```hs
1 p ∧ ¬Kp                      instantiate NO
2 (p ∧ ¬Kp) → ◊K(p ∧ ¬Kp)      from 1 and KP
3 ◊K(p ∧ ¬Kp)                  MP 2,1
4 K(p ∧ ¬Kp)                   assumption for reductio
5 Kp ∧ K¬Kp                    from 4 and A
6 Kp ∧ ¬Kp                     from 5 and B
```

- instantiating NO, `∃p(p ∧ ¬Kp)`, gives us the assumption `p ∧ ¬Kp` (1)
- KP, `∀p(p → ◊Kp)`, applied to `r := (p ∧ ¬Kp)`, gives `r → ◊Kr`, which expanded gives `(p ∧ ¬Kp) → ◊K(p ∧ ¬Kp)` (2)
- MP of lines 2 and 1 gives `◊K(p ∧ ¬Kp)` (3)







## Summary of principles

- proposition `p` is true:            `p`
- proposition `p` is knowable:      `◊Kp` (knowable = possibly known)
- proposition `p` is known:          `Kp`
- proposition `p` is not true:       `¬p`
- proposition `p` is not knowable: `¬◊Kp` (not possiblly known)
- proposition `p` is not known:     `¬Kp`


- `∃p(p ∧ ¬Kp)` some truths are unknowable
- `∀p(p → ◊Kp)` all  truths are   knowable
- `∀p(p → Kp)`  all  truths are   known

- `∀p(p → ◊Kp)`         (KP)
- `∀p(p ∧ Kp) `         (OP)
- `∃p(p ∧ ¬Kp)`         (NO)
- `K(p ∧ q) ⊢ Kp ∧ Kq`  (KD)
- `Kp ⊢ p`              (KT)
- if `⊢ p` then `⊢ □p`  (TN)
- `□¬p ⊢ ¬◊p`           (NP)

* Realist:              some truths are unknowable: `∃p(p ∧ ¬Kp)`
* Moderate anti-realism: all truths are   knowable: `∀p(p → ◊Kp)`
* Extreme anti-realism:  all truths are   known:    `∀p(p → Kp)`



* Knowability principle
  - states that every truth is, in principle, knowable
  - if `p` is true then it is possible to know `p`: `p → ◊Kp`
  - truth entails the possibility of knowledge
  - truth entails knowledge
  - for all prop, `p`, if `p` is true then it is possible to know that `p`:
  - __`∀p(p → ◊Kp)` (KP)__

* Knowability paradox
  - it shows that KP entails OP
  - `p` being true implies that it is posible to know `p` 
     which entails that 
    `p` being true implies that `p` is known:
    `p → ◊Kp ⊢ p → Kp`
  - all truths are knowable entails that all truths are known:
  - `∀p(p → ◊Kp) ⊢ ∀p(p → Kp)`

* Omniscience principle
  - all truths are known
  - __`∀p(p ∧ Kp) ` (OP)__

* Non-omniscience principle
  - some truths are not known (unknown truths exist)
  - __`∃p(p ∧ ¬Kp)` (NO)__

* Epistemic principles of modal logic:
  - __(KD) `K(p ∧ q) ⊢ Kp ∧ Kq`__
    - distro of K over conjunction
  - __(KT) `Kp ⊢ p`__
    - knowing `p` entails that `p` is true
    - knowledge entails truth

* Modal principles of modal logic:
  - __(T-N) if `⊢ p` then `⊢ □p`__
    - if `p` can be proiven, then `p` is necessarily true, 
  - __(N-P) `□¬p ⊢ ¬◊p`__
    - necessarily not `p` entails that `p` is impossible
    - necessarily not `p` entails not possibly `p`
    - if `p` is necessarily false, then it is impossible that `p` is true

* Realist theory
  - some truths are unknowable: `∃p(p ∧ ¬Kp)`

* Moderate anti-realism
  - all truths are knowable: `∀p(p → ◊Kp)`

* Extreme anti-realism
  - all truths are known: `∀p(p → Kp)`
