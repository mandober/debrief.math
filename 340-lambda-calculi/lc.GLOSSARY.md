# Lambda Calculus: GLOSSARY


## Alpha conversion
The `α-conversion` is one the 3 fundamental operations of λ-calculus that renames free variables in order to avoid name capturing while performing substitution.

## Application occurrence of a variable
An occurrence of a variable in the body of a function that bound it (in its head, which is the binding context).

## Beta reduction
β-reduction is the process of function application via variable substitution that avoids name capturing.

## Binary Lambda Calculus
Some consider BLC as the most concise PL ever known to man. BLC was developed to make Algorithmic Information Theory, the theory of smallest programs, more concrete. It starts with the simplest model of computation, the λ-calculus, and adds the minimum amount of machinery to enable binary input and output.

## Bound variable
Bound variable is a variable whose binding context is within some particular scope. A variable bound at the level of abstraction is actually free when considering only that abstraction's body as a subexpression.

## Binding occurrence
The binding occurrence of a parameter (variable) is the occurrence of that variable in a binding context, in the function's head.

## Call-by-need
The call-by-need evaluation strategy is a version of the call-by-name strategy, that pays attention to duplicated variables. For example, if a lambda abstraction is applied to two arguments which are the same, the args are not evaluated before the call, like in the call-by-name; when they are eventially needed, only one of them is evaluated and that result is shared with the other. Thus, this strategy is also known as *call-by-sharing*. Moreover, the result of each evaluation is memoized for the sake of the future calls involving the same input.

## Church's Thesis
Effectively computable functions (from positive integers to positive integers) are just those definable in the lambda calculus. Or, equivalently: it is not possible to build a machine that is more powerful than a Turing machine. Church's thesis cannot be proven because "effectively computable" is an intuitive notion, not a mathematical one. It can only be refuted by giving a counter-example - a machine that can solve a problem not computable by a Turing machine. So far, all models of effectively computable functions have shown to be equivalent to Turing machines (or the lambda calculus).

A problem that cannot be solved by any Turing machine in finite time (or any equivalent formalism) is called **uncomputable**. Assuming Church's thesis is true, an uncomputable problem cannot be solved by any real computer. The Halting Problem: Given an arbitrary Turing machine and its input tape, will the machine eventually halt? The Halting Problem is provably uncomputable - which means that it cannot be solved in practice.

## Combinators
Combinators are lambda expressions without free variables.
Combinator Birds: index of combinators along with their SKI equivalents
https://www.angelfire.com/tx4/cus/combinator/birds.html

## Computation
is usually modelled as a mapping from inputs to outputs, carried out by a formal "machine," or program, which processes its input in a sequence of steps.


## De Bruijn indexing
De Bruijn indexing is a method for avoiding naming bound variables in lambda calculus, and using integers to represent variables.

## De Bruijn notation
De Bruijn notation is an alternative syntax for lambda expressions.

## Effectively computable
function is one that can be computed in a finite amount of time using finite resources.

## Eta conversion
η-conversion refers to the two inverse processes: *η-reduction* and *η-expansion*, whose definition is best examplified by `(λx.T)x` <=> `T`, where `x ∉ FV(T)`.

## Free variable
The set of free variables in a lambda term consists of those variables that are in the scope of the enclosing abstraction but are not bound by it.

## Formal system
A formal system is an *abstract structure* used for inferring theorems from axioms according to a set of rules. These rules, which are used for carrying out the inference of theorems from axioms, are the *logical calculus* of the formal system. A formal system may represent a well-defined system of abstract thought. A formal system is essentially an axiomatic system. The term *formalism* is sometimes a near synonym for formal system, but it can also refer to a given style of notation.

## Functions
Under the **extensional view** (*functions-as-mappings*) a function is a map between two sets, it associates elementes of one set to the elements of other. This is similar to a database aspect, where a primary key selects a particular database row. We can design a function that acts like a finite map, imitating a lookup table of key/value pairs. Such a function takes a key (as a query), and looks it up by trying to match the query (key value) with a key (in a key-value pair) of an entry. If it matches, the adssociated value is returned. Otherwise, the next entry (function with akey-value pair) is checked. To make it a total function, when all entries are exhausted, it returns a (predefined) default.

