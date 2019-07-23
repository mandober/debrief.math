# Abstract Machines

https://en.wikipedia.org/wiki/Abstract_machine

<!-- TOC -->

- [Abstract Machines](#abstract-machines)
- [Stack machine](#stack-machine)
- [Register machine](#register-machine)

<!-- /TOC -->

## Abstract Machines
An abstract machine, or an abstract computer, is a *theoretical model of computation*, modelled as a hardware or software system, and used in automata theory.

Abstraction of computing processes is used in CS and CE (computer engineering) disciplines and usually assumes a discrete time paradigm.

## Stack machine
A stack machine type of computer (as opposed to a stack emulation in software) operates using a pushdown stack. It is an easily managed structure for storing and retrieving data, but it has a rigid LIFO (last in, first out) discipline. That way only the data from the very top can be accessed, which is the reason this types of machines use prefix notation with operator followed by operands.

## Register machine
A common alternative to a stack machine is a register machine, which has a flexible storage scheme; each instruction explicitly addresses specific registers which can be used to store and load operands.



In the theory of computation, abstract machines are often used in thought experiments regarding computability or to analyze the complexity of algorithms (see computational complexity theory). A typical abstract machine consists of a definition in terms of input, output, and the set of allowable operations used to turn the former into the latter. The best-known example is the Turing machine.

Abstract data types can be specified in terms of their operational semantics on an abstract machine. For example, a stack can be specified in terms of operations on an abstract machine with an array of memory. Through the use of abstract machines it is possible to compute the amount of resources (time, memory, etc.) necessary to perform a particular operation without having to construct a physical system.[clarification needed]

More complex definitions create abstract machines with full instruction sets, registers and models of memory. One popular model more similar to real modern machines is the RAM model, which allows random access to indexed memory locations. As the performance difference between different levels of cache memory grows, cache-sensitive models such as the external-memory model and cache-oblivious model are growing in importance.

An abstract machine can also refer to a microprocessor design which has yet to be (or is not intended to be) implemented as hardware. An abstract machine implemented as a software simulation, or for which an interpreter exists, is called a virtual machine.
