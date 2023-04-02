# An Implementation of a Dependently Typed Lambda Calculus
http://augustss.blogspot.com/2007/10/simpler-easier-in-recent-paper-simply.html
2021-11-14

## Simpler, Easier!

In a recent paper, [Simply Easy! (An Implementation of a Dependently Typed Lambda Calculus)][1], the authors argue that type checking a dependently typed language is easy. I agree whole-heartedly, it doesn't have to be difficult at all. But I don't think the paper presents the easiest way to do it. So here is my take on how to write a simple dependent type checker. (There's nothing new here, and the authors of the paper are undoubtedly familiar with all of it).

## Untyped lambda calculus

I'll start by implementing the [untyped lambda calculus][2] first.

ULC is a very simple language with just three constructs: variables, applications, and lambda expressions, i.e. *x*, *e e*, *λx.e*. For example, `(λx.λy.x)(λz.z)`.

In Haskell I'll use strings to represent variables names; it's simple and easy.

```hs
type Sym = String

data Expr
  = Var Sym
  | App Expr Expr
  | Lam Sym Expr
  deriving (Eq, Read, Show)

-- (λx.λy.x)(λz.z)
App (Lam "x" $ Lam "y" $ Var "x") (Lam "z" $ Var "z")
```

What do we want to do with the `Expr` type? Well, evaluating an expression seems like the thing we need. Now, there are many degrees of evaluation to choose from, Weak Head Normal Form, Head Normal Form, Normal Form, etc., etc. They differ in exactly where there might be reducible expression lingering. To evaluate lambda expression the most important step is β-reduction. A β-reduction step can be performed anywhere a function meets an argument, i.e., an application where the function is on λ form, a.k.a. a redex.

*(λx.e)a* reduces to *e*\[*x:=a*\]

Where the *e*\[*x:=a*\] notation means that all (free) occurrences of the variable *x* in the expression *e* are replaced by *a*. The example above has one redex, and doing a β step yields *λy.λz.z*. The other kind of reduction we will make use of is α-substitution, which is simply renaming a bound variable, e.g., *λx.x* can be changed to *λy.y*. Let's start with an easy evaluation strategy, normal order to WHNF. In WHNF we only need to make sure there the there's no redex along the "spine" of the expression, i.e., starting from the root and following the left branch in applications. Doing normal order reduction means that we do __not__ evaluate anything inside the argument of a β redex before doing the reduction. It's sometimes called lazy evaluation, but I prefer to use that term for an implementation strategy for normal order reduction. We implement normal order WHNF by walking down the spine collecting arguments (i.e., the right branch of a applications) until we reach a lambda or a variable. If we reach a variable we already have WHNF so we just reconstitute the applications again. If we hit a lambda we get to the crux of evaluation. We need to perform a β-reduction, i.e., if we have

App (Lam v e) a

we need to replace all (free) occurrences of the variable

v

by the argument

a

inside the lambda body

e

. That's what the

subst

function does.

whnf :: Expr -> Expr
whnf ee = spine ee \[\]
  where spine (App f a) as = spine f (a:as)
        spine (Lam s e) (a:as) = spine (subst s a e) as
        spine f as = foldl App f as

The

subst

function is the only tricky part, so let's relax by first defining something easy, namely getting the free variables from an expression. The free variables are those variables that occur in an expression, but are not bound in it. We simply collect the variables in a set (using a list as a set here), removing anything bound.

freeVars :: Expr -> \[Sym\]
freeVars (Var s) = \[s\]
freeVars (App f a) = freeVars f \`union\` freeVars a
freeVars (Lam i e) = freeVars e \\\\ \[i\]

Back to substitution.

subst :: Sym -> Expr -> Expr -> Expr
subst v x b = sub b
  where sub e@(Var i) = if i == v then x else e
        sub (App f a) = App (sub f) (sub a)
        sub (Lam i e) =
            if v == i then
                Lam i e
            else if i \`elem\` fvx then
                let i' = cloneSym e i
                    e' = substVar i i' e
                in  Lam i' (sub e')
            else
                Lam i (sub e)
        fvx = freeVars x
        cloneSym e i = loop i
           where loop i' = if i' \`elem\` vars then loop (i ++ "'") else i'
                 vars = fvx ++ freeVars e

substVar :: Sym -> Sym -> Expr -> Expr
substVar s s' e = subst s (Var s') e

The

subst

function will replace all free occurrences of

v

by

b

inside

x

, i.e., *b*\[*v:=x*\]. The

Var

case is easy. If it's the variable we are replacing then replace else leave it alone. The

App

case is also easy, just recurse in both branches. The

Lam

case has three alternative. First, if the bound variable is the same as the one we are replacing then there can be no free occurrences inside it, so just return the lambda as is. Second, if the lambda bound variable is among the free variables in

x

we have a problem (see below). Third case, just recurse in the body. So, what about the case when the lambda bound variable occurs in

x

? Well, if we just blindly continue substitution the variable

v

inside

x

will no longer refer to the same thing; it will refer to the variable bound in the lambda. That's no good. For example, take the expression *λx.((λy.λx.y)x)*, the β reduction gives *λx.λx'.x* (or similar), whereas doing the substitution blindly would give *λx.λx.x*. Which is wrong! But it's easy to fix, just conjure up a variable,

i'

that will not clash with anything (

cloneSym

does that). How do we come up with a good variable? Well, we don't want to pick one that is free in the expression

x

because that would lead to the same problem again. Nor do we want to pick a variable that is free in

e

because that would accidentally bind something in

e

. So we take the original identifier and tack on "'" until it fulfills our requirements. (OK, efficiency affectionados are allowed to complain a little here, but this isn't that bad actually.) Once we have a new variable we can do an α-conversion to rename the offending variable to something better. The

substVar

function is a utility when we want to replace one variable with another. Another useful thing to be able to do is to compare lambda expression for equality. We already have syntactic equality derived for

Expr

, but it is also very useful to be able to compare expressions modulo α-conversions. That is, we'd like *λx.x* to compare equal to *λy.y*. Let's call that function

alphaEq

.

alphaEq :: Expr -> Expr -> Bool
alphaEq (Var v)   (Var v')    = v == v'
alphaEq (App f a) (App f' a') = alphaEq f f' && alphaEq a a'
alphaEq (Lam s e) (Lam s' e') = alphaEq e (substVar s' s e')
alphaEq \_ \_ = False

Variables and applications just proceed along the structure of the expression. When we hit a lambda the variables might be different, so we do an α-conversion of the second expression to make them equal. As the final functions, we will do reduction to Normal Form (i.e., to a form where no redexes remain) and comparison of expressions via their normal forms.

nf :: Expr -> Expr
nf ee = spine ee \[\]
  where spine (App f a) as = spine f (a:as)
        spine (Lam s e) \[\] = Lam s (nf e)
        spine (Lam s e) (a:as) = spine (subst s a e) as
        spine f as = app f as
        app f as = foldl App f (map nf as)

betaEq :: Expr -> Expr -> Bool
betaEq e1 e2 = alphaEq (nf e1) (nf e2)

Computing the NF is similar to WHNF, but as we reconstruct expressions we make sure that all subexpression have NF as well. Note that both

whnf

and

nf

may fail to terminate because not all expressions have a normal form. The canonical non-terminating example is *(λx.x x)(λx.x x)* which has one redex, and doing the reduction produces the same term again. But if an expression has a normal form then it is unique (the Church-Rosser theorem). Here are some sample lambda terms (named for convenience):

*zero ≡ λs.λz.z one ≡ λs.λz.s z two ≡ λs.λz.s (s z) three ≡ λs.λz.s (s (s z)) plus ≡ λm.λn.λs.λz.m s (n s z)*

Or, in Haskell

\[z,s,m,n\] = map (Var . (:\[\])) "zsmn"
app2 f x y = App (App f x) y
zero  = Lam "s" $ Lam "z" z
one   = Lam "s" $ Lam "z" $ App s z
two   = Lam "s" $ Lam "z" $ App s $ App s z
three = Lam "s" $ Lam "z" $ App s $ App s $ App s z
plus  = Lam "m" $ Lam "n" $ Lam "s" $ Lam "z" $ app2 m s (app2 n s z)

And now we can check that addition works,

betaEq (app2 plus one two) three

will produce

True

.

### A detour, [simply typed lambda calculus][3].

To do type checking we need to introduce types. A very simple system is the simply typed lambda calculus. It has one (or more) base type (think of it as Bool or Int if you want an example) and function types. In Haskell terms:

data Type = Base | Arrow Type Type
    deriving (Eq, Read, Show)

Or

*t→t B*

The expressions themselves will have an explicit type on the bound variable in a lambda expression. So we now have

*x* *e e* *λx:t.e*

For example, *(λx:(B→B).λy:B.x)(λz:B.z)*. The Haskell type for expressions is

data Expr
    = Var Sym
    | App Expr Expr
    | Lam Sym Type Expr
    deriving (Eq, Read, Show)

The only difference is the

Type

in

Lam

. All the functions we had for the untyped lambda calculus can be trivially extended to the simply typed one by simply carrying the type along. So finally, time for some type checking. The type checker will take an expression and return the type of the expression. The type checker will also need the types of all free variables in the expression to be able to do this. Otherwise, what type would it assign to, say, the expression *x*? To represent the types of the free variables we use an environment which is simply a list of variables and their types.

newtype Env = Env \[(Sym, Type)\] deriving (Show)

initalEnv :: Env
initalEnv = Env \[\]

extend :: Sym -> Type -> Env -> Env
extend s t (Env r) = Env ((s, t) : r)

Type checking can go wrong; there can be type errors. To cater for this the type checker will be written in monadic style where the monad is simply an error (exception) monad. The error messages are strings, and the monad itself is the

Either

type. So

TC

is the type checking monad.

type ErrorMsg = String

type TC a = Either ErrorMsg a

We can now write variable lookup.

findVar :: Env -> Sym -> TC Type
findVar (Env r) s =
    case lookup s r of
    Just t -> return t
    Nothing -> throwError $ "Cannot find variable " ++ s

It simply looks up the variable and returns the type. If not found it throws an error with

throwError

(from

Control.Monad.Error

). And then the type checker itself.

tCheck :: Env -> Expr -> TC Type
tCheck r (Var s) =
    findVar r s
tCheck r (App f a) = do
    tf <- tCheck r f
    case tf of
     Arrow at rt -> do
        ta <- tCheck r a
        when (ta /= at) $ throwError "Bad function argument type"
        return rt
     \_ -> throwError "Non-function in application"
tCheck r (Lam s t e) = do
    let r' = extend s t r
    te <- tCheck r' e
    return $ Arrow t te

For variables, just look up the type for it in the environment. For application, type check the function part and the argument part. The function should have function (arrow) type, and if it does the type of the application is the return type of the function. Finally, for a lambda expression we extend the environment with the bound variable. We then check the body, and the type of the lambda expression is a function type from the argument type to the type of the body. For convenience:

typeCheck :: Expr -> Type
typeCheck e =
    case tCheck initalEnv e of
    Left msg -> error ("Type error:\\n" ++ msg)
    Right t -> t

Pretty easy sailing so far. The simply typed lambda calculus is a pain to use. Take something like *λx.x* in the untyped world. What type should we give it? Well that depends on how we intend to use it. Maybe *λx:B.x*, maybe *λx:(B→B).x*, maybe *λx:(B→B→B).x*... So we can no longer have one identity function; we need one for each type. What a bummer! It's as bad as C. BTW, all (type correct) expression in the simply typed lambda calculus have a normal form (Tait 1967).

### Almost going down the wrong track, the [polymorphic lambda calculus][4].

(Don't get me wrong, the polymorphic lambda calculus is a work of marvel.) So how can we fix the problem with one identity function for each type? We can add polymorphism! We can extend the expression language so that we also pass types around; we add type abstraction and type application.

*x e e λx:t.e Λα:k.e e\[t\]*

Where *Λα:k.e* is a type abstraction, i.e., *α* is a type variable which we can use in type expressions inside *e*. To supply a type argument we have type application, *e\[t\]*. So the types we have would functions, base type, and type variables.*

t→t B α

*And what is *k* in the *Λα:k.e*? Well, now types have gotten so complicated that it is possible to construct types that make no sense, so we need a "type system" for the types. We call them kinds.*

k→k \*

*Defining all this is Haskell would be something like

data Expr
    = Var Sym
    | App Expr Expr
    | Lam Sym Type Expr
    | TLam Sym Kind Expr
    | TApp Expr Type
    deriving (Eq, Read, Show)
data Type
    = Arrow Type Type
    | Base
    | TVar Sym
    deriving (Eq, Read, Show)
data Kind
    = KArrow Type Type
    | Star
    deriving (Eq, Read, Show)

But wait, there's an awful lot of duplication here. The structures on the three levels have a lot of similarities. (Oh, and we don't really need

Base

anymore now when we have variables.) BTW, this system, called System Fω, is (a simplified version of) what GHC uses internally to represent Haskell code. It's a beautiful system, really. Oh, the identity function, well it would be *Λα:\*.λx:α.x*. And using it: *id\[B\]a*, assuming *a* has type *B*.

### Simply easy, [the lambda cube][5].

To simplify and (as often happens when you simplify) generalize the expressions above we are going to squish them all into one expression data type. So

TLam

and

Lam

will join, as will

TApp

and

App

,

TVar

and

Var

,

KArrow

and

Arrow

. But wait, there's nothing corresponding to

Arrow

in

Expr

. We need to add something. We could just add it as it is, but we won't. TADA, enter dependent types. Instead of the boring function type *t→u* we will use a more exciting one, *(x:t)→u*. What does it mean? It means that the variable *x* can occur in *u*. If it doesn't then it's simply the same as the old fashioned function type. If *x* does occur it means that __type__ *u* can depend on the __value__ of the argument (*x*). In Haskell:

data Expr
    = Var Sym
    | App Expr Expr
    | Lam Sym Type Expr
    | Pi  Sym Type Type
    | Kind Kinds
    deriving (Eq, Read, Show)
type Type = Expr

data Kinds = Star | Box deriving (Eq, Read, Show)

The new arrow type is called

Pi

. We will also need more than one kind,

Star

and

Box

. It's pretty easy to extend the functions from the first part to handle this expression type. There's just a few more places to recurse. Here's the code again. Absolutly nothing subtle about it.

freeVars :: Expr -> \[Sym\]
freeVars (Var s) = \[s\]
freeVars (App f a) = freeVars f \`union\` freeVars a
freeVars (Lam i t e) = freeVars t \`union\` (freeVars e \\\\ \[i\])
freeVars (Pi i k t) = freeVars k \`union\` (freeVars t \\\\ \[i\])
freeVars (Kind \_) = \[\]

subst :: Sym -> Expr -> Expr -> Expr
subst v x = sub
  where sub e@(Var i) = if i == v then x else e
        sub (App f a) = App (sub f) (sub a)
        sub (Lam i t e) = abstr Lam i t e
        sub (Pi i t e) = abstr Pi i t e
        sub (Kind k) = Kind k
        fvx = freeVars x
        cloneSym e i = loop i
           where loop i' = if i' \`elem\` vars then loop (i ++ "'") else i'
                 vars = fvx ++ freeVars e
        abstr con i t e =
            if v == i then
                con i (sub t) e
            else if i \`elem\` fvx then
                let i' = cloneSym e i
                    e' = substVar i i' e
                in  con i' (sub t) (sub e')
            else
                con i (sub t) (sub e)

To cut down on the code you could actually join the

Lam

and

Pi

constructors since they are treated identically in many cases. I've left them separate for clarity. The

alphaEq

function extends in the natural way to the new type, so does

nf

, but here it is anyway.

nf :: Expr -> Expr
nf ee = spine ee \[\]
  where spine (App f a) as = spine f (a:as)
        spine (Lam s t e) \[\] = Lam s (nf t) (nf e)
        spine (Lam s \_ e) (a:as) = spine (subst s a e) as
        spine (Pi s k t) as = app (Pi s (nf k) (nf t)) as
        spine f as = app f as
        app f as = foldl App f (map nf as)

So, now for the meaty part, the type checking itself. The handling of the environment is just as before, so we'll just look at the different cases for the type checking.

tCheck :: Env -> Expr -> TC Type
tCheck r (Var s) =
    findVar r s

Just as before.

tCheck r (App f a) = do
    tf <- tCheckRed r f
    case tf of
     Pi x at rt -> do
        ta <- tCheck r a
        when (not (betaEq ta at)) $ throwError $ "Bad function argument type"
        return $ subst x a rt
     \_ -> throwError $ "Non-function in application"

This is almost as before, but the arrow type is called

Pi

now. The key thing here — and this is really where the fact that we are doing dependent types shows up — is the return type. For the simply typed lambda calculus it was just

rt

, but now

rt

can contain free occurences of the variable

x

. Since we are returning

rt

the

x

would no longer be in scope, so we substitute the value of the argument for it. This is coolest part of the type checker. You've seen it. That's where it is. Since types can now be arbitrary expression we use

betaEq

to compare them instead of

(==)

.

tCheck r (Lam s t e) = do
    tCheck r t
    let r' = extend s t r
    te <- tCheck r' e
    let lt = Pi s t te
    tCheck r lt
    return lt

The lambda case is similar to before, but we return a

Pi

now, so we need to include the variable name. Furthermore, to avoid nonsense like *λx:5.e* we make sure that the type we want to return actually has a valid kind itself. (The first call to

tCheck

is to ensure the type we're putting into the environment is valid; I'm sure there's a more elegant way to do this, but I can't remember what it is right now.)

tCheck \_ (Kind Star) = return $ Kind Box
tCheck \_ (Kind Box) = throwError "Found a Box"

Everything has a type, so what's the type of *\** (

Kind Star

), well it's a \[\] (

Kind Box

) (excuse the ugly box, I can't find the HTML version of a box). And what's the type of

Box

? Well, you could keep going, but instead we'll stop right here. The idea is that the source language which we'll write our terms in will not allow the box to be written, so it should never occur.

tCheck r (Pi x a b) = do
    s <- tCheckRed r a
    let r' = extend x a r
    t <- tCheckRed r' b
    when ((s, t) \`notElem\` allowedKinds) $ throwError "Bad abstraction"
    return t

How do we check the type of the (dependent) function type? Well, we check the type of the thing to the left of the arrow, extend the environment, and then check the thing to the right. So now what should

(s, t)

be? Well,

a

and

b

should be types (or maybe kinds). So their types should be kinds. This leads to the following definition:

allowedKinds :: \[(Type, Type)\]
allowedKinds = \[(Kind Star, Kind Star), (Kind Star, Kind Box), (Kind Box, Kind Star), (Kind Box, Kind Box)\]

I.e., we allow (\*,\*), (\*,\[\]), (\[\],\*), and (\[\],\[\]). What does it all mean? Here's the beauty of the lambda cube. By varying what we allow we can change what system we type check.

(\*,\*) values can depend on values. Just this gives the simply typed λ calculus. (\[\],\[\]) types can depend on types. (\[\],\*) values can depend on type. Include all these three and you get Fω. (\*,\[\]) types can depend on values. Include this one to get dependent types.

With all four combination allowed you get Calculus of Construction (CoC). If you always include (\*,\*), but make a choice of the other 3 you get 8 choices; these are the corners of the lambda cube. All of these system have been studied. BTW, all the systems in the lambda cube have the property that a well typed expression has a normal form. (Well, the proof of this is so complicated for some of these systems that some people kinda doubt it.)

### Examples

Here the syntax *s→t* means *(\_:s)→t*, where "\_" is some new variable not used in *t*.

Identity*

id ≡ λa:\*.λx:a.x

*Pairs*

Pair ≡ λa:\*.λb:\*.(c:\*→((a→b→c)→c)) pair ≡ λa:\*.λb:\*.λx:a.λy:b.λc:\*.λf:(a→b→c).f x y split ≡ λa:\*.λb:\*.λr:\*.λf:(a→b→r).λp:(Pair a b).p r f fst ≡ λa:\*.λb:\*.λp:(Pair a b).split a b a (λx:a.λy:b.x) p snd ≡ λa:\*.λb:\*.λp:(Pair a b).split a b b (λx:a.λy:b.y) p

*

My fingers are numb from all these greek characters, so I'll continue with examples another time. And, of course, a parser and pretty printer.

Labels: [Dependent types][6], [Haskell][7], [Lambda calculus][8]

[1]: http://people.cs.uu.nl/andres/LambdaPi.html
[2]: http://en.wikipedia.org/wiki/Untyped_lambda_calculus
[3]: http://en.wikipedia.org/wiki/Simply_typed_lambda_calculus
[4]: http://en.wikipedia.org/wiki/System_F
[5]: http://en.wikipedia.org/wiki/Lambda_cube
[6]: http://augustss.blogspot.com/search/label/Dependent%20types
[7]: http://augustss.blogspot.com/search/label/Haskell
[8]: http://augustss.blogspot.com/search/label/Lambda%20calculus
