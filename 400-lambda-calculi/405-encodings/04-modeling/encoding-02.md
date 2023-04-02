# Lambda Calculus :: Encoding data types

- lambda calculus as a programming language
- syntax and semantics

- The only available language primitive: functions (the function type)
- All other data types modelled as functions and in terms of functions
- A lambda abs is the sort of lambda terms to which we assign meaning
- The assigned meaning may be a discrete value which the abs then represents
- A lambda abs may even be assigned several meanings (value repesentations)
- An abs denotes a value passively, but never stops its activate role as a fn
- This is functions-as-procedures and functions-as-values


## Lambda calculus as a programming language
## Syntax and semantics

Lambda calculus can be treated as a very minimalistic, pure, programming language, almost an esolang.

It is minimalistically bare-bones because it only comes with the handful of "builtins", all of which are rules on how to create and apply functions. In fact, the rules are only concerned with prescribing the proper syntax, leaving the semantics open for interpretations.



ctic shape of lambda expressions, prescribing and describing the allowed characters the punctuation

the syntactical rules that prescribe the shape of a function definition, aka lambda abstraction.

syntax 



rules that govern the definition of functions and their application to arguments which are themselves, again, functions. Nothing else is predefined, there's no standard library, and we even have to choose an evaluation strategy.

Hand at heart, the reduction strategy may not be so crucial thanks to *the Church-Rosser theorem*, which, roughly, says that if a redex is indeed reducable (does not diverges), then the normal order and applicative order strategy will produce the same reduct.

A *redex* is a lambda term that does reduce, as opposed to diverges, to another lambda term. The term it reduces to may be called a *reduct*. When a redex cannot be reduced further, it is in the *normal form*.

The *normal order* evaluation strategy evalutes the rightmost outermost redex, which means the args to functions are passed to it as as, without being evaluated first. The *applicative order* evaluation strategy evalutes the leftmost innermost redex, which means the args to functions are evaluated before being passed into a function. There are other reduction strategies and variants, but since our goal here is to use the lambda calculus as a PL, we have much bigger problems to solve than to deal immediately with the reduction strategy; if it would matter at all, we'll use the normal order evaluation.

# Lambda Calculus as a programming language

Without anything provided upfront, we start with a blank slate with only the rules of how to create and apply functions available. Usually, PLs provide a set of base types or language primitive types that are somewhat cooralated with the machine primitives. These, at least, inlcude such types as 64-bit integers, 64-bit floating point numbers (binary64), Booleans, characters (which encode Unicode code points). However, we must invent all of these ourselves, and using obly functions at that.

It is immediately clear that LC is not a usual language - with only functions that never evaluate to anything else but even more functions, we can never have "discrete" values like the primitive types have in most languages. The only way to model data types is to come up with a certain intepretation of lambda terms. Come to think about a lambda term, it can only be a lambda abstractions (a function), an application of an abstraction to a function argument, or a variable (that was previously bound so it means something. A variable at the top level doesn't make any sense, and an unbound variables appear only as formal parameters inside function, and a lambda term that is an application will be applied, so these two sorts of terms are not very suitable to carry meaning. Normally, we'll only be able to assign meaning to lambda abstractions.

Combinatory logic has indexed a large number of combinators, which, in lambda calculus, translate into abstractions. These are all higher-order functions (naturally, since all args are functions) without free variables. In fact, they are all *functionals*, being functions that operate on other functions to produce functions that are really used as functions. For example, the combinator `C` is used to compose functions, `B` flips the order of arguments, `I` is the, always useful, identity function.

The idea then of using λ-calculus for programming is to pick a lambda abstraction of some specific shape (since all functions are anonymous that is the only way to refer to a function) and decide that a function of such and such shape will represent some value.

This language is a pure one, meaning we won't have a way to do I/O, it is more a curisity and a mathematical exercise, as well as a challenge, beacuse we need to come up with a consistent set of lambda terms that do behave as we've intended. However, this challenge already has some "standard" solutions, so we might as well try to understand them rather than coming up with our own encoding scheme.

An *encoding scheme* is a set of lambda terms with some meaning attached, so that each term represents a certain value. The most famous encoding scheme was invented by Church himself, but other schemes, like Scott's, have turned out to be more efficient for recursive data types. For more basic, non-recursive types, the encoding schemse are the same. For example, all encoding schemes stick to representing the two values of the Boolean type the same as the *Church Booleans*.

## Booleans

In Church Booleans, the lambda abstraction, i.e. the combinator `K` was chosen to represent the value 'true', while the combinator `KI` stands for 'false'.

```hs
K := λa.λb.a
KI := λa.λb.b
```

The combinator `K` accepts two args, but it drops the second, returning only the first. This is so useful in itself that the `K` and `S` combinators are sufficient to recreate all other combinators. Here, as a mean to represent the Booleans, the `K` is no better a candidate to represent 'true' then `KI` (or some other combinator) is. But these two combinator do have a certain symmetry and work together nicely in standing for the two opposing Booleans. `K` drops the second and returns its first arg, while `KI` drops the second and returns its first arg.

In PLs, the Booleans are used to make decisions: if a Boolean evaluates to 'true', then the first or "then" branch is taken, otherwise the second or "else" branch is executed.

Most PLs support *short-circuiting*, so that the branch not taken is not evaluated. Pure functional programming languages, like Haskell and normal-order lambda calculi, do this naturally, so even a user-defined conditional function will do the right thing because the arguments are not evaluated prior to being passed into the function.

On the other hand, strict languages that support occasional lazy evaluation in situations such as this, must rely on the compiler to handle this properly; a regular, user-defined function that immitates the conditional won't behave as expected because the args are always eagerly evaluated before being passed into the function. In other words, the conditional is a *language construct* in strict languages (usually in the form of`if-then-else` construct), while it is a regular *expression* in non-strict languages.

The data type Boolean is therefore represented by the two functions `K` and `KI`, but we'll rename them to `T` and `F` to reflect the new role of each:

```hs
T := λab.a
F := λab.b
```

This means that, e.g. `T` is, first of all, a function, but also a value at the time. Well, maybe not at the same time… if an arg finds itself near it, the `T` will "activate", applying itself to the arg. But when there are no args around, the `T` will represent the value 'true', usually when a lambda term is reduced down to its normal form.

This bipolarity of those lambda terms that represent values but also act as regular functions, may be confusing at times, especially when the same lambda term represents several values. For example, the lambda abstraction `λab.a` (aka, the combinator `K`) is used to represent the value 'true', but, in most encoding schemes, it also represents the selector function `fst`, which picks and returns the first component from a pair. The `KI` combinator, `λab.b` that already represents the 'false' value, is also used as the function `snd` that picks and returns the second component from a pair. Also one of these two functions is still used to represent the number zero: in Church's encoding `KI` is 0, in Scott's `K` is 0.

Usually, we can discern from the context which of the several values a lambda term represents. This can be a problem here, in the untyped setting, where anything may be applied to anything; in the typed lambda calculi it is less of an issue.




They actually introduce the Boolean values



are free to come up with our language primitives. 

In λ-calculus, with only functions at our disposal, the only way to model various data types and data structures is by means of functions.

## Encoding data types




## Partially applied functions
