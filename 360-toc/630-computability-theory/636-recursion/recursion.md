# Recursion

https://en.wikipedia.org/wiki/Recursion

Recursion is a powerful *problem-solving strategy* that has few direct counterparts in the real world. Recursion is defined as any solution technique in which large problems are solved by reducing them to smaller problems of the same form. The phrase "the same form" is crucial to the definition, which otherwise describes the basic strategy of stepwise refinement. Both stepwise refinement and recursion involve decomposition - breaking a problem into its constituent parts. What makes recursion special is that the subproblems in a recursive solution have the same form as the original problem.

>Recursion is defined as any solution technique in which large problems are solved by reducing them to smaller problems of the same form.


Recursive functions are *implemented* using exactly the same mechanism as any other function call. Each call creates a new stack frame that contains the local variables for that call. Because a separate stack frame is created for each function call, the local variables at each level of the recursive decomposition remain separate.

Mathematical functions often express their recursive nature in the form of a recurrence relation, in which each element of a sequence is defined in terms of earlier elements.

In order to ensure that a recursive decomposition produces subproblems that are identical in form to the original, it is often necessary to *generalize the problem*. It is common to implement the solution to a specific problem as a wrapper function whose only purpose is to call an auxillary function that handles the more general case. For example, reversing a list is a specific case of the more general problem of appending two lists together. The function `rev` is just a wrapper that calls `aux` that handles the more general case.

```hs
-- reversing a list (1)
rev1 :: [a] -> [a]
rev1 []     = []
rev1 (x:xs) = rev1 xs ++ [x]

-- reversing a list (2)
rev :: [a] -> [a]
rev ls = aux ls []
  where
  aux :: [a] -> [a] -> [a]
  aux []     ys = ys
  aux (x:xs) ys = aux xs (x:ys)
```

Recursion need not be a single function that calls itself; mutual recursion involves at least two functions that call each other in a cyclical pattern.

## The recursion theorem

In set theory, this is a theorem guaranteeing that recursively defined functions exist. Given a set X, an element a of X and a function f: X → X, the theorem states that there is a unique function {\displaystyle F:\mathbb {N} \to X}F:N→X (where {\displaystyle \mathbb {N} }N denotes the set of natural numbers including zero) such that

{\displaystyle F(0)=a}F(0)=a
{\displaystyle F(n+1)=f(F(n))}F(n+1)=f(F(n))
for any natural number n.

## Avoiding pitfalls

- Check base case(s). If the enclosing function delegates to the more general nested function, it can at least handle the base case(s), instead of blindly delegeting all calls to the nested function.
- In an n-ary recursive function, the recursive call should have `n` args, in general. e.g. `aux` above is bianry so the rec call has 2 args.


## Terms

- iteratation
  - iterative construct
  - bounded iteratation (FOR loop)
  - unbounded iteratation (WHILE loop)
