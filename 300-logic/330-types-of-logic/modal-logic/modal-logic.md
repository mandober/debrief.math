# Modal logic

https://en.wikipedia.org/wiki/Modal_logic

* Modal logic playground:
http://rkirsling.github.io/modallogic/

Modal logic is a collection of formal logic systems used to represent statements about necessity (`□`) and possibility (`◊`). For instance, the modal formula `□P -> ◊P` can be read as "if P is necessary, then it is also possible".

This formula is widely regarded as valid when necessity and possibility are understood with respect to knowledge, as in *epistemic modal logic*. Whether it is also valid with legal or moral necessity (dealt with by *deontic logic*) is a question debated since Sophocles' play Antigone.

The first modal axiomatic systems were developed by C. I. Lewis in 1910, building on an informal tradition stretching back to Aristotle. The *relational semantics* for modal logic was developed by Arthur Prior, Jaakko Hintikka, and Saul Kripke in the mid XX century. In this semantics, **formulas are assigned truth values relative to a possible world**. A formula's truth value at one possible world can depend on the truth values of other formulas at other accessible possible worlds.

>In particular, **possibility** amounts to truth at some accessible possible world, while **necessity** amounts to truth at every accessible possible world.

One prominent textbook on the model theory of modal logic suggests that it can be seen more generally as the study of formal systems which take a local perspective on relational structures.

❋ ❉ ✼

Modal logic is a type of symbolic logic for capturing inferences about necessity and possibility. Modal logic builds upon the language and semantics of propositional logic. The common connectives of PL are: ¬ ∧ ↓ → ⟺. The modal logic adds two more:
- `□` "box" represents *necessity*("It must be cold outside")
- `◊` "diamond" represents *possibility* ("It may be snowing")

Semantically, the modal connectives are interpreted with respect to *possible worlds*. We can conceive of possible worlds in various ways, depending on what we're interested in modelling. On the one hand, possible worlds might be hypothetical "alternate universes": there is the actual world, the way things really are at the present moment, and an infinity of other possible worlds. Possible worlds may be various states of a computer, program, another system which evolves over time.

If we have a proposition `p` and the current world `w`, then in the worlds that are accessible from `w`:
- `□p` holds (`p` is necessary) only when `p` is true in *all the worlds*
- `◊p` holds (`p` is possible)  only when `p` is true in *at least one world*

An example of an accessible world is a world of a computer: an accessible state is a successor state, one that is immediately reachable from the current state.

The set of all possible worlds is ordered by an **accessibility relation** that indicates what worlds are accessible from which worlds. Usually, we're only concerned with a relevant subset of the possibile worlds, just those worlds which are accessible from the actual world via some implicit accessibility relation.

>Modality types are epistemic, deontic and alethic.

These sentences show 3 kinds of accessibility relations by the type of modality:

**Epistemic**
- (accessible worlds) worlds consistent with one's knowledge
- "It must have rained overnight."

**Deontic**
- (accessible worlds) worlds consistent with one's obligations, moral, honor
- "You must arrive before noon."

**Alethic**
- (accessible worlds) worlds consistent with logic (~all worlds)
- "A triangle must have three vertices."

These sentences might be represented as `□p`, `□q`, and `□r`, but the box operator has a noticeably different interpretation in each case.

* The first case is *knowledge-based* interpretation of the modal operator, known as **epistemic modality**.

* The second case is *obligation-based* interpretation of the modal operators is known as **deontic modality**.

* The third case: suppose that we remove all restrictions and let the modal operators range over every single possible world at once. *Logical consistency* is the only thing the infinity of possible worlds share. Under the **alethic modality**, the box means, "it is logically necessary that". This interpretation may not be commonplace in daily conversation, but is useful for discussing math ('must be', 'always is', necessary truths).

Conveniently, we can view possible world semantics as an extension of truth tables. In propositional logic, we only had to fix a truth value for each propositional variable once, but in modal logic, each propositional variable can take a different truth value at each possible world. Even when two worlds have the same truth assignment, formulas with □ or ◊ might have a different truth value in each world, since the worlds accessible from each may not be the same. We might say that *each possible world has its own truth table*.

A complete assignment of truth values to each variable at each world is **valuation**.

Together,
- a set of possible worlds
- an accessibility relation
- a valuation
form a *semantic model* for modal logic, known as a **Kripke model**.

A Kripke model can be visualized as a directed graph, where nodes represent worlds, the set of edges represents the accessibility relation, and the valuation is indicated by annotating each node with its truth assignment.

Using a computer program metaphor, we can imagine a scenario where:
- p = program is running
- q = program has terminated

We can then model this with a graph such that
- state 0 of our model represents the state where the program is about to launch (neither running nor terminated), ¬p ∧ ¬q
- state 1 is the running (and non-terminated) state, p ∧ ¬q
- state 2 is the terminated (and no longer running) state, ¬p ∧ q

As for the accessibility relation:
- from the ready-to-launch state, the only option is to transition to the running state
- at the running state, the program can either continue to run (the reflexive edge is indicated by a bold circle) or terminate
- the terminated state is the final state

We can then evaluate formulas based on this model.

For instance, the formula `◊(p ∧ ¬q)` says that there exists a transition to the state 1. This formula is true at states 0 and 1, but false at state 2, which can be expressed in the following notation (the double turnstile `⊨` can be read as "satisfies" or "makes true"):

w₁ ⊨ ◊(p ∧ ¬q)
w₂ ⊨ ◊(p ∧ ¬q)
w₃ ⊭ ◊(p ∧ ¬q)

⊨ ⊭ ⊬
