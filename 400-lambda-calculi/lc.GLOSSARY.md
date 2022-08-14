# Lambda Calculi :: Glossary

<!-- TOC -->

- [α-conversion](#α-conversion)
- [α-equivalence](#α-equivalence)
- [Application occurrence](#application-occurrence)
- [β-reduction](#β-reduction)
- [η-conversion](#η-conversion)
- [δ-expansion](#δ-expansion)
- [ξ-rule](#ξ-rule)
- [Barendregt convention](#barendregt-convention)
- [Binding occurrence](#binding-occurrence)
- [Binary Lambda Calculus](#binary-lambda-calculus)
- [Bound variable](#bound-variable)
- [Binding occurrence](#binding-occurrence-1)
- [Call-by-need](#call-by-need)
- [Church's Thesis](#churchs-thesis)
- [Combinators](#combinators)
- [Computation](#computation)
- [De Bruijn indexing](#de-bruijn-indexing)
- [De Bruijn notation](#de-bruijn-notation)
- [Effectively computable](#effectively-computable)
- [Eta conversion](#eta-conversion)
- [Free variable](#free-variable)
- [Formal system](#formal-system)
- [Functions](#functions)
- [Lambda abstraction](#lambda-abstraction)
- [Lambda application](#lambda-application)
- [Lambda calculi](#lambda-calculi)
- [Lambda calculus](#lambda-calculus)
- [Lambda expression](#lambda-expression)
- [Lambda term](#lambda-term)
- [Name capture](#name-capture)
- [Normal form](#normal-form)
- [Redex](#redex)
- [Reduction strategy](#reduction-strategy)
- [Evaluation](#evaluation)
- [Rho calculus](#rho-calculus)
- [Substitution](#substitution)

<!-- /TOC -->

## α-conversion
α-conversion is the process of renaming (free) variables in a lambda term. This is done in order to avoid name capture as a consequence of a substitution. This rule is a conversion, as opposed to a reduction, because it is reversable. So, the name of the binding variable is changed consistently throughout the lambda term, paying attention to also rename the application occurences of that variable.

For example, the redex `(λx.λy.x)(λx.y)`, if reduced to `(λy.(λx.y))` would make an incorrect reduction. To reduce it correctly, we must resolve the conflicting names by first renaming the binding and application occurences of the variable `x` in the abstraction, so it becomes `(λx.λy.x) =α= (λz.λy.z)`. The renamed exp is `(λz.λy.z)(λx.y)` which can be reduced to `(λy.(λx.y))`.


## α-equivalence
The notion of α-equivalence formalizes the fact that the exact names of bound variables are not important, so two instances of the same λ-term (an instance being the same λ-term with different names of the bound variables) are equivalent. For example, `λx.x =α= λa.a` expresses α-equivalence.


That is, α lambda abstraction `λx.x` is the same as `λz.z` or `λ παραμ . παραμ` (the latter uses multi-character names for params). Bound variables are also called formal or dummy parameters. De Bruijn notation completely dispenses with names, replacing them with indices. This concepts is exactly the same as the one from PLs where a function definition has formal parameters declared as a list of names.

## Application occurrence
One or more occurrences of the same variable in a lambda's body. For example, in the λ-term `λa.a a b`, the first `a` (under the binder, `λa`) is the binding occurrence of the variable `a`, while the other two are application occurrences of the variable `a`; Also, in the lambda's body both variables `a` are bound (in fact, they are the same variable), but the variable `b` is free.

## β-reduction
The β-reduction, one the 3 fundamental operations of LC, describes application, that is, the way a lambda term is applyied to another lambda term, `M N`. The term `M` better be a lambda abstraction, so it may be denoted more precisely as `λx.B`, where `x` is a formal paramater, and `B` stands for a lambda term that is the abstraction's body (which usually contains at least one occurence of the variable `x`). So, the form of application is `(λx.B) N`, with a lambda term `N` as the argument. The β-reduction prescribes the exact mechanics of reducing this term (this application), which must deal with the reduction strategy (eager, lazy), avoiding name-capturing, and similar. Considering this example `(λx.ax(yx)) y` and the normal order reduction strategy, the β-reduction proceeds by passing the term `y` unevaluated into the abstraction, where the formal parameter `x` binds it, `x ⟼ y`. Before performing the substitution of `x` by `y` in the body `ax(yx)`, the free variable `y` (in the body) needs to be renamed (into `z`) to avoid a name capture (incorrect replacement would result in the expression `ay(yy)`). After the renaming, the lambda expression is `(λx.ax(zx)) y`. Then the substitution, `[x ⟼ y]ax(zx)`, is performed, resulting in the final expression `ay(zy)`.

The essence of β-reduction is always the same, but due to the problem of name capturing, its specific forms vary. This rule is a reduction because β-reduction is non-reversable.

## η-conversion
The η-conversion rule establishes equality `λx.Tx` <=> `T`. The term `λx.Tx` means that `T` is expecting an arg `x`, that will be passed to it by the enclosing lambda abstraction. But `T` can very well await on that arg by itself - there's no need to scaffold the lambda abstraction around it, just to serve his lazyass the argument. In FP, the style heavy in η-reductions is called the point-free style. The opposite approach, heavy in η-expansions is called the point-full style. This rule is a conversion because this process is reversable in both directions, as η-expansion and η-contraction.

```hs
add :: a -> a -> a
add x y = x + y

plus :: a -> a -> a
plus x y = add x y  -- point-full
plus x   = add x    -- point-less
plus     = add      -- point-free
```


## δ-expansion
The δ-expansion rule is related to the expansion of syntactic abbreviations (macros). It is maintaining some sort of hygene and minds the name shadowing or some shit like that.

## ξ-rule
ξ-rule (zeta rule) states that equations should be preserved under binders. It fails to be sound for the usual interpretation of LC.

## Barendregt convention
A convention under which the names for the binding variables in a λ-term are chosen in such manner that they are all distinct between themselves and between the free variables occurring in the λ-term. By following the Barendregt convention we can implement a naive version of substitution because we need not worry about name capture.

## Binding occurrence
A variable's occurrence under the λ-binder is its binding occurrence. Possible occurrences of that variable in a labda's body are its application occurrences. 

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

## Lambda calculi
The collection of all calculi based on the original Church's work is called lambda calculi. However, the singular form, lambda calculus, is also often used to name this collection, particularly when the distinction between a particular version and the entire collection is clear.

## Lambda calculus
λ-calculus (LC) is a formal system in mathematical logic, invented by Alonzo Church in the 1930's, for expressing computation and exploring the problems of effectively computable functions. The two mechanisms of λ-calculus are abstraction, which is a way to define a function, and β-reduction that defines function application.

## Lambda expression
A lambda expression is any number of lambda terms arranged in the syntactically allowed way. The root (topmost) lambda term of a lambda expression is usually an application.

## Lambda term
A lambda term is either a variable, an abstraction, or an application.

## Name capture
The process of applying a function to an argument means substituting all the application occurrences of the formal parameter, in a function's body, with the argument, in a way that avoids name clashes with existing identifiers (names of variables); e.g. `(λx.λy.x) y` is `λz.y`, not `λy.y` with `y` captured.

## Normal form
In abstract rewriting, an object is in normal form if it cannot be rewritten any further, i.e. it is irreducible. Depending on the rewriting system, an object may rewrite to several normal forms or none at all. Many properties of rewriting systems relate to normal forms.

## Redex
Redex is a reducable lambda term.

## Reduction strategy
In rewriting, a reduction strategy (rewriting strategy) strategy is a relation specifying a *rewrite* for each object or term, compatible with a given *reduction relation*. Some authors use this term as a synonym for *evaluation strategy*, while others reserve the latter phrase for evaluation that results in some notion of value.

## Evaluation
Reduction encompasses many notions that assume reduction of expressions in a language (rewriting, substitution, function application), but evaluation, as the name suggest, assumes that the reduction process ends with something that is considered a value in that language.

## Rho calculus
Invented as a general means to uniformly integrate rewriting and lambda calculus.

## Substitution
Substitution is part of the process of applying a function to an argument: the argument is first bound by a formal parameter, then all the application occurrences of that parameter (in the function's body) are replaced with the value of the argument. If an abstraction is applied to a lambda expression `N` acting as an argument, e.g. `(λp.B) N`, the substitution can be be denoted as the let-expresion `let p = N in B`, but more commonly as `[p:=N]B`. [pop-fact] every author has a prefered format for denoting substitution; punchline: they are all distinct.
