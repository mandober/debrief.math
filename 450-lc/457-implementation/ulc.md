# Implementing λ-calculus in Haskell

## The syntax of untyped λ-calculus

```hs ebnf
-- there are 3 forms
T := x | λx.T | T T

-- or
term := var | abs | app
var  := x | y | z | …
abs  := ( λ var . term )
app  := (term term )
```

## Representing the syntax in Haskell

### Variables

There are 2 sorts of variables:
- plain, standalone, variables, like `Var "x" :: Var`
- variables that are a lambda term, like `LVar (Var "x") :: LTerm`

We could've ditched the plain variables,`Var`, and let all vars be λ-terms, `LVar`, but then, e.g. the set of free vars would actually be a set of λ-terms `Set LTerm` (and not `Set Var`), meaning we'd have to sift through the 3 kinds of λ-terms to make sure that only the λ-terms that are in fact `LVar` vars are in the set. The same for every operation that results in a set (or list or multiset) of vars.

On the other hand, this makes `LVar` vars double-layered since they are actually `LVar (Var "x")`, instead of only being `LVar "x"` (maybe some newtype coercion would flatten this double indirection?).

This choice automatically affects the var in the `LAbs` data ctor:    
`LAbs ::  Var -> LTerm -> LTerm` vs     
`LAbs :: LVar -> LTerm -> LTerm`

(I think the double-layered approach for vars is more convenient after all, so I'll run with it.)


```hs
-- plain vars
newtype Var = Var String

-- λ-terms
data LTerm where
  LVar :: Var -> LTerm
  LAbs :: Var -> LTerm -> LTerm
  LApp :: LTerm -> LTerm -> LTerm

-- Examples:

-- plain vars
vx = Var "x"
vy = Var "y"
vz = Var "z"

-- vars as λ-terms
x = LVar $ Var "x"
y = LVar $ Var "y"
z = LVar $ Var "z"
```

For example:
- Var: `vx = Var "x"`
- LVar: `x = LVar vx = LVar (Var "x")`
- Abs: `λa.a` is `Abs "a" (Var "a")`
- App: `(λa.a)(λb.b)` is `App (Abs "a" (Var "a")) (Abs "b" (Var "b"))`
