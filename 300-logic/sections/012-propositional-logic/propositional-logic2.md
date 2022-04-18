# Propositional Logic

following the book: Discrete Mathematics Using a Computer - John O’Donnell, Cordelia Hall, Rex Page, 2006, Second Edition

There are several different kinds of formal logic, and for now we will consider just the simplest one, called **propositional logic**. After looking at the language of propositional logic, we will consider in detail 3 completely different mathematical systems for reasoning formally about propositions:
1. truth tables
2. natural deduction
3. Boolean algebra

**Truth tables** define the meanings of the logical operators, and they can be used to calculate the values of expressions and prove that two propositions are logically equivalent. As they directly express the underlying meaning of propositions, *truth tables are a semantic approach to logic*. Truth tables are easy to understand for small problems, but they become impossibly large for most realistic problems.

**Natural deduction** is a formalisation of the basic principles of reasoning. It provides a set of inference rules that specify exactly what new facts you are allowed to deduce from some given facts. There is no notion of the "value" of propositions; everything in this system is encapsulated in the inference rules. Since the rules are based on the forms of propositions, and we don't work with truth values, *inference is a purely syntactic approach to logic*.

**Boolean algebra** is another *syntactic approach logic*, using a set of equations, called the laws of Boolean algebra, to specify that certain propositions are equal to each other. Boolean algebra is an *axiomatic approach to logic*, similar to elementary algebra and geometry, because it provides an effective set of laws for manipulating propositions. BA is an essential tool for digital circuit design.

## Formalism

A **proposition** is a declarative statement in a natural language that can be assigned a truth value. A crucial law of propositional logic (at least in the classic school) is the *principle of bivalence* which states that a proposition must be either true or false, not both and not neither. *Propositional variables*, usually denoted using letters (A, B, C), are used to represent declarative sentences from a natural language.

However, natural language sentences first need to be translated into mathematical statements that contain nothing but propositional variables and *logical connectives*. The translation step is crucial because it must resolve any ambiguity of a natural language, stripping a sentence of any intrinsic knowledge and feeling, in the end producing a sterile proposition, no different then any other. It is exactly this celebration of the pure form that is the main driver of propositional logic: there is only form which is manipulated according to the strict set of inference rules, towards the goal of reaching a desired conclusion. Or not.


## The Basic Logical Operators

### Logical And (∧)

- logical conjunction
- mathematical symbol: ∧
- wff: A ∧ B

The proposition `A ∧ B` states that `A` is True and `B` is True; it doesn't have any connotations, in particular, it doesn't mean that there is any connection between A and B.

Actually, until proven the proposition `A ∧ B` has two possibilities:
- if it is true, then both A and B are indeed true
- if the proposition turns out to be false, then you don't actually know about the individual truth value of A or B.













## Natural deduction

Natural deduction is a formal logical system that allows you to reason directly
with logical propositions using inference, without having to substitute truth
values for variables or evaluate expressions. 
