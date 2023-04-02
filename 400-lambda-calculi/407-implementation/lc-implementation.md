# LC implementation in Haskell


## Summary

* Primary modules
  - Terms: `Term = Var String | Abs String Term | App Term Term`
  - Parser
    - `LambdaLine = Blank | Let String Term | Run Term | Cmd Command`
    - raw input parser `line :: Parsec String () LambdaLine`
      - `String` is input, `()` no user State, `LambdaLine` is the output
    - helpers:
      - `par :: String -> Either ParseError LambdaLine`
      - `pr  ::           Either ParseError LambdaLine -> Term`
  - Pretty
  - Eval
  - Repl
* Secondary modules
  - Commands
* Alternative modules
  - Env
  - DeBruijnTerms
  - EvalWHNF
  - EvalNF
  - PrettyColors


## Components

- translate the LC terms into *metalanguage datatypes* (in Haskell)
- create a *repl* function
  - REPL can be invoked by passing
    - reduction strategy
    - path to file that contains predefined LC expressions to load into session
    - overriding path to history file for the session
  - REPL is invoked in a clean-slate mode or preloaded
    - we can enter LC expr to have them evaluated at the *prompt*
    - possibly in *color*
    - we can issue repl *commands*
      - `:quit` exits the current session
      - `:load` loads a file with LC let-expr
- create a LC *parser* from raw string input to Haskell repr
  - parser takes a raw input (string) and produces a *LambdaLine* enum type
    - `Blank` for blank lines or lines with only comments (`--`), no effect
    - `Run t` lines contain parsed LC expr
      - `Run (Right exp)` are successfully parsed LC expr, evaluated
         - possibly, the evaluated result is echoed back
         - possibly, all the reduction steps are shown, *verbosity*
         - the input of successfully evaluated expr is placed in history
         - display new prompt
      - `Run (Left err)` are errors from the unsuccessful parsing
        - the parsing error message is printed
        - display new prompt
    - `Let e` are name definitions of the form `name = expr`, let-abbrev
      - `name` becomes available unless shadowed by an eponymous param
      - `name` expands to the assoc. `expr` whenever encountered
      - loaded files contain let-expr
    - `Cmd c` lines containing repl commands
- impl the *evaluation* function that deals with
  - normalization of terms
  - reduction strategy
    - *normal order*, call-by-name
    - *applicative order*, call-by-value
    - possibly, others like call-by-sharing, …
  - resulting normal forms
    - *whnf*, no reduction under abstraction
    - *nf*,   do reduction under abstraction
  - *beta-reduction*
    - *substitution*
    - *renaming* of bound variables
- *pretty printer* of lambda expressions
  - possibly *colorize*
- helper functions
  - `av` get all variables in a term
  - `fv` get free variables in a term
  - `bv` get bound variables in a term
  - `depth` get depth of the deepest node in expr
  - `count` get count of nodes in expr
  - `stat` get statistics about a term: count Var, App, Abs nodes, …




1. The syntax of untyped λ-calculus

`T := x | λx.T | T T`

```js ebnf
term := var | abs | app
var  := 'x' | 'y' | …
abs  := 'λ' var '.' term
app  := (term) term
```

2. Representing the syntax in the metalanguage (Haskell)

```hs
data Term
  = Var String
  | Abs String Term
  | App Term   Term
```

for example:
- variables, like `x`, `y` are `Var "x"`, `Var "y"`
- abstraction, like `λa.a` is `Abs "a" (Var "a")`
- application, like `(λa.a)(λb.b)` is 
  `App (Abs "a" (Var "a")) (Abs "b" (Var "b"))`

3. Free variables

Free variables in a term `T` are denoted by `fv(T)`. The calculation of free vars in a term is done by doing the case analysis of the term. The operation 
`fv(term)` returns a set of variables; i.e. a set of strings in the meta-lang.

```js
fv(x)    = {x}
fv(λx.M) = fv M \ {x}
fv(M N)  = fv M ⋃ fv N
```

4. β-reduction and substitution

The operation of β-reduction is applicable when we have an application `T₁ T₂`. However, we first need to make sure that `T₁` is an abstraction, while `T₂` can be any term. If `T₁ = λp.B` and `T₂ = A`, then we have a redex

