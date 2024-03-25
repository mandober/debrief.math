# Paraconsistent logic

https://en.wikipedia.org/wiki/Paraconsistent_logic

*Paraconsistent logics* are systems of logic that can handle *inconsistency*, so that a *contradiction* does not cause explosion (*trivialization*) and the system remains usable.

*Paraconsistent logic* is a subfield of logic that studies and develops systems of logic tolerant to inconsistency (caused by contradictions) that reject *the *principle of explosion*.

*Inconsistency-tolerant logics* have been studied since at least 1910, but probably much earlier (possibly by Aristotle), but the term "paraconsistent" (meaning "beside the consistent") was first coined in 1976 by the Peruvian philosopher Francisco Miró Quesada Cantuarias.

The study of paraconsistent logic has been dubbed *paraconsistency*, which encompasses the school of *dialetheism*.

*Dialetheism* is a position in *phylosophy of logic* that acknowledges contradictions; more precisely, it is the belief that there can be a true statement whose negation is also true. Such statements are called "true contradictions" or *dialetheia* (or *nondualisms*).

Paraconsistent logics are based on dialetheism and they accept the existence of contradictory propositions (i.e. proposition that are both true and false at the same time), but try to handle them in a consistent way, e.g. by using alternative set of truth values, logical laws and/or inference rules. The aim of paraconsistent logics is to avoid explosion while maintaining a usable system.

In classical logic, the big problem with contradictory propositions is that they cause *explosion*, i.e. they *trivialize the system* by making the notions of truth and falsity irrelevant because any proposition whatsoever becomes derivable. Even a single contradiction in a system of classical logic renders the entire system inconsistent and thus unusable and trivial, sacking its reputation to the bottom and annulling the effert invested in its development.

ASIDE: The rumor has it that when Frege was finishing a revision of his seminal work on the axiomatization of arithemtic in view of logicism, Russell discovered his famous paradox pertaining exactly to the theory that was about to be published (Russell was sent the preview). Frege did publish the book as is - it was too late to make changes anyway - but added the note acknowledging that his theory was vulnerable to the Russell's paradox (Some say Frege knew about the paradox, long before Russell told him about it in his vanglorious letter, but it's unclear why he chose to ignore it!? In fact, some say even Cantor knew about the paradox, but also elected to stay silent about it!? Hand at hart, Cantor was never interested in sets per se, he just used them to model his infinitary and transcendental shenanigans. Actually, neither did Frege; he was interested in reducing arithemtic to logic, not with the creation of a set theory). Anyway, Frege published his work, which no one read anyway (except Russell) for the next few decades, when the ideas from the book were redisovered and considered grande despite inconsistency. But that inconsistency has made a tremendeous impact on Frege. He was devastated, his life's work was for nothing, no chicks for free. Soon he has fallen to depression, and was eventually institutionalized, just like all the great logicians before and after him (except Russell who had forfeited asylum and thus greatness).

## Uses

The defining feature of paraconsistent logic is the rejection of the principle of explosion. As a result, unlike classical and other logics, paraconsistent logics can be used to formalize inconsistent but non-trivial theories.

Contradiction may be handled, for example, by dissallowing addition (introduction of a disjunct) or disjunctive syllogism, or by expanding the set of truth values.

