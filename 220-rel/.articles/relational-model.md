---
downloaded:       2021-10-14
author:           Satyadev Nandakumar
page-url:         https://www.cse.iitk.ac.in/users/cs350/2011/rel.html
page-title:       rel
article-title:    rel
article-length:   6741
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# rel

Can be viewed as a generalization of the procedural model in the
following sense.
## 1 Relational Model

Can be viewed as a generalization of the procedural model in the following sense.

-   Procedures can have zero or more output values.
-   Which arguments are input arguments and which are the output values can differ for different calls of the same procedure.

Introduces a new statement called __choice__: "Nondeterministically" selects one statement among alternatives. However, the execution is executed using deterministic search.

Choice can lead to slow code. However they are practical for small search spaces, and as an exploratory tool.

## 2 New Statements

### 2.1 Choice

It is a group of alternative statements.

choice s1 \[\] ... \[\] sn end

The choice statement selects and executes a statement. If this choice is later found wrong, then an alternative is picked. The choice statement introduces a part of the abstract machine to roll back execution and pick another choice - this is called a __choice point__.

### 2.2 Fail

fail

A fail statement declares that the current alternative is wrong. In addition to a programmer explicitly executing the statement, it also executes implicitly when the bind operation fails. (e.g. 1 = true)

## 3 Search Tree

A relational program is executed sequentially, when a choice statement is encountered, the first alternative is picked. When a fail is encountered, execution backs off to the most recent choice statement that was executed, and then another alternative is picked.

The choice statement picks alternatives in the order they were specified - s1 first, then s2 and so on.

The execution strategy can be illustrated with a __search tree__. The nodes in the tree correspond to choice statements, and the subtrees are the alternatives. Each path in the tree corresponds to one possible execution of the program. The path can either lead to a solution, or fail to provide a solution (it ends in a node marked fail.)

Given the search tree, there are several strategies to pick one or more solution from it.

## 4 Encapsulated Search:

A relational program can specify different solution search strategies: DFS, BFS, search for only one solution, return all solutions etc. Suppose that the relational program runs inside an "environment". This controls *which* solution is searched, and *when* it is searched.

The Solve function provides encapsulated search. (This is not a kernel language feature.) The call {Solve F} where F is a function taking no arguments, returns a lazy list of solutions ordered in a "depth-first" order.

For example,

{Browse {List.take {Solve
                    fun {$}
                       choice
                          choice
                             choice
                                '1.1.1'
                             \[\] '1.1.2'
                             end
                          \[\] '1.2'
                          end
                       \[\] '2'
                       end
                    end} 4}}

% Displays \['1.1.1' '1.1.2' '1.2' '2'\]

## 5 Code Example

A code for searching Hamiltonian Paths [Ham.oz][1] The file [Solve.oz][2] consists of the Solve routine found on the textbook site [booksuppl.oz][3].Please create a separate file named Solve.oz to run the code.

## 6 Logic Programming in Oz

A logic program can be thought to consist of axioms, a sentence from first-order predicate calculus called the query, and a theorem prover.

A theorem prover has limited power. It can prove only the theorems which are true in all models. That is, it is __complete__ - it has the ability to prove or refute any query. (There may be models with respect to which some theorems are true, but not provable - for example, theorems about integers with integer arithmetic. This follows from G\\"odel's incompleteness theorem.) Even in cases where it can find a proof or a refutation, it might take time exponential in the number of variables.

So we restrict the axiom forms in the language. For example, __Prolog__ is based on __Horn Clauses__. These are axioms of the form

∀ x1, …, xk ⋅ a1 ∧ a2 ∧ … ∧ an –> a.

where all the variables in the axioms are bound. There is an efficient theorem prover for Horn Clauses using an algorithm known as __resolution__.

The relational computational model in Oz can do logic programming, *without resolution*.

The programmer can aid the theorem prover with operational knowledge. For example, we can sort a set of numbers by stating that there exists a permutation of an input list which is in ascending order. This will lead to a result, but inefficiently. We can supplement this information to restrict the search by giving additional axioms about efficient search procedures like mergesort.

### 6.1 Operational Semantics and Logical Semantics

We can translate every statement in the relational kernel language (that is, the declarative kernel language of Chapter 2 + choose + fail) into equivalent first-order predicate sentences.

The following table gives a scheme *T* which translates relational statements into their equivalent logical statements.

  

Relational Statement

Logical Formula

Notes

skip

true

fail

false

s1 s2

T(s1) ∧ T(s2)

choice s1 \[\] … \[\] sn end

T(s1) ∨ … ∨ T(sn)

Binding:

  

X=Y

x=y

X=r(f1:X1 … fn:Xn)

x=r(f1:x1 … fn:xn)

records

Conditionals and Pattern Matches:

  

if X then s1 else s2 end

(x=true ∧ T(s1))

∨ (x=false ∧ T(s2))

case X

(∃ x1 … xn . x=r(f1:x1 … fn xn) ∧ T(s1)) ∨

of r(f1:X1 … fn:Xn)

then s1 else s2 end

(¬∃ x1 … xn . x=r(f1:x1 … fn xn) ∧ T(s2))

Variable declarations

  

local X in s end

∃ x . T(s)

Why ∃?

proc {P X1 … Xn} s end

∀ x1 … xn . p(x1 … xn) <-> T(s)

Procedure Application

  

{P Y1 … Yn}

p(y1 … yn)

Different operational semantics can have the same logical semanttics,

X = Y                 s                 if X==Y then s else fail end
s                    X=Y 

all have the same logical semantics,

x = y ∧ T(s)

But of course, their operational semantics is different. For instance, suppose s refers to X, without binding it. Then the example in the center will suspend in the sequential model, where as the leftmost example could succeed. The rightmost example differs from the other two since it does not ensure that X binds to Y.

So to write a logic program, we have to do the following. Write the logic semantics, then choose an operational semantics for the program. The first should be simple, and the second efficiently executable.

### 6.2 Code Example

The following is a non-deterministic append.

[NAppend.oz][4]

The logical semantics.

(∀ a b c . append(a,b,c) ↔ (a=nil ∧ b=c) ∨ (∃ x a' c' . a=x |a' ∧ c=x |c' ∧ append(a',b,c')))

Date: 2011-11-15 14:24:04 IST

HTML generated by org-mode 6.33x in emacs 23

[1]: https://www.cse.iitk.ac.in/users/cs350/2011/Ham.oz
[2]: https://www.cse.iitk.ac.in/users/cs350/2011/rel.html#sec-5
[3]: https://www.cse.iitk.ac.in/users/cs350/2011/rel.html#sec-5
[4]: https://www.cse.iitk.ac.in/users/cs350/2011/NAppend.oz
