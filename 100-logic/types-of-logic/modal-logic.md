# Modal logic

https://en.wikipedia.org/wiki/Modal_logic

Modal logic is a collection of formal systems originally developed and still widely used to represent statements about necessity and possibility.

For instance, the modal formula `□P -> ◊P` can be read as "if P is necessary, then it is also possible".

$${\displaystyle \Box P\rightarrow \Diamond P}$$

This formula is widely regarded as valid when necessity and possibility are understood with respect to knowledge, as in *epistemic modal logic*. Whether it is also valid with legal or moral necessity (dealt with by deontic logic) is a question debated since Sophocles' play Antigone.

The first modal axiomatic systems were developed by C. I. Lewis in 1910, building on an informal tradition stretching back to Aristotle. The relational semantics for modal logic was developed by Arthur Prior, Jaakko Hintikka, and Saul Kripke in the mid twentieth century.

In this semantics, formulas are assigned truth values relative to a possible world. A formula's truth value at one possible world can depend on the truth values of other formulas at other accessible possible worlds.

In particular, *possibility* amounts to truth at some accessible possible world, while *necessity* amounts to truth at every accessible possible world.

Modal logic is often referred to as "the logic of necessity and possibility", and such applications continue to play a major role in philosophy of language, epistemology, metaphysics, and formal semantics. However, the mathematical apparatus of modal logic has proved useful in numerous other fields including game theory, program verification, web design, multiverse-based set theory, and social epistemology.

One prominent textbook on the model theory of modal logic suggests that it can be seen more generally as the study of formal systems which take a local perspective on relational structures.

~ ~ ~

http://rkirsling.github.io/modallogic/

Modal logic is a type of symbolic logic for capturing inferences about necessity and possibility. As with other logical systems, the theory lies at the intersection of mathematics and philosophy, while important applications are found within computer science and linguistics.

Rrecall the language and semantics of propositional logic, i.e. connectives and truth tables. The usual connectives are the following:

Symbol | Read as | Operation   | Natural language example
-------|---------|-------------|-------------------------------------
¬      | not     | negation    | It is not raining.
∧      | and     | conjunction | It is snowing and it is cold.
∨      | or      | disjunction | It is raining or it is cold.
→      | if-then | implication | If it is snowing, (then) it is cold.
↔      | iff     | equivalence | 3 × 2 = 6 if and only if 3 + 3 = 6.
□      | box     | necessity   | It must be cold outside.
◊      | diamond | possibility | It may be snowing.

The truth table would look like this:

p q | q → p | p → (q → p)
----|-------|------------
0 0 | 1     | 1
0 1 | 0     | 1
1 0 | 1     | 1
1 1 | 1     | 1

So once we've fixed a truth value for each of the propositional variables, the truth value of any formula using those variables is deterministic.

In modal logic, we add two new unary connectives to our familiar language:
- necessity,   box,     □
- possibility, diamond, ◊

Semantically, these modal connectives are interpreted with respect to *possible worlds*. We can conceive of possible worlds in various ways, depending on what we're interested in modelling.

On the one hand, possible worlds might be hypothetical "alternate universes": there is the "actual world", the way things really are at the present moment, as well as an infinity of other worlds which differ from barely noticable to very dramatic (e.g. a world in which dinosaurs roam the Earth in 2020) ways.

Alternatively, possible worlds might be the various states of a computer, a computer program, or another system which evolves over time.

In any case, if we have a proposition p and a current world w, then in worlds accessible from w:
* □p holds (p is necessary) only when p is true in all the worlds
* ◊p holds (p is possible)  only when p is true in at least one world

An example of an accessible world is a worls of a computer: an accessible state is a successor state, one that is immediately reachable from the current state.

The set of all possible worlds is not an unstructured mess, but it is ordered by an **accessibility relation** that indicates which worlds are accessible from what worlds.


An example from linguistics is when we talk about what may or must be, which can be viewed as talking about what is true in some or all the possible worlds. Yet, we're seldom concerned with every single possible world at once; rather, we're only concerned with a relevant subset of these possibile worlds - just those worlds which are accessible from the actual world via some accessibility implicit relation.

Modality types are epistemic, deontic and alethic. The sentences below show 3 kinds of *accessibility relations* by the type of **modality**:

Epistemic
- Accessible worlds: worlds consistent with one's knowledge
- "It must have rained overnight."

Deontic
- Accessible worlds: worlds consistent with one's obligations, moral, honor
- "You must arrive before noon."

Alethic
- Accessible worlds: worlds consistent with logic (~all worlds)
- "A triangle must have three vertices."

These sentences might be represented as □p, □q, and □r, but the box operator has a noticeably different interpretation in each case.

In the first case, we can imagine someone who, upon leaving their house in the morning, notices that the sidewalk is wet. Based on this observation, they conclude that it has rained overnight. Here, the worlds under consideration are just those which are consistent with the speaker's knowledge, in particular, their observation of the sidewalk. Thus the box means something like, "Given what is known, it must be the case that...". This *knowledge-based* interpretation of the modal operators is known as **epistemic modality**.

The second sentence might be uttered by airport staff to inform a passenger of the time that their flight boards. In this case, the relevant worlds are those consistent with the passenger's obligations, namely, to get to their airplane punctually. The box here means, 'Given what is obligated, it must be the case that...'. This *obligation-based* interpretation of the modal operators is known as **deontic modality**.

Finally, suppose that we remove all restrictions and let the modal operators range over every single possible world at once. But we've talked about the infinity of possible worlds - what could they possibly all have in common? One thing only: *logical consistency*. Under the **alethic modality**, the box means, 'It is logically necessary that...'. This interpretation may not be commonplace in daily conversation, but is useful for discussing mathematics, as in the third sentence: by definition, a triangle has three vertices, otherwise it wouldn't be a triangle!


Conveniently, we can view possible world semantics as an extension of truth tables. In propositional logic, we only had to fix a truth value for each propositional variable once, but in modal logic, each propositional variable can take a different truth value at each possible world. Even when two worlds have the same truth assignment, formulas with □ or ◊ might have a different truth value in each world, since the worlds accessible from each may not be the same. We might say that *each possible world has its own truth table*.

A complete assignment of truth values to each variable at each world is known as a **valuation**.

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


⊭
⊬
