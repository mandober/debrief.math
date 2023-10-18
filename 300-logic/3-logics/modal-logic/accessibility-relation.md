# Accessibility relation

https://en.wikipedia.org/wiki/Accessibility_relation

An accessibility relation is a relation which plays a key role in assigning truth values to sentences in the relational semantics for modal logic.

In relational semantics, a modal formula's truth value at a possible world `w` can depend on what's true at another possible world `v`, but only if the accessibility relation `R` relates `w` to `v`.

For instance, if `P` holds at some world `v` such that `wRv` (`w` is accessible world from the world `v`), the formula `◊P` will be true at `w`.

The fact `wRv` is crucial. If `R` did not relate `w` to `v`, then `◊P` would be false at `w` (unless `P` also held at some other world `u` such that `wRu`).

Accessibility relations are motivated conceptually by the fact that natural language modal statements depend on some, but not all alternative scenarios.

For instance, the sentence "It might be raining" is not generally judged true simply because one can imagine a scenario where it was raining. Rather, its truth depends on whether such a scenario is ruled out by available information.

This fact can be formalized in modal logic by choosing an accessibility relation such that `wRv` iff `v` is compatible with the information that's available to the speaker in `w`.

This idea can be extended to different applications of modal logic.

In epistemology, one can use an epistemic notion of accessibility where `wRv` for an individual `I` iff `I` does not know something which would rule out the hypothesis that `w′=v`.

In deontic modal logic, one can say that `wRv` iff `v` is a morally ideal world given the moral standards of `w`.

In application of modal logic to computer science, the so-called possible worlds can be understood as representing possible states and the accessibility relation can be understood as a program. Then `wRv` iff running the program can transition the computer from state `w` to state `v`.

Different applications of modal logic can suggest different restrictions on admissible accessibility relations, which can in turn lead to different validities.

The mathematical study of how validities are tied to conditions on accessibility relations is known as *modal correspondence theory*.
