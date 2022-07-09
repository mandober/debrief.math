# Hindley-Milner type system

https://en.wikipedia.org/wiki/Hindley-Milner_type_system

A *Hindley-Milner (HM) type system* is a classical type system for the lambda calculus with parametric polymorphism. Also known as Damas-Milner or Damas-Hindley-Milner.

## Authors

- 1969 Roger Hindley first describes the type system
- 1978 Robin Milner rediscoveres it and impl it for ML
- 1985 Luis Damas: formal analysis and the proof of the type inference method

The origin is the type inference algorithm for the simply typed lambda calculus that was devised by Haskell Curry and Robert Feys in 1958.

In 1969, J. Roger Hindley extended this work and proved that their algorithm always inferred the most general type in his paper `"The Principal Type-Scheme of an Object in Combinatory Logic"` in 1969.

In 1978, Robin Milner, independently of Hindley's work, provided an equivalent algorithm, *Algorithm W*, in the paper `"A Theory of Type Polymorphism in Programming"` from 1978.

In 1982, Luis Damas contributed a formal analysis and proved that Milner's algorithm is complete and extended it to support systems with polymorphic references, in his PhD thesis `"Type Assignment in Programming Languages"` from 1985.

[1] Hindley, J. Roger (1969). "The Principal Type-Scheme of an Object in Combinatory Logic". Transactions of the American Mathematical Society. 146: 29-60. doi:10.2307/1995158. JSTOR 1995158.

[2] Milner, Robin (1978). "A Theory of Type Polymorphism in Programming". Journal of Computer and System Sciences. 17 (3): 348-374. CiteSeerX 10.1.1.67.5276. doi:10.1016/0022-0000(78)90014-4.

[3] Damas, Luis (1985). "Type Assignment in Programming Languages" (PhD thesis). University of Edinburgh. hdl:1842/13555. CST-33-85.

[4] Damas, Luis; Milner, Robin (1982). "Principal type-schemes for functional programs" (PDF). 9th Symposium on Principles of programming languages (POPL'82). ACM. pp. 207-212. doi:10.1145/582153.582176. ISBN 978-0-89791-065-1.

## Introduction

Among HM's more notable properties are its completeness and its ability to infer the most general type of the types of variables, expressions and functions in a given program without programmer-supplied type annotations. Being *scope sensitive*, it is not limited to deriving the types only from a small portion of source code, but rather from complete programs or modules. Being able to also cope with parametric types, it is the core type system of many FPL.

HM type system is preferably used for functional languages. It was first implemented as part of the type system of the programming language ML. Since then, HM has been extended in various ways, most notably with type class constraints like those in Haskell.

HM's type inference algorithm, *Algorithm W*, is an efficient type inference method in practice, and has been successfully applied on large code bases, although it has a high theoretical complexity.

HM's type inference is `DEXPTIME`-complete. In fact, merely deciding whether an ML program is typeable (without having to infer a type) is itself DEXPTIME-complete. Non-linear behaviour does manifest itself, yet mostly on pathological inputs. Thus the complexity theoretic proofs by Mairson (1990) and Kfoury, Tiuryn & Urzyczyn (1990) came as a surprise to the research community.
