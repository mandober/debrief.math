---
downloaded:       2021-10-11
page-url:         http://www.vex.net/~trebla/haskell/type-inference.html
article-title:    Type Inference
---

# Type Inference
Albert Y. C. Lai, 2021

A type inference algorithm uses tools that are not obvious at first sight. To help motivate them, I start by showing how to do type inference heuristically, which calls for those tools.

## Creating unknowns

Consider inferring the type of the expression `\x -> x`. This is a lambda abstraction, so its type must be of the form `α -> α`.

The type variable `α`, at the time, stands for an *unknown type*; it is pulled from the Greek alphabet, that is used as a source of *fresh names*.

If this is a standalone expression, it would have to be a top-level declaration, and bound to a name, like `f`, so then we'd have:

```hs
f :: α -> α
f = \x -> x
```

The signature shows that the type of `f` is `α -> α`, where `α` is still some unknown type. It also shows that the type of the formal parameter `x` must also be `α`; thus, a future potential arg must also have the same type `α`. Since, the lambda's body consists of just `x`, the return type also must be `α`.

The final thing that should be done in case this is a standalone (toplevel) expression or a rhs of a let-expression is *generalization*.

In a let-bound expression, generalization is called *let-polymorphism*, which is the concept originating from ML, where it is (only) possible to generelize types in a `let` construct, but not in an equivalent lambda abs/app exp.

Type generalization means assigning the most general type to free type vars, which in these two cases (toplevel and let-bound expressions) means to universally quantify the type var `x`:

```hs
-- (1) toplevel exp: a named fn
f0 :: forall α. (α -> α)
f0 x = x

-- (2) toplevel exp: lambda abs
f1 :: forall α. (α -> α)
f1 = \ x -> x

-- (3) let-bound exp
e2 = let f :: forall α. (α -> α)
         f = \x -> x
     in  -- ...
```

The body of the let-exp is repr with elipsis since, at the moment, we don't know what it contains; the overall type depends on this subexp, so for now we can only conclude that `f` has type `forall α. (α -> α)`.

If this is not the entire term, that is, if we then reveal an arg in the larger exp, then this is in fact a *redex*. The type of the abstraction may retain the polymorphic type, but the type of the entire exp (applying the lambda to the arg) dependes on the arg's type.

```hs
-- applying a type-annotated lambda to an arg and annotating the result
((\x -> x) :: forall α. α -> α) False :: Bool

-- completing the let-exp
e2 = let f :: forall α. (α -> α)
         f = \x -> x
     in  f False :: Bool
```

> Note: In Haskell, type annotation has higher precedence then a lambda abs, but application has higher precedence then type annotation, `Abs < :: < App`.
- `\x -> x :: a -> a` means `\x -> (x :: a -> a)`
- `f False :: Bool`   means `(f False) :: Bool`

So, if the larger exp was `(\x -> x) False`, then the discovered solution would be `u ~ Bool`, so the overall type would be `Bool`.

In particular, we do not generalize, instead `u` stays an unknown type, in hope the context will give us more details later on.

This doesn't look like an important point, but it is in the big picture. By default, unless there is a reason to do otherwise, we treat `u` as an unknown that stands for a *single (monomorphic) type*, even if we don't know what concrete type that is at the moment.

We use the names prefixed with `u` for *unknowns* (`u1`, `u2`, …). When it is correct to generalize to a polymorphic type, we'll rename the type variables to `a`, `b`, etc.

## Solving for unknowns

Assuming `5 :: Int`, infer the type of this exp:

```hs
e2 = \x y -> if False then (x, 5) else (True, y)
------------------------------------------------
(x   , 5) :: (u1  , Int)   -- x ~ u1
(True, y) :: (Bool, u2)    -- y ~ u2
------------------------------------------------
(u1  , Int) ~ (Bool, u2)   -- according to eq of if-exp branches
(Bool, Int) ~ (Bool, Int)  -- u1 ~ Bool, u2 ~ Int
------------------------------------------------
e2 :: Bool -> Int -> (Bool, Int)
```

We can also rely on language constructs to deduct type info: `if-then-else` exp requires both branches to have the same type, so we can conclude 
`(u1,Int) ~ (Bool,u2)`. Solving this equation gives `u1 ~ Bool`, `u2 ~ Int`. So we conclude the expr `e2` must have the type `Bool -> Int -> (Bool, Int)`.


## Type environment

This one is esentially the same as the exp in the previous example:

