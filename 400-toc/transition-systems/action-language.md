# Action language

https://en.wikipedia.org/wiki/Action_language

In computer science, an **action language** is a language for specifying state transition systems, and is commonly used to create formal models of the effects of actions on the world.

Action languages are commonly used in the artificial intelligence and robotics domains, where they describe how actions affect the states of systems over time, and may be used for automated planning.

Action languages fall into two classes: action description languages and action query languages. Examples of the former include STRIPS, PDDL, Language A (a generalization of STRIPS; the propositional part of Pednault's ADL), Language B (an extension of A adding indirect effects, distinguishing static and dynamic laws) and Language C (which adds indirect effects also, and does not assume that every fluent is automatically "inertial"). There are also the Action Query Languages P, Q and R. Several different algorithms exist for converting action languages, and in particular, action language C, to answer set programs.[2][3] Since modern answer-set solvers make use of boolean SAT algorithms to very rapidly ascertain satisfiability, this implies that action languages can also enjoy the progress being made in the domain of boolean SAT solving.

## Formal definition

All action languages supplement the definition of a state transition system with a set F of fluents, a set V of values that fluents may take, and a function mapping S × F to V, where S is the set of states of a state transition system.
