# Semantics

Semantics
- Operational semantics
  - small-step (structural) semantics
  - big-step (natural) semantics
- Denotational semantics
- Axiomatic semantics



## Operational semantics

**Operational semantics** specifies the behavior of a PL by defining a simple *abstract machine* for it. This machine is "abstract" in the sense that it uses the terms of the language as its machine code, rather than some low-level CPU instruction set. For simple PLs, a *state* of the machine is just a term, and the machine's behavior is defined by a *transition function* that, for each state, either gives the next state by performing a step of *simplification* on the term or declares that the machine has halted. The meaning of a term can be taken to be the *final state* that the machine reaches (when started with that term as its initial state). This style of operational semantics is called the **small-step or structural semantics**, and in this style an expression is evaluated in single steps, i.e. evaluatation consists of a series of single steps until the final form is reached (i.e. until the abstact machine reached the final state). Another style where evaluatation is defined in terms of multiple steps is called **big-step or natural semantics** - in this style an expression is evaluated as much as possible, usually down to a value. Big-step semantics should evaluate an expression the same way a series of small-step simplifications. In a way, the small-step semantics is like a low-level version of the big-step semantics.

## Denotational semantics

**Denotational semantics** takes a more abstract view of meaning - instead of being defined as just a sequence of machine states, *the meaning of a term is rather taken to be some mathematical object (such as a number or a function)*. Giving denotational semantics for a language consists of finding a collection of *semantic domains* and then defining an *interpretation function* mapping terms into elements of these domains (a mapping from expression to the notion of values in that language). The search for appropriate semantic domains for modeling various language features has given rise to a rich and elegant research area known as *domain theory*. An advantage of denotational semantics is that it abstracts from the details of evaluation and highlights the essential concepts of the language. Also, the properties of the chosen collection of semantic domains can be used to derive laws for reasoning about program behaviors - laws for proving that programs behave the same, or that a program's behavior satisfies some specification. Finally, the properties of the semantic domains can prevent undesirable situations.

## Axiomatic semantics

**Axiomatic semantics** builds the desirable laws directly into a language by enforcing a set of invariants. It focuses on the process of reasoning about the programs of that language. The meaning of a term is just what can be proved about it.


Operational semantics was initially the least favorable, but the development of elegant formalisms showed how many of the powerful mathematical techniques developed in the context of axiomatic and denotational semantics can be transferred to the operational setting.
