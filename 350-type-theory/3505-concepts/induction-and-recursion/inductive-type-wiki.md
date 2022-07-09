# Inductive type

https://en.wikipedia.org/wiki/Inductive_type

(disambiguation) Inductive data type may refer to:
- Algebraic data type: a datatype each of whose values is data from other datatypes wrapped in one of the constructors of the datatype
- Inductive family: a family of inductive data types indexed by a type or value
- Recursive data type: a data type for values that may contain other values of the same type

A system (PL) based on type theory has inductive types if it has facilities for creating a new type from constants and functions that create terms of that type.
 
The feature serves a role similar to data structures in a programming language and allows a type theory to add concepts like numbers, relations, and trees. As the name suggests, inductive types can be self-referential, but usually only in a way that permits structural recursion.

The standard example is encoding the natural numbers using Peano's encoding.

 Inductive nat : Type :=
   | 0 : nat
   | S : nat -> nat.

Here, a natural number is created either from the constant "0" or by applying the function "S" to another natural number. "S" is the successor function which represents adding 1 to a number. Thus, "0" is zero, "S 0" is one, "S (S 0)" is two, "S (S (S 0))" is three, and so on.

Since their introduction, inductive types have been extended to encode more and more structures, while still being predicative and supporting structural recursion.