```hs
e3 = let b = False in \x y -> if b then (x, 5) else (True, y)
```

First, we focus on the inner exp, knowing that `b` must be a `Bool`, `b ~ Bool`.

This means that an algorithm must keep a type environment `Γ` consisting of *pairs of variable names and types*, `Γ = {x : τ, …}`.

We always use a type env to keep track of all the assignments of types (known or unknown) to exps. When we unify types, we update the type env to reflect it.

## Type mismatch error

If the previous situation was instead

```hs
\x -> if False then (x, 5) else (True, x)
```

it would amount to the equation `(u1, Int) ~ (Bool, u1)`, which implies that `Int ~ Bool`, whih is a "type mismatch" type error.

## Infinite type error - occurs check

Another kind of type error:

```hs
\x -> if False
      then x        -- x ~ u
      else [x, x]   -- x ~ [u, u]
```

If solved, the equation `u1 ~ [u1]` would signify an infinite type.

Theoretically, there is nothing wrong with infinite types; some PLs support it, but not Haskell. It turns out they are rarely useful and they are extremely hard to reason about. So almost all PL ban it.

In general, if an equation to solve has the form:   
`u1 ~ ... something that mentions u1 ...`    
(but not simply `u1 ~ u1`) 
then we say that it is the "infinite type error".

This error is also known by the name **occurs check**, which is the procedure the type checker perferoms: it checks if the LHS's defining name (here `u`), also appears on the RHS (in its own definition).

In the rare case you find an infinite type useful, the recommendation is to define an ordinary recursive wrapper type:

```hs
data T = MkT [T]
-- MkT :: [T] -> T

unT :: T -> [T]
unT (MkT list) = list
```

You now have to keep un/wrapping, but the logic is clearer because the code is explicit about when it refers to a `T` vs `[T]`.

## Algorithm requirements

Inference algorithm requires
- source of fresh names
- unification procedure
- substitution table
- type environment

We have equations like `(u1, Int) ~ (Bool, u2)` that need to be solved to find out that `u1 ~ Bool`, `u2 ~ Int`. This solving is called **unification**; we unify the type `(u1, Int)` with `(Bool, u2)`.

Because of that, we need a mutable table of solved unknowns that we can update every time we solve an equation. Since each entry is telling us what unknown to replace by what solution-type, it is also called *substitution table*.

We need the type inference algorithm to take one more parameter: the typing env `Γ` that will tell it which vars are in the current scope and their types. The type env is also a good place to keep the types of builtin names (functions).

## Unification

Unification solves two problems at once: checking whether two types match; if they contain unsolved unknowns, it solves them by discovering if and what can be substituted for the unsolved unknowns to make the two types match. 

Unification doesn't return any meaningful value; it gives its answer in one of two ways: if the two types match (perhaps after substitution), it returns normally and updates the substitution table; otherwise, it aborts with a type error message.

## Substitutions

The table of substitutions is initially empty. Each call to the unification function may update the table. The substitutions are expresed as `u := type`.

For clarity, we shouldn't allow solved unknowns appearing on the rhs; that is, this situation should be avoded:

```hs
u1 := [u2]  -- should't happen as u2 is solved by u1 := [Int]
u2 := Int
```

Note: proper implementations allow this form and do clever tricks elsewhere, where it is more efficient.

The function to apply all substitutions in the table to a type is `applySubst` and it returns the rewritten type (impl omitted). For example,

```hs
-- if the current subst table is
{u3 := Int, u2 := u1 -> u1}
-- then
applySubst (u2)
-- returns the type
u1 -> u1

-- possibly, a subst may be applied to multiple types:
applySubst (u2, u4, Bool)
-- which would return multiple types:
(u1 -> u1, u4, Bool)
```

A substitution may be applied to
- a type
- type env
- type scheme


## Unification algorithm

The type inference algorithm is not always aware that an unknown is already solved or that an entry already exists in the substitution table. It can call the unification algorithm with solved unknowns. So, for clarity, I first use `apply-subst` to get rid of them:

```
unify T1 T2 = unify-intern (apply-subst T1) (apply-subst T2)
```

Then the algorithm for `unify-intern` can assume that unknowns in inputs are unsolved.

NOTE: real implementations do not need this, they play efficient tricks elsewhere to compensate.

`unify-intern` is just structural recursion on the syntax of type expressions:

