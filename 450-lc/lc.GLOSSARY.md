# Lambda Calculi :: Glossary

<!-- TOC -->

- [α-conversion](#α-conversion)
- [α-equivalence](#α-equivalence)
- [β-reduction](#β-reduction)
- [η-conversion](#η-conversion)
- [δ-expansion](#δ-expansion)
- [ξ-rule](#ξ-rule)
- [Applied occurrence](#applied-occurrence)
- [Barendregt convention](#barendregt-convention)
- [Beta normal form](#beta-normal-form)
- [Beta-eta normal form](#beta-eta-normal-form)
- [Binding occurrence](#binding-occurrence)
- [Binary Lambda Calculus](#binary-lambda-calculus)
- [Bound variable](#bound-variable)
- [Binding occurrence](#binding-occurrence-1)
- [Call-by-need](#call-by-need)
- [Church's Thesis](#churchs-thesis)
- [Church numerals](#church-numerals)
- [Church encoding](#church-encoding)
- [Combinators](#combinators)
- [Computation](#computation)
- [Contractum](#contractum)
- [Conversion rule](#conversion-rule)
- [Curry's paradox](#currys-paradox)
- [De Bruijn indexing](#de-bruijn-indexing)
- [De Bruijn notation](#de-bruijn-notation)
- [Effectively computable](#effectively-computable)
- [Encoding schema](#encoding-schema)
- [Eta conversion](#eta-conversion)
- [Evaluation](#evaluation)
- [Evaluation strategy](#evaluation-strategy)
- [Free variable](#free-variable)
- [Formal system](#formal-system)
- [Functions](#functions)
- [Head normal form](#head-normal-form)
- [Kleene-Rosser paradox](#kleene-rosser-paradox)
- [Lambda abstraction](#lambda-abstraction)
- [Lambda application](#lambda-application)
- [Lambda calculi](#lambda-calculi)
- [Lambda calculus](#lambda-calculus)
- [Lambda computable](#lambda-computable)
- [Lambda expression](#lambda-expression)
- [Lambda term](#lambda-term)
- [Name capture](#name-capture)
- [Normal form](#normal-form)
- [Parigot numerals](#parigot-numerals)
- [Redex](#redex)
- [Reduction strategy](#reduction-strategy)
- [Rho calculus](#rho-calculus)
- [Reduction rule](#reduction-rule)
- [Scott numerals](#scott-numerals)
- [Substitution](#substitution)
- [Weak Head normal form](#weak-head-normal-form)

<!-- /TOC -->

## α-conversion
The α-conversion is one of the 3 major rule of lambda calculus. It formalizes the fact that the specific names of variables are unimportant, i.e. two lambda terms are equal up to α-equivalence, e.g. `λx.x` and `λa.a`. The α-conversion formalizes the process of renaming a variable, which may also be construed as substituting the original variable with a fresh one, which is necessary in order to avoid name-capture during substitutions.

## α-equivalence
The α-conversion formalizes the renaming of variables in lambda terms. In such a process, we say that two lambda terms are equal up to renaming or up to α-equivalence, e.g. `λx.x =α= λa.a` expresses their α-equivalence.

## β-reduction
The β-reduction rule formalizes the process of lambda application, i.e. the process of applying an abstraction to an argument. This process is completely mechanical and involves binding the argument, and then replacing (rewriting) all the applied occurrences of that parameter with the argument in the body of the abstraction, while avoiding name-capture. β-reduction of a term `(λx.B) N` may be explicitly denoted as `[x:=N]B`. For example, the redex `(λab.a)(λx.x)` reduces to `λbx.x`, which involves the substitution explicitly denoted by `[a:=λx.x]a`. If lambda calculus is seen as an idealized FPL then β-reduction corresponds to a computational step. This step can be repeated by additional β-reductions until no more applications are left. In the untyped lambda calculus the reduction process may not terminate. 


## η-conversion
The η-conversion rule is about the equality of `λx.Tx` <=> `T`. A term `λx.Tx` means that a lambda term `T` will be applied to the arg `x` as soon as it is supplied. But `T` can very well await for the arg on its own - there's no need to scaffold an entire lambda abstraction around it, just to serve it the arg. The η-rule highlights the fact that every object is a function in LC. A FP style, heavy in η-reductions, is called the *point-free style*, obtained by η-contracting the expressions as much as possible. By η-expanding the expressions as much as possible we obtain the *point-full style*. The η-rule is a conversion rule because this process is reversable in both directions, as η-expansion and η-contraction.

## δ-expansion
The δ-expansion rule is related to the expansion of syntactic abbreviations (macros). It is maintaining some sort of hygene and minds the name shadowing or some shit like that.

## ξ-rule
Admitting the `ξ` (chi) rule implies that equations (lambda terms) should be preserved under binders, ξ-rule: `M = N --> λx.M = λx.N`.

## Applied occurrence
One or more occurrences of the same variable in a lambda's body. For example, in the λ-term `λa.a a b`, the first `a` (under the binder, `λa`) is the binding occurrence of the variable `a`, while the other two are application occurrences of the variable `a`; Also, in the lambda's body both variables `a` are bound (in fact, they are the same variable), but the variable `b` is free.

## Barendregt convention
A convention under which the names for the binding variables in a λ-term are chosen in such manner that they are all distinct between themselves and between the free variables occurring in the λ-term. By following the Barendregt convention we can implement a naive version of substitution because we need not worry about name capture.

## Beta normal form
A term is in beta normal form if no beta reduction is possible.

## Beta-eta normal form
A term is in beta-eta normal form if neither a beta reduction nor an eta reduction is possible.

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

## Church numerals
The Church numerals is an encoding of natural numbers in λ-calculus that represents numbers as iterators. The Church numerals scheme has a very inefficient predecessor.

## Church encoding
A way to encode data types in λ-calculus using nothing but functions. The Church numerals are part of the Church encoding, along with the Church Booleans, Church pair, Church list, and the encodings of many other data types.

## Combinators
Combinators are lambda expressions without free variables.
Combinator Birds: index of combinators along with their SKI equivalents
https://www.angelfire.com/tx4/cus/combinator/birds.html

## Computation
is usually modelled as a mapping from inputs to outputs, carried out by a formal "machine," or program, which processes its input in a sequence of steps.

## Contractum
A redex is a lambda term of the form `(λx.M)N` and it has a contractum `M[x:=N]` that is, the result of substituting `N` for free occurrences of `x` in `M`. (plural contracta).

## Conversion rule
Unlike reduction rules, conversion rules are reversable. These are the rules like α-conversion and η-conversion.

## Curry's paradox
Curry's paradox is about the construction of an arbitrary claim F that is proved from the mere existence of a sentence C that says of itself "If C, then F". For example, "If this sentence is true, then LC is the best PL". Normally, in order to prove a conditional statement, `P → Q`, we start with the assumption of `P` (the antecedent, here "If this sentence is true"), and then we use that assumption to show that the conclusion `Q` is true. But with a self-referring sentence such as this, in assuming `P` we have actually assumed both `P` and `P → Q`.

## De Bruijn indexing
De Bruijn indexing is a method for avoiding naming bound variables in lambda calculus, and using integers to represent variables.

## De Bruijn notation
De Bruijn notation is an alternative syntax for lambda expressions.

## Effectively computable
function is one that can be computed in a finite amount of time using finite resources.

## Encoding schema
An encoding schema is a consistent and comprehensive way to encode data types in λ-calculus using nothing but functions. The most well-known such an encoding schema is the Church encoding, but there are others like Scott encoding, a combination of Church and Scott encoding called Church-Scott encoding, Bohm-Berrarduci encoding, etc.

## Eta conversion
η-conversion refers to the two inverse processes: *η-reduction* and *η-expansion*, whose definition is best examplified by `(λx.T)x` <=> `T`, where `x ∉ FV(T)`.

## Evaluation
The concept of reduction comprises many similar notions, such as term rewriting, substitution, conversion, function application, all based on the assumption that the expressions in a language are reducable. However, evaluation, besides being another notion of reduction, assumes that the reduction process will end and that is will produce something that is considered a value in the given language.

## Evaluation strategy
Evaluation strategy implies that the result of rewriting is some kind of a value (a bottom term, a value in the given language). Reduction strategy is a more general term that doesn't imply thi, although some authors use the two terms synonymously.

## Free variable
The set of free variables in a lambda term consists of those variables that are in the scope of the enclosing abstraction but are not bound by it.

## Formal system
A formal system is an *abstract structure* used for inferring theorems from axioms according to a set of rules. These rules, which are used for carrying out the inference of theorems from axioms, are the *logical calculus* of the formal system. A formal system may represent a well-defined system of abstract thought. A formal system is essentially an axiomatic system. The term *formalism* is sometimes a near synonym for formal system, but it can also refer to a given style of notation.

## Functions
Under the **extensional view** (*functions-as-mappings*) a function is a map between two sets, it associates elementes of one set to the elements of other. This is similar to a database aspect, where a primary key selects a particular database row. We can design a function that acts like a finite map, imitating a lookup table of key/value pairs. Such a function takes a key (as a query), and looks it up by trying to match the query (key value) with a key (in a key-value pair) of an entry. If it matches, the adssociated value is returned. Otherwise, the next entry (function with akey-value pair) is checked. To make it a total function, when all entries are exhausted, it returns a (predefined) default.

Under the **intensional view** (*functions-as-transformations*) a function is a specification (procedure, rule, formula) of how to transform input to output. In this setting, the output values are dependent on the input values.

## Head normal form
A term is in head normal form if there is no beta-redex in head position.

## Kleene-Rosser paradox
The Kleene-Rosser paradox shows that certain systems of formal logic are inconsistent; in particular, the version of Haskell Curry's combinatory logic introduced in 1930, and Alonzo Church's original lambda calculus, introduced in 1932-1933, both originally intended as systems of formal logic. The paradox was exhibited by Stephen Kleene and J. B. Rosser in their 1935's paper "The inconsistency of certain formal logics". Kleene and Rosser were able to show that both systems are able to characterize and enumerate their provably total, definable number-theoretic functions, which enabled them to construct a term that essentially replicates *Richard's paradox* in formal language. Curry later managed to identify the crucial ingredients of the calculi that allowed the construction of this paradox, and used this to construct a much simpler paradox, now known as *Curry's paradox*.

## Lambda abstraction
Lambda abstraction is analogous to a function definition. The term `λx.B` defines an anonymous function with a formal parameter `x` and the body of the function represented by a term `B`.

## Lambda application
Lambda application is the act of applying a lambda term `M` to another lambda term `N`, denoted by juxtaposition as `MN`. The term `M` is assumed to be an abstaction, having the form `λx.B`, and the term `N` is the argument. The application continues with substitution that avoids name capture.

## Lambda calculi
The collection of all calculi based on the original Church's work is called lambda calculi. However, the singular form, lambda calculus, is also often used to name this collection, particularly when the distinction between a particular version and the entire collection is clear.

## Lambda calculus
λ-calculus (LC) is a formal system in mathematical logic, invented by Alonzo Church in the 1930's, for expressing computation and exploring effectively computable functions. "Lambda calculus" is a collective term for any typed or untyped variant, defaulting to the untyped. The plural form, "lambda calculi", denotes the whole slew of versions and extensions to the basic Church's calculus. The phrase like "the original Church's calculus" may be misleading because the original Church's calculus was actually a system of formal logic, a superset of the modern lambda calculus, extended with some additional logical symbols and quantifiers (it was this system of logic that Kleene and Rosser found to be inconsistent in their 1935's paper defensively titled "The inconsistency of certain formal logics").

## Lambda computable
A function on the natural numbers is called λ-computable if the corresponding function on the Church numerals can be represented by a term of the λ-calculus.

## Lambda expression
A lambda expression is any number of lambda terms arranged in the syntactically allowed way. The phrase "lambda expression" denotes any arbitrary expression of lambda calculus; the phrase that should be used when referring to the 3 elementary lambda forms is "lambda term(s)".

## Lambda term
Stricly, the phrase "lambda term" should be used when refering to the three elementary forms of lambda calculus (variables, abstraction and application), either individually or collectively. For example, "…by induction over the lambda terms" is always intended to mean the 3 elementary lambda forms. On the other hand, the phrase "lambda expression" may be used unrestrictedly to refer to any arbitrary expression of lambda calculus. Loosely, the former phrase is often abused in the latter sense.

## Name capture
The process of applying a function to an argument means substituting all the application occurrences of the formal parameter, in a function's body, with the argument, in a way that avoids name clashes with existing identifiers (names of variables); e.g. `(λx.λy.x) y` is `λz.y`, not `λy.y` with `y` captured.

## Normal form
In abstract rewriting, an exp is in normal form if it cannot be rewritten any further, i.e. if it's irreducible. Depending on a rewriting system, an object may be rewriten to several normal forms or none at all.

Stated formally, if `(A, →)` is an abstract rewriting system, `x ∈ A` is in normal form if no `y ∈ A` exists such that `x → y`, i.e. `x` is an irreducible term.

An object `a` is *weakly normalizing* if there exists at least one particular sequence of rewrites starting from `a` that eventually yields a normal form. A rewriting system has the weak normalization property or is weakly normalizing (WN) if every object is weakly normalizing.

An object `a` is *strongly normalizing* if every sequence of rewrites starting from `a` eventually terminates with a normal form. An abstract rewriting system is strongly normalizing, terminating, noetherian, or has the strong normalization property (SN), if each of its objects is strongly normalizing.

A rewriting system has the *normal form property* (NF) if for all objects `a` and normal forms `b`, `b` can be reached from `a` by a series of rewrites and inverse rewrites only if `a` reduces to `b`.

A rewriting system has the *unique normal form property* (UN) if for all normal forms `a,b ∈ S`, `a` can be reached from `b` by a series of rewrites and inverse rewrites only if `a` is equal to `b`.

A rewriting system has the *unique normal form property with respect to reduction* (UN→) if for every term reducing to normal forms `a` and `b`, `a` is equal to `b`.

## Parigot numerals
The Parigot numerals is an encoding of natural numbers in λ-calculus that improves upon both Church's and Scott's schemes by representing numbers as the Scott-encoded list of Church-encoded naturals.

## Redex
A redex is a reducable lambda term. A redex is a lambda term of the form `(λx.M)N` and it has a contractum `M[x:=N]`, that is the result of substituting `N` for free occurrences of `x` in `M`. Actually, this is a beta redex since it can be reduced by beta reduction. A term may also be in η-normal form if it can be contracted by η-reduction (η-contraction).

A term is in *beta normal form* if no beta reduction is possible. A term is in *beta-eta normal form* if neither a beta reduction nor an eta reduction is possible. A term is in *head normal form* if there is no beta-redex in head position. A term in *weak head normal form* is either a term in head normal form or an abstraction (thus the body of that abs may contain a redex).

## Reduction strategy
A reduction strategy is a relation specifying a rewrite for each expression compatible with a given *reduction relation*. Some authors use it as a synonym for *evaluation strategy*, while others reserve the latter to denote that the result of rewriting is (some kind of) a value.

## Rho calculus
Invented as a general means to uniformly integrate rewriting and lambda calculus.

## Reduction rule
The rules of lambda calculus that are irreversable; primarily, β-reduction. (whutabut δ-reduction?)

## Scott numerals
The Scott numerals is an encoding of natural numbers in λ-calculus that represents numbers by pattern matching. The Scott numerals scheme has a very efficient predecessor.

## Substitution
Substitution plays a part in the process of function application (β-reduction). First, the argument the lambda abstraction is applied to gets bound to the positionally appropriate formal parameter (this is the binding occurrence of that parameter). Second, all the applied occurrences of that parameter (located in the body of the lambda abstraction) are replaced with the argument's value. A meta lambda term `(λx.B)A` is a redex because the lambda abstraction `λx.B` can be applied to the argument exp `A`. The application proceeds by first binding the arg `A` to the param `x`, and then all the free, applied occurrences, of the var `x`, in the body `B`, are replaced by the arg `A`, which may be explicitly denoted as `[x:=A]B`. However, prior to the application, care must be taken to avoid name capture which may happen when two lambda terms contain a variable with the same name, although it doesn't stand for the same value. In these situations, the conflicting variable name must be changed in one of the terms. This means chanaging all the occurrences, the binding as well as all the applied occurrences, of that variable. This renaming process may also be expressed as a substitution and denoted by, e.g. `[x:=y]A` (renaming, i.e. substituting all the `x`'s in the arg `A` with the variable `y`). Substitutions may also be expressed as let-expresions: `let x = M in N` instead of `[x:=N]M`. [trivia: many authors have a favorite form for denoting substitution - punchline: differences abound].

## Weak Head normal form
A term in weak head normal form (WHNF) is either a term in head normal form or a lambda abstraction - this means a redex may appear inside a lambda body. Thus in reduction strategy that reduces under lambdas, a term cannot end up in WHNF.
