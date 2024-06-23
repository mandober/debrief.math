# Substitution

## Naive substitution

Implementing the normal form function by using a naive substitution means that bound variables are alpha-renamed during substitution if the substitution would capture a free variable.


Substitution has only one tough case - `Abs`, which has 3 cases:
- if the bound variable, `v`, is equal to the variable we are replacing, `x`, then we are done
- if the bound variable is in set set of free variables of the substituted expression then there would be an accidental capture, so we rename it
- otherwise the substitution just continues

```hs
--         "x"   s(arg)  (b)ody
subst :: String -> Exp -> Exp -> Exp
--            sub (b)ody
subst x s b = sub b
  where
  sub (Var v) | v == x    = s
              | otherwise = Var v

  sub (Abs v e') | v == x       = Abs v       e'
                 | v `elem` fvs = Abs v' (sub e'')
                 | otherwise    = Abs v  (sub e')
                 where
                   e'' = subst v (Var v') e'
                   v'  = newId vs
                   vs  = fvs `union` allVars b
                   fvs = freeVars s

  sub (App f a) = App (sub f) (sub a)
```


```hs
subst x s b            := [x:=s]b

subst x s (Var v)      := [x:=s](Var v)    -->> if v == s then s else (Var v)

subst x s (App f a)    := [x:=s](App f a)  -->> App (sub f) (sub a)

-- Abs

(λx.S)B       --> [x:=S]B       --> subst x s B
(λx.S)(λv.e') --> [x:=S](λv.e') --> subst x s (Abs v e') -->

-->

(λx.S)B  --> [x:=S]B  --> subst x s B

-- (1) var case
v == x    = Abs v e'

-- (2) renaming case
v ∈ FV(S) = Abs v' (sub e'')
        --> Abs v' (sub (subst v (Var v′) e'))    -- v′ = fresh v
        --> Abs v' (sub          ({v:=v′}e')      -- ren v to v′
        --> Abs v' (sub          (Var v′))        -- B = Var v′
        --> Abs v' (subst  [x:=S](Var v′))

-- (3) move subst under lambda
otherwise = Abs v (sub e')
          = λv.e'
          = λv.[x:=S]e'
          = Abs v (sub e')
          = Abs v (subst [x:=S]e')
```

NOTE: Lennart's original version had a bug. It chose the new variable avoiding free variables of `s` (arg) plus all of the variables in the original term `b` (body). However, this doesn't avoid any *new binding variables* that are introduced into `b` to avoid capture. Nor does it include `x` itself. Instead, this should be replaced by the variables of the current term `e`. Finding the new name against the free vars is sufficient, but it is faster to collect all the vars without removing the bound ones.

## Renaming

How should the new variable be picked when doing the renaming?

* the new variable must not be in the set of free variables of `s` since this would case another accidental capture
* nor among the free variables of `e'` since this could cause another accidental capture
* Conservatively, we avoid all variables occuring in the original `b` to fulfill the second requirement


Get a variable which is not in the given set. Do this simply by generating
all variables and picking the first not in the given set.

```hs
newId :: [IdInt] -> IdInt
newId vs = head ([firstBoundId .. ] \\ vs)
```
