---
downloaded:       2021-10-16
page-url:         https://crypto.stanford.edu/~blynn/lambda/pts.html
page-title:       Lambda calculus - Lambda calculus vending machine
---
# Lambda calculus - Lambda calculus vending machine

All-natural numbers.

Select spec:

λ-cube

(∗,□)  
(□,□)  
(□,∗)  

λ∗  
λU  
λU−  
λZ  
Custom

→ 2 ω ω P P2 Pω C

Add toppings:

fix  
Nat 0 pred succ ifz add mul  
Bool true false if

\[new slogan\]

Known as: λC, CC, CoC, λPω. The calculus of constructions.

Write code:

Enjoy!



How do we create the above? We begin with a humbler goal: to augment [System Fω][1] with an abstraction that maps terms to types.

Recall we already 3 abstractions: one for mapping terms to terms ([lambda calculus][2]), one for types to terms ([universal types][3]), and one for types to types ([type operators][4]). Once we add the term-to-type abstraction (*dependent types*), we obtain the *calculus of constructions*; [see Coquand and Huet][5]. In this system, it turns out type checking is still decidable, and well-typed terms are still strongly normalizing.

We could extend our data types to support yet another flavour of abstraction and application, but we let’s pause and reflect. Already, code duplication is rife in our interpreters: the Kind, Type, and Term data types are similar, and type-level beta reduction and evaluation closely mirrors the corresponding term-level routines.

Isn’t an expression just one big tree? Can we design a data type to represent nodes of any variety, be it term, type, or kind? Perhaps an enum to distinguish between the cases?

## One simple data structure

Incredibly, we can represent terms, types, and kinds in one simple data structure. Duplicate code almost vanishes completely: what little that remains (mostly overlap between the Lam and Pi cases) would likely be messier if we zealously removed every last repetition.

