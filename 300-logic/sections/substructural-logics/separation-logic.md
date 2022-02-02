# Separation logic

A fundamental technique IN REASONING ABOUT PROGRAMS is the use of logical assertions to describe properties of program states. Turing used assertions to argue about the correctness of a particular program in 1949 and they were incorporated into general formal systems for program proving starting with the work of Floyd and Hoare in the 1960s.

Hoare logic, which separation logic builds upon, 
is a formal system for proving specifications of the form 

`{precondition}code{postcondition}`

where the precondition and postcondition are assertions 
describing properties of the input and output states.

For example, 

`{x == N}code{x == N ⋀ y == N!}`

can serve as a specification of an imperative program that computes the factorial of the value held in variable `x` and places it in `y`. 

Hoare logic and related systems worked very well for programs manipulating simple primitive data types such as for integers or strings, but proofs became more complex when dealing with structured data containing embedded pointers.


Key concepts of separation logic:
* Separation logic supports in-place updating of facts as we reason, in a way that mirrors in-place update of memory during execution, and this leads to logical proofs about imperative programs that match computational intuition.
* Separation logic supports scalable reasoning by using an inference rule (the frame rule) that allows a proof to be localized to the resources that a program component accesses (its footprint).
* Concurrent separation logic shows that modular reasoning about threads that share storage and other resources is possible.


One of the founding papers of separation logic summarized the problem as follows: The main difficulty is not one of finding an in-principle adequate axiomatization of pointer operations; rather there is a mismatch between simple intuitions about the way that pointer operations work and the complexity of their axiomatic treatments. When there is *aliasing*, arising from several pointers to a given cell, an alteration to a cell may affect the values of many syntactically unrelated expressions.

Bornat provided a good description of the struggles in reasoning about mutable data structures up to 2000. In joint work with John Reynolds et al. we developed separation logic (SL) to address the fundamental problem of reasoning about programs that mutate data structures.

From a *special logic for heaps*, it gradually evolved into a general theory for modular reasoning about concurrent as well as sequential programs. 

Efforts by many researchers established that the logic provides a basis for efficient proof search in automatic and semi-automatic proof tools, for example, giving rise to the `Infer` static analyzer, a tool that is in deployment at Facebook where it catches thousands of bugs per month before code reaches production in products used daily by over one billion people.

Separation logic is an extension of Hoare logic, which employs novel logical operators, most importantly the separating conjunction `*` (pronounced "and separately") when writing assertions. For example, we might write:

```
{ x ⟼ 0 * y ⟼ 0 }
[x] = y;
[y] = x
{ x ⟼ y * y ⟼ x }
```

as a specification of code that wires together two memory locations into a cyclic linked list. Here `x ⟼ v` says that pointer variable `x` holds the address of a memory location where `v` is stored (or more briefly, `x` points to `v`), and a command of the form `[x] = v` updates the location referred to by `x` so that its contents becomes `v'`.

The use of `*`, rather than the usual Boolean conjunction (⋀), ensures `x` and `y` are not aliases (distinct names for the same location), so that we have a two-element cyclic list in the postcondition. A central principle is that a command that mutates a single location affects only one `*`-conjunct: operational in-place update is mirrored in the logic, addressing the key difficulty where an alteration to a cell may affect the values of many syntactically unrelated expressions.

Reynolds was the first to describe a program logic including the *separating conjunction*, `*`; he defined an intuitionistic (constructive) logic with `*`,building on earlier ideas of Burstall. O'Hearn, and Ishtiaq realized the assertion language could be seen as an instance of the resource logic BI of O'Hearn and Pym; they independently discovered the same intuitionistic logic as Reynolds, and also saw that a more powerful Boolean (nonconstructive) variant was possible in which one could reason about explicit memory management (Reynolds had assumed garbage collection). They also introduced the *separating implication*, denoted by a symbol `-*`.





## Refs

The 2016 Gödel Prize is awarded to Stephen Brookes and Peter W. O'Hearn for their invention of Concurrent Separation Logic, as described in their papers:
https://eatcs.org/index.php/component/content/article/1-news/2280-2016-godel-prize
- S. Brookes, A Semantics for Concurrent Separation Logic. Theoretical Computer Science 375(1-3): 227-270 (2007)
- P. W. O'Hearn, Resources, Concurrency, and Local Reasoning. Theoretical Computer Science 375(1-3): 271-307 (2007)


* A semantics for concurrent separation logic
https://dl.acm.org/doi/10.1016/j.tcs.2006.12.034
