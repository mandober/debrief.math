# Variables

The terms "variable" and "parameter" are used interchangably, but since LC only has functions it pays to use more strict definitions: a variable is an abstract container that is always associated with a value, and identified by a name. On the other hand, a paramater is a special kind of variable used in function definitions, and, unlike variables, parameters are initially empty. In fact, each paremeter has two distinct roles in a function definition (abstraction).

A parameter first appears in the head of a function, used by the function to declare its dependencies. This is a parameter's *binding occurence*, and a parameter in this location is called a *formal parameter*, or sometimes even a "dummy" parameter. This signifiers suggest the thing with parameter names - they are not important per se. Secondly, a formal parameter can appear any number of times in a function's body, and these instances are called *application occurrences*.

In LC, but also in the broader mathematical and PL context, we say that a function is *parameterized* by one or more values. For example, a function that calculates the square of a number is parameterized by a number - it accepts a number and then returns the result that is the square of that number.

In math, functions are usually named, e.g. `f(x) = y`, where `f` is the name of the function, `x` is the formal parameter, and `y` represents the result. However, math can also express anonymous functions, `x ⟼ y`, we say that this anonymous function maps an `x` to an `y`. We can also specify the definition of this function as `f(x) = x²`, or anonymously as `x ⟼ x²`.

Each function has two constituent parts: the head and the body. The head is the part intended for declarations: it contains the list of parameters, in this context called *formal parameters*.

First, variables are used as parameters in a lambda abstraction. 

In simple lambda abstractions, e.g. `λx.x` or `λx.y`, the variable `x` occurs as a formal parameter in both cases. When this lambdas are applied to an argument, the `x` variable (parameter) will bind that argument. These kinds of variable occurrences are called *binding occurrences*.

- binding occurrence vs application occurrences
- free vs bound variables

Variables that occur in a lambda abstraction are considered bound; e.g. `λx.xyx` is a lambda expression in which the variable `x` occurs bound, while the variable `y` occurs free.

## Variable occurrences

In a lambda expression, a variable can occur in different roles and scopes.

## Application occurrence

An occurrence of a variable in the body of a function that bound it (in its head, which is the binding context).

## Free variables

The set of free variables in a given lambda term `M`, denoted `fv(M)` is recursively defined as follows:
1. Var: `fv x      = x`
2. App: `fv (M N)  = fv M ⋃ fv N`
3. Abs: `fv (λx.M) = fv M \ {x}`

- If the term is a variable, `x`, then the set of free vars is just `x`.
- If the term is an application, `M N`, then the set of free vars, `fv (M N)`, is a union of the sets of free vars of `M` and `N`, i.e. `fv M ⋃ fv N`.

Variables that are not free in an expression `M` are called *bound variables*. Alternatively, a variable is bound if it occurs under the scope of some binder (λ) in `M`.

## Bound variable

Bound variable is a variable whose binding context is within the scope. A variable gets bound at its binding site; that binder has jurisdiction all the way to the right of its dot (only minding the possible enclosing parenthesis), which is called its body; when the considered lambda expresssion is only the body part, the variable is free within it; but when we consider the body and the binder, then the variable is said to be bound (within that expanded lambda expresion).

## Variables

Variables named in an abstraction are considered bound; e.g. `λx.xyx` is a lambda expression in which the variable `x` occurs bound, while the variable `y` occurs free. If a bound parameter does not appear in the body of a function, it just gets thrown away, `(λx.y)a == y`

- occurrence of a var `x` within a subexpression `e` in `λx.e` is *bound*
- occurrence of an unbound variable is a *free variable*
- occurrence of `x` in the abstraction's head, `λx.`, is the *binding occurrence*, which introduces the variable `x`
- occurrence of bound `x` in the abstraction's body is called *applied occurrences*
- If some occurrence of `x` is free in the subexpression then that is a *free occurrence* of variable `x`.
- A variable `x` is bound by the syntactically *innermost enclosing* `λ`, if one exists, just as in any block-structured programming language.
- *Closed expression* contains no free variables.
- *Open expression* contains free variables.
- *Combinators* are lambda abstractions without free variables.


The same variable may occur *both bound and free* in an expression. For example, the first *applied occurrence* of `x` in the expression below is bound, but the second and third applied occurrences are free.

```js
binding occurrence of 'x'
  │
  │   applied occurrences of 'x'
  │        │         │  │
  │        │         │  │
(λx. λy. y x) ((z. z x) x)
           │         │  │
         bound       free
```
