# Lambda Calculus: Definition


## Informal Definition

- LC is an environment completely devoid of (pre-defined) objects
- There are only 2 basic rules: how to define and apply functions
- defining a new function is called *lambda abstraction*
- applying a function to an argument is called *lambda application*
- an argument can only be another function (only functions exist)
- functions are anonymous; external name binding is not available
- functions are unary; they must declare one formal parameter


## Anonymous unary functions

In LC, all functions are anonymous and unary. Despite this constraints lambda functions are not that different from functions found elsewhere.

**In mathematics**,    
functions may be named and they can have different arity, but a mathematical function always returns a value. 

For example, a named binary function:    
$$\quad \quad \operatorname{square\_sum}: \ f(x,y) = x^{2} + y^{2}$$    
that can be written in anonymous form:    
$$\quad \quad (x,y) \mapsto x^2 + y^2$$

**In programming languages**,    
especially in dynamic PL, functions are less restricted. They may have any arity, including being nullary, and they're not obliged to return something.

For example, in JS, which we'll use to approximate LC, a function definition is usually bound to an external identifier so it can be easily referenced later whenever needed:

```js
// function definition as statement
function squareSum(x, y) {
  return x**2 + y**2;
}

// function definition as expression i.e function expression
var sqsum = function alias(x, y) {
  return x**2 + y**2;
}
```



```js
let square_sum = (x, y) => x**2 + y**2;
```



## Anonymous unary functions

The second requirement of LC, that functions are unary, can be met by redefining a binary function, that is, a function which accepts 2 inputs and returns the result, into a series of nested functions. Namely, we can define an (outer) function to accept only one input (the first argument) and to return another (inner) function that takes one input (in fact, the second argument) finally returning the result.

The process of converting an $$n$$-ary function (where $$n\neq 0$$) into an unary function (in fact, a series of nested unary functions) is called **currying**.



In PLs, these rules are more relaxed so there can be nullary functions, and functions can return nothing (sometimes referred to as `void`).


 in any PL. 




We can consider LC as a (functional) programming language and see that it only deals with lambda functions. Lambda functions are not much different then functions found in any PL, except they are anonymous and unary.

LC doesn't have concept of external binding, so we cannot declare a variable and bind to it whatever, even a function definition, like we can in e.g. JS. This makes LC extremely verbose. The other property is that all functions are unary, that is, they must declare only one formal parameter and, therefore, only accept a single argument.




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