For example, a *four-valued logic* (with truth values 'true', 'false', 'both', 'none') can be used to model systems that aggregates facts from different sources, so that it can happen that a proposition turns out both true and false at the same time (such propositons are assigned the truth value 'both'). Then the truth tables of logical connectives are specified in a way that keeps the system consistent, e.g. `both ∧ none = false`, `both ∨ none = true` (where 'none' denotes the fact that no sources exists to determine the proposition's truth value).

Paraconsistent logic is especially useful to model some aspects of human rasoning, where a person can hold two constradictory views at the same time. Paraconsistent logic is also useful in computer science where it can be used to model computer systems that are resilent to data corruption. It has uses is quantum computing as well.

## PL

**Paraconsistent logic (PL)** is the Graham Priest's system of paraconsistent logic (with a generic, uninnovative name) based on 3 truth values: `0`, `1`, `B`, where `B = {0,1}` (models contradictions). So the set of truth values is `𝕋 = {0, 1, B} = {0, 1, {0,1}}`.

p |¬p
--|---
1 | 0
0 | 1
B |`B`

p | q | ∧ | ∨ | →
--|---|---|---|---
1 | 1 | 1 | 1 | 1
1 | 0 | 0 | 1 | 0
1 | B |`B`|`1`|`B`
- | - | - | - | -
0 | 1 | 0 | 1 | 1
0 | 0 | 0 | 0 | 1
0 | B |`0`|`B`|`1`
- | - | - | - | -
B | 1 | B | 1 |`1`
B | 0 | 0 | B |`B`
B | B | B | B |`B`



```hs
(∧) :: 𝕋 -> 𝕋
1 ∧ q = q
0 ∧ q = 0
B ∧ 0 = 0
B ∧ _ = B

(∨) :: 𝕋 -> 𝕋
1 ∨ q = 1
0 ∨ q = q
B ∨ 1 = 1
B ∨ _ = B

(→) :: 𝕋 -> 𝕋
1 → q = q
0 → q = 1
B → 1 = 1
B → _ = B
```

- Set of truth values, `{0,1,B}`
- Set of *designated values*, `{1,B}`

The definition of *semantic consequence* in `LP` is the same as for propositional logic: semantic consequence is obtained iff in every *interpretation* in which the premises have a designated value, the conclusion also has a designated value.

>`Γ ⊨ᴸᴾ A` iff on every interpretation in which `Γ` is assigned a designated value, the conclusion is also assined a designated value.

So, if the premises, `Γ`, are assigned `1` (premisees are true), and `A` is assigned `B` (conclusion is contradictory), that argument would still be considered valid; i.e. `Γ` is true and `A` is `B` (contradictory, i.e. both true and false), but the argument is still valid.

Paraconsistent arguments, similarly to classical arguments, are only invalid when `Γ` is either `1` (true) or `B` (both true and false), but `A` is 0 (false).

`⊨ ⊭ ⊢ ⊬`

In classical logic, explosion can happen due to disjunctive syllogism, which states that `p ∨ q, ¬p ⊢ q`. In LP, *disjunctive syllogism*, `p ∨ q, ¬p ⊨ᴸᴾ q`, e.g. `p = B` and `q = 0`, so `p ∨ q = B` and `¬p = B`, thus the conclusion `q` is zero just by stipulation that `q = 0`. Since the premises have designated values and our conclusion does not, the argument is invalid, `p ∨ q, ¬p ⊭ᴸᴾ q`.

We also need to consider *modus ponens* because disjunctive syllogism is not the only rule that explodes, `p → q, p ⊨ᴸᴾ q`. If `p = B` and `q = 0`, then `p → q = B → 0 = B`, and `p = B` (as assumed). So `q = 0` by assumption and again, we have an invalid argument, `p → q, p ⊭ᴸᴾ q`.

We have to forgo disjunctive syllogism and modus ponens in paraconsistent logic, specifically in PL.

An example of a *true contradiction* or *dialetheia* is the contradiction of the *liar's paradox*: "This sentence is false" (1).

If (1) is true, it is false; but if it's false it is true.

One suggestion as to how to resolve this paradox is that maybe there are sentences that are neither true nor false - that are *truth value gaps*, i.e. propositions without a truth value. By dropping the POB, we can introduce another truth value to assign to such propositions.

We can also reasopn about the sentence (1) as:   
If (1) is true, then it is not true; if it's false, then it is not false.

Even prima facie, if we assume that we've encountered a truth value gap, then we can perhaps say that we have just reasoned our way to a truth value gap, rather than to a contradiction. However, there are two problems with this: the *problem of independent justification* and the *problem of revenge*.

## Groundedness and the problem of independent justification

Groundedness is the concept introduced by Kripke to resolve the liar's paradox.

First, Kripke gives the definition of true propositions: a proposition is true just in case we can assert it, and false if we can deny it.

So, 'P is true' iff P, and 'P is false' iff ¬P.

For example, we can assert the sentence 'Snow is white' just in case that show really is white. This entitles us to also assert the sentence "'Snow is white' is true". The truth value of the sentence 'Snow is white' depends on whether or not snow is indeed white. Since snow really is white, we can assert that the sentence 'Snow is white' is true. Therefore, the truth value of this sentence is *grounded* in something outside the sentence itself.

We can keep extending the truth predicates indefinitely: `'_' "_" ❛_❜ ❝_❞`
because we're entitled to assert that   
"'snow is white' is true"    
that allows us to assert that   
❛"'snow is white' is true" is true❜   
which allows us to assert that   
❝ ❛ " ' snow is white' is true" is true❜ is true❞   
and so on.

No matter how deeply nested the sentences are in these assertions, we can drill down to the basic assertion, i.e. 'Snow is white', which grounds the truth value of the enclosing nested sentences.

Now back to the liar's paradox: if we try to peel off the layers from the sentence "This sentence is false" - what are we left with? Kripke says that the problem with the liar is that it isn't grounded; there's a kind of vicious self-reference in play and we cannot reach the basic assertion that is free of *truth predicates* (aka, "is true" or "is false").

Groundedness also solves problems with suspicious sentences like "This sentence is true", which is not paradoxical, but it is ungrounded, so we cannot assign it a truth value.

## The problem of revenge

If we accept that the liar sentences is a truth value gap, or concede that point completely, the problem is that we can simply restate the paradox:

(1) This sentence is not true.

(1a) This sentence is either false or valueless.

This form is called the *strengthened liar* or *revenge*.

Anybody who supposes that there are truth value gaps is surely committed to the following claims, which are enough to render this paradox a problem:

(2) If A is valueless, then A is not true.

(3) If A is not true, then 'A is not true' is true.

The supposition of truth value gaps simply doesn't solve the strengthened liar. The strengthened liar is just as big a problem as the liar is, and truth value gaps don't touch it.

Moreover, truth value gaps cannot solve revenge. If we posit some new truth value beyond truth, falsity and valueless, say, 'meaningless'. We'd then still be able to come up with new liar sentence that goes around it, for example

(4) This sentence is either not true or meaningless.

and then using the inferences similar to (2) and (3), we'd still have the same problem.


Consider now these two sentences:
- This sentence is true.
- This sentence is false.

There's a big difference between these two sentences, at least superficially, in that the first sentence seems to *underdetermine* the truth value, while the second one *overdetermines* it.

We can't do anything with the first sentence; we can't assign it true, nor can we assign it false, and our usual principles of reasoning can't take us any further than that.

The second one seems to have an overabundance of truth values - no matter what value we assign it, it demands the other ones too. As we've seen with the strengthened liar and revenge, that's the case even if we assign it the truth value of 'valueless'.

## Tarski's solution

Alfred tarski had a rather ingenious and somewhat complicated proposal that doesn't rely on truth value gaps.

Tarski draws a distinction between
- semantically closed languages
- semantically open languages

>A *semantically closed language* is a language that is able to refer to its own expressions, and it contains the truth predicates ('is true', 'is false'). In other words, when it can be used as its own metalanguage.

A semantically closed language can predicate truth and falsity of its own expressions and almost all natural languages are examples. We can use English to talk about English, and we can use English to predicate truth of other English sentences. For example, "The first sentence of this paragraph is true".

Tarski thinks that all natural languages are hopeless in this regard, but that artificial languages can be created in which semantic closure does not hold, so the liar sentences are blocked.

In order to achieve this, there must be a distinction between the *object language* and the *metalanguage*.

The idea is to take the predicates 'true' and 'false' as being abbreviations for true-in-object-language and false-in-object-language, respectively. However, this implies the existence of a meta metalanguage, meta meta metalanguage, and so on. So, Tarski proposes an *infinite hierarchy of languages*, with the restriction that a sentence can only predicate truth or falsity on the sentences of a lower level than itself.

This solution is similar to the resolution of the Russell's paradox in set theory: having an infinite hierarchy of types, with the restriction that a type can only contain terms of a lower level than itself.

When a contradiction is encountered, we usually first examine the premise `P` and conclude that `¬P` must be the case; but with paradoxes, this doesn't help us reach a solution. However, instead of claiming a paradox, we should look further for inconsistency - which Tarski did, concluding that the problem lies with natural languages. They are simply irredeemably incoherent, and thus should be jettisoned and replaced with artificial ones, at least for the purpose of logic(al anaysis).

## Prior's solution

The solution suggested by Arthur Prior doesn't rely on truth value gaps, nor complicated theoretical constructions. His idea is that every sentence implicitly asserts its own truth, i.e. the truth predicate "is true" (or "is false") is implicitly added to a sentence.

Now consider the liar, "This sentence is false". It translates to: "`It is true that` this sentence is false" or "`This sentence is true and` this sentence is false".

In Prior's view, the liar doesn't just assert its own falsity, but it asserts both, its own truth and its own falsity. Thus, it's not that we derive a contradiction from the liar, rather the liar asserts a contradiction and so it is merely false.

## Contingent paradoxes

Unfortunately, there's a serious problem with Prior's approach, which can be illustrated by considering the *contingent paradoxes*.

(...)

https://www.youtube.com/watch?v=F2uERWvA5e0

## Contradictions

What do contradictions entail?
1. everything
2. some things, but not other
3. nothing

The orthodox (classical) account is that a contradiction entails everything. From the assertion of `P` and `¬P`, we can derive absolutely anything.

Some people would say, and certainly all dialetheists would say, that contradictions entails some things but not others. For example, if we assign both true and false to a statement like "John is old and John is not old". We might infer that John is not a baby, but we wouldn't be able to infer that the moon is made of cheese.

In yet another view, contradictions entail nothing. The idea here is that an assertion of `¬P` cancels out the content of `P`. On this view, *negation functions as cancellation*. So if we have `P` and `¬P`, we end up with nothing. A concise statement of this view is given by Strawson: "Contradiction is like writing something down and erasing it; a contradiction cancels itself and leaves nothing".

The problem is that the negation of a statement does have some content on its own. When we assert just `¬P`, it is not like we didn't assert anything - there is some content to it.

The question is, if, without having asserted `P`, we can assert the information of `¬P`, why can't we have the information of both `P` and `¬P`?

Another problem, which is from Priest's book: suppose we have some information and we wish to add `¬(A ∧ B)`. On the view that negation is cancellation - it would erase `A` and `B`. But what happens to `A` and `B` taken separately? It would be illegitimate to remove both of them because we know that one of them might be true. If one of them must be erased we cannot know which one.

## Priest's preface paradox

In a book's preface, author often claims that they may have made mistakes, but on the the hand, they believe what they wrote is true.

So, we can indeed hold inconsistent beliefs and be quite reasonable in doing so.

In general, the argument that rationality prohibits inconsistency depends on what it means to be rational, and that's a very difficult question.

When we consider any particular theory there are many different factors to be
to be weighed: simplicity, fruitfulness, predictive power, explanatory power, non-ad-hoc-ness, coherence with other theories, and of course consistency.

However, often these virtues pull in different directions, so we have to ignore one or more due to the weight of other considerations.

But, as Graham Priest points out, the argument about rationality puts the cart before the horse: if the evidence and argument points to some theory and if that theory comes at a relatively low cost and so on, then it's rational to believe that theory.

The point is whether it's rational to believe contradictions can only be determined once all the arguments in favor of believing contradictions have been considered.

Suppose contradictions can't be believed, or can't be rationally believed, does this imply we shouldn't consider the dialetheists' arguments?

The debate between dialetheism and their opponents has brought a number of concepts, like negation, truth, logic, rationality, assertion, denial; all of these concepts are now articulated and understood better than we did before. Even if dialetheism can't be believed, or is necessarily irrational, we still have good reasons to explore it.