`(λp.B)A ---->ᵦ B[p:=A]`

The application of the abstraction `λp.B` to an argument `A` (where `B` stands for an arbitrary term that is the abstraction's body, and `A` is an arg term) is defined by *β-reduction*, which, in turn, is defined by *substitution*.

The formal parameter `p` binds the argument `A` (a lambda-term); the variables `p` appears in the binding context `λp`, which is called its *binding occurrence*. The term `B` represents the abstraction's body and within it, the variable `p` may appear any number of times (0, 1, or more). These are the *applied occurrences* of `p`.

The substitution `B[p:=A]` means that we need to replace all applied occurrences of `p` by `A` in `B`, which may be expressed as `let p = A in B`.

However, substitution is not a trivial operation because we have to be careful not to capture any free variables; the count of free variables in `B` should remain the same before and after β-reduction.

The substitution rules are defined by doing the case analysis of the body term:

```js
[x:=A]y      = A                      if x = y                     (VAR1)
[x:=A]y      = y                      if x ≠ y                     (VAR2)

[x:=A](λy.B) = λy.B                   if x = y                     (ABS1)
[x:=A](λy.B) = λy.([x:=A]B)           if x ≠ y ⋀ if y ∉ fv(A)      (ABS2)

[x:=A](M N)  = ([x:=A]M) ([x:=A]N)                                 (APP)
```

which correspond to:

```
M          A == case M:
(λx. B)    A ==

(λx. x)    A == A
(λx. y)    A == y

(λx. λy.B) A == λy.B
(λx. λy.B) A == λy.([x:=A]B)

(λx. M N)  A == [x:=A]M [x:=A]N
```

## Substitution

In our implementation, *substitution* is defined by the `subst` function which takes 3 args: a `String` (param), `Arg` (term), `Body` (term), and returns a `Exp` (term).

```hs
type Param = String
type Arg   = Term
type Body  = Term

subst :: Param -> Arg -> Body -> Term
```

However, `subst` is an auxillary function to evaluation function like `whnf`, which is an approach to evaluate a lambda expression down to the weak head normal form, which means that unlike `nf` approach, `whnf` *doesn't reduce under abstractions*.

```hs
whnf :: Term -> Term
whnf t = spine t []
    where
    spine :: Term -> [Term] -> Term
    spine (App f a) as        = spine f (a:as)
    spine (Abs p1 b1) (a1:as) = spine (subst p1 a1 b1) as -- subst!
    spine f as                = foldl App f as
```



There are 5 rules, relatively straightforward, except for the rule ABS2, which can get pretty complicated pretty quick because it has to deal with renaming of bound variables in order to avoid name capture.


The rules VAR1 and VAR2 deal with the case when the body term resolves to a variable that we represent with the meta-variable `y`. It is a meta-variable because it ranges over variables of the object languages, i.e. it may turned out to be any concrete variable like `x`, or even `y`, or similar.

The first two cases differ by whether the variable (parameter) `x` is the same (case VAR1) or different (VAR2) then the meta-variable `y`. This means that in the VAR1 case, the meta-var `y` is actually a concrete variable `x`.

1. `(λx.y)A` ----β---> `y[x:=A]`, (x = y) === `A`
2. `(λx.y)A` ----β---> `y[x:=A]`, (x ≠ y) === `y`

1. `x = y` (VAR1) means that `y` actually *is* `x`, and thus we have the reduction `(λx.x)A` ----β---> `x[x:=A]` == `A` which amounts to `A`; it doesn't even matter of `A` contains free variables named `x` - reductions of this form will always result in their arg, `A`.

2. `x ≠ y` (VAR2) means we have two distinct variables and thus the reduction of the shape `(λx.y)A` ----β---> `y[x:=A]` == `y`, which reduces to `y`. This case is characterized by abstraction's body that lacks applied occurrences of the formal parameter `x`. This means there is nothing to substitute, i.e. the argument term `A` is just discarded. The resulting term is then just the body.

```hs
subst :: Param -> Arg -> Body -> Term
subst p1 a1 b1 = aux b1
  where
  aux b1 = case b1 of
    Var x -> if x == p1 then a1 else b1
    App t1 t2 -> App (aux t1) (aux t2)
```