```pseudo hs
unify-intern u T
or
unify-intern T u
where u is an unknown:
    if T=u:
        return
    else if u occurs in T:
        infinite type error
    else:
        (update table)
        add u:=T to the table
        in the rest of the table, replace u by T
```

If it was instead `unify-intern u2 u4`, should you add `u2:=u4` or `u4:=u2`? Doesn't matter, either way if fine.


```pseudo hs
unifyIntern TC1 TC2 = -- where TC1 and TC2 are type constants
  if TC1 /= TC2
  then error "type mismatch"
  else () -- early return

unify-intern (Maybe T1) (Maybe T2) =
-- or
unify-intern [T1] [T2] =
-- or similar cases:
    unify-intern T1 T2

unify-intern (T1 → S1) (T2 → S2) =
-- or
unify-intern (T1, S1) (T2, S2) =
-- or similar cases:
    unify-intern T1 T2
    -- Unknowns in S1 and S2 may now become solved, so I need apply-subst:
    unify-intern (apply-subst S1) (apply-subst S2)

unify-intern (T1, S1, R1) (T2, S2, R2) =
    -- similar, you get the idea

All other cases =
-- (e.g. unify-intern Integer Bool, unify-intern [u1] (Maybe u2))
    type mismatch error
```


## Another example

```hs
Current table:
  u1 := u2 -> u3

unify u1 (u3->u4)
  unifyIntern (u2->u3) (u3->u4)
    unifyIntern u2 u3
      add u3:=u2
      replace u2 in the rest of the table
                                               Updated table:
                                               u1 := u2 -> u2
                                               u3 := u2
    unify u3 u4
      unifyIntern u2 u4
        add u4:=u2
        replace u4 in the rest of the table
                                               Updated table:
                                               u1 := u2 -> u2
                                               u3 := u2
                                               u4 := u2
```


## Type inference algorithm

Notation:

`infer env term`
- Procedure call to infer the type of term; look up variables and types in env, the type environment. The answer is meant to be monomorphic, i.e., if there are unsolved unknowns, let them be, don't generalize to a polymorphic type.

`inferPoly env term`
- call infer, then generalize to polymorphic type.

Example use case:   
  to infer `let f = \x -> x in ...`   
  we will call inferPoly on `\x -> x`

If success, both return the type inferred; if failure, both throw an error.

Again, to makethis a simple impl, we also use `applySubst` to all answers before returning them.


### Case: literal

```hs
infer env True
  return Bool

infer env 4
  return Int
  -- For simplicity I don't cover type classes, we fix 4 to Int

infer env []
  create new unknown, say u
  return [u]
```

Similarly for other literals...


### Case: variable

```hs
infer env v
where v is a variable:
  T := look up the type of v in env
  (if not found, "var not found" error)
  if T is polymorphic:
     create new unknowns to instantiate with
     T' := instantiate T
     return (applySubst T')
  else
     return (applySubst T)
```

Example steps of needing instantiation:

```hs
infer {x::u2, f::∀a b. a->b->a} f:
  (∀a b. a->b->a  needs instantiation)
  create unknowns u4, u5
  return u4->u5->u4
```

### Case: lambda

```hs
infer env (\\v -> expr):
  create new unknown (for v), say u
  T := infer (env plus v::u) expr
  return (applySubst (u->T))
```

Remark: Although u starts as a new unknown, after the recursive call for expr, u may have been solved, so it may need a rewrite, even though T doesn't.

* Example presentation of steps:

```
infer {} (\\x -> x):
  create new unknown u1
  T := infer {x::u1} x
    return u1
  T = u1
  return u1->T = u1->u1
```

For lambdas of two or more parameters, you could treat as nested lambdas, `\x -> \y -> expr`, that's tedious. Let's shortcut it:

```
infer env (\\v w -> expr):
  create new unknowns, say uv, uw
  T := infer (env plus v::uv, w::uw) expr
  return (applySubst (uv->uw->T))
```

* Example:

```
infer {} (\\x y -> x):
  create new unknowns ux, uy
  T := infer {x::ux, y::uy} x
    return ux
  T = ux
  return ux->uy->ux
```

### Case: Function application

```hs
infer env (f e):
  Tf := infer env f
  Te := infer env e
  -- We now check Tf = Te->???, and find out what's ???
  create new unknown u
  unify Tf (Te -> u)
  return (applySubst u)
```

For multiple parameters, e.g., `f e1 e2`, again you can either treat as `(f e1) e2` or do the obvious shortcut.

