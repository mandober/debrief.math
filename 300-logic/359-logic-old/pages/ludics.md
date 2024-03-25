# Ludics

https://en.wikipedia.org/wiki/Ludics

In *proof theory*, ludics is an analysis of the principles governing *inference rules* of mathematical logic. Key features of ludics include notion of *compound connectives*, using a technique known as *focusing* or *focalisation* (invented by the computer scientist Jean-Marc Andreoli), and its use of locations or loci over a base, instead of propositions.

More precisely, ludics tries to retrieve known logical connectives and proof behaviours by following the paradigm of interactive computation, similarly to what is done in game semantics to which it is closely related. By abstracting the notion of *formulae* and focusing of their concrete uses, that is, distinct occurrences, it provides an abstract syntax for computer science, as loci can be seen as pointers on memory.

The primary achievement of ludics is the discovery of a relationship between two natural but distinct notions of type, or, correspondingly, proposition.

**The first view**, which might be termed the proof-theoretic or Gentzen-style interpretation of propositions, says that the **meaning of a proposition arises from its introduction and elimination rules**. Focalization refines this viewpoint by distinguishing between positive propositions, whose meaning arises from their introduction rules, and negative propositions, whose meaning arises from their elimination rules. In [focused calculi], it is possible to define positive connectives by giving only their introduction rules, with the shape of the elimination rules being forced by this choice. Symmetrically, negative connectives can be defined in focused calculi by giving only the elimination rules, with the introduction rules forced by this choice.

**The second view**, which might be termed Brouwer-Heyting-Kolmogorov (BHK) interpretation of propositions, or the computational view, takes the view that we fix a computational system up front, and then give a realizability interpretation of propositions to give them constructive content. For example, a realizer for the proposition "A implies B" is a computable function which takes a realizer for A, and uses it to compute a realizer for B. Realizability models characterize realizers for propositions in terms of their visible behavior, and not in terms of their internal structure.

Girard shows that for second-order affine linear logic, given a computational system with nontermination and error stops as effects, realizability and focalization give the same meaning to types.

Ludics was proposed by the logician Jean-Yves Girard. His paper introducing Ludics, Locus solum: from the rules of logic to the logic of rules, has some features that may be seen as eccentric for a publication in mathematical logic (such as illustrations of Positive Skunks). It has to be noted that the intent of these features is to enforce the point of view of Jean-Yves Girard at the time of its writing. And, thus, it offers to readers the possibility to understand ludics independently of their backgrounds.