{-# LANGUAGE CPP #-}
#ifdef \_\_HASTE\_\_
import Haste.DOM
import Haste.Events
import System.Random
#else
import System.Console.Haskeline
#endif
import Control.Monad
import Data.Bool
import Data.Char
import Data.List
import Data.Maybe
import Data.Tuple
import Text.Parsec

data Term \= S String | V String | Lam String Term Term | Pi String Term Term
  | App Term Term
  | Prim String \[Term\]

In our code, we call the data type Term, but it really is a *pseudo-term* because it represents a node at any level: terms, types, kinds, and so on.

We define the V constructor for constants and variables of all varieties: term variables, type variables, kinds variables, and beyond. The Lam constructor is for abstractions, again for all sorts: terms, types, and so on, which can map to terms, types, and so on. The App constructor plays a similar role for applications. So far, our data structure is almost the same as the Term data structure we defined for [untyped lambda calculus][6]!

Base types are held in a V variant, for example V "Nat" or V "Bool". We represent the base kind \* as S "\*". We’ll sometimes overload the word “type” to mean any type, or the base kind \*.

The Pi constructor is for types that are built from these. It generalizes the arrow type we encountered in simply typed lambda calculus as well as the universal type we encountered in System F and HM, which is why our parser accepts forall in place of pi. Some examples:

-   The type Nat -> Bool becomes Pi "\_" (V "Nat") (V "Bool"). The string value is unused when representing arrow types. We choose the underscore to, shall we say, underscore this fact.
    
-   The type 'forall X::\*.X\` becomes Pi "X" (S "\*") (V "X").
    

As we can mix terms and types in any order a Pi variant, it can represent dependent types, that is, the type of an abstraction that takes terms to types.

We’ll discuss the Prim constructor later.

Here’s the code to compare pseudo-terms:

instance Eq Term where
  t1 \== t2 \= f \[\] t1 t2 where
    f \_      (S s) (S t) \= s \== t
    f alpha  (V s) (V t)
      | Just t' <- lookup s alpha            \= t' \== t
      | Just \_  <- lookup t (swap <$> alpha) \= False
      | otherwise                            \= s \== t
    f alpha (Pi s ks x) (Pi t kt y)
      | not (f alpha ks kt) \= False
      | s \== t              \= f alpha x y
      | otherwise           \= f ((s, t):alpha) x y
    f alpha (Lam s ks x) (Lam t kt y)
      | not (f alpha ks kt) \= False
      | s \== t              \= f alpha x y
      | otherwise           \= f ((s, t):alpha) x y
    f alpha (App a b) (App c d) \= f alpha a c && f alpha b d
    f \_     \_ \_ \= False

and to print them:

showArrow t u        \= showL t ++ "->" ++ showR u where
  showL (Lam \_ \_ \_)  \= "(" ++ show t ++ ")"
  showL (Pi  \_ \_ \_)  \= "(" ++ show t ++ ")"
  showL \_            \= show t
  showR (Lam \_ \_ \_)  \= "(" ++ show u ++ ")"
  showR (Pi "\_" \_ \_) \= show u
  showR (Pi  \_ \_ \_)  \= "(" ++ show u ++ ")"
  showR \_            \= show u

instance Show Term where
  show (Prim s a)     \= "{" ++ s ++ "\[" ++ intercalate ", " (show <$> a) ++ "\]}"
  show (S s)          \= s
  show (V v)          \= v
  show (Lam x t u)    \= "\\0955" ++ x ++ ":" ++ show t ++ "." ++ show u
  show (Pi  "\_" t u)  \= showArrow t u
  show (Pi  x t u) | x \`notElem\` fv \[\] u \= showArrow t u
  show (Pi  x t y)    \= "\\0960" ++ x ++ ":" ++ show t ++ "." ++ show y
  show (App x y)      \= showL x ++ showR y where
    showL (Pi \_ \_ \_)  \= "(" ++ show x ++ ")"
    showL (Lam \_ \_ \_) \= "(" ++ show x ++ ")"
    showL \_           \= show x
    showR (V s)       \= ' ':s
    showR \_           \= "(" ++ show y ++ ")"

and to parse them (the axiom keyword will be explained later):

data PTSLine \= None | TopLet String Term | Axiom String Term | Run Term

line :: (\[String\], \[String\]) \-> Parsec String () PTSLine
line (ss, syn) \= between ws eof $ option None $
    axiom <|> (try $ TopLet <$> v <\*> (str "=" \>> term))
    <|> (Run <$> term) where
  axiom \= str "axiom" \>> Axiom <$> v <\*> (str "=" \>> term)
  keywords \= \["forall", "pi", "axiom"\] \`union\`
    bool \[\] \["ifz", "then", "else"\] ("ifz" \`elem\` syn) \`union\`
    bool \[\] \["if",  "then", "else"\] ("if"  \`elem\` syn)
  term \= ifzPerhaps $ ifPerhaps $ pi <|> lam <|> arr
  ifzPerhaps \= bool id (ifzthenelse <|>) $ "ifz" \`elem\` syn
  ifPerhaps  \= bool id (ifthenelse  <|>) $ "if"  \`elem\` syn

  ifzthenelse \= Prim "ifz" <$> sequence
    \[str "ifz" \>> term, str "then" \>> term, str "else" \>> term\]
  ifthenelse  \= Prim "if"  <$> sequence
    \[str "if" \>> term, str "then" \>> term, str "else" \>> term\]

  lam \= flip (foldr $ uncurry Lam) <$> between lam0 lam1 (many1 vt) <\*> term where
    lam0 \= str "\\\\" <|> str "\\0955"
    lam1 \= str "."
  pi \= flip (foldr $ uncurry Pi) <$> between pi0 pi1 (many1 vt) <\*> term where
    pi0 \= str "forall" <|> str "pi" <|> str "\\0960" <|> str "\\8704"
    pi1 \= str "."
  vt   \= (,) <$> v <\*> option (S $ head ss) ((str "::" <|> str ":") \>> term)
    <|> between (str "(") (str ")") vt
  arr \= (app <|> (foldr1 (<|>) $ (S <$>) . str <$> ss))
    \`chainr1\` (str "->" \>> pure (Pi "\_"))
  app \= foldl1' App <$> many1 ((V <$> v) <|> between (str "(") (str ")") term
    <|> between (str "\[") (str "\]") term)
  v   \= try $ do
    s <- many1 alphaNum
    when (s \`elem\` keywords) $ fail $ "unexpected " ++ s
    ws
    pure s
  str s \= try $ do
    void $ string s
    let c \= last s
    when (isAlphaNum c && isAscii c) $ notFollowedBy alphaNum
    ws
    pure s
  ws \= spaces \>> optional (try $ string "--" \>> many anyChar)

No surprises; or perhaps the surprise is that the code is so similar to the corresponding functions in our previous interpreters.

## Type checking

The Lam and Pi variants have the same fields, and act similarly in parts of our code, but:

-   The type of a Lam is a Pi. The type of a Pi is an S.
    
-   Evaluating Lam means beta reduction. Evaluating Pi means nothing; it’s just type information.
    

We seed our system the results of certain type checks and kind checks, which we collectively call *judgements*, such as:

Nat : \*
0 : Nat
Bool : \*
true : Bool

This is similar to defining base types and constants in simply typed lambda calculus.

We have special cases to handle if and ifz, but otherwise judging a pseudo-term is similar to typing terms in our previous interpreters:

-   Each variable should be bound, and its type should be built from the value S "\*", and the V and Pi variants. The V values denote (bound) type variables or base types.
    
-   In an application, the first term must be an abstraction, and the second term must be something the abstraction expects.
    
-   Terms and types may be freely mixed.
    
-   To determine if two types match, we normalize them before comparing. To determine if a type represents an abstraction, we find the weak head normal form first.
    

However, unlike our previous interpreters, we represent terms and types in the same data structure, so the eval and norm functions work for both.

## Pure Type Systems

With a few tweaks, not only can our code be reused to interpret any vertex of the [*lambda cube*][7], but also an infinite number of exotic typed lambda calculi beyond those we’ve seen so far.

We start by defining a set of valid S values, known as *sorts*:

\[Instead of a box, we sometimes use a question mark for easier typing, and also because I have no idea why they chose the box symbol.\]

The first value S "\*" represents the base kind, that is, the type of types. The box value represents the type of the base kind, which we state as the *axiom*:

Then an expression is valid if and only if the type of its type is one of these two values. The type of the type of a term is \* and the type of the type of a type is □.

Once we get used to two levels of indirection, then the above becomes concise and elegant. We do something twice to an expression, and if we wind up with one of two strange symbols then we know it’s valid, and furthermore, whether it’s a term or a type.

Next, consider a value Pi x a b. Here s is a variable name, and a and b are terms. Suppose the type of a is \* and the type of b is □. Our Pi is the type of some Lam abstraction, and by the above, this abstraction must map terms to types (because the type of the type of input is \* and the type of the type of the output is □).

Reasoning in this way, we see that if Pi x a b is the type of a valid Lam abstraction, the type of a must be one of \* or □ and the type of b must also be one of \* or □, and furthermore, their types tell us whether the input and output of the abstraction are terms or types.

Thus by restricting the types that a and b may have, we limit the abstractions allowed in our language. For example, if we stipulate that (a, b) must be one of:

then a well-typed Lam abstraction can only map terms to terms, or types to types, that is, we have the system .

Similarly, restricting (a, b) to one of:

results in System F, that is, maps from terms to terms plus maps from types to terms.

The tuples describing allowable types of the terms of a Pi value are called *rules*. The sorts, axioms, and rules fully specify a *Pure Type System* (PTS); our code holds them in a parameter named sar.

Usually, the type of Pi x a b is the type of b, but sometimes we want it to have a different type, so a rule is a 3-tuple of sorts: the first 2 are the types of a and b, and the last is the type of the Pi x a b.

This leads to

judge sar@(axioms, rules) env@(gamma, lets) term \= case term of
  Prim "if" \[x, y, z\] \-> do
    t <- eval lets <$> rec x
    case t of
      V "Bool" \-> do
        ty <- norm lets <$> rec y
        tz <- norm lets <$> rec z
        when (ty /= tz) $ Left $ "if types: " ++ show y ++ " /= " ++ show z
        pure ty
      \_ \-> Left $ "if want Bool: " ++ show x
  Prim "ifz" \[x, y, z\] \-> do
    t <- eval lets <$> rec x
    case t of
      V "Nat" \-> do
        ty <- norm lets <$> rec y
        tz <- norm lets <$> rec z
        when (ty /= tz) $ Left $ "if types: " ++ show y ++ " /= " ++ show z
        pure ty
      \_ \-> Left $ "ifz want Nat: " ++ show x
  S s1 | Just s2 <- lookup s1 axioms \-> pure $ S s2
  V v | Just t <- lookup v gamma \-> pure t
  Lam x a m \-> do
    r <- Pi x a <$> judge sar ((x, a):gamma, lets) m
    s <- rec r
    case s of S \_ \-> pure r
              \_   \-> Left $ "Lam: " ++ show term
  Pi x a b \-> do
    t1 <- rec a
    t2 <- judge sar ((x, a):gamma, lets) b
    case (t1, t2) of
      (S s1, S s2)
        | Just s3 <- lookup (s1, s2) rules \-> pure $ S s3
        | otherwise \-> Left $ "Pi no R: " ++ s1 ++ " " ++ s2
      \_             \-> Left $ "Pi want S S: " ++ show term
  App m n \-> do
    p <- rec m
    case eval lets p of
      Pi x a b \-> do
        a' <- rec n
        when (norm lets a /= norm lets a') $
          Left $ "App: " ++ show a ++ " /= " ++ show a'
        pure $ beta (x, n) b
      \_ \-> Left $ "App want pi: " ++ show term
  \_ \-> Left $ "\_: " ++ show term
  where rec \= judge sar env

Beta reduction is mostly unchanged:

beta (v, a) term \= case term of
  S \_                  \-> term
  V s | s \== v         \-> a
      | otherwise      \-> term
  Lam s t m
        | s \== v       \-> term
        | s \`elem\` fvs \-> let s1 \= newName s fvs in
          Lam s1 (rec t) $ rec $ rename s s1 m
        | otherwise    \-> Lam s (rec t) (rec m)
  Pi s t m
        | s \== v       \-> term
        | s \`elem\` fvs \-> let s1 \= newName s fvs in
          Pi s1 (rec t) $ rec $ rename s s1 m
        | otherwise    \-> Pi s (rec t) (rec m)
  App m n              \-> App (rec m) (rec n)
  Prim s xs            \-> Prim s $ rec <$> xs
  where
    fvs \= fv \[\] a
    rec \= beta (v, a)

newName x ys \= head $ filter (\`notElem\` ys) $ (s ++) . show <$> \[1..\] where
  s \= dropWhileEnd isDigit x

fv vs (S \_)               \= vs
fv vs (V s) | s \`elem\` vs \= \[\]
            | otherwise   \= \[s\]
fv vs (Lam s x y)         \= fv vs x \`union\` fv (s:vs) y
fv vs (Pi s x y)          \= fv vs x \`union\` fv (s:vs) y
fv vs (App x y)           \= fv vs x \`union\` fv vs y
fv vs (Prim \_ xs)         \= foldr1 union $ fv vs <$> xs

rename x x1 term \= case term of
  S \_               \-> term
  V s | s \== x      \-> V x1
      | otherwise   \-> term
  Lam s t b
        | s \== x    \-> term
        | otherwise \-> Lam s (rec t) (rec b)
  Pi s t b
        | s \== x    \-> term
        | otherwise \-> Pi s (rec t) (rec b)
  App a b           \-> App (rec a) (rec b)
  where rec \= rename x x1

## Evaluation

For each language primitive, the prim function looks up its arity, type, and Haskell function. The types of if and ifz are undefined because they are found during type checking.

toPrim1 f \= \\env \[x\] \-> f (eval env x)
toPrim2 f \= \\env \[x, y\] \-> f (eval env x) (eval env y)
toPrimNat1 f \= toPrim1 g where g (V s) \= V $ show $ f (read s :: Integer)
toPrimNat2 f \= toPrim2 g
  where g (V s) (V t) \= V $ show $ f (read s :: Integer) (read t :: Integer)

prim "succ" \= (1, Pi "\_" (V "Nat") (V "Nat"), toPrimNat1 (+1))
prim "pred" \= (1, Pi "\_" (V "Nat") (V "Nat"), toPrimNat1 $ max 0 . (+(\-1)))
prim "add" \= (2, Pi "\_" (V "Nat") (Pi "\_" (V "Nat") (V "Nat")), toPrimNat2 (+))
prim "mul" \= (2, Pi "\_" (V "Nat") (Pi "\_" (V "Nat") (V "Nat")), toPrimNat2 (\*))
prim "fix" \= (2, Pi "A" (S "\*") (Pi "\_" (Pi "\_" (V "A") (V "A")) (V "A")),
  \\env \[x, y\] \-> eval env $ App y $ Prim "fix" \[x, y\])
prim "if" \= (3, undefined,
  \\env \[x, y, z\] \-> let x' \= eval env x in case x' of
    V "true"  \-> eval env y
    V "false" \-> eval env z
    \_         \-> Prim "if" \[x', y, z\])
prim "ifz" \= (3, undefined,
  \\env \[x, y, z\] \-> let x' \= eval env x in case x' of
    V s \-> case readInteger s of
      Just 0 \-> eval env y
      Just \_ \-> eval env z
      \_      \-> Prim "ifz" \[x', y, z\]
    \_   \-> Prim "ifz" \[x', y, z\])

readInteger s \= listToMaybe $ fst <$> (reads s :: \[(Integer, String)\])

The eval function remains about the same except for a special case for evaluating a primitive once enough arguments have been supplied.

eval env (Prim s args) | n \== length args \= f env $ args where
  (n, \_, f) \= prim s
eval env (App m a) \= let m' \= eval env m in case m' of
  Lam v \_ f \-> eval env $ beta (v, a) f
  Prim s args \-> eval env $ Prim s (args ++ \[a\])
  \_ \-> App m' a
eval env term@(V v) | Just x <- lookup v env \= case x of
  V v' | v \== v' \-> x
  \_              \-> eval env x
eval \_   term \= term

norm env term \= case eval env term of
  S s       \-> S s
  V v       \-> V v
  \-- Record abstraction variable to avoid clashing with let definitions.
  Lam v t m \-> Lam v (norm env t) $ norm ((v, V v):env) m
  Pi  v t m \-> Pi  v (norm env t) $ norm ((v, V v):env) m
  App m n   \-> App (rec m) (rec n)
  Prim s a  \-> Prim s $ norm env <$> a
  where rec \= norm env

## User Interface

Our elaborate vending machine requires tedious data entry. We list the predefined primitives for each “topping”:

primGamma s | (\_, t, \_) <- prim s \= (s, t)

gammaAdds "Fix"  \= \[primGamma "fix"\]
gammaAdds "Nat"  \= \[("Nat", S "\*"), ("0", V "Nat")\] ++
  (primGamma <$> \["succ", "pred", "add", "mul"\])
gammaAdds "Bool" \= \[("Bool", S "\*"), ("false", V "Bool"), ("true", V "Bool")\]
gammaAdds \_      \= \[\]

primLets s \= (s, Prim s \[\])

letsAdds "Fix" \= \[primLets "fix"\]
letsAdds "Nat" \= primLets <$> \["succ", "pred", "add", "mul"\]
letsAdds \_     \= \[\]

synAdds "Nat"  \= \["ifz"\]
synAdds "Bool" \= \["if"\]
synAdds \_      \= \[\]

A simplistic parser reads specifications for pure type systems:

parseSpec \= foldr1 g . (f . words <$>) . lines where
  f \["A", s, t\]    \= (\[(s, t)\], \[\])
  f \["R", s, t\]    \= (\[\], \[((s, t), t)\])
  f \["R", s, t, u\] \= (\[\], \[((s, t), u)\])
  f \_              \= (\[\], \[\])  \-- Silently ignore everything else.
  g (a, b) (c, d) \= (a ++ c, b ++ d)

sOf (as, \_) \= foldr union \[\] $ f <$> as where f (a, b) \= \[a\] \`union\` \[b\]

The vending machine slogan is a frivolous feature, but fun to write. Clicking a certain link calls code that randomly picks a line from the following textarea as the slogan.

Other textarea elements contain values for other presets. We hide them to avoid clutter.

The UI code is even more verbose than usual to handle the pure-type-system specifications, language primitives, and the pretty lambda cube.

#ifdef \_\_HASTE\_\_
main \= withElems \["input", "output", "spec", "starbox", "boxbox", "boxstar",
    "lcube", "custom",
    "evalB", "clearB", "factB", "factP", "eqB", "eqP", "indB", "indP",
    "blurb", "slogan", "slogans", "newSlogan"\] $
  \\\[iEl, oEl, specE, prop2typeE, type2typeE, type2propE,
    lcubeE, customE,
    evalB, clearB, factB, factP, eqB, eqP, indB, indP,
    blurbE, sloganE, slogansE, newSloganE\] \-> do
  let
    getTopping s \= do
      Just el <- elemById $ "add" ++ s
      pure (s, el)
  toppings <- mapM getTopping \["Fix", "Nat", "Bool"\]
  verts <- catMaybes <$> sequence (elemById . ("cube" ++) . show <$> \[0..7\])
  slogans <- lines <$> getProp slogansE "value"
  let
    run sar (out, env) (Left err) \=
      (out ++ "parse error: " ++ show err ++ "\\n", env)
    run sar (out, env@(types, lets)) (Right m) \= case m of
      None       \-> (out, env)
      Run term   \-> case judge sar env term of
        Left msg \-> (out ++ "judge: " ++ msg ++ "\\n", env)
        Right t  \-> (out ++ show (norm lets term) ++ "\\n", env)
      TopLet s term \-> case judge sar env term of
        Left msg \-> (out ++ "judge: " ++ msg ++ "\\n", env)
        Right t  \-> (out ++ "\[" ++ s ++ ":" ++ show (norm lets t) ++ "\]\\n",
          ((s, t):types, (s, term):lets))
      Axiom s term \-> case judge sar env term of
        Left msg \-> (out ++ "judge: " ++ msg ++ "\\n", env)
        Right \_ \-> (out ++ s ++ " : " ++ show term ++ "\\n",
          ((s, term):types, lets))
    cubeSpec \= do
      let
        spec0 \= "A \* ?\\nR \* \*\\n"
        f p sn \= bool ("", 0) sn . ("true" \==) <$> getProp p "checked"
        g (a, b) (c, d) \= (a ++ c, b + d)
      setProp specE "readOnly" "true"
      setProp type2propE "disabled" ""
      setProp type2typeE "disabled" ""
      setProp prop2typeE "disabled" ""
      a <- f type2propE ("R ? \*\\n", 1)
      b <- f type2typeE ("R ? ?\\n", 2)
      c <- f prop2typeE ("R \* ?\\n", 4)
      let (spec1, n) \= foldr1 g \[a, b, c\]
      setProp specE "value" (spec0 ++ spec1)
      mapM\_ (\\e \-> setProp e "style" "") verts
      setProp (verts!!n) "style" "stroke-width:1.1;stroke:black;"
      blurb <- elemById $ "cube" ++ show n ++ "Blurb"
      case blurb of
        Nothing \-> setProp blurbE "innerHTML" ""
        Just e \-> setProp blurbE "innerHTML" \=<< getProp e "value"

    disableCube \= do
      setProp prop2typeE "disabled" "disabled"
      setProp type2typeE "disabled" "disabled"
      setProp type2propE "disabled" "disabled"
      mapM\_ (\\e \-> setProp e "style" "") verts

    sarPreset id \= do
      Just b <- elemById id
      Just blurb <- elemById $ id ++ "Blurb"
      Just sar <- elemById $ id ++ "SAR"
      sarV   <- getProp sar   "value"
      blurbV <- getProp blurb "value"
      void $ b \`onEvent\` Click $ const $ do
        setProp blurbE "innerHTML" blurbV
        setSar sarV

    setSar sar \= do
      setProp specE "value" sar
      disableCube
      setProp specE "readOnly" "true"

    newSlogan :: IO ()
    newSlogan \= setProp sloganE "innerHTML" . (slogans!!) \=<<
      getStdRandom (randomR (0, length slogans \- 1))

  newSlogan
  void $ newSloganE \`onEvent\` Click $ const newSlogan
  void $ prop2typeE \`onEvent\` Click $ const cubeSpec
  void $ type2typeE \`onEvent\` Click $ const cubeSpec
  void $ type2propE \`onEvent\` Click $ const cubeSpec
  void $ lcubeE \`onEvent\` Click $ const cubeSpec
  mapM\_ sarPreset \["lstar", "sysu", "sysuminus", "lz"\]
  void $ customE \`onEvent\` Click $ const $ do
    disableCube
    setProp blurbE "innerHTML" ""
    setProp specE "readOnly" ""

  let
    cubeSelect n \= do
      setProp lcubeE "checked" "true"
      setProp type2propE "checked" $ bool "" "true" $ odd n
      setProp type2typeE "checked" $ bool "" "true" $ odd (n \`div\` 2)
      setProp prop2typeE "checked" $ bool "" "true" $ odd (n \`div\` 4)
      cubeSpec

    cubeClick el n \= el \`onEvent\` Click $ const $ cubeSelect n

    setToppings ts \= mapM\_ f toppings where
      f (s, el) \= setProp el "checked" $ bool "" "true" $ s \`elem\` ts

  cubeSelect 7

  zipWithM\_ cubeClick verts \[0..7\]

  void $ factB \`onEvent\` Click $ const $ do
     getProp factP "value" \>>= setProp iEl "value"
     setProp oEl "value" ""
     setToppings \["Fix", "Nat"\]
     cubeSelect 0

  void $ eqB \`onEvent\` Click $ const $ do
     getProp eqP "value" \>>= setProp iEl "value"
     setProp oEl "value" ""
     setToppings \[\]
     cubeSelect 7

  void $ indB \`onEvent\` Click $ const $ do
     getProp indP "value" \>>= setProp iEl "value"
     setProp oEl "value" ""
     setToppings \[\]
     cubeSelect 7

  void $ clearB \`onEvent\` Click $ const $ setProp oEl "value" ""
  void $ evalB \`onEvent\` Click $ const $ do
    sar <- parseSpec <$> getProp specE "value"
    let
      isChecked (s, el) \= bool Nothing (Just s) . ("true" \==) <$>
        getProp el "checked"
    ts <- catMaybes <$> mapM isChecked toppings
    let
      lets0  \= concatMap letsAdds  ts
      gamma0 \= concatMap gammaAdds ts
      syn0   \= concatMap synAdds   ts
    es <- map (parse (line (sOf sar, syn0)) "") . lines <$> getProp iEl "value"
    setProp oEl "value" $ fst $ foldl' (run sar) ("", (gamma0, lets0)) es
#else
theLot \= \["Fix", "Nat", "Bool"\]
syn0   \= concatMap synAdds   theLot
lets0  \= concatMap letsAdds  theLot
gamma0 \= concatMap gammaAdds theLot

repl env@(types, lets) \= do
  let
    redo \= repl env
    sar \= parseSpec $ unlines \["A \* ?", "R \* \*", "R ? \*", "R ? ?", "R \* ?"\]
  ms <- getInputLine "> "
  case ms of
    Nothing \-> outputStrLn ""
    Just s  \-> do
      case parse (line (sOf sar, syn0)) "" s of
        Left err  \-> do
          outputStrLn $ "parse error: " ++ show err
          redo
        Right None \-> redo
        Right (TopLet s term) \-> case judge sar env term of
          Left msg \-> outputStrLn ("judge: " ++ msg) \>> redo
          Right ty \-> do
            outputStrLn $ "\[type = " ++ show (norm lets ty) ++ "\]"
            repl ((s, ty):types, (s, term):lets)
        Right (Axiom s term) \-> case judge sar env term of
          Left msg \-> outputStrLn ("judge: " ++ msg) \>> redo
          Right \_ \-> repl ((s, term):types, lets)
        Right (Run term) \-> case judge sar env term of
          Left msg \-> outputStrLn ("judge: " ++ msg) \>> redo
          Right ty \-> outputStrLn (show $ norm lets term) \>> redo

main \= runInputT defaultSettings $ repl (gamma0, lets0)
#endif

## Theorems and Proofs

eq = \\(A:\*)(x:A)(y:A).forall p:A->\*.p x->p y

Then the theorem that equality is reflexive, that is, x = x for all x\`, is the type:

forall (A:\*)(x:A). eq A x x

To prove this theorem, we show this type is inhabited, that is, there exists a valid term with this type. We do this by judging the following term:

\\(A:\*)(x:A)(p:A -> \*)(h:p x).h

This term is well-typed, and moreover, its type is precisely the theorem that equality is reflexive, proving the theorem. Assuming there are no bugs in our type-checking code, this proof is flawless.

Despite its power, the calculus of constructions leaves a lot to be desired. To prove many basic facts, the principle of mathematical induction must be explicitly asserted. We support this with the axiom keyword:

axiom natInd = forall(n:nat)(P:nat->\*).P O ->(forall m:nat.P m -> P (S m))->P n

which simply declares natInd to be an inhabitant of the type on the right-hand side. We check that the type is valid, but the term natInd is exempt from type checking: it gets a free pass and any time we’re asked, its type is stated to be forall(n:nat)(P:nat->\*).P O ->(forall m:nat.P m -> P (S m))->P n. We then use natInd to prove theorems by induction.

Later versions of Coq employ a richer system known as [the calculus of inductive constructions (CIC)][8], which can be viewed as a generalization of λZ, as its specification is described by:

\-- Compare with λZ:
--  Set, Prop <-> \*
--  Type{n}   <-> □n.
  \["A = Set Type0", "A = Prop Type0"\] ++
  \["A = Type" ++ show i ++ " Type" ++ show (i + 1) | i <- \[0..\]\] ++
  \["R = Prop Prop", "R = Set Prop", "R = Prop Set", "R = Set Set"\] ++
  \["R = Type" ++ show i ++ " Prop" | i <- \[0..\]\] ++
  \["R = Type" ++ show i ++ " Set" | i <- \[0..\]\] ++
  \["R = Type" ++ show i ++ " Type" ++ show j
    ++ " Type" ++ show (max i j) | i <- \[0..\], j <- \[0..\]\]

In addition, Coq defines *inductive types*. We’ll omit their description here, and just say induction and provably terminating recursion is built into the system, obivating the need for awkward axiom assertions.

Coq v8 and later remove rules of the form:

  \["R = Type" ++ show i ++ " Set" | i <- \[0..\]\]

resulting in a weaker system known as the Predicative Calculus of Inductive Constructions (pCIC). This helps the extraction of efficient programs from proofs. For example:

1.  We write a type that represents the theorem: given a list, there exists a sorted list containing the same elements.
    
2.  We write a term with this type.
    
3.  Since our system is a [*constructive logic*][9], to prove the existence of a sorted list is to describe how to construct a sorted list. We can extract a program from our term that sorts a list.
    

Coq removes type information from the resulting sort program, as it has already been checked. The program is guaranteed to be bug-free, assuming Coq itself contains no bugs.

---

[Ben Lynn][10] *blynn@cs.stanford.edu* 💡

[1]: https://crypto.stanford.edu/~blynn/lambda/typo.html
[2]: https://crypto.stanford.edu/~blynn/lambda/index.html
[3]: https://crypto.stanford.edu/~blynn/lambda/systemf.html
[4]: https://crypto.stanford.edu/~blynn/lambda/typo.html
[5]: https://hal.inria.fr/inria-00076024/document
[6]: https://crypto.stanford.edu/~blynn/lambda/
[7]: https://en.wikipedia.org/wiki/Lambda_cube
[8]: http://www4.di.uminho.pt/~mjf/pub/SFV-CIC-2up.pdf
[9]: https://en.wikipedia.org/wiki/Intuitionistic_logic
[10]: https://crypto.stanford.edu/~blynn/