Example steps:

```hs
infer {} (\\f x -> f (f x)):
  create new unknowns u1, u2
  T1 := infer {f::u1, x::u2} (f (f x)):
    Tf := infer {f::u1, x::u2} f
      return u1
    Tf = u1

    T2 := infer {f::u1, x::u2} (f x)
      Tf2 := infer {f::u1, x::u2} f
        return u1
      Tf2 = u1
      Tx := infer {f::u1, x::u2} x
        return u2
      Tx = u2
      create new unknown u3
      unify Tf2 (Tx -> u3)
        unifyIntern u1 (u2 -> u3)
                                                 Updated table:
                                                 u1 := u2 -> u3
      return u3
    T2 = u3

    create new unknown u4
    unify Tf (T2 -> u4)
      unifyIntern (u2 -> u3) (u3 -> u4)
                                                 Updated table:
                                                 u1 := u2 -> u2
                                                 u3 := u2
                                                 u4 := u2

    return (applySubst u4) = u2
  T1 = u2
  return (applySubst (u1->u2->T1)) = (u2->u2)->u2->u2
```


### Case: let (single definition, non-recursive)

People expect these to be legal:

```
let f = \\x -> x    -- expect f :: ∀a. a -> a
in (f True, f 4)

let e = \[\]            -- expect e :: ∀a. \[a\]
in (True : e, 4 : e)
```

This means when "let" is used for local definitions (and similarly for "where"), we need to generalize an inferred type to a polymorphic type, e.g., `\x -> x` is normally just `u -> u` where `u` is an unknown, but here it is generalized to `∀a. a -> a` so `f` is polymorphic.

```
infer env (let v = exprv in expr)
  Tv := inferPoly env exprv
  infer (env plus v::Tv) expr

inferPoly env expr:
  T := infer env expr
  for each unknown ui in T:
    if ui doesn't also appear in env:
      create new type variable, say ai
  return (∀(the ai's) . (T but replace each ui by ai))
  -- Example: T = u2 -> u3 -> u4
  -- u3 appears in env, u2 and u4 don't
  -- return (∀a2 a4. a2 -> u3 -> a4)
```

* Example:

```
infer {} (let f = \\x -> x in (f True, f 4))
  T := inferPoly {} (\\x -> x)
    S := infer {} (\\x -> x)
      ...
      return (u1 -> u1)
    S = u1 -> u1
    return ∀a. a -> a
  T = ∀a. a -> a
  infer {f :: ∀a. a -> a} (f True, f 4)
    -- I haven't written the rule for tuples, but you can extrapolate from
    -- the section on algebraic data types below, and it would go like this:

    T1 := infer {f :: ∀a. a -> a} (f True)
      Tf := infer {f :: ∀a. a -> a} f
        (∀a. a -> a  needs instantiation)
        create new unknown u2
        return (u2 -> u2)
      Tf = (u2 -> u2)
      Te := infer {f :: ∀a. a -> a} True
        return Bool
      Te = Bool
      create new unknown u3
      unify Tf (Te -> u3)
        unifyIntern (u2 -> u2) (Bool -> u3)
                                                        Updated table:
                                                        u2 := Bool
                                                        u3 := Bool
      return (applySubst u3) = Bool
    T1 = Bool
    
    T2 := infer {f :: ∀a. a -> a} (f 4)
      Tf := infer {f :: ∀a. a -> a} f
        create new unknown u4
        return (u4 -> u4)
      Tf = (u4 -> u4)
      Te := infer {f :: ∀a. a -> a} 4
        return Int
      Te = Int
      create new unknown u5
      unify Tf (Te -> u5)
        unifyIntern (u4 -> u4) (Int -> u5)
                                                        Updated table:
                                                        u2 := Bool
                                                        u3 := Bool
                                                        u4 := Int
                                                        u5 := Int
      return (applySubst u5) = Integer
    T2 = Integer
    return (T1, T2) = (Bool, Integer)
```

* The following example explains why we don't generalize an unknown that appears in the type environment: We expect these:

```hs
(\x -> let y = x in not y) :: Bool -> Bool
(\x -> let y = x in (not y, take 1 y))  -- type mismatch error
```

* Explanation: A lambda gives the parameter x one single type, so if y=x then y also takes that single type.

