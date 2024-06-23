# A call-by-name lambda-calculus machine
Jean-Louis Krivine, 2006

## Introduction

We present, in this paper, a simple lazy machine which runs programs written in λ-calculus. It was introduced by Jean-Louis Krivine more than 20 years ago, but remained unpublished.

* In the first section, we give an informal but complete description of the machine.
* In the second part, definitions are formalized, which allows us to give a proof of correctness for the execution of λ-terms.
* In the third part, we build an extension for the machine, with a control instruction (a kind of call-by-name call/cc) and with continuations.

The machine uses *weak head reduction* to execute λ-calculus, which means that the active redex must be at the very beginning of a λ-term or the computation stops. In fact, since a whole chain `λx₁ … λxₙ` is reduce at once, execution also stops if there are not enough arguments.

The first example of a λ-calculus machine is P. Landin's *SECD-machine*. The *Krivine machine* is different, in particular because it uses *call-by-name*. The reason for this choice follows.

Starting in the 60's, a fascinating domain has been growing between logic and TCS, designated as the *Curry-Howard correspondence*. Succinctly, this correspondence permits the transformation of a mathematical proof into a program, which is written:
- in λ-calculus, if the proof is intuitionistic and only uses logical axioms
- in λ-calculus extended with a control instruction, if LEM or the axioms of ZF set theory are used (which is most often the case).

Still additional extensions are necessary if additional axioms, such as the Axiom of Choice, are used.

Programs obtained in this way are indeed very complex and 2 important problems immediately arise: How should we execute them and what is their behaviour?

These questions are not independent, so let us give a more precise formulation:
1. How should we execute these programs so as to obtain a *meaningful* behaviour
2. Assuming an answer to question one: what is the common behaviour (if any) of the programs obtained from different proofs of the same theorem?

It is altogether surprising that there exists an answer to the first question: it is the Krivine machine presented. I believe that is, in itself, a strong reason for being interested in it.

Let us give a very simple, but illuminating example, namely the following theorem of Euclid: "There exists infinitely many prime numbers". Let us consider a proof `D` of this theorem, using the axioms of classical set theory; consider, further, the program `Pᴅ` extracted from this proof. One would like to have the following behaviour for `Pᴅ`: wait for an integer `n`, then produce a prime number `p ≥ n`. That is exactly what happens when the program `Pᴅ` is executed by the Krivine machine. But it is not true anymore if one uses a different execution mechanism, for instance call-by-value; in such case one gets, in general, an aberrant behaviour and no meaningful output.

The Krivine machine was thus conceived to execute programs obtained from mathematical proofs. It is an essential ingredient of the classical  *realizability theory* to extend the CHI to analysis and set theory.

Thanks to the remarkable properties of *weak head reduction*, one can thus, inter alia, search for the *specification* associated with a given mathematical theorem, meaning the shared behaviour of the programs extracted from the various proofs of the theorem under consideration: this is second question above. That problem is a very interesting one, it is also quite difficult and has only been solved, up to now, in very few cases, even for tautologies. A further interesting side of this theory is that it illuminates, in a new way, the problem of proving programs.

1. Description of the machine

Application of `t` to `u` is written as `(t)u`, or just `t u` if unambiguous. `(…(((t) u₁) u₂) …) uₖ` will be also denoted by `(t) u₁ … uₖ` or `t u₁ … uₖ`.

We consider 3 areas in the memory:
- term area, where the λ-terms to be performed are written
- the stack
- the heap

We denote by `&t` the address of the term `t` in the term area.

In the heap, we have objects of the following kinds:
- *environment*: a finite sequence `(e, ξ₁, …, ξₖ)` where `e` is the address of an environment (in the heap), and `ξ₁, …, ξₖ` are closures. There is also an empty environment.
- *closure*: an ordered pair `(&t, e)` made of the address of a term (in the term area) and the address of an environment.

The elements of the stack are closures. Intuitively, closures are the values which λ-calculus variables take.
