---
downloaded:       2021-10-16
author:           
page-url:         https://crypto.stanford.edu/~blynn/lambda/typo.html
page-title:       Lambda calculus - Type operators
article-title:    Lambda calculus - Type operators
article-length:   17144
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Lambda calculus - Type operators

In Haskell, Map Integer String describes a map of integers to strings.
Thus Map is an example of a type operator, because it takes 2 types and
returns a type.
In Haskell, Map Integer String describes a map of integers to strings. Thus Map is an example of a *type operator*, because it takes 2 types and returns a type.

GHC has an syntax sugar extension called “type operators”. We use the term differently; for us, a type operator is a type-level function.

We introduce simply-typed lambda calculus at the level of types. We have *operator abstractions* and *operator applications*. We say *kind* for the type of a type-level lambda expression, and define the base kind \* for *proper types* that is, the types of (term-level) lambda expressions.

For example, the Map type constructor has kind \* -> \* -> \*. No term has type Map. The Integer and String types both have kind \*, so Map Integer String has kind \* and it is therefore a proper type. Another example of a proper type is (String -> Int) -> String.

When type operators are added to [System F][1], we obtain System Fω.

## Definitions

Our Type and Term data types both have their own variables, abstractions, and applications. The new Kind data type holds typing information for Type values, and as before, Type holds typing information for Term values.

Because we’re extending System F, we also have Forall, TLam, and TApp for functions that take types and return terms; without these, we obtain a system known as . \[I don’t know much about , but because types and terms undergo beta reduction in their own separate worlds, I sense it’s only a minor upgrade for simply-typed lambda calculus.\]

The kinding ::\* is common, so we elide it.