```
infer {not::Bool->Bool} (\\x -> let y = x in not y)
  create new unknown ux
  T := infer {not::Bool->Bool, x::ux} (let y = x in not y)
    Ty := inferPoly {not::Bool->Bool, x::ux} x
      Tx := infer {not::Bool->Bool, x::ux} x
        return ux
      Tx = ux
      -- ux not generalized
      return ux
    Ty = ux
    infer {not::Bool->Bool, x::ux, y::Ty=ux} (not y)
      ... some steps that results in ...
                                                       Updated table:
                                                       ux := Bool
                                                       and a few others
      return Bool
  T = Bool
  return applySubst (ux -> T) = Bool -> Bool
```

### Case: if-then-else

```
infer env (if cond then e1 else e2):
  -- check cond :: Bool
  Tcond := infer env cond
  unify Tcond Bool

  -- find types of e1, e2
  Te1 := infer env e1
  Te2 := infer env e2

  -- but they have to be the same!
  unify Te1 Te2
  return (applySubst Te1)
```


### Algebraic data types (unparameterized)

An algebraic data type definition gives you data constructors so you can make terms of that type, and pattern matching so you can use terms of that type. Accordingly, it adds a group of type inference rules for making, and a type inference rule for pattern matching.

I will illustrate by an example type, then you extrapolate to other types.

```hs
data MI = Non | Has Integer
```

Type construction: add these rules:

```hs
infer env Non
  return MI

infer env (Has expr):
  T := infer env expr
  unify T Integer
  return MI
```

Do you have to add those rules? Not really, but if you are hand-executing type inference on examples, it is faster to add and use them.

If you are coding up a type inference algorithm, then it is less coding to: Allow type environments to also have data constructors by including

```hs
Non :: MI
Has :: Integer -> MI
```

and recall that `Has expr` can be treated as function application. This is easier to code up, but more tedious and less insightful to execute by hand.

* Using pattern matching:

For simplicity I just cover `case-expressions` with simple patterns:

```hs
case eMI of { Non -> e0 ; Has x -> e1 }
```

* We definitely need to add a custom rule for pattern matching against the data constructors.

```
infer env (case eMI of { Non -> e0 ; Has x -> e1 }):
  -- check eMI :: MI
  T := infer env eMI
  unify T MI

  -- infer e0
  T0 := infer env e0

  -- infer e1, note that local var x::Integer is in scope
  T1 := infer (env plus x::Integer) e1

  -- but they have to be the same!
  unify T0 T1
  return (applySubst T0)
```

### Algebraic data types (parameterized)

Parameterized algebraic data types are similar, but there are additional unknowns to create for instantiating the polymorphic types.

* Example

```hs
data Maybe a = Nothing | Just a
```

* The data constructors are polymorphic:

```hs
Nothing :: ∀a. Maybe a
Just :: ∀a. a -> Maybe a
```

* Type construction:

```
infer env Nothing
  create new unknown u
  return (Maybe u)

infer env (Just expr)
  T := infer expr
  return (Maybe T)
```

Two ways to explain why `Just expr` is that simple:
* If `expr :: T`, then `Just expr :: Maybe T`, "obviously"
* If you do it the careful way:

```hs
-- Just :: ∀a. a -> Maybe a
-- so create an unknown u to instantiate it,
-- so Just :: u -> Maybe u in this context
create new unknown u

-- but "Just expr", with expr :: T, needs T = u
unify T u

-- then Just expr :: Maybe u
return (applySubst (Maybe u))
```

That's always `Maybe T`.


* Using pattern matching

```
infer env (case eM of { Nothing -> e0; Just x -> e1 }):
  -- check eM :: Maybe ???
  T := infer env eM
  create new unknown u
  unify T (Maybe u)

  -- infer e0
  T0 := infer env e1

  -- infer e1, note local var x::u since eM = Just x :: Maybe u
  T1 := infer (env plus x::u) e1

  -- but they have to be the same!
  unify T0 T1
  return (applySubst T0)
```

Extrapolate this to standard parameterized types such as lists and tuples.


* The 2-tuple type can be understood as

```hs
data Tuple2 a b = MkTuple2 a b
```

except for the syntactic change from `MkTuple e1 e2 :: Tuple2 T1 T2` to `(e1, e2) :: (T1, T2)`


* The list type can be understood as

```hs
data List a = Nil | Cons a (List a)
```

except for the syntactical change from `[]` to `Nil`, `Cons e1 e2` to `e1 : e2`.

## Not covered this time

- Multiple definitions
- recursive definitions
- Programmer-provided type signatures
- Type classes
