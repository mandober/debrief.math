# Lambda Calculus: Introduction

Alonzo Church came up with LC during his investigation into the foundations of mathematics. He created LC as a model of computation, to aid him in the attempt to make the definition of computation more precise.


Lambda Calculus is a higher-order language: it provides a systematic syntax for functions whose input and output values are other functions.

Lambda Calculus offers alternative approach to the representation of natural numbers. Majority of the set theories define, e.g. number 3, as the property that all sets containing 3 elements have in common; other set theories (e.g. stratified) define number 3 as the set that contains all sets with 3 elements. Set theories are built around the concept of a set as the most primitive notion, but, in Lambda Calculus a function plays that role.

In fact, only functions exist in Lambda Calculus. Everything else (boolean constants, numbers, data structures, etc.) has to be defined from scratch. This process begins by defining a function abstraction (i.e. a function definition) then, somewhat arbitrarily, assigning a meaning to it.


Lambda Calculus defines natural numbers in terms of functions (of course, since there's nothing else), that is, number 3 is represented as applying a function 3 times to its argument. Akin to other definitions of natural numbers, number zero is stated as an axiom and the successor function, that produces the subsequent natural numbers, is defined. So a number n is an n-fold of successor function to the zero argument.

Lambda calculus consists of constructing lambda terms and performing reduction operations on them. 


## Informal introduction

Lamda calculus has only 3 kinds of expressions: variables, abstraction (i.e. function definition) and function application.

* **Variables**:   
  infinite set of vars (with sub/superscript if needed) e.g. $$a,f,x_2\dots$$
* **Abstraction**:   
  is (anonymous) function definition, e.g. $$\lambda x.x$$ defines a function that takes a parameter, $$x$$, and returns the evaluated body (the expression after the dot), in this case just $$x$$ (id function).
* **Application**: applying a function to an expression, e.g. $$(\lambda x.x)(y)$$ applies the id function to $$y$$.


$$fx$$, associate to the left: $$fxyz$$ is $$((fx)y)z$$



associate to the right: $$\lambda f.xyz$$ $$\lambda f.(xyz)$$



## Formal introduction

- Assume given an infinite set $$\mathcal{V}$$ of variables, denoted by $$x, y, z\dots$$
- The set of lambda terms is given by the following Backus-Naur Form    
  ($$M$$ and $$N$$ are lambda terms, $$x$$ is a variable)    
  $$M, N ::= x \ |\ (MN)\ |\ (\lambda{x}.M)$$

Traditional introduction:
- Assume given an infinite set $$\mathcal{V}$$ of variables
- Let $$A$$ be an alphabet consisting of the elements of $$\mathcal{V}$$ and the special symbols: `λ`, `.`, `(`, `)`
- Let $$A^∗$$ be the set of strings (finite sequences) over the alphabet $$A$$
- The set of lambda terms is the smallest subset $$\Lambda \subseteq A^∗$$ such that:
  - Whenever $$x\in \mathcal{V}$$ then $$x\in \Lambda$$
  - Whenever $$M,N\in \Lambda$$ then $$(MN)\in \Lambda$$
  - Whenever $$x\in \mathcal{V}$$ and $$M\in \Lambda$$ then $$\lambda{x}.M \in \Lambda$$


## Syntax

There are 3 kinds of **λ-expressions**:
1. **Variables**, $$v_0,v_1,v_2,\dots$$, e.g. $$x,y,z,\dots$$
2. **Application**, $$e_1e_2$$, which means $$e_1(e_2)$$ i.e. application of expression $$e1$$ to expression $$e2$$.
3. **Abstractions**, $$\lambda x.e$$, represent the anonymous function which evaluates to (returns) the value $$e$$ when given formal parameter $$x$$.


**Association**
- Application, $$abcd$$, associate to the left: $$((ab)c)d$$
- Abstraction, $$\lambda f.\lambda g.\lambda h.x$$, associate to the right: $$\lambda f.(\lambda g.(\lambda h.x))$$

**Convention**
- Juxtaposed abstraction, $$\lambda a.\lambda b.\lambda c.abc$$, can be shorthanded as $$\lambda abc.abc$$
- Parenthesis are used to disambiguate expressions or to enforce evaluation order: application $$abcd$$ is interpreted as $$((ab)c)d$$, to enforce right-associativity, write $$a(b(cd))$$





## Abstraction
A lambda function is an abstraction over a lambda expression:    
$$\quad \ \lambda x.e$$    
where $$x$$ is a formal parameter and $$e$$ is a (sub)expression.

Examples of abstractions:

$$
\quad \ \lambda x.x\\
\quad \ \lambda fs.f\\
\quad \ \lambda af.fa
$$

- Greek letter lambda introduces a name used for abstraction.

- taht name is function's bound variable (here $$x$$) and it represents a  formal parameter similar to function declarations in PL.
- The dot separates the name (formal parameter) from the function's body.
- function's body is an expression in which abstraction with that name (actual parameter) takes place.
- expression (in function's body) may be any lambda expression, including another function abstraction.


<details><summary>Similarity with programming languages</summary><br>

Lambda abstraction (assuming the function `+` was defined, as infix):   
$$\quad \ \lambda x.\lambda y.x+y$$


```js
// in js
let f = x => y => x + y;
```

```rust
// in rust
let f = move |x| move |y| x + y;
```

```ocaml
(* in ocaml *)
let f x y = x + y;;
```

</details><br>



## Alpha-conversion

The substitution of $$f$$ for the free occurrences of $$x$$ in $$e$$, written $$e[f/x]$$, is defined:
- $$x[f/x] :=f$$    
  and for a variable $$y$$, if $$y\not \equiv x$$, $$y[f/x]:=y$$
- For applications, we substitute into the two parts:    
  $$\quad \ (e_1\ e_2)[t/x] := (e_1[t/x]\ e_2[t/x])$$
- If $$e\equiv \lambda x.g$$ then $$e[f/x] := e$$    
  If $$y$$ is a variable distinct from $$x$$, and $$e\equiv \lambda y.g$$ then
  - if $$y$$ does not appear free in $$f$$,     
    $$e[f/x]:=\lambda y.g[f/x]$$
  - if $$y$$ does appear free in $$f$$,    
    $$e[f/x] := \lambda z.(g[z/y][f/x])$$     
    where $$z$$ is a variable which does not appear in $$f$$ or $$g$$.
    Note that we have an infinite collection of variables,    
    so that we can always find such a "z".
- In general, it is easy to see that if $$x$$ is not free in $$e$$    
  then $$e[f/x]$$ is $$e$$


## Application

A function application specialises an abstraction by providing a value for the name (formal parameter). The function expression contains the abstraction to be specialised with the argument expression. In a function application, also known as a __bound pair__, _the function expression is said to be applied to the argument expression_.

When the function $$(\lambda x.xy)$$ is applied to argument $$3$$, $$(\lambda x.xy)3$$:
- the value of the argument ($$3$$) is assigned to the formal parameter $$x$$
- the head of the function is dropped ($$\lambda x.$$)
- the actual parameters in the function's body (bound params with the same name as the formal param) are replaced with the value $$3$$
- the expression evaluates to $$3y$$

The process of evaluation of a λ-expression is called _simplification_ or __β-reduction__ (beta-reduction).

In general, to evaluate application of a lambda abstraction, i.e.    
$$\quad \ (\lambda x .e1)e2$$
we replace the actual parameters in the function's body with the formal parameter - this **substitution** is denoted by $$e1[e2/x]$$.




## Currying

Lambda functions take one parameter at the time. In order to supply more then one parameter, there can be one function per argument: the first function accepts the first parameter and returns the second function that accepts the second parameter (with the first parameter fixed), and so on.

The function $$\lambda xy.xy$$ is the same as $$\lambda x.\lambda y.xy$$, which is the same as $$\lambda x.(\lambda y.xy)$$.

When it is applied, $$((\ (\lambda x.(\lambda y.xy))\ a)\ b)$$, the argument $$a$$ is bound by the outer abstraction (parameter $$x$$), while the argument $$b$$ is bound by the inner (parameter $$y$$):

$$
(\ (\lambda x.(\lambda y.xy))\ a)\ b\\
(\lambda y.ay)\ b\\
ab
$$



## Examples

<details><summary>Examplary expressions</summary><br>


**Example**: Evaluating a lambda expression    
(assuming the function `+` was defined, as infix)

$$
((\lambda x . \lambda y .x+y)(5))(2)\\
(\lambda y.5+y)(2)\\
5 + 2\\7
$$


**Example**: Evaluation i.e. _beta reduction_
$$
(\ (\ \lambda f.ff\ )\ \ (\lambda x.x)\ )3\\
(\ (\lambda x.x)(\lambda x.x)\ )3\\
(\ \lambda x.x\ )3\\3
$$


**Example**: evaluation fork
$$
(\ (\lambda xy.xy)\ (\lambda f.f)\ )\ a\\
(\ (\lambda x.(\lambda y.xy))\ (\lambda f.f)\ )\ a\\
(\lambda y.(\lambda f.f)y)\ a \quad\\
(\lambda y.y)\ a \quad | \quad (\lambda f.f)a\\
a \quad \quad \quad \quad | \quad a
$$


**Example**: constant function (unused bound parameter)
$$
(\lambda x.\lambda y.z)\ (\lambda f.f)\\
\lambda y.z
$$


**Example expressions**:

$$
(\lambda x.y)z \neq \lambda x.yz
\\\quad\\
\lambda f.fxy = \lambda f.((fx)y)
$$

</details><br>



[^1]: **Formal system** is a framework where one starts with the given axioms (start position) and, following a set of inference rules, one tries to infer theorems (end position). These rules, called *the logical calculus of the formal system*, are formalizations of the human thought process, at least its most mechanical, automated subprocess (when a certain proposition inevitably leads to a valid conclusion).
