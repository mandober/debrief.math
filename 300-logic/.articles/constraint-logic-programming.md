---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Constraint_logic_programming
page-title:       Constraint logic programming - Wikipedia
article-title:    Constraint logic programming - Wikipedia
---
# Constraint logic programming - Wikipedia

Constraint logic programming is a form of constraint programming, in which logic programming is extended to include concepts from constraint satisfaction. A constraint logic program is a logic program that contains constraints in the body of clauses. An example of a clause including a constraint is A(X,Y) :- X+Y>0, B(X), C(Y). In this clause, X+Y>0 is a constraint; A(X,Y), B(X), and C(Y) are literals as in regular logic programming. This clause states one condition under which the statement A(X,Y) holds: X+Y is greater than zero and both B(X) and C(Y) are true.
__Constraint logic programming__ is a form of [constraint programming][1], in which [logic programming][2] is extended to include concepts from [constraint satisfaction][3]. A constraint logic program is a logic program that contains constraints in the body of clauses. An example of a clause including a constraint is `A(X,Y) :- X+Y>0, B(X), C(Y)`. In this clause, `X+Y>0` is a constraint; `A(X,Y)`, `B(X)`, and `C(Y)` are [literals][4] as in regular logic programming. This clause states one condition under which the statement `A(X,Y)` holds: `X+Y` is greater than zero and both `B(X)` and `C(Y)` are true.

As in regular logic programming, programs are queried about the provability of a goal, which may contain constraints in addition to literals. A proof for a goal is composed of clauses whose bodies are satisfiable constraints and literals that can in turn be proved using other clauses. Execution is performed by an interpreter, which starts from the goal and [recursively][5] scans the clauses trying to prove the goal. Constraints encountered during this scan are placed in a set called __constraint store__. If this set is found out to be unsatisfiable, the interpreter [backtracks][6], trying to use other clauses for proving the goal. In practice, satisfiability of the constraint store may be checked using an incomplete algorithm, which does not always detect inconsistency.

## Overview\[[edit][7]\]

Formally, constraint logic programs are like regular logic programs, but the body of clauses can contain constraints, in addition to the regular logic programming literals. As an example, `X>0` is a constraint, and is included in the last clause of the following constraint logic program.

B(X,1):- X<0.
B(X,Y):- X\=1, Y\>0.
A(X,Y):- X\>0, B(X,Y).

Like in regular logic programming, evaluating a goal such as `A(X,1)` requires evaluating the body of the last clause with `Y=1`. Like in regular logic programming, this in turn requires proving the goal `B(X,1)`. Contrary to regular logic programming, this also requires a constraint to be satisfied: `X>0`, the constraint in the body of the last clause (in regular logic programming, X>0 cannot be proved unless X is bound to a fully [ground term][8] and execution of the program will fail if that is not the case).

Whether a constraint is satisfied cannot always be determined when the constraint is encountered. In this case, for example, the value of `X` is not determined when the last clause is evaluated. As a result, the constraint `X>0` is not satisfied nor violated at this point. Rather than proceeding in the evaluation of `B(X,1)` and then checking whether the resulting value of `X` is positive afterwards, the interpreter stores the constraint `X>0` and then proceeds in the evaluation of `B(X,1)`; this way, the interpreter can detect violation of the constraint `X>0` during the evaluation of `B(X,1)`, and backtrack immediately if this is the case, rather than waiting for the evaluation of `B(X,1)` to conclude.

In general, the evaluation of a constraint logic program proceeds as does a regular logic program. However, constraints encountered during evaluation are placed in a set called a constraint store. As an example, the evaluation of the goal `A(X,1)` proceeds by evaluating the body of the first clause with `Y=1`; this evaluation adds `X>0` to the constraint store and requires the goal `B(X,1)` to be proven. While trying to prove this goal, the first clause is applied but its evaluation adds `X<0` to the constraint store. This addition makes the constraint store unsatisfiable. The interpreter then backtracks, removing the last addition from the constraint store. The evaluation of the second clause adds `X=1` and `Y>0` to the constraint store. Since the constraint store is satisfiable and no other literal is left to prove, the interpreter stops with the solution `X=1, Y=1`.

## Semantics\[[edit][9]\]

The semantics of constraint logic programs can be defined in terms of a virtual interpreter that maintains a pair ![\langle G,S\rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7e3ac55621831f9beeddfdd5e709c791de5f4a3a) during execution. The first element of this pair is called current goal; the second element is called constraint store. The *current goal* contains the literals the interpreter is trying to prove and may also contain some constraints it is trying to satisfy; the *constraint store* contains all constraints the interpreter has assumed satisfiable so far.

