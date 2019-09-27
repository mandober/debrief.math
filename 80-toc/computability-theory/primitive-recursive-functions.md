# Primitive Recursive Functions

https://en.wikipedia.org/wiki/Primitive_recursive_function


In computability theory, **Primitive Recursive** (PR) is a function that can be computed by a program in which the loops are bounded; that is, the number of times to go through the loop can be determined before entering the loop.

Unbounded loops (e.g. `while`, `do while`, etc.) are those programming language constructs where the number of iterations through the loop is not known in advance, but it is determined by some condition inside the loop. On the other hand, loops like a `for` loop are always (upper) bounded i.e. the number of times to loop is known before entering the loop.

Primitive recursive functions (PRF) form a strict subset of those general *recursive functions* that are also *total functions*.

Most computable functions are PRF:
- addition
- subtraction
- multiplication
- division
- exponentiation
- factorial
- nth prime function

To show that a computable function is PRF, it is sufficient to show that its computational complexity is upper bounded by a PRF of the input size, `n`.

The set of PRF is known as `PR` in computational complexity theory.


## Definition

$$
PR: \mathbb{N^n} \to \mathbb{N}; \quad \mathbb{N} = \{0, 1, 2, \dots \}
$$

PRF are the *number-theoretic functions* (used in the number theory), which are functions from the natural numbers to the natural numbers. They are $$n$$*-ary* i.e. they take $$n$$ arguments, where $$n \in \mathbb{N}$$.


The basic PR functions are given by 3 axioms:

1. **Constant function**:    
  The 0-ary (nullary) constant function $$zero$$ is primitive recursive.    
  $$zero^0 = 0 \land zero \in PR$$

2. **Successor function**:    
  The 1-ary successor function S, which returns the successor of its argument (see Peano postulates), is primitive recursive. That is, S(k) = k + 1.

3. **Projection function**:     
  For every n≥1 and each i with 1≤i≤n, the n-ary projection function Pin, which returns its i-th argument, is primitive recursive.




More complex primitive recursive functions can be obtained by applying the operations given by these axioms:

Composition: Given a k-ary primitive recursive function f, and k many m-ary primitive recursive functions g1,...,gk, the composition of f with g1,...,gk, i.e. the m-ary function {\displaystyle h(x_{1},\ldots ,x_{m})=f(g_{1}(x_{1},\ldots ,x_{m}),\ldots ,g_{k}(x_{1},\ldots ,x_{m}))\,} h(x_1,\ldots,x_m) = f(g_1(x_1,\ldots,x_m),\ldots,g_k(x_1,\ldots,x_m)) \, is primitive recursive.
Example. We take f(x) as the S(x) defined above. This f is a 1-ary primitive recursive function. And so is g(x) = S(x). So h(x) defined as f(g(x)) = S(S(x)) is a primitive recursive 1-ary function too. Informally speaking, h(x) is the function that turns x into x+2.

Primitive recursion: Given f, a k-ary primitive recursive function, and g, a (k+2)-ary primitive recursive function, the (k+1)-ary function h is defined as the primitive recursion of f and g, i.e. the function h is primitive recursive when
{\displaystyle h(0,x_{1},\ldots ,x_{k})=f(x_{1},\ldots ,x_{k})\,} h (0, x_1, \ldots, x_k) = f (x_1, \ldots, x_k) \, and
{\displaystyle h(S(y),x_{1},\ldots ,x_{k})=g(y,h(y,x_{1},\ldots ,x_{k}),x_{1},\ldots ,x_{k})\,.} h (S(y), x_1, \ldots, x_k) = g (y, h (y, x_1, \ldots, x_k), x_1, \ldots, x_k) \,.
Example. Suppose f(x) = P11(x) = x and g(x,y,z)= S(P23(x,y,z)) = S(y). Then h(0,x) = x and h(S(y),x) = g(y,h(y,x),x) = S(h(y,x)). Now h(0,1) = 1, h(1,1) = S(h(0,1)) = 2, h(2,1) = S(h(1,1)) = 3. This h is a 2-ary primitive recursive function. We can call it 'addition'.


## Common PRFs

PRFs can be of 4 types:
1. *number-theoretic functions* or just *functions*   
  from { 0, 1, 2, ...} to { 0, 1, 2, ...},
2. *predicates*: from { 0, 1, 2, ...} to truth values { t =true, f =false },
3. *propositional connectives*: from truth values { t, f } to truth values { t, f },
4. *representing functions*: from truth values { t, f } to { 0, 1, 2, ... }.

Many times a predicate requires a representing function to convert the predicate's output { t, f } to { 0, 1 } (note the order "t" to "0" and "f" to "1" matches with ~sg( ) defined below). By definition a function φ(x) is a "representing function" of the predicate P(x) if φ takes only values 0 and 1 and produces 0 when P is true".
