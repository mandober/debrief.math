# Rewriting

https://en.wikipedia.org/wiki/Rewriting

- rewrite system
- Thue system
- arithmetic
- logic formulas
- identities
- equational reasoning
- replacing equals for equals
- lambda calculus
- functions in general






In mathematics, rewriting covers a wide range of methods of replacing expressions with other expressions. Such methods may be achieved by rewriting systems (aka rewrite systems, rewrite engines, reduction systems), which, in their most basic form, consist of a set of objects, plus relations on how to transform those objects.



There is a lot of rewriting in math, that is, since math computations are pure (like e.g. Haskell's functions), we can do equational reasoning to understand how math functions compute. The equational reasoning involves rewriting of expressions with their equalities, the result of which is nothing but a decomposion of the original expression into its atomic parts. Repeatedly replacing atomic expressions by their definitions eventually gets us the answer. Provided that this procedure is a deterministic, it can be made into an algorithm that can mechanically compute the solution.

In logic, there are procedures for converting logic formulas into various normal forms that can be implemented as a rewriting system. For example, the procedure for converting a formula into CNF.


In such a system, each rule is chosen so that the left side is equivalent to the right side, and consequently when the left side matches a subexpression, performing a rewrite of that subexpression from left to right maintains logical consistency and value of the entire expression.

Traditionally, a **rewriting system** consists of a set of rules, but there is always an underlying formal language, with an *alphabet* (letters of the language) and a *grammar* that identifies the *well-formed expressions* (well-formed formulas, wffs) built from the letters of the alphabet.

A rule has two parts separated by the rewrite symbol (`->`, `:=`, `::=`, even `=`), and thus referred to as left hand side (lhs) and right hand side (rhs). Each rule relates two expressions on each side of the rewrite symbol. In fact, the lhs of a rule specifies the form an expression must take in order for the rule to be applicable. Aside from these components, there is always a main expression which is undergoing this rewrite process. The main expression is usually rewritten in steps by processing it from left to right. A mathing subexpression of the main expression is replaced with an expression appearing on the rhs of the applicable rule. This continues until the main expression is entirely processed or until there are no applicable rules.




The traditional rewriting systems are usually expressed with symbols, some of which are terminal, i.e. literal symbols that are just copied over verbatim, and non-terminal symbols which are defined in terms of other expressions. A BNF grammar is an example.

A  := AAc
Ac := ∅

cAAc -> c


## Lambda calculus and functions in general

Lambda calculus, as the essence of functional programming, is also a pure rewriting system, only rewriting is done in terms of abstractions and applications. An abstraction defines a blueprint or a template consisting of variables that correspond to the placeholders or non-terminals, and the literal terms which remain as is. Variables in abstractions mark the places in an expression (lambda body) which are to be filled by other expressions, called arguments when the abstraction is applied.

More generally, abstractions are function definitions, but the mechanism involved remain almost the same. Pure functions can also be considered as defining a template and marking the places where the varying bits go. Applying a function to an argument, binds the argument to a variable, the semantic consequence of which is the replacement of all free occurences (application occurences) of that variable throughout the function's body with the value of the argument. Although it has a different mechanism, it is also a form of a rewriting, as long as the functions are pure (side-effecting functions cannot be reasoned about equationally, and are far more complicated for their application and execution to be deemed an instance of a rewriting system).

---

In brief, all computation is expressable in terms of a rewriting system. Mathematical functions are just another form of rewriting.
