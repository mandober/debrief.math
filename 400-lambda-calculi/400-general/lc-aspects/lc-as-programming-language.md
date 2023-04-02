# Lambda calculus as a programming language

Being entirely based on abstraction and application of functions, LC is often considered a prototypical FPL. However, to experience programming in LC, it's notnecessary to first implement the LC, deciding on a particular reduction strategy (normal, applicative, etc.), evaluation form (WHNF, NF) and other particularities. Instead, you can just use (a subset of) an existing particular PL that already implements all these details.

For instance, using JS means the reductions are performed in the applicative order and the evaluation is strict (the args are completely evaluated before being passing into function). Using Haskell, we get a lazy model where the args are just shovelled into a function without even being touched; an argument gets evaluated in the last possible moment, right before it is actually used.
