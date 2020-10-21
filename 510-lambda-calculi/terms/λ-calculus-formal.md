# Lambda Calculus

## Formal Definition

The syntax of LC defines some expressions (sequence of symbols allowed in LC) as valid and some as invalid. **Lambda term** is a valid LC expression. 

These rules give an inductive definition that can be applied to build all syntactically valid lambda terms:
- 0: a variable (e.g. $$x$$) is a valid lambda term
- 1: if $$x$$ and $$M$$ are lambda terms, then $$(\lambda x.M)$$ is a lambda term
- 2: if $$M$$ and $$N$$ are lambda terms, then $$(MN)$$ is a lambda term
- nothing else is a lambda term.


**Variables**    
Above, the zero rule just states that $$x$$ is a lambda term, which would imply that $$x$$ on its own is a lambda term, but that's pretty vague; that $$x$$ alone is obviously not a function, and it couldn't stand for (represent) some other lambda term (that would be external binding). It can only be a **free variable**, meaning we're not seeing the entire expression; we have to zoom out to see the acual binding site for that $$x$$.




, called a *lambda abstraction*.
, called an *application* (function application, lambda application).


Application, $$MN$$, associate to the left: $$fxyz$$ is $$((fx)y)z$$

Abstraction, $$\lambda x.M$$, associate to the right: $$\lambda f.xyz$$ $$\lambda f.(xyz)$$





---

Assume given an infinite set $$\mathcal{V}$$ of variables, denoted by $$x, y, z\dots$$     
The set of lambda terms is given by the following Backus-Naur Form    
($$M$$ and $$N$$ are lambda terms, $$x$$ is a variable):     

$$
M, N ::= x \ |\ (MN)\ |\ (\lambda{x}.M)
$$

Traditional definition:
- Assume given an infinite set $$\mathcal{V}$$ of variables
- Let $$A$$ be an alphabet consisting of the elements of $$\mathcal{V}$$ and the special symbols, $$\lambda$$, `.`, `(`, `)`
- Let $$A^∗$$ be the set of strings (finite sequences) over the alphabet $$A$$
- The set of lambda terms is the smallest subset $$\Lambda \subseteq A^∗$$ such that:
  - Whenever $$x\in \mathcal{V}$$ then $$x\in \Lambda$$
  - Whenever $$M,N\in \Lambda$$ then $$(MN)\in \Lambda$$
  - Whenever $$x\in \mathcal{V}$$ and $$M\in \Lambda$$ then $$\lambda{x}.M \in \Lambda$$





Examples:
- Variables: `x`, `y`
- Applications: `xx`, `xy`, `(λx.(xx))(λy.(yy))`
- Abstractions: `λx.x`, `λf.ff`, `λf.(λx.(f(fx)))`
- Abstraction and application: `(λx.x)(2)`, `((λf.f(f))(λx.x+2))(3)`


This, `λx.x+1`, defines an anonymous function that takes a parameter `x` and evaluates (returns) it to `x+1`. This applies this function to the argument 5: `(λx.x+1)(5)`; the 5 replaces the `x` in the function's body, so this expression evaluates to 6.
