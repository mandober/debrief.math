# Abstract machine

https://en.wikipedia.org/wiki/Abstract_machine

An **abstract machine** is a theoretical computer used for defining a model of computation. Abstract machines are 'machines' because they permit step-by-step execution of programs; they are 'abstract' because they omit many details of real hardware.

A typical abstract machine is defined in terms of input, output, and the set of operations that turn input into output.

Abstraction of computing processes is used in both the computer science and computer engineering and usually assumes a discrete time paradigm. In theory of computation, abstract machines are often used in thought experiments regarding computability, or to analyze the complexity of algorithms.


The best-known example of an abstract machine is the Turing machine.

*Abstract data types* (ADT) can be specified in terms of their operational semantics on an abstract machine. For example, a stack can be specified in terms of operations on an abstract machine with an array of memory.

Through the use of abstract machines it is possible to compute the *amount of resources* (time, memory, etc.) necessary to perform a particular operation without having to construct a physical system.


Turing machine
Decider
Linear-bounded
PTIME Turing Machine
Nested stack
Thread automaton
restricted Tree stack automaton
Embedded pushdown
Nondeterministic pushdown
Deterministic pushdown
Visibly pushdown
Finite
Counter-free (with aperiodic finite monoid)
Acyclic finite





A **stack machine** type of computer (as opposed to a stack emulation in software) operates using a *push-down automata*. Stack is a simple structure for storing and retrieving data since with a rigid LIFO discipline (only the topmost item is accessable), which is the reason this types of machines use prefix notation with operator followed by operands.

A **register machine** has a flexible storage scheme; each instruction explicitly addresses specific registers which can be used to store and load operands.

A more complex definition of an abstract machines includes full instruction set, registers and models of memory. A popular model, similar to real machines, is the **RAM model**, which allows random access to indexed memory locations.

A **virtual machine** is a abstract machine implemented in software which has an interpreter.