{-# LANGUAGE CPP #-}
#ifdef \_\_HASTE\_\_
import Haste.DOM
import Haste.Events
#else
import System.Console.Haskeline
#endif
import Control.Arrow
import Control.Monad
import Data.Char
import Data.Function
import Data.List
import Data.Tuple
import Text.Parsec

data Kind \= Star | Kind :=> Kind deriving Eq
data Type \= TV String | Forall (String, Kind) Type | Type :-> Type
  | OLam (String, Kind) Type | OApp Type Type
data Term \= Var String | App Term Term | Lam (String, Type) Term
  | Let String Term Term
  | TLam (String, Kind) Term | TApp Term Type

instance Show Kind where
  show Star \= "\*"
  show (a :=> b) \= showA ++ "->" ++ show b where
    showA \= case a of
      \_ :=> \_ \-> "(" ++ show a ++ ")"
      \_       \-> show a

showK Star \= ""
showK k    \= "::" ++ show k

instance Show Type where
  show ty \= case ty of
    TV s            \-> s
    Forall (s, k) t \-> '\\8704':s ++ showK k ++ "." ++ show t
    t :-> u \-> showL ++ " -> " ++ showR where
      showL \= case t of
        Forall \_ \_ \-> "(" ++ show t ++ ")"
        \_ :-> \_    \-> "(" ++ show t ++ ")"
        \_          \-> show t
      showR \= case u of
        Forall \_ \_ \-> "(" ++ show u ++ ")"
        \_          \-> show u
    OLam (s, k) t  \-> '\\0955':s ++ showK k ++ "." ++ show t
    OApp t u       \-> showL ++ showR where
      showL \= case t of
        TV \_     \-> show t
        OApp \_ \_ \-> show t
        \_        \-> "(" ++ show t ++ ")"
      showR \= case u of
        TV \_     \-> ' ':show u
        \_        \-> "(" ++ show u ++ ")"

instance Show Term where
  show (Lam (x, t) y)    \= "\\0955" ++ x ++ showT t ++ showB y where
    showB (Lam (x, t) y) \= " " ++ x ++ showT t ++ showB y
    showB expr           \= '.':show expr
    showT (TV "\_")       \= ""
    showT t              \= ':':show t
  show (TLam (s, k) t)   \= "\\0955" ++ s ++ showK k ++ showB t where
    showB (TLam (s, k) t) \= " " ++ s ++ showK k ++ showB t
    showB expr           \= '.':show expr
  show (Var s)     \= s
  show (App x y)   \= showL x ++ showR y where
    showL (Lam \_ \_) \= "(" ++ show x ++ ")"
    showL \_         \= show x
    showR (Var s)   \= ' ':s
    showR \_         \= "(" ++ show y ++ ")"
  show (TApp x y)  \= showL x ++ "\[" ++ show y ++ "\]" where
    showL (Lam \_ \_) \= "(" ++ show x ++ ")"
    showL \_         \= show x
  show (Let x y z) \=
    "let " ++ x ++ " = " ++ show y ++ " in " ++ show z

instance Eq Type where
  t1 \== t2 \= f \[\] t1 t2 where
    f alpha (TV s) (TV t)
      | Just t' <- lookup s alpha \= t' \== t
      | Just \_ <- lookup t (swap <$> alpha) \= False
      | otherwise \= s \== t
    f alpha (Forall (s, ks) x) (Forall (t, kt) y)
      | ks /= kt  \= False
      | s \== t    \= f alpha x y
      | otherwise \= f ((s, t):alpha) x y
    f alpha (a :-> b) (c :-> d) \= f alpha a c && f alpha b d
    f alpha \_ \_ \= False

## Parsing

With 3 different abstractions, we must tread carefully. Different conventions exist for denoting them:

  

Term -> Term

Type -> Term

Type -> Type

We use the notation in first column to avoid the uppercase lambda.

Writing \\x:X y. was previously equivalent to \\x:X.\\y. but now X y is parsed as an operator application. One solution is write more lambdas.

We add the typo expression, which is a type-level let expression.

data FOmegaLine \= Blank | Typo String Type
  | TopLet String Term | Run Term deriving Show

line :: Parsec String () FOmegaLine
line \= between ws eof $ option Blank $ typo <|>
    (try $ TopLet <$> v <\*> (str "=" \>> term)) <|> (Run <$> term) where
  typo \= Typo <$> between (str "typo") (str "=") v <\*> typ
  term \= letx <|> lam <|> app
  letx \= Let <$> (str "let" \>> v) <\*> (str "=" \>> term)
    <\*> (str "in" \>> term)
  lam0 \= str "\\\\" <|> str "\\0955"
  lam1 \= str "."
  lam \= flip (foldr ($)) <$> between lam0 lam1 (many1 bind) <\*> term where
    bind \= (&) <$> v <\*> option (\\s \-> TLam (s, Star))
      (   (str "::" \>> (\\k s \-> TLam (s, k)) <$> kin)
      <|> (str ":"  \>> (\\t s \-> Lam  (s, t)) <$> typ))
  typ \= olam <|> fun
  olam \= flip (foldr OLam) <$> between lam0 lam1 (many1 vk) <\*> typ
  fun \= oapp \`chainr1\` (const (:->) <$> str "->")
  oapp \= foldl1' OApp <$> many1 (forallt <|> (TV <$> v)
    <|> between (str "(") (str ")") typ)
  forallt \= flip (foldr Forall) <$> between fa0 fa1 (many1 vk) <\*> typ where
    fa0 \= str "forall" <|> str "\\8704"
    fa1 \= str "."
  vk \= (,) <$> v <\*> option Star (str "::" \>> kin)
  kin \= ((str "\*" \>> pure Star) <|> between (str "(") (str ")") kin)
    \`chainr1\` (const (:=>) <$> str "->")
  app \= termArg \>>= moreArg
  termArg \= (Var <$> v) <|> between (str "(") (str ")") term
  moreArg t \= option t $ ((App t <$> termArg)
    <|> (TApp t <$> between (str "\[") (str "\]") typ)) \>>= moreArg
  v \= try $ do
    s <- many1 alphaNum
    when (s \`elem\` words "let in forall typo") $ fail "unexpected keyword"
    ws
    pure s
  str \= try . (\>> ws) . string
  ws \= spaces \>> optional (try $ string "--" \>> many anyChar)

## Type-level lambda calculus

In System F, for type-checking, we needed a beta-reduction which substitued a given type variable with a given type value.

This time, this routine is used to build a type-level evaluation function that returns the weak head normal form of a type expression, which in turn is used to compute its normal form.

newName x ys \= head $ filter (\`notElem\` ys) $ (s ++) . show <$> \[1..\] where
  s \= dropWhileEnd isDigit x

tBeta (s, a) t \= rec t where
  rec (TV v) | s \== v         \= a
             | otherwise      \= TV v
  rec (Forall (u, k) v)
             | s \== u         \= Forall (u, k) v
             | u \`elem\` fvs   \= let u1 \= newName u fvs in
               Forall (u1, k) $ rec $ tRename u u1 v
             | otherwise      \= Forall (u, k) $ rec v
  rec (m :-> n)               \= rec m :-> rec n
  rec (OLam (u, ku) v)
             | s \== u         \= OLam (u, ku) v
             | u \`elem\` fvs   \= let u1 \= newName u fvs in
               OLam (u1, ku) $ rec $ tRename u u1 v
             | otherwise      \= OLam (u, ku) $ rec v
  rec (OApp m n)              \= OApp (rec m) (rec n)
  fvs \= tfv \[\] a

tEval env (OApp m a) \= let m' \= tEval env m in case m' of
  OLam (s, \_) f \-> tEval env $ tBeta (s, a) f where
  \_ \-> OApp m' a
tEval env term@(TV v) | Just x <- lookup v (fst env) \= case x of
  TV \_ \-> x
  \_    \-> tEval env x
tEval \_   ty                                          \= ty

tNorm env ty \= case tEval env ty of
  TV \_        \-> ty
  m :-> n     \-> rec m :-> rec n
  Forall sk t \-> Forall sk (rec t)
  OApp m n    \-> OApp (rec m) (rec n)
  OLam sk t   \-> OLam sk (rec t)
  where rec \= tNorm env

tfv vs (TV s) | s \`elem\` vs \= \[\]
              | otherwise   \= \[s\]
tfv vs (x :-> y)            \= tfv vs x \`union\` tfv vs y
tfv vs (Forall (s, \_) t)    \= tfv (s:vs) t
tfv vs (OLam (s, \_) t)      \= tfv (s:vs) t
tfv vs (OApp x y)           \= tfv vs x \`union\` tfv vs y

tRename x x1 ty \= case ty of
  TV s | s \== x    \-> TV x1
       | otherwise \-> ty
  Forall (s, k) t
       | s \== x    \-> ty
       | otherwise \-> Forall (s, k) (rec t)
  OLam (s, k) t
       | s \== x    \-> ty
       | otherwise \-> OLam (s, k) (rec t)
  a :-> b          \-> rec a :-> rec b
  OApp a b         \-> OApp (rec a) (rec b)
  where rec \= tRename x x1

## Kind checking

We require type lambda expressions to be well-kinded to guarantee strong normalization. Much of the code is similar to type checking for simply typed lambda calculus. A few checks verify that proper types have base type \*.

kindOf :: (\[(String, Type)\], \[(String, Kind)\]) \-> Type \-> Either String Kind
kindOf gamma t \= case t of
  TV s | Just k <- lookup s (snd gamma) \-> pure k
       | otherwise \-> Left $ "undefined " ++ s
  t :-> u \-> do
    kt <- kindOf gamma t
    when (kt /= Star) $ Left $ "Arr left: " ++ show t
    ku <- kindOf gamma u
    when (ku /= Star) $ Left $ "Arr right: " ++ show u
    pure Star
  Forall (s, k) t \-> do
    k' <- kindOf (second ((s, k):) gamma) t
    when (k' /= Star) $ Left $ "Forall: " ++ show k'
    pure Star
  OApp t u \-> do
    kt <- kindOf gamma t
    ku <- kindOf gamma u
    case kt of
      kx :=> ky \-> if ku /= kx then Left ("OApp " ++ show ku ++ " /= " ++ show kx) else pure ky
      \_         \-> Left $ "OApp left " ++ show t
  OLam (s, k) t \-> (k :=>) <$> kindOf (second ((s, k):) gamma) t

## Type checking

For App and TApp, we find the weak head normal form of the first argument to check it is a suitable abstraction. In the case of App, we compare the normal form of the type of the abstraction binding against the normal form of the type of the second argument to check that the application can proceed.

typeOf :: (\[(String, Type)\], \[(String, Kind)\]) \-> Term \-> Either String Type
typeOf gamma t \= case t of
  Var s | Just t <- lookup s (fst gamma) \-> pure t
        | otherwise \-> Left $ "undefined " ++ s
  App x y \-> do
    tx <- rec x
    ty <- rec y
    case tEval gamma tx of
      ty' :-> tz | tNorm gamma ty \== tNorm gamma ty' \-> pure tz
      \_ \-> Left $ "App: " ++ show tx ++ " to " ++ show ty
  Lam (x, t) y \-> do
    k <- kindOf gamma t
    if k \== Star then (t :->) <$> typeOf (first ((x, t):) gamma) y else
      Left $ "Lam: " ++ show t ++ " has kind " ++ show k
  TLam (s, k) t \-> Forall (s, k) <$> typeOf (second ((s, k):) gamma) t
  TApp x y \-> do
    tx <- tEval gamma <$> rec x
    case tx of
      Forall (s, k) t \-> do
        k' <- kindOf gamma y
        when (k /= k') $ Left $ "TApp: " ++ show k ++ " /= " ++ show k'
        pure $ tBeta (s, y) t
      \_ \-> Left $ "TApp " ++ show tx
  Let s t u \-> do
    tt <- rec t
    typeOf (first ((s, tt):) gamma) u
  where rec \= typeOf gamma

## Evaluation

We again erase types as we lazily evaluate a given term.

Because this system is getting complex, it may be better to treat type substitutions as part of the computation to verify our code works as intended. For now, we leave this as an exercise.

eval env (Let x y z) \= eval env $ beta (x, y) z
eval env (App m a) \= let m' \= eval env m in case m' of
  Lam (v, \_) f \-> eval env $ beta (v, a) f
  \_ \-> App m' a
eval env (TApp m \_) \= eval env m
eval env (TLam \_ t) \= eval env t
eval env term@(Var v) | Just x <- lookup v (fst env) \= case x of
  Var v' | v \== v' \-> x
  \_                \-> eval env x
eval \_   term                                        \= term

beta (v, a) f \= case f of
  Var s | s \== v       \-> a
        | otherwise    \-> Var s
  Lam (s, \_) m
        | s \== v       \-> Lam (s, TV "\_") m
        | s \`elem\` fvs \-> let s1 \= newName s fvs in
          Lam (s1, TV "\_") $ rec $ rename s s1 m
        | otherwise    \-> Lam (s, TV "\_") (rec m)
  App m n              \-> App (rec m) (rec n)
  TLam s t             \-> TLam s (rec t)
  TApp t ty            \-> TApp (rec t) ty
  Let x y z            \-> Let x (rec y) (rec z)
  where
    fvs \= fv \[\] a
    rec \= beta (v, a)

fv vs (Var s) | s \`elem\` vs \= \[\]
              | otherwise   \= \[s\]
fv vs (Lam (s, \_) f)        \= fv (s:vs) f
fv vs (App x y)             \= fv vs x \`union\` fv vs y
fv vs (Let \_ x y)           \= fv vs x \`union\` fv vs y
fv vs (TLam \_ t)            \= fv vs t
fv vs (TApp x \_)            \= fv vs x

rename x x1 term \= case term of
  Var s | s \== x    \-> Var x1
        | otherwise \-> term
  Lam (s, t) b
        | s \== x    \-> term
        | otherwise \-> Lam (s, t) (rec b)
  App a b           \-> App (rec a) (rec b)
  Let a b c         \-> Let a (rec b) (rec c)
  TLam s t          \-> TLam s (rec t)
  TApp a b          \-> TApp (rec a) b
  where rec \= rename x x1

norm env@(lets, gamma) term \= case eval env term of
  Var v        \-> Var v
  \-- Record abstraction variable to avoid clashing with let definitions.
  Lam (v, \_) m \-> Lam (v, TV "\_") (norm ((v, Var v):lets, gamma) m)
  App m n      \-> App (rec m) (rec n)
  Let x y z    \-> Let x (rec y) (rec z)
  TApp m \_     \-> rec m
  TLam \_ t     \-> rec t
  where rec \= norm env

## User Interface

Our user interface code grows uglier still, because to support let expressions, we now must maintain three association lists in the environment: one for terms, one for types, and one for kinds.

#ifdef \_\_HASTE\_\_
main \= withElems \["input", "output", "evalB", "resetB", "resetP",
    "churchB", "churchP"\] $
  \\\[iEl, oEl, evalB, resetB, resetP, churchB, churchP\] \-> do
  let
    reset \= getProp resetP "value" \>>= setProp iEl "value" \>> setProp oEl "value" ""
    run (out, env) (Left err) \=
      (out ++ "parse error: " ++ show err ++ "\\n", env)
    run (out, env@(lets, types, kinds)) (Right m) \= case m of
      Blank      \-> (out, env)
      Run term   \-> case typeOf (types, kinds) term of
        Left msg \-> (out ++ "type error: " ++ msg ++ "\\n", env)
        Right t  \-> (out ++ show (norm (lets, types) term) ++ "\\n", env)
      Typo s typo \-> case kindOf (types, kinds) typo of
        Left msg \-> (out ++ "kind error: " ++ msg ++ "\\n", env)
        Right k  \-> (out ++ "\[" ++ show (tNorm (types, kinds) typo) ++
          " : " ++ show k ++ "\]\\n", (lets, (s, typo):types, (s, k):kinds))
      TopLet s term \-> case typeOf (types, kinds) term of
        Left msg \-> (out ++ "type error: " ++ msg ++ "\\n", env)
        Right t  \-> (out ++ "\[" ++ s ++ ":" ++ show t ++ "\]\\n",
          ((s, term):lets, (s, t):types, kinds))
  reset
  resetB \`onEvent\` Click $ const reset
  churchB \`onEvent\` Click $ const $
    getProp churchP "value" \>>= setProp iEl "value" \>> setProp oEl "value" ""
  evalB \`onEvent\` Click $ const $ do
    es <- map (parse line "") . lines <$> getProp iEl "value"
    setProp oEl "value" $ fst $ foldl' run ("", (\[\], \[\], \[\])) es
#else
repl env@(lets, types, kinds) \= do
  let redo \= repl env
  ms <- getInputLine "> "
  case ms of
    Nothing \-> outputStrLn ""
    Just s  \-> do
      case parse line "" s of
        Left err  \-> do
          outputStrLn $ "parse error: " ++ show err
          redo
        Right Blank \-> redo
        Right (Run term) \-> case typeOf (types, kinds) term of
          Left msg \-> outputStrLn ("type error: " ++ msg) \>> redo
          Right ty \-> do
            outputStrLn $ "\[type = " ++ show ty ++ "\]"
            outputStrLn $ show $ norm (lets, types) term
            redo
        Right (Typo s typo) \-> case kindOf (types, kinds) typo of
          Right k \-> do
            outputStrLn $ "\[" ++ show (tNorm (types, kinds) typo) ++
              " : " ++ show k ++ "\]"
            repl (lets, (s, typo):types, (s, k):kinds)
          Left m \-> do
            outputStrLn m
            redo
        Right (TopLet s term) \-> case typeOf (types, kinds) term of
          Left msg \-> outputStrLn ("type error: " ++ msg) \>> redo
          Right t \-> do
            outputStrLn $ "\[type = " ++ show t ++ "\]"
            repl ((s, term):lets, (s, t):types, kinds)
main \= runInputT defaultSettings $ repl (\[\], \[\], \[\])
#endif

## Applications

Type operators make System F less unbearable, though in our example the savings are miniscule. We do get to write List X once, which is nice.

Haskell’s type constructors are a restricted form of type operators. In practice, the full power of type operators is rarely needed, so we limit them to simplify type checking.

Above, we saw 3 sorts of abstraction. We’re only missing a way of feeding a term to a function and getting a type, namely *dependent types*. We can add these while still preserving decidable type checking and strong normalization.

However, real programming languages often support unrestricted recursion and hence it is undecidable whether a term normalizes. Adding dependent types to such a language would lead to undecidable type checking. System Fω is about as far as we can go if we want unrestricted recursion and decidable type checking.

---

[Ben Lynn][2] *blynn@cs.stanford.edu* 💡

[1]: https://crypto.stanford.edu/~blynn/lambda/systemf.html
[2]: https://crypto.stanford.edu/~blynn/
