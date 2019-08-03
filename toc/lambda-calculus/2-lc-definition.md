# Lambda Calculus: Informal Definition

- Lambda Calculus (LC) deals exclusively with functions in the form of function abstraction and function application.
- In LC, there is nothing but anonymous unary functions.
- LC is very verbose
- Other entities (e.g. booleans) may be represented by an arbitrarily selected lambda abstraction. 


Lambda calculus is a prototype functional language based on function abstraction and function application, using parameter binding and substitution.

**Function abstraction** is a LC name for a *function definition*, as it is better known in the majority of the mainstream programming languages.

$$\displaystyle \lambda x.x$$

The lambda symbol introduces a function abstraction, a unary anonymous function, which, immediately after the lambda symbol, declares its sole parameter by an arbitrary name. The dot separates the "head" and the "body" parts of a function, which is in this case just $$x$$.

The equivalent expression in JS looks like this:

```js
(x => x)
```

In JS, this expression gives itself away as a *function expression* by the fat arrow, which separates declaration of formal parameters from the function's body. In LC this is the role of the dot.


In LC, **functions are anonymous** - a function abstraction (or any lambda expression) cannot be bound to a (global) identifier; there are no global identifiers, there are only local identifiers i.e. names of formal parameters.





Only functions exist in Lambda Calculus. Everything else (boolean constants, numbers, data structures, etc.) has to be defined from scratch. This process begins by defining a function abstraction (i.e. a function definition) then, somewhat arbitrarily, assigning a meaning to it.

Lambda Calculus is a higher-order language: it provides a systematic syntax for functions whose input and output values are other functions.


* Lambda calculus, LC, λ-calculus, λάμβδα λογισμός, λ, $$\lambda$$
* **Abstraction**
  - `λM.N`, 
  - e.g. `λa.λb.ab`, `λg`
  - analogous to defining a function
  - with function parameters and function body expr to be returned
  - This defines a function which takes an argument x and returns a term M.
  - Functions in lambda calculus have no name.
* **Application**: `MN`
  - denoted by juxtaposition
  - LEFT-associative, `abcd` is `((ab)c)d`
  - analogous to a function call
  - This binds the argument N to the term M
- A term is a defined function.
- A term may contain variables.
- A variable may represent any term.
- A term may contain free variables and bound variables
- *Bound variable* is param to be bound to an arg; x is bound in λx.xy
  - analogous to a formal parameter of a function
- *Free variable* is unbound (outside) variable; y is free in λx.xy

Lambda expressions
- **Variables**
- **Application**: $$mn$$ means apply expr m to expr n, $$m(n)$$
- **Abstractions**: $$\lambda x.e$$, represent the anonymous function which evaluates to (returns) the value $$e$$ when given formal parameter $$x$$.
