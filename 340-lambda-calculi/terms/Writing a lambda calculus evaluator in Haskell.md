---
downloaded:       2021-11-05
author:           Boro Sitnikovski
page-url:         https://bor0.wordpress.com/2019/03/19/writing-a-lambda-calculus-evaluator-in-haskell/
page-title:       Writing a lambda calculus evaluator in Haskell – bor0's blog
article-title:    Writing a lambda calculus evaluator in Haskell
article-length:   6915
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             This tutorial serves as a very short and quick summary of the first few chapters of TAPL. My previous post was a general overview of how we can design an evaluator and a type checker. This post is more focused on building the lambda calculus from scratch. It provides an interesting overview of some design…
---
# Writing a lambda calculus evaluator in Haskell – bor0's blog

This tutorial serves as a very short and quick summary of the first few chapters of TAPL. My previous post was a general overview of how we can design an evaluator and a type checker. This post is …
This tutorial serves as a very short and quick summary of the first few chapters of [TAPL][1].

My [previous post][2] was a general overview of how we can design an evaluator and a type checker.

This post is more focused on building the [lambda calculus][3] from scratch. It provides an interesting overview of some design decisions particularly for the lambda calculus.

Lambda calculus is a formal system for expressing computation. The grammar rules are divided in two parts: function abstraction and function application. Function abstraction defines what a function does, and function application “computes” a function. For example ![f(x) = x + 1](https://s0.wp.com/latex.php?latex=f%28x%29+%3D+x+%2B+1&bg=ffffff&fg=000000&s=0&c=20201002) is a function abstraction and ![f(3)](https://s0.wp.com/latex.php?latex=f%283%29&bg=ffffff&fg=000000&s=0&c=20201002) is a function application. The equality sign = is replaced with a dot, and instead of writing ![f(x)](https://s0.wp.com/latex.php?latex=f%28x%29&bg=ffffff&fg=000000&s=0&c=20201002) we write ![\lambda x](https://s0.wp.com/latex.php?latex=%5Clambda+x&bg=ffffff&fg=000000&s=0&c=20201002). To represent ![f(x) = x + 1](https://s0.wp.com/latex.php?latex=f%28x%29+%3D+x+%2B+1&bg=ffffff&fg=000000&s=0&c=20201002) we write ![\lambda x.x + 1](https://s0.wp.com/latex.php?latex=%5Clambda+x.x+%2B+1&bg=ffffff&fg=000000&s=0&c=20201002).

It was introduced by the mathematician Alonzo Church in the 1930s as part of his research of the foundations of mathematics.

## 2.1. Syntax

Our syntax, per BNF is defined as follows:

1

2

3

4

5

6

`<var>   ::= x`

`<abs>   ::= λ<variable>.<term>`

`<app>   ::= <term><term>`

`<term>  ::= <var> | <abs> | <app>`

`<value> ::= <abs>`

Note that a value in the system is just an abstraction. In Haskell code:

1

2

3

4

5

6

`type VarName = String`

`data Term =`

 `TmVar VarName`

 `| TmAbs VarName Term`

 `| TmApp Term Term deriving (Eq, Show)`

We set variables to additionally hold `VarName` (which is a string in this case) for pretty printing and comparison of variables.

## 2.2. Inference rules (evaluator)

The list of inference rules:

It looks like we have a new notation here: ![[x \mapsto v_2]t_{12}](https://s0.wp.com/latex.php?latex=%5Bx+%5Cmapsto+v_2%5Dt_%7B12%7D&bg=ffffff&fg=000000&s=0&c=20201002) means that we change all occurences of ![x](https://s0.wp.com/latex.php?latex=x&bg=ffffff&fg=000000&s=0&c=20201002) with ![v_2](https://s0.wp.com/latex.php?latex=v_2&bg=ffffff&fg=000000&s=0&c=20201002) within ![t_{12}](https://s0.wp.com/latex.php?latex=t_%7B12%7D&bg=ffffff&fg=000000&s=0&c=20201002).

So the evaluator looks something like:

1

2

3

4

5

`eval :: Term -> Term`

`eval (TmApp (TmAbs x t12) v2@(TmAbs _ _)) = subst x t12 v2 -- E-AppAbs`

`eval (TmApp v1@(TmAbs _ _) t2)            = let t2' = eval t2 in TmApp v1 t2' -- E-App2`

`eval (TmApp t1 t2)                        = let t1' = eval t1 in TmApp t1' t2 -- E-App1`

`eval _ = error "No rule applies"`

Note how we pattern match against `v2@(TmAbs _ _)` to detect a variable. We do that because we didn’t “treat” variables separately in our data definition.

The only thing left for us to implement is `subst`, and we should be good.

TAPL defined it for us in 5.3.5:

We can convert the definitions to Haskell code easily:

1

2

3

4

5

6

7

8

9

10

`-- subst VarName in Term to Term`

`subst :: VarName -> Term -> Term -> Term`

`subst x (TmVar v) newVal`

 `| x == v    = newVal`

 `| otherwise = TmVar v`

`subst x (TmAbs y t1) newVal`

 `| x == y                                  = TmAbs y t1`

 ``| x /= y && (y `notElem` freeVars newVal) = TmAbs y (subst x t1 newVal)``

 `| otherwise                               = error $ "Cannot substitute '" ++ show x ++ "' in term '" ++ show (TmAbs y t1) ++ "'"`

`subst x (TmApp t1 t2) newVal = TmApp (subst x t1 newVal) (subst x t2 newVal)`

But what is `freeVars`? Well, it’s the list of free variables in an expression. For example, in ![\lambda x.x \ y](https://s0.wp.com/latex.php?latex=%5Clambda+x.x+%5C+y&bg=ffffff&fg=000000&s=0&c=20201002), we have that x is bound (because it appears in an argument in an abstraction), and y is free. TAPL already defined it as `FV` in 5.3.2:

Implementation in Haskell is also straight-forward with this:

1

2

3

4

`freeVars :: Term -> [VarName]`

`freeVars (TmVar x) = [x]`

`freeVars (TmAbs x t1) = freeVars t1 \\ [x]`

`freeVars (TmApp t1 t2) = freeVars t1 ++ freeVars t2`

Running a few examples:

1

2

3

4

5

6

7

8

`Main> let lctest1 = (TmAbs "f" (TmAbs "x" (TmVar "x")))`

`Main> let lctest2 = (TmAbs "f" (TmAbs "x" (TmVar "y")))`

`Main> eval $ TmApp lctest1 lctest2`

`TmAbs "x" (TmVar "x")`

`Main> eval $ TmApp lctest2 lctest1`

`TmAbs "x" (TmVar "y")`

`Main> eval (TmApp (eval $ TmApp lctest2 lctest1) lctest1)`

`TmVar "y"`

Note, however:

1

2

`Main> eval $ TmApp (TmAbs "x" (TmAbs "y" (TmVar "y"))) (TmAbs "x" (TmVar "y"))`

`*** Exception: Cannot substitute '"x"' in term 'TmAbs "y" (TmVar "y")'`

This happens by design, because we chose our system to work up to renaming of bound variables (the `otherwise` case in `subst` for abstraction). So, `subst` isn’t total. Church fixed this issue by using alpha conversion – which is just renaming bound variables. So for example ![\lambda x.x](https://s0.wp.com/latex.php?latex=%5Clambda+x.x&bg=ffffff&fg=000000&s=0&c=20201002) could be re-written as ![\lambda y.y](https://s0.wp.com/latex.php?latex=%5Clambda+y.y&bg=ffffff&fg=000000&s=0&c=20201002).

Now we can “fix” our evaluation error by alpha conversion:

1

2

`Main> eval $ TmApp (TmAbs "x" (TmAbs "z" (TmVar "z"))) (TmAbs "x" (TmVar "y"))`

`TmAbs "z" (TmVar "z")`

There’s an alternative approach to fix this issue: De Bruijn indices.

## 2.3. Bonus: De Bruijn indices

The point with De Bruijn indices is that they remove the need of alpha conversion. They allow that by removing the variable argument in the lambda abstraction, and rely on integers (indices) to refer to variables. The index actually denotes the number of binders that are in scope between that occurrence and its corresponding binder.

For example, we have that ![\lambda f . \lambda x . x = \lambda \lambda 0](https://s0.wp.com/latex.php?latex=%5Clambda+f+.+%5Clambda+x+.+x+%3D+%5Clambda+%5Clambda+0&bg=ffffff&fg=000000&s=0&c=20201002) because the distance from the x in the application to the abstraction is 0. Similar reasoning for ![\lambda f . \lambda x . f = \lambda \lambda 1](https://s0.wp.com/latex.php?latex=%5Clambda+f+.+%5Clambda+x+.+f+%3D+%5Clambda+%5Clambda+1&bg=ffffff&fg=000000&s=0&c=20201002), etc.

We start with the following data definitions:

1

2

3

4

5

6

7

`type VarNameB = Int`

`type Indices = (VarName, Int)`

`data TermB =`

 `TmVarB VarNameB`

 `| TmAbsB TermB`

 `| TmAppB TermB TermB deriving (Eq, Show)`

We will also create a function that will convert an old term `Term` to a De Bruijn’s term `TermB`:

1

2

3

4

5

6

7

8

9

`bruijn :: Term -> Maybe TermB`

`bruijn e = go [] e where`

 `go :: [Indices] -> Term -> TermB`

 `go m (TmAbs x e)  = TmAbsB $ let m' = map (\(x, y) -> (x, y + 1)) m in go ((x, 0) : m') e`

 `go m (TmApp e e') = TmAppB (go m e) (go m e')`

 `go m (TmVar x)    = TmVarB $ findByFst m x`

 `findByFst :: [Indices] -> VarName -> Int`

 `findByFst ((x, y) : xs) x' = if x' == x then y else findByFst xs x'`

 `findByFst _ _              = error "Variable not found"`

Running it:

1

2

`Main> bruijn (TmAbs "f" (TmAbs "x" (TmVar "x")))`

`TmAbsB (TmAbsB (TmVarB 0))`

However:

1

2

`Main> bruijn (TmAbs "f" (TmAbs "x" (TmVar "y")))`

`TmAbsB (TmAbsB (TmVarB *** Exception: Variable not found`

This could be fixed by the function returning a `Maybe TermB`, or exposing `go` to consider the list of free variables and do the proper substitution. However, doing this or writing an evaluator for this system is left as an exercise to the reader ![😀](https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/1f600.svg)

## 2.4. Conclusion

The lambda calculus has a very minimal system, yet is a bit trickier to implement than the previous system we’ve seen. When we introduce function abstraction and application, we introduce complexity. We needed to account for contextual substitution.

An interesting question would be: is there a system that is simpler to implement, yet as powerful as lambda calculus? Maybe [combinatory logic][4]? But it’s not really pleasant to use as it’s not readable to us. It’s almost as what we essentially did is choose the minimal “most” readable system, and solve the side-effects (i.e. solving the issue of alpha conversion) of reading/parsing those systems that we humans have as a limitation. I mean, if it was easy for humans to parse `SKIKSIKSKS` easily, we wouldn’t use lambda calculus (which requires us as language designers to solve all the side-effects due to complexity), right?

In the next tutorial we’ll be implementing a type-checker for the lambda calculus – the typed lambda calculus.

[1]: https://www.amazon.com/dp/0262162091
[2]: https://bor0.wordpress.com/2019/03/15/writing-a-simple-evaluator-and-type-checker-in-haskell/
[3]: https://en.wikipedia.org/wiki/Lambda_calculus
[4]: https://en.wikipedia.org/wiki/Combinatory_logic
