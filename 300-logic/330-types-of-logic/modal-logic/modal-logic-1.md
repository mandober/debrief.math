# Modal logic

http://rkirsling.github.io/modallogic/

Modal logic is a type of symbolic logic for capturing inferences about necessity and possibility.

- `□P` necessity, "box" ("it must be cold outside")
- `◊P` possibility, "diamond" ("it may be snowing")

As with other logical systems, the theory lies at the intersection of mathematics and philosophy, while important applications are found within computer science and linguistics.

*Modal propositional logic* extends propositional logic but lacks quantifiers. It has the usual propositional connectives plus the two unary connectives, `□` and `◊`.

Semantically, modal connectives are interpreted with respect to possible worlds. We can conceive of possible worlds in various ways, depending on what we're interested in modelling. On the one hand, possible worlds might be hypothetical "alternate universes": there is the "actual world", the way things really are, as well as an infinity of other "worlds" which differ in subtle or dramatic ways. Alternatively, possible worlds might be the various states of a computer, a computer program, or another system which evolves over time.

If we have a proposition `p` and a current world `w`:
- `□p` holds (`p` is necessary) just when `p` is true in all worlds accessible from `w`
- `◊p` holds (`p` is possible) just when `p` is true in at least one world accessible from `w`

An *accessible state* is a successor state, one that is immediately reachable from the current state. The set of all possible worlds is ordered by an *accessibility relation* that says which worlds we can get to from which others.

When we speak of what may or must be, we view this as talking about what is true in some or all possible worlds. However, we are seldom concerned with every single possible world at once, typically just with a relevant subset of these possibilities - just those worlds which are accessible from the actual world via some implicit relation.

The 3 kinds of modalities:
* *epistemic* (worlds consistent with one's *knowledge*)
  "It must have rained overnight"
* *deontic* (worlds consistent with one's *obligations*)
  "You must arrive before noon"
* *alethic* (worlds consistent with *logic*, i.e. all worlds)
  "A triangle must have three vertices"

These sentences might be represented as `□p`, `□q`, and `□r`, but the box operator has a noticeably different interpretation in each case.

In the first case, the worlds under consideration are just those which are consistent with the speaker's *knowledge*. Thus the box means something like `"Given what is known, it must be the case that..."`. This knowledge-based interpretation of the modal operators is known as *epistemic modality*.

In the second case, the relevant worlds are those consistent with our *obligations*. The box here means, `"Given what is obligated, it must be the case that..."`. This obligation-based interpretation of the modal operators is known as *deontic modality*.

Finally, we remove all restrictions and let the modal operators range over every single possible world at once. The only thing common to the infinity of possible worlds is *logical consistency*. Under this so-called *alethic modality*, the box now means, `"It is logically necessary that..."`.

We can view the possible worlds semantics as an extension of truth tables. In propositional logic, we only had to fix a truth value for each propositional variable once, but in modal logic, each propositional variable can take a different truth value at each possible world. Even when two worlds have the same truth assignment, formulas with `□` or `◊` might have a different truth value in each world, since the worlds accessible from each may not be the same. Thus, we might say that each possible world has its own truth table. A complete assignment of truth values to each variable at each world is known as a **valuation**.

Altogether, a set of possible worlds, an accessibility relation, and a valuation form a semantic model for modal logic, called a **Kripke model**.

A Kripke model can be visualized as a directed graph, where nodes represent worlds, the set of edges represents the accessibility relation, and the valuation is indicated by annotating each node with its truth assignment.


For example, consider the following graph:

```
¬p,¬q        p,¬q          ¬p,q
o--------------x-------------o
w0            w1             w2
```

Using the computer program metaphor, imagine a scenario where `p` stands for 'the program is running' and `q` stands for 'the program has terminated'.

Then the state 0 (world `w0`) of the model represents the state where the program is about to launch (neither running nor terminated), state 1 is the running (and non-terminated) state, and state 2 is the terminated (and no longer running) state.

As for the accessibility relation: from the ready-to-launch state, the only option is to transition to the running state; at the running state, the program can either continue to run (the reflexive edge is indicated by an `x` node) or terminate; and the terminated state is the end of the line, so to speak.

We can then evaluate formulas based on this model. For instance, `◊(p ∧ ¬q)` says that there is a transition to a running-and-not-terminated state (i.e. to state 1), or more naturally, that the program is able to run (or keep running). This formula is true at states 0 and 1 but false at state 2, which can be expressed in the following notation (the double turnstile `⊨` can be read as 'satisfies' or 'makes … true'):
- `w0 ⊨ ◊(p ∧ ¬q)`
- `w1 ⊨ ◊(p ∧ ¬q)`
- `w2 ⊭ ◊(p ∧ ¬q)`

To see this in action, try using the app to evaluate `◊(p ∧ ¬q)` at each state.
http://rkirsling.github.io/modallogic/

## Links

* http://en.wikipedia.org/wiki/Modal_logic

* http://plato.stanford.edu/entries/logic-modal/

* Logic In Action, http://www.logicinaction.org/
A freely-available, broad-scope introduction to symbolic logic. 
Chapters 5-7 deal with modal logic and some of its applications.

* Introduction to Modal Logic
https://www.youtube.com/watch?v=vTE29cFurYw&list=PLF111A097D92A5D01&index=1

* What is modal logic for?
https://philosophy.stackexchange.com/questions/5929/what-is-modal-logic-for

* Kripke semantics
https://en.wikipedia.org/wiki/Kripke_semantics
https://en.wikipedia.org/wiki/Possible_world_semantics
https://en.wikipedia.org/wiki/Accessibility_relation

http://plato.stanford.edu/entries/logic-provability

The formalization of modal logic has been a breakthrough in the development of **model theory**, one of the four branches of mathematical logic (the other being set theory, recursion theory and proof theory). See Kripke semantics for more details.

Modal logic has found some very natural applications in metalogic, such as provability logic (where `□` means 'it is provable that'). A milestone in the analysis of provability is Solovay's arithmetical completeness theorem published in 1976.