Under the **intensional view** (*functions-as-transformations*) a function is a specification (procedure, rule, formula) of how to transform input to output. In this setting, the output values are dependent on the input values.

## Lambda abstraction
Lambda abstraction is analogous to a function definition. The term `λx.B` defines an anonymous function with a formal parameter `x` and the body of the function represented by a term `B`.

## Lambda application
Lambda application is the act of applying a lambda term `M` to another lambda term `N`, denoted by juxtaposition as `MN`. The term `M` is assumed to be an abstaction, having the form `λx.B`, and the term `N` is the argument. The application continues with substitution that avoids name capture.

## Lambda calculus
λ-calculus (LC) is a formal system in mathematical logic, invented by Alonzo Church in the 1930's, for expressing computation and exploring the problems of effectively computable functions. The two mechanisms of λ-calculus are abstraction, which is a way to define a function, and β-reduction that defines function application.
https://en.wikipedia.org/wiki/Lambda_calculus

## Lambda expression
A lambda expression is any number of lambda terms arranged in the syntactically allowed way. The root (topmost) lambda term of a lambda expression is usually an application.

## Lambda term
A lambda term is either a variable, an abstraction, or an application.

## Name capture
The process of applying a function to an argument means substituting all the application occurrences of the formal parameter, in a function's body, with the argument, in a way that avoids name clashes with existing identifiers (names of variables); e.g. `(λx.λy.x) y` is `λz.y`, not `λy.y` with `y` captured.

## Normal form
In abstract rewriting, an object is in normal form if it cannot be rewritten any further, i.e. it is irreducible. Depending on the rewriting system, an object may rewrite to several normal forms or none at all. Many properties of rewriting systems relate to normal forms.

## Reduction strategy
In rewriting, a reduction strategy (rewriting strategy) strategy is a relation specifying a *rewrite* for each object or term, compatible with a given *reduction relation*. Some authors use this term as a synonym for *evaluation strategy*, while others reserve the latter phrase for evaluation that results in some notion of value.

## Evaluation
Reduction encompasses many notions that assume reduction of expressions in a language (rewriting, substitution, function application), but evaluation, as the name suggest, assumes that the reduction process ends with something that is considered a value in that language.

## Rho calculus
Invented as a general means to uniformly integrate rewriting and lambda calculus.

## Substitution
Substitution is part of the process of applying a function to an argument: the argument is first bound by a formal parameter, then all the application occurrences of that parameter (in the function's body) are replaced with the value of the argument. If an abstraction is applied to a lambda expression `N` acting as an argument, e.g. `(λp.B) N`, the substitution can be be denoted as the let-expresion `let p = N in B`, but more commonly as `[p:=N]B`. [pop-fact] every author has a prefered format for denoting substitution; punchline: they are all distinct.

## α-equivalence
The α-equivalence rule states that names of bound variables are insignificant. Thus, they are called formal parameters or even "dummy" variables.

## β-reduction
The β-reduction specifies how a redex (reducable lambda term) is reduced, i.e. the way a lambda abstraction is applied to an argument, which itself is another abstraction. In fact, there β-reduction operation itself is fixed (it is always the same), it just states that the formal parameter binds the argument such that its applied occurrences in the body are replaced by the value of the argument, minding the name capture.

## η-conversion
The η-conversion rule establishes equality `λx.Tx` <=> `T`. The term `λx.Tx` means that `T` is awaiting to be served an argument `x` by the enclosing lambda abstraction. But, `T` can very well await on args all by itself, there's no need to engage the abstraction to serve him as some kind of proxy. In FPLs, this corresponds to the point-free style.

## δ-expansion
The δ-expansion rule is related to the expansion of syntactic abbreviations (macros). It is maintaining some sort of hygene and minds the name shadowing or some shit like that.

## ξ-rule
ξ-rule states that equations should be preserved under binders. It fails to be sound for the usual interpretation.
