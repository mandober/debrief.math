# SECD machine

https://en.wikipedia.org/wiki/SECD_machine

The SECD machine is a virtual machine and abstract machine intended as a target for FPL compilers. SECD stands for Stack, Environment, Control, Dump, the internal registers of the machine. The registers Stack, Control and Dump point to stacks and Environment points to an associative array.

The machine was the first to be specifically designed to evaluate λ-calculus expressions. It was originally described by Peter J. Landin in "The Mechanical Evaluation of Expressions" in 1964. The description published by Landin was fairly abstract, and left many implementation choices open (like an operational semantics).

Lispkit Lisp was an influential compiler based on the SECD machine, and the SECD machine has been used as the target for other systems such as Lisp/370. In 1989 researchers at the University of Calgary worked on a hardware implementation of the machine.