Initially, the current goal is the goal and the constraint store is empty. The interpreter proceeds by removing the first element from the current goal and analyzing it. The details of this analysis are explained below, but in the end this analysis may produce a successful termination or a failure. This analysis may involve [recursive calls][10] and addition of new literals to the current goal and new constraint to the constraint store. The interpreter backtracks if a failure is generated. A successful termination is generated when the current goal is empty and the constraint store is satisfiable.

The details of the analysis of a literal removed from the goal is as follows. After having removed this literal from the front of the goal, it is checked whether it is a constraint or a literal. If it is a constraint, it is added to the constraint store. If it is a literal, a clause whose head has the same predicate of the literal is chosen; the clause is rewritten by replacing its variables with new variables (variables not occurring in the goal): the result is called a *fresh variant* of the clause; the body of the fresh variant of the clause is then placed in front of the goal; the equality of each argument of the literal with the corresponding one of the fresh variant head is placed in front of the goal as well.

Some checks are done during these operations. In particular, the constraint store is checked for consistency every time a new constraint is added to it. In principle, whenever the constraint store is unsatisfiable the algorithm could backtrack. However, checking unsatisfiability at each step would be inefficient. For this reason, an incomplete satisfiability checker may be used instead. In practice, satisfiability is checked using methods that simplify the constraint store, that is, rewrite it into an equivalent but simpler-to-solve form. These methods can sometimes but not always prove unsatisfiability of an unsatisfiable constraint store.

