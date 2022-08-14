# Implementing untyped LC

## Grammar

To implement an untyped version of LC we should start with the LC grammar

`T := x | λx.T | T T`

which says that LC consists of variables, here denoted with a meta-variable, `x`, abstraction, `λx.T` and application `T T`, where `T` is a meta-variable that stands for any lambda term.


1. The syntax of untyped λ-calculus

```js bnf
term := var
      | ( 'λ' var '.' term )
      | ( term term )
var  := 'x' | 'y' | …
```


We're using Haskell as our metalanguage, so we need to translate the object language of LC into Haskell.


2. Representing the syntax in the metalanguage

```hs
-- approach #1: splitting the vars
newtype Var = Var String

data Term where
  LVar :: Var -> Term
  LAbs :: Var -> Term -> Term
  LApp :: Term -> Term -> Term
```

## Variables

In LC, we only talk about variables, but in the implementation we need to decide between splitting the variables into two categories or not. Even the BNF definition above suggest we should split them as it shows two sets: the set of variables (`x`, `y`, `z`, …) and the set of lambda terms (`LVar`, `LAbs`, `LApp`).

In other words, we have two sorts of variables:
- plain standalone variables, `Var "x" :: Var`
- variables that are lambda terms, `LVar (Var "x") :: Term`

The choice of whether we should make this split of variables into two syntactic categories is the first fork in the road when implemening LC.

We could ditch the plain variables, `Var`, and let all vars be λ-terms, `LVar`. The consequence of this decision is that then we loose the ability to distinguish variables easily. Consider, for instance, a function that collects variables from a lambda term, like the `fv` function that collects free vars: `fv` takes a lambda term and returns a set of vars, `fv :: Term -> Set …`. So, should the set contain plain variables (`Set Var`) or "lambda variables", i.e. variables that are actually lambda terms (`Set Term`). Whatever we decide here also affects the `LAbs` data ctor since its first argument is a variable.

```hs
-- approach #2: no var split
data Term where
  LVar :: String -> Term
  LAbs :: String -> Term -> Term
  LApp :: Term -> Term -> Term


-- approach #3: everything is a λ-term
data Term where
  LVar :: String -> Term
  LAbs :: Term -> Term -> Term
  LApp :: Term -> Term -> Term
```

Without the split, the set of variables is actually a set of λ-terms, `Set Term`. We'd have to sift through the λ-terms every time to make sure only `LVar`s are in there. This suggest we should favor for the split.

On the other hand, the disadvantage of the split is that variables hat are actually λ-terms, let's call them *λ-variables*, are doubly-indirected, with their type being `LVar (Var "x")`. But, since `Var` is just a string wrapped in a newtype, we should be able to remove one layer of redundacy using newtype coercion (we'll explore the possibilies later). All in favor of the split? Yey.

There are two types of **variables**
1. plain variables, `Var "x"`
2. λ-variables, `LVar (Var "x")`


## Abstraction

The type of lambda abstraction, `LAbs :: Var -> Term -> Term`, is affected by the choice to split vars into two syntactic categories: its first argument is a plain variable, `Var :: Var` (and not a λ-variable, `LVar :: Term`).

This means that we should be careful when constructing a λ-term like the identity function, `λx.x`; the binding variable `x` is `Var "x"` but the var `x` in the body is `LVar (Var "x")`, i.e. `id = LAbs "x" (LVar (Var "x"))`. This disadvantage is a consequence of splitting the variables.

```hs
-- plain var
vx :: Var
vx = Var "x"

-- λ-var
x :: LTerm
x = LVar vx

-- identity function
id :: LTerm
id = LAbs "x" (LVar (Var "x"))
```


## Application

## Examples

```hs
vx :: Var
vx = Var "x"

x :: LTerm
x = LVar vx

x₂ :: LTerm
x₂ = LVar (Var "x")

x₃ :: LTerm
x₃ = LVar $ Var "x"

id₁ :: LTerm
id₁ = LAbs vx x

id₂ :: LTerm
id₂ = LAbs "x" (LVar (Var "x"))
```
