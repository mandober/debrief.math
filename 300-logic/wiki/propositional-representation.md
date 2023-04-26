article-status : complete
---
# Propositional representation

https://en.wikipedia.org/wiki/Propositional_representation

Propositional representation is the psychological theory, first developed in 1973 by Dr. Zenon Pylyshyn, that mental relationships between objects are represented by symbols and not by mental images of the scene.

A propositional network describing the sentence "John believes that Anna will pass her exam" is illustrated below.

...

Each circle represents a single proposition, and the connections between the circles describe a network of propositions.

Propositional representations are also:
- **Language-like**: only in the sense that they manipulate symbols as a language does. The *language of thought* cannot be considered a natural language; it can only be a *formal language* that applies across different linguistic subjects - it therefore must be a language common to mind rather than culture, must be organizational rather than communicative. Thus Mentalese is best expressed through predicate and propositional calculus.
- **Made up of discrete symbols**: each symbol has a smallest constituent part; i.e. limit to how far units of representation can be broken down.
- **Explicit**: each symbol represents something (object, action, relation) specifically and thus explicitly.
- **Grammatical**: symbolic manipulation follows (requires?) syntactical rules and semantical rules.
- **Abstract and amodal**: symbols may represent any ideational content irrespective of which sensory modality was involved in its perception. (Unlike a pictorial representation which must be modality specific to the visual sensory mode).


Each proposition consists of a set of predicates and arguments which are represented in the form of predicate calculus. For instance:

An event, `X`: _"John hit Chris with a unicycle, the unicycle broke, because of this John started to cry, which caused Chris to be happy"_.

A propositional representation:

```
j       - John
c       - Cris
u       - unicycle
Hi(_, _, _)  - hit
Br(_)        - broke
Cr(_)        - cry
Ha(_)        - happy
Ca(_,_)      - cause

P = Hi(j, c, u)
Q = Br(u)
R = Cr(j)
S = Ha(c)

[Hi(j, c, u) ∧ Br(u)] → Cr(j) → Ha(c)
(P           ∧ Q    ) → R     → S


P = [hit (John, Chris, unicycle)]
Q = [broke (unicycle)]
R = [cry (John)]
S = [happy (Chris)]
Cause (Q, R)
Cause (R, S)
```

Each set of
- *predicates*
  - first order-predicates: "hit", "broke", "cry", "happy"
  - second-order predicate: "cause"
- *arguments*
  - an agent/subject, e.g. "John" in 'P'
  - a recipient/object, e.g. "Chris" in 'P'
  - an instrument, e.g. "unicycle" in 'P'

are in turn manipulated as propositions - event/statement "John hit Chris with the unicycle" is represented as a proposition `P`.

Also, features of particular objects may be characterized through attribute lists. 'John' as a singular object may have the attributes 'plays guitar', 'juggles', 'eats a lot', 'rides a unicycle' etc. Thus reference to 'John' identifies him as the object of thought in virtue of his having certain of these attributes.

So in predicate calculus, if   
_"John (F) has the property of being 'rides a unicycle' (x)"_    
we may say salva veritate: `(x)(Fx)`.

These elements have been called *semantic primitives* or *semantic markers/features*. Each primitive may in turn form part of a propositional statement, which in turn could be represented by an abstract figure e.g. 'P'. The primitives themselves play a crucial role in categorizing and classifying objects and concepts.

The meaningful relations between ideas and concepts expressed between and within the propositions are in part dealt with through the general laws of inference.

One of the most common of these is *Modus Ponens Ponendum (MPP)*, which is a simple inference of relation between two objects, the latter supervening on the former, `P → Q`.

Thus if we have two propositions (`P`, `Q`) and we assume a law of inference that relates to them both, `P → Q`, then if we have `P` we must necessarily have `Q`. Relations of causation may be expressed in this fashion, i.e. one state (`P`) causing (`→`) another state (`Q`).

So a purely formal characterization of the event (`X`) written above in natural language would be something like:

```
1 P, Q    (A)
2 Q → R   (A)
3 Q       (R 1)
4 R       (MP 2,3)
5 R → S   (A)
6 S       (MP 4,5)
```