The interpreter has proved the goal when the current goal is empty and the constraint store is not detected unsatisfiable. The result of execution is the current set of (simplified) constraints. This set may include constraints such as ![X=2](https://wikimedia.org/api/rest_v1/media/math/render/svg/4df29c01b3dd8a3427ad6724aab1980d06924393) that force variables to a specific value, but may also include constraints like ![X>2](https://wikimedia.org/api/rest_v1/media/math/render/svg/77f397e5094bf1a9c514d7928d9842c1f3b4b22b) that only bound variables without giving them a specific value.

Formally, the semantics of constraint logic programming is defined in terms of *derivations*. A transition is a pair of pairs goal/store, noted ![\langle G,S\rangle \rightarrow \langle G',S'\rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a90c07887737f7802fb5965aac1777bd214dac2d). Such a pair states the possibility of going from state ![\langle G,S\rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7e3ac55621831f9beeddfdd5e709c791de5f4a3a) to state ![\langle G',S'\rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d379923770e58a6eabd215762d5e4f9ceb777a5b). Such a transition is possible in three possible cases:

A sequence of transitions is a derivation. A goal G can be proved if there exists a derivation from ![\langle G,\emptyset \rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4064a95ac36f921bff751b2402822b4092227b7e) to ![\langle \emptyset ,S\rangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/79afbe1128dc15c6ec6565cd38c3b91800c68754) for some satisfiable constraint store S. This semantics formalizes the possible evolutions of an interpreter that arbitrarily chooses the literal of the goal to process and the clause to replace literals. In other words, a goal is proved under this semantics if there exists a sequence of choices of literals and clauses, among the possibly many ones, that lead to an empty goal and satisfiable store.

Actual interpreters process the goal elements in a [LIFO][11] order: elements are added in the front and processed from the front. They also choose the clause of the second rule according to the order in which they are written, and rewrite the constraint store when it is modified.

The third possible kind of transition is a replacement of the constraint store with an equivalent one. This replacement is limited to those done by specific methods, such as [constraint propagation][12]. The semantics of constraint logic programming is parametric not only to the kind of constraints used but also to the method for rewriting the constraint store. The specific methods used in practice replace the constraint store with one that is simpler to solve. If the constraint store is unsatisfiable, this simplification may detect this unsatisfiability sometimes, but not always.

The result of evaluating a goal against a constraint logic program is defined if the goal is proved. In this case, there exists a derivation from the initial pair to a pair where the goal is empty. The constraint store of this second pair is considered the result of the evaluation. This is because the constraint store contains all constraints assumed satisfiable to prove the goal. In other words, the goal is proved for all variable evaluations that satisfy these constraints.

The pairwise equality of terms of two literals is often compactly denoted by ![L(t_{1},\ldots ,t_{n})=L(t_{1}',\ldots ,t_{n}')](https://wikimedia.org/api/rest_v1/media/math/render/svg/b037d28fddcec286f1662b3b0e6f47166f42f677): this is a shorthand for the constraints ![t_{1}=t_{1}',\ldots ,t_{n}=t_{n}'](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca23386a3f7fd8e2fbbc0dae33c09deb6e675ccd). A common variant of the semantics for constraint logic programming adds ![L(t_{1},\ldots ,t_{n})=L(t_{1}',\ldots ,t_{n}')](https://wikimedia.org/api/rest_v1/media/math/render/svg/b037d28fddcec286f1662b3b0e6f47166f42f677) directly to the constraint store rather than to the goal.

## Terms and conditions\[[edit][13]\]

Different definitions of terms are used, generating different kinds of constraint logic programming: over trees, reals, or finite domains. A kind of constraint that is always present is the equality of terms. Such constraints are necessary because the interpreter adds `t1=t2` to the goal whenever a literal `P(...t1...)` is replaced with the body of a clause fresh variant whose head is `P(...t2...)`.

### Tree terms\[[edit][14]\]

Constraint logic programming with tree terms emulates regular logic programming by storing substitutions as constraints in the constraint store. Terms are variables, constants, and function symbols applied to other terms. The only constraints considered are equalities and disequalities between terms. Equality is particularly important, as constraints like `t1=t2` are often generated by the interpreter. Equality constraints on terms can be simplified, that is solved, via [unification][15]:

A constraint `t1=t2` can be simplified if both terms are function symbols applied to other terms. If the two function symbols are the same and the number of subterms is also the same, this constraint can be replaced with the pairwise equality of subterms. If the terms are composed of different function symbols or the same functor but on different number of terms, the constraint is unsatisfiable.

If one of the two terms is a variable, the only allowed value the variable can take is the other term. As a result, the other term can replace the variable in the current goal and constraint store, thus practically removing the variable from consideration. In the particular case of equality of a variable with itself, the constraint can be removed as always satisfied.

In this form of constraint satisfaction, variable values are terms.

### Reals\[[edit][16]\]

Constraint logic programming with [real numbers][17] uses real expressions as terms. When no function symbols are used, terms are expressions over reals, possibly including variables. In this case, each variable can only take a real number as a value.

To be precise, terms are expressions over variables and real constants. Equality between terms is a kind of constraint that is always present, as the interpreter generates equality of terms during execution. As an example, if the first literal of the current goal is `A(X+1)` and the interpreter has chosen a clause that is `A(Y-1):-Y=1` after rewriting is variables, the constraints added to the current goal are `X+1=Y-1` and ![Y=1](https://wikimedia.org/api/rest_v1/media/math/render/svg/867ae2de7c84119e258e68ca484e01e03b00bd73). The rules of simplification used for function symbols are obviously not used: `X+1=Y-1` is not unsatisfiable just because the first expression is built using `+` and the second using `-`.

Reals and function symbols can be combined, leading to terms that are expressions over reals and function symbols applied to other terms. Formally, variables and real constants are expressions, as any arithmetic operator over other expressions. Variables, constants (zero-arity-function symbols), and expressions are terms, as any function symbol applied to terms. In other words, terms are built over expressions, while expressions are built over numbers and variables. In this case, variables ranges over real numbers *and terms*. In other words, a variable can take a real number as a value, while another takes a term.

Equality of two terms can be simplified using the rules for tree terms if none of the two terms is a real expression. For example, if the two terms have the same function symbol and number of subterms, their equality constraint can be replaced with the equality of subterms.

### Finite domains\[[edit][18]\]

The third class of constraints used in constraint logic programming is that of finite domains. Values of variables are in this case taken from a finite domain, often that of [integer numbers][19]. For each variable, a different domain can be specified: `X::[1..5]` for example means that the value of `X` is between `1` and `5`. The domain of a variable can also be given by enumerating all values a variable can take; therefore, the above domain declaration can be also written `X::[1,2,3,4,5]`. This second way of specifying a domain allows for domains that are not composed of integers, such as `X::[george,mary,john]`. If the domain of a variable is not specified, it is assumed to be the set of integers representable in the language. A group of variables can be given the same domain using a declaration like `[X,Y,Z]::[1..5]`.

The domain of a variable may be reduced during execution. Indeed, as the interpreter adds constraints to the constraint store, it performs [constraint propagation][20] to enforce a form of [local consistency][21], and these operations may reduce the domain of variables. If the domain of a variable becomes empty, the constraint store is inconsistent, and the algorithm backtracks. If the domain of a variable becomes a [singleton][22], the variable can be assigned the unique value in its domain. The forms of consistency typically enforced are [arc consistency][23], [hyper-arc consistency][24], and [bound consistency][25]. The current domain of a variable can be inspected using specific literals; for example, `dom(X,D)` finds out the current domain `D` of a variable `X`.

As for domains of reals, functors can be used with domains of integers. In this case, a term can be an expression over integers, a constant, or the application of a functor over other terms. A variable can take an arbitrary term as a value, if its domain has not been specified to be a set of integers or constants.

## The constraint store\[[edit][26]\]

The constraint store contains the constraints that are currently assumed satisfiable. It can be considered what the current substitution is for regular logic programming. When only tree terms are allowed, the constraint store contains constraints in the form `t1=t2`; these constraints are simplified by unification, resulting in constraints of the form `variable=term`; such constraints are equivalent to a substitution.

However, the constraint store may also contain constraints in the form `t1!=t2`, if the difference `!=` between terms is allowed. When constraints over reals or finite domains are allowed, the constraint store may also contain domain-specific constraints like `X+2=Y/2`, etc.

The constraint store extends the concept of current substitution in two ways. First, it does not only contain the constraints derived from equating a literal with the head of a fresh variant of a clause, but also the constraints of the body of clauses. Second, it does not only contain constraints of the form `variable=value` but also constraints on the considered constraint language. While the result of a successful evaluation of a regular logic program is the final substitution, the result for a constraint logic program is the final constraint store, which may contain constraint of the form variable=value but in general may contain arbitrary constraints.

Domain-specific constraints may come to the constraint store both from the body of a clauses and from equating a literal with a clause head: for example, if the interpreter rewrites the literal `A(X+2)` with a clause whose fresh variant head is `A(Y/2)`, the constraint `X+2=Y/2` is added to the constraint store. If a variable appears in a real or finite domain expression, it can only take a value in the reals or the finite domain. Such a variable cannot take a term made of a functor applied to other terms as a value. The constraint store is unsatisfiable if a variable is bound to take both a value of the specific domain and a functor applied to terms.

After a constraint is added to the constraint store, some operations are performed on the constraint store. Which operations are performed depends on the considered domain and constraints. For example, [unification][27] is used for finite tree equalities, [variable elimination][28] for polynomial equations over reals, [constraint propagation][29] to enforce a form of [local consistency][30] for finite domains. These operations are aimed at making the constraint store simpler to be checked for satisfiability and solved.

As a result of these operations, the addition of new constraints may change the old ones. It is essential that the interpreter is able to undo these changes when it backtracks. The simplest case method is for the interpreter to save the complete state of the store every time it makes a choice (it chooses a clause to rewrite a goal). More efficient methods for allowing the constraint store to return to a previous state exist. In particular, one may just save the changes to the constraint store made between two points of choice, including the changes made to the old constraints. This can be done by simply saving the old value of the constraints that have been modified; this method is called *trailing*. A more advanced method is to save the changes that have been done on the modified constraints. For example, a linear constraint is changed by modifying its coefficient: saving the difference between the old and new coefficient allows reverting a change. This second method is called *semantic backtracking*, because the semantics of the change is saved rather than the old version of the constraints only.

## Labeling\[[edit][31]\]

The labeling literals are used on variables over finite domains to check satisfiability or partial satisfiability of the constraint store and to find a satisfying assignment. A labeling literal is of the form `labeling([variables])`, where the argument is a list of variables over finite domains. Whenever the interpreter evaluates such a literal, it performs a search over the domains of the variables of the list to find an assignment that satisfies all relevant constraints. Typically, this is done by a form of [backtracking][32]: variables are evaluated in order, trying all possible values for each of them, and backtracking when inconsistency is detected.

The first use of the labeling literal is to actual check satisfiability or partial satisfiability of the constraint store. When the interpreter adds a constraint to the constraint store, it only enforces a form of local consistency on it. This operation may not detect inconsistency even if the constraint store is unsatisfiable. A labeling literal over a set of variables enforces a satisfiability check of the constraints over these variables. As a result, using all variables mentioned in the constraint store results in checking satisfiability of the store.

The second use of the labeling literal is to actually determine an evaluation of the variables that satisfies the constraint store. Without the labeling literal, variables are assigned values only when the constraint store contains a constraint of the form `X=value` and when local consistency reduces the domain of a variable to a single value. A labeling literal over some variables forces these variables to be evaluated. In other words, after the labeling literal has been considered, all variables are assigned a value.

Typically, constraint logic programs are written in such a way labeling literals are evaluated only after as many constraints as possible have been accumulated in the constraint store. This is because labeling literals enforce search, and search is more efficient if there are more constraints to be satisfied. A [constraint satisfaction problem][33] is typical solved by a constraint logic program having the following structure:

solve(X):-constraints(X), labeling(X)
constraints(X):- (all constraints of the CSP)

When the interpreter evaluates the goal `solve(args)`, it places the body of a fresh variant of the first clause in the current goal. Since the first goal is `constraints(X')`, the second clause is evaluated, and this operation moves all constraints in the current goal and eventually in the constraint store. The literal `labeling(X')` is then evaluated, forcing a search for a solution of the constraint store. Since the constraint store contains exactly the constraints of the original constraint satisfaction problem, this operation searches for a solution of the original problem.

## Program reformulations\[[edit][34]\]

A given constraint logic program may be reformulated to improve its efficiency. A first rule is that labeling literals should be placed after as much constraints on the labeled literals are accumulated in the constraint store. While in theory `A(X):-labeling(X),X>0` is equivalent to `A(X):-X>0,labeling(X)`, the search that is performed when the interpreter encounters the labeling literal is on a constraint store that does not contain the constraint `X>0`. As a result, it may generate solutions, such as `X=-1`, that are later found out not to satisfy this constraint. On the other hand, in the second formulation the search is performed only when the constraint is already in the constraint store. As a result, search only returns solutions that are consistent with it, taking advantage of the fact that additional constraints reduce the search space.

A second reformulation that can increase efficiency is to place constraints before literals in the body of clauses. Again, `A(X):-B(X),X>0` and `A(X):-X>0,B(X)` are in principle equivalent. However, the first may require more computation. For example, if the constraint store contains the constraint `X<-2`, the interpreter recursively evaluates `B(X)` in the first case; if it succeeds, it then finds out that the constraint store is inconsistent when adding `X>0`. In the second case, when evaluating that clause, the interpreter first adds `X>0` to the constraint store and then possibly evaluates `B(X)`. Since the constraint store after the addition of `X>0` turns out to be inconsistent, the recursive evaluation of `B(X)` is not performed at all.

A third reformulation that can increase efficiency is the addition of redundant constraints. If the programmer knows (by whatever means) that the solution of a problem satisfies a specific constraint, they can include that constraint to cause inconsistency of the constraint store as soon as possible. For example, if it is known beforehand that the evaluation of `B(X)` will result in a positive value for `X`, the programmer may add `X>0` before any occurrence of `B(X)`. As an example, `A(X,Y):-B(X),C(X)` will fail on the goal `A(-2,Z)`, but this is only found out during the evaluation of the subgoal `B(X)`. On the other hand, if the above clause is replaced by `A(X,Y):-X>0,A(X),B(X)`, the interpreter backtracks as soon as the constraint `X>0` is added to the constraint store, which happens before the evaluation of `B(X)` even starts.

## Constraint handling rules\[[edit][35]\]

[Constraint handling rules][36] were initially defined as a stand-alone formalism for specifying constraint solvers, and were later embedded in logic programming. There are two kinds of constraint handling rules. The rules of the first kind specify that, under a given condition, a set of constraints is equivalent to another one. The rules of the second kind specify that, under a given condition, a set of constraints implies another one. In a constraint logic programming language supporting constraint handling rules, a programmer can use these rules to specify possible rewritings of the constraint store and possible additions of constraints to it. The following are example rules:

A(X) <=> B(X) | C(X)
A(X) ==> B(X) | C(X)

The first rule tells that, if `B(X)` is entailed by the store, the constraint `A(X)` can be rewritten as `C(X)`. As an example, `N*X>0` can be rewritten as `X>0` if the store implies that `N>0`. The symbol `<=>` resembles equivalence in logic, and tells that the first constraint is equivalent to the latter. In practice, this implies that the first constraint can be *replaced* with the latter.

The second rule instead specifies that the latter constraint is a consequence of the first, if the constraint in the middle is entailed by the constraint store. As a result, if `A(X)` is in the constraint store and `B(X)` is entailed by the constraint store, then `C(X)` can be added to the store. Differently from the case of equivalence, this is an addition and not a replacement: the new constraint is added but the old one remains.

Equivalence allows for simplifying the constraint store by replacing some constraints with simpler ones; in particular, if the third constraint in an equivalence rule is `true`, and the second constraint is entailed, the first constraint is removed from the constraint store. Inference allows for the addition of new constraints, which may lead to proving inconsistency of the constraint store, and may generally reduce the amount of search needed to establish its satisfiability.

Logic programming clauses in conjunction with constraint handling rules can be used to specify a method for establishing the satisfiability of the constraint store. Different clauses are used to implement the different choices of the method; the constraint handling rules are used for rewriting the constraint store during execution. As an example, one can implement backtracking with [unit propagation][37] this way. Let `holds(L)` represents a propositional clause, in which the literals in the list `L` are in the same order as they are evaluated. The algorithm can be implemented using clauses for the choice of assigning a literal to true or false, and constraint handling rules to specify propagation. These rules specify that `holds([l|L])` can be removed if `l=true` follows from the store, and it can be rewritten as `holds(L)` if `l=false` follows from the store. Similarly, `holds([l])` can be replaced by `l=true`. In this example, the choice of value for a variable is implemented using clauses of logic programming; however, it can be encoded in constraint handling rules using an extension called disjunctive constraint handling rules or CHR∨.

## Bottom-up evaluation\[[edit][38]\]

The standard strategy of evaluation of logic programs is [top-down][39] and [depth-first][40]: from the goal, a number of clauses are identified as being possibly able to prove the goal, and recursion over the literals of their bodies is performed. An alternative strategy is to start from the facts and use clauses to derive new facts; this strategy is called [bottom-up][41]. It is considered better than the top-down one when the aim is that of producing all consequences of a given program, rather than proving a single goal. In particular, finding all consequences of a program in the standard top-down and depth-first manner may not terminate while the bottom-up [evaluation strategy][42] terminates.

The bottom-up evaluation strategy maintains the set of facts proved so far during evaluation. This set is initially empty. With each step, new facts are derived by applying a program clause to the existing facts, and are added to the set. For example, the bottom up evaluation of the following program requires two steps:

A(q).
B(X):-A(X).

The set of consequences is initially empty. At the first step, `A(q)` is the only clause whose body can be proved (because it is empty), and `A(q)` is therefore added to the current set of consequences. At the second step, since `A(q)` is proved, the second clause can be used and `B(q)` is added to the consequences. Since no other consequence can be proved from `{A(q),B(q)}`, execution terminates.

The advantage of the bottom-up evaluation over the top-down one is that cycles of derivations do not produce an [infinite loop][43]. This is because adding a consequence to the current set of consequences that already contains it has no effect. As an example, adding a third clause to the above program generates a cycle of derivations in the top-down evaluation:

A(q).
B(X):-A(X).
A(X):-B(X).

For example, while evaluating all answers to the goal `A(X)`, the top-down strategy would produce the following derivations:

A(q)
A(q):-B(q), B(q):-A(q), A(q)
A(q):-B(q), B(q):-A(q), A(q):-B(q), B(q):-A(q), A(q)

In other words, the only consequence `A(q)` is produced first, but then the algorithm cycles over derivations that do not produce any other answer. More generally, the top-down evaluation strategy may cycle over possible derivations, possibly when other ones exist.

The bottom-up strategy does not have the same drawback, as consequences that were already derived has no effect. On the above program, the bottom-up strategy starts adding `A(q)` to the set of consequences; in the second step, `B(X):-A(X)` is used to derive `B(q)`; in the third step, the only facts that can be derived from the current consequences are `A(q)` and `B(q)`, which are however already in the set of consequences. As a result, the algorithm stops.

In the above example, the only used facts were ground literals. In general, every clause that only contains constraints in the body is considered a fact. For example, a clause `A(X):-X>0,X<10` is considered a fact as well. For this extended definition of facts, some facts may be equivalent while not syntactically equal. For example, `A(q)` is equivalent to `A(X):-X=q` and both are equivalent to `A(X):-X=Y, Y=q`. To solve this problem, facts are translated into a normal form in which the head contains a tuple of all-different variables; two facts are then equivalent if their bodies are equivalent on the variables of the head, that is, their sets of solutions are the same when restricted to these variables.

As described, the bottom-up approach has the advantage of not considering consequences that have already been derived. However, it still may derive consequences that are entailed by those already derived while not being equal to any of them. As an example, the bottom up evaluation of the following program is infinite:

A(0).
A(X):-X\>0.
A(X):-X\=Y+1, A(Y).

The bottom-up evaluation algorithm first derives that `A(X)` is true for `X=0` and `X>0`. In the second step, the first fact with the third clause allows for the derivation of `A(1)`. In the third step, `A(2)` is derived, etc. However, these facts are already entailed by the fact that `A(X)` is true for any nonnegative `X`. This drawback can be overcome by checking for [entailment][44] facts that are to be added to the current set of consequences. If the new consequence is already entailed by the set, it is not added to it. Since facts are stored as clauses, possibly with "local variables", entailment is restricted over the variables of their heads.

## Concurrent constraint logic programming\[[edit][45]\]

The concurrent versions of constraint logic programming are aimed at programming [concurrent processes][46] rather than solving [constraint satisfaction problems][47]. Goals in constraint logic programming are evaluated concurrently; a concurrent process is therefore programmed as the evaluation of a goal by the [interpreter][48].

Syntactically, concurrent constraints logic programs are similar to non-concurrent programs, the only exception being that clauses includes *guards*, which are constraints that may block the applicability of the clause under some conditions. Semantically, concurrent constraint logic programming differs from its non-concurrent versions because a goal evaluation is intended to realize a concurrent process rather than finding a solution to a problem. Most notably, this difference affects how the interpreter behaves when more than one clause is applicable: non-concurrent constraint logic programming [recursively][49] tries all clauses; concurrent constraint logic programming chooses only one. This is the most evident effect of an intended *directionality* of the interpreter, which never revises a choice it has previously taken. Other effects of this are the semantical possibility of having a goal that cannot be proved while the whole evaluation does not fail, and a particular way for equating a goal and a clause head.

## Applications\[[edit][50]\]

Constraint logic programming has been applied to a number of fields, such as [automated scheduling][51],[\[1\]][52] [type inference][53],[\[2\]][54] [civil engineering][55], [mechanical engineering][56], [digital circuit][57] verification, [air traffic control][58], finance, and others.\[*[citation needed][59]*\]

## History\[[edit][60]\]

Constraint logic programming was introduced by Jaffar and Lassez in 1987.[\[3\]][61] They generalized the observation that the term equations and disequations of [Prolog II][62] were a specific form of constraints, and generalized this idea to arbitrary constraint languages. The first implementations of this concept were [Prolog III][63], [CLP(R)][64], and [CHIP][65].\[*[citation needed][66]*\]

## See also\[[edit][67]\]

-   [BProlog][68]
-   [BNR Prolog][69] (aka CLP(BNR))
-   [Ciao][70]
-   [CLP(R)][71]
-   [Distributed Oz Mozart][72]
-   [ECLiPSe][73]
-   [GNU Prolog][74]
-   [SWI-Prolog][75]

## References\[[edit][76]\]

-   Dechter, Rina (2003). [*Constraint processing*][77]. Morgan Kaufmann. [ISBN][78] [1-55860-890-7][79]. [ISBN][80] [1-55860-890-7][81]
-   Apt, Krzysztof (2003). [*Principles of constraint programming*][82]. Cambridge University Press. [ISBN][83] [0-521-82583-0][84]. [ISBN][85] [0-521-82583-0][86]
-   Marriott, Kim; Peter J. Stuckey (1998). *Programming with constraints: An introduction*. MIT Press. [ISBN][87] [0-262-13341-5][88]
-   Frühwirth, Thom; Slim Abdennadher (2003). *Essentials of constraint programming*. Springer. [ISBN][89] [3-540-67623-6][90]. [ISBN][91] [3-540-67623-6][92]
-   Jaffar, Joxan; Michael J. Maher (1994). ["Constraint logic programming: a survey"][93]. *Journal of Logic Programming*. 19/20: 503–581. [doi][94]:[10.1016/0743-1066(94)90033-7][95].
-   Colmerauer, Alain (1987). "Opening the Prolog III Universe". *Byte*. August.

## References\[[edit][96]\]

[1]: https://en.wikipedia.org/wiki/Constraint_programming "Constraint programming"
[2]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[3]: https://en.wikipedia.org/wiki/Constraint_satisfaction "Constraint satisfaction"
[4]: https://en.wikipedia.org/wiki/Literal_(mathematical_logic) "Literal (mathematical logic)"
[5]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[6]: https://en.wikipedia.org/wiki/Backtracking "Backtracking"
[7]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=1 "Edit section: Overview"
[8]: https://en.wikipedia.org/wiki/Ground_term "Ground term"
[9]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=2 "Edit section: Semantics"
[10]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[11]: https://en.wikipedia.org/wiki/LIFO_(computing) "LIFO (computing)"
[12]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[13]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=3 "Edit section: Terms and conditions"
[14]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=4 "Edit section: Tree terms"
[15]: https://en.wikipedia.org/wiki/Unification_(computing) "Unification (computing)"
[16]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=5 "Edit section: Reals"
[17]: https://en.wikipedia.org/wiki/Real_number "Real number"
[18]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=6 "Edit section: Finite domains"
[19]: https://en.wikipedia.org/wiki/Integer_number "Integer number"
[20]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[21]: https://en.wikipedia.org/wiki/Local_consistency "Local consistency"
[22]: https://en.wikipedia.org/wiki/Singleton_(mathematics) "Singleton (mathematics)"
[23]: https://en.wikipedia.org/wiki/Arc_consistency "Arc consistency"
[24]: https://en.wikipedia.org/wiki/Hyper-arc_consistency "Hyper-arc consistency"
[25]: https://en.wikipedia.org/wiki/Bound_consistency "Bound consistency"
[26]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=7 "Edit section: The constraint store"
[27]: https://en.wikipedia.org/wiki/Unification_(computing) "Unification (computing)"
[28]: https://en.wikipedia.org/wiki/Variable_elimination "Variable elimination"
[29]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[30]: https://en.wikipedia.org/wiki/Local_consistency "Local consistency"
[31]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=8 "Edit section: Labeling"
[32]: https://en.wikipedia.org/wiki/Backtracking "Backtracking"
[33]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[34]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=9 "Edit section: Program reformulations"
[35]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=10 "Edit section: Constraint handling rules"
[36]: https://en.wikipedia.org/wiki/Constraint_handling_rules "Constraint handling rules"
[37]: https://en.wikipedia.org/wiki/Unit_propagation "Unit propagation"
[38]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=11 "Edit section: Bottom-up evaluation"
[39]: https://en.wikipedia.org/wiki/Top-down_and_bottom-up_design#Computer_science "Top-down and bottom-up design"
[40]: https://en.wikipedia.org/wiki/Depth-first "Depth-first"
[41]: https://en.wikipedia.org/wiki/Top-down_and_bottom-up_design#Computer_science "Top-down and bottom-up design"
[42]: https://en.wikipedia.org/wiki/Evaluation_strategy "Evaluation strategy"
[43]: https://en.wikipedia.org/wiki/Infinite_loop "Infinite loop"
[44]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[45]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=12 "Edit section: Concurrent constraint logic programming"
[46]: https://en.wikipedia.org/wiki/Concurrent_process "Concurrent process"
[47]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[48]: https://en.wikipedia.org/wiki/Interpreter_(computing) "Interpreter (computing)"
[49]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[50]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=13 "Edit section: Applications"
[51]: https://en.wikipedia.org/wiki/Automated_planning_and_scheduling "Automated planning and scheduling"
[52]: https://en.wikipedia.org/wiki/Constraint_logic_programming#cite_note-1
[53]: https://en.wikipedia.org/wiki/Type_inference "Type inference"
[54]: https://en.wikipedia.org/wiki/Constraint_logic_programming#cite_note-2
[55]: https://en.wikipedia.org/wiki/Civil_engineering "Civil engineering"
[56]: https://en.wikipedia.org/wiki/Mechanical_engineering "Mechanical engineering"
[57]: https://en.wikipedia.org/wiki/Digital_circuit "Digital circuit"
[58]: https://en.wikipedia.org/wiki/Air_traffic_control "Air traffic control"
[59]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[60]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=14 "Edit section: History"
[61]: https://en.wikipedia.org/wiki/Constraint_logic_programming#cite_note-3
[62]: https://en.wikipedia.org/wiki/Prolog_II "Prolog II"
[63]: https://en.wikipedia.org/w/index.php?title=Prolog_III&action=edit&redlink=1 "Prolog III (page does not exist)"
[64]: https://en.wikipedia.org/wiki/CLP(R) "CLP(R)"
[65]: https://en.wikipedia.org/wiki/CHIP_(programming_language) "CHIP (programming language)"
[66]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[67]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=15 "Edit section: See also"
[68]: https://en.wikipedia.org/wiki/BProlog "BProlog"
[69]: https://en.wikipedia.org/wiki/BNR_Prolog "BNR Prolog"
[70]: https://en.wikipedia.org/wiki/Ciao_(programming_language) "Ciao (programming language)"
[71]: https://en.wikipedia.org/wiki/CLP(R) "CLP(R)"
[72]: https://en.wikipedia.org/wiki/Oz_(programming_language) "Oz (programming language)"
[73]: https://en.wikipedia.org/wiki/ECLiPSe "ECLiPSe"
[74]: https://en.wikipedia.org/wiki/GNU_Prolog "GNU Prolog"
[75]: https://en.wikipedia.org/wiki/SWI-Prolog "SWI-Prolog"
[76]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=16 "Edit section: References"
[77]: https://archive.org/details/constraintproces00rina
[78]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[79]: https://en.wikipedia.org/wiki/Special:BookSources/1-55860-890-7 "Special:BookSources/1-55860-890-7"
[80]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[81]: https://en.wikipedia.org/wiki/Special:BookSources/1-55860-890-7 "Special:BookSources/1-55860-890-7"
[82]: https://archive.org/details/principlesofcons0000aptk
[83]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[84]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-82583-0 "Special:BookSources/0-521-82583-0"
[85]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[86]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-82583-0 "Special:BookSources/0-521-82583-0"
[87]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[88]: https://en.wikipedia.org/wiki/Special:BookSources/0-262-13341-5 "Special:BookSources/0-262-13341-5"
[89]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[90]: https://en.wikipedia.org/wiki/Special:BookSources/3-540-67623-6 "Special:BookSources/3-540-67623-6"
[91]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[92]: https://en.wikipedia.org/wiki/Special:BookSources/3-540-67623-6 "Special:BookSources/3-540-67623-6"
[93]: https://doi.org/10.1016%2F0743-1066%2894%2990033-7
[94]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[95]: https://doi.org/10.1016%2F0743-1066%2894%2990033-7
[96]: https://en.wikipedia.org/w/index.php?title=Constraint_logic_programming&action=edit&section=17 "Edit section: References"
