# Glossary of lambda calculus


## Lambda calculus

λ-calculus (LC) is a formal system in mathematical logic, invented by Alonzo Church in the 1930's, for expressing computation and exploring the problems related to computable numbers and functions, as well as for his research into the foundations of mathematics. The two mechanisms of λ-calculus are functions abstraction, which is a way to define new functions, and β-reduction, which is the process of function application via variable substitution that avoids name capturing.

## Alpha conversion

α-conversion is one the 3 fundamental operations of λ-calculus that renames free variables in order to avoid name capturing while performing substitution.

## Beta reduction

β-reduction is the process of function application via variable substitution that avoids name capturing.

## Combinators

Combinators are lambda expressions without free variables.

Combinator Birds: index of combinators along with their SKI equivalents
https://www.angelfire.com/tx4/cus/combinator/birds.html


## Eta conversion

η-conversion refers to the two inverse processes: *η-reduction* and *η-expansion*, whose definition is best stated ostensively:

`(λx.E)x` <=> `E` , where `x ∉ FV(E)` (FV is a set of free vars in E)


## Free variable

A variable that is not bound within the lambda term under consideration. In the main, top level, lambda expression (and there can be only one top level lambda expression), all variables must be bound; any unbound variable would remain undefined ("undefined symbol" error).

## Bound variable

Bound variable is a variable whose binding context is within the scope. A variable gets bound at its binding site; that binder has jurisdiction all the way to the right of its dot (only minding the possible enclosing parenthesis), which is called its body; when the considered lambda expresssion is only the body part, the variable is free within it; but when we consider the body and the binder, then the variable is said to be bound (within that expanded lambda expresion).

## Substitution

Variable substitution is a part of the process of applying a function to an argument: the argument is bound to the formal parameter and then all the occurrences of that parameter, throughout the function's body, are replaced with the argument; e.g. `(λx.(λa.a x) x y) W` ~~> `(λa.a W) W y`, where: an anonymous function `(λx.(λa.a x) x y)` is applied to an arg `W`; `λx` is the binding site for x, the x in `λx` is the binding occurrence of `x`, (otherwise known as the formal parameter); function application is just (careful) variable substitution - all application occurrences of `x`, in the function's body, are replaced by `W`. Substitution is explicitly denoted by `[x/W]E`.

## Application occurrence of a variable

An occurrence of a variable in the body of a function that bound it (in its head, which is the binding context).

## Binding occurrence of a variable

An occurrence of a variable in the head of a function, in the binding context. Otherwise known as a formal parameter.

## Name capture

The process of applying a function to an argument means substituting all the application occurrences of the formal parameter, in a function's body, with the argument, in a way that avoids name clashes with existing identifiers (names of variables).
