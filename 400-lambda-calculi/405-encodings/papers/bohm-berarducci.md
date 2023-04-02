# Böhm-Berarducci encoding

## References

* `Böhm-Berarducci encoding`
https://okmij.org/ftp/tagless-final/course/Boehm-Berarducci.html

* paper `Automatic Synthesis of Typed Lambda-Programs on Term Algebras`, 1985, by Corrado Boehm and Alessandro Berarducci

## Introduction

In 1985, Corrado Boehm and Alessandro Berarducci published the encoding of strictly-positive algebraic data types in polymorphic lambda-calculus (i.e. in the System F) in the paper titled "Automatic Synthesis of Typed Lambda-Programs on Term Algebras".

>In a *negative data type*, the recursive term appears in a negative position, more generally, to the left of an odd number of arrows. A recursive term that appears to the left of an even number of arrows makes the *data type positive*.

>A data type is *strictly positive* if it doesn't appear to the left of any arrows. That is, no functions are in the domain type of data ctors.

They showed how to systematically, automatically translate operations on data types - construction and especially pattern-matching - into the language that has only applications and abstractions, which is the case with System F. They proved that the encoding is bijective (one-to-one and onto): it encodes all strictly-positive algebraic data types with no junk.

For example, the set of all closed normal terms of the type   
`forall a. ((a -> a) -> a -> a)`   
is exactly the set of encoded natural numbers.

Polymorphic types become a system of notation to describe data structures. Furthermore, the encoding commutes with operations on data types: it is an isomorphism. In modern terms, they showed how to construct an initial algebra of a strictly-positive functor using System F as the carrier set.

Boehm-Berarducci encoding is often confused with Church encoding. First, Church encoding, which represents data types in an untyped lambda-calculus, is *not tight*: without types, it is impossible to separate lambda-terms that encode a data type from the terms that represent no value of that data type. The main distinction between the two approaches is subtle.

>In brief, Church encoding only describes introductions, whereas Boehm and Berarducci also define elimination (pattern-matching) on the encoded data types.

For example, the list `[1,2]` is represented in both encoding by a lambda term

```hs
ls = \c n -> c 1 (c 2 n)    -- [1,2]
head ls -->> 1              -- 1
tail ls -->> \c n -> c 2 n  -- [2]
```

Writing `head` is easy - applied to the lambda term above it returns `1`. But it's much harder to define `tail`, which applied to the term above should return `\c n -> c 2 n`, i.e. the encoding for `[2]`.

The solution based on a **generalization of the predecessor on Church numerals** seems ad hoc. It is not clear how to extend it to the encodings of other data structures and to make it automatic. Boehm and Berarducci first came up with a systematic method of writing pattern-matching functions on encodings of any algebraic data type.

>The Boehm-Berarducci encoding translates ADTs and the operations on them into System F (which only has abstraction, application and base types). The encoding applies only to strictly positive data types.

For example, the encoding does not apply to the higher-order abstract syntax (HOAS).

>The encoding represents inductive data types by System F terms with non-recursive but higher-rank types.

Informally, the encoding replaces type level primitive recursion with term level primitive recursion and a rank-2 type (Rank2Types).

The encoding can be implemented in Haskell, with `RankNTypes` pragma. But due to the repeated re-encoding, it has an inherent problem with performance.

- Version: The current version is April 2012
- References
  - Corrado Boehm and Alessandro Berarducci: `Automatic Synthesis of Typed Lambda-Programs on Term Algebras`, 1985
  - Philip Wadler: `Recursive types in polymorphic lambda calculus`, 1999
  http://www.seas.upenn.edu/~sweirich/types/archive/1999-2003/msg00138.html


## Baseline DSL

Typically, a declaration of an ADT consists of its data ctors (introduction), consumers (eliminators) and transformers (mappings) on its values. We show this on a simple example that serves as a baseline. In the next sections, we'll rewrite it in System F (which has no data types) using the Boehm-Berarducci encoding to encode data types. The example is a trivial DSL.

```hs
-- as GADT
data Exp where
  Lit :: Int -> Exp
  Neg :: Exp -> Exp
  Add :: Exp -> Exp -> Exp

-- as ADT
data Exp
  = Lit Int
  | Neg Exp
  | Add Exp Exp

-- sample Exp value
ti1 :: Exp
ti1 = Add (Lit 8) (Neg (Add (Lit 1) (Lit 2)))
```

Below, the consumer `view` prints `Exp` values. It is structurally recursive, relying on pattern-matching to deconstruct its arg.

```hs
view :: Exp -> String
view (Lit n)      = show n
view (Neg e)      = "(-" ++ view e  ++ ")"
view (Add e1 e2)  = "("  ++ view e1 ++ " + " ++ view e2 ++ ")"

ti1_view = view ti1
-- "(8 + (-(1 + 2)))"
```


Generally, the structural recursion over `Exp` is expressed as:

```hs
fold_Exp :: (Int -> a)      -- handle Lit
         -> (a -> a)        -- hNeg
         -> (a -> a -> a)   -- hAdd
         -> Exp             -- input Exp
         -> a               -- result type
fold_Exp hLit hNeg hAdd x = case x of
  Lit n     -> hLit n
  Neg e     -> hNeg (fold_Exp hLit hNeg hAdd e)
  Add e1 e2 -> hAdd (fold_Exp hLit hNeg hAdd e1)
                    (fold_Exp hLit hNeg hAdd e2)
```

To make `fold_Exp` more convenient, we can group its parameters (telling how to handle `Lit`, `Neg` and `Add` nodes of the data type) in a record:

```hs
data ExpOps a = ExpOps
  { olit :: Int -> a
  , oneg :: a -> a
  , oadd :: a -> a -> a
  }

fold_Exp' :: ExpOps a -> Exp -> a
fold_Exp' ops = fold_Exp (olit ops) (oneg ops) (oadd ops)
```

Then the earlier function `view` is just a particular case of fold: `fold_Exp' view_ops`, where

```hs
view_ops :: ExpOps String
view_ops = ExpOps
  { olit = show
  , oneg = \e     -> "(-" ++ e ++ ")"
  , oadd = \e1 e2 -> "(" ++ e1 ++ " + " ++ e2 ++ ")"
  }
```

Remember this `view_ops` structure: it will come up again and again.

A sample term transformer pushes the negation down, converting terms to a negative normal form, in which only literals are negated, and only once. The code still uses pattern-matching, but it is not structurally recursive (see the last-but-one clause).

```hs
push_neg :: Exp -> Exp
push_neg e@Lit{}           = e
push_neg e@(Neg (Lit _))   = e
push_neg (Neg (Neg e))     = push_neg e
-- nested pattern-matching! Recurring not on (e1) but on (Neg e1)!
-- All signs of a non-structural recursion
push_neg (Neg (Add e1 e2)) = Add (push_neg (Neg e1)) (push_neg (Neg e2))
push_neg (Add e1 e2)       = Add (push_neg e1) (push_neg e2)
```

This function cannot be expressed as a fold, at least, not in the obvious way. It was the deep insight of Boehm and Berarducci that transformers like `push_neg` may too be represented as folds.

Here are a few sample transformations and their results:

```hs
ti1_norm = push_neg ti1
ti1_norm_view = view ti1_norm
-- "(8 + ((-1) + (-2)))"

-- add an extra negation:
ti1n_norm_view = view (push_neg (Neg ti1))
-- "((-8) + (1 + 2))"
```

- Version: The current version is April 2012
- References
  - `BB_ADT.hs` [3K] complete Haskell code for the example
  https://okmij.org/ftp/tagless-final/course/BB_ADT.hs


## Algebraic data type as fold

We rewrite the ADT baseline example using the Boehm-Berarducci encoding to represent the data type as lambda-terms. The encoded terms and operations on them are still written in Haskell - but in a total, datatype-less fragment of Haskell that directly maps to System F.

The encoding of the data type `Exp` is defined in two steps. First, we look at `Exp` as an algebra: a set of values with operations on them.

The following non-recursive Haskell record represents the signature of the algebra - the names of the operations and their arities (types):

```hs
data ExpOps a = ExpOps
  { olit :: Int -> a
  , oneg :: a -> a
  , oadd :: a -> a -> a
  }
```

That is
- `oadd` is a binary operation (on elements of the carrier set: the inhabitants of the type `a`)
- `oneg` is unary
- `olit` is a set of constants (indexed by integers)

We saw this record in the previous section, where it came as a mere convenience for grouping `fold_Exp`'s args.

The Boehm-Berarducci encoding of `Exp` is essentially the following:

```hs
type ExpBB1 = forall a. (ExpOps a -> a)
```

Although we got rid of the type-level recursion replacing it with rank-2 type, we are still relying on records. The result ought to contain only (term and type) applications and abstractions. To this end, we curry the record arg:

```hs
newtype ExpBB = ExpBB
  { unExpBB :: forall a. ((Int -> a) -> (a -> a) -> (a -> a -> a) -> a) }
--                         olit          oneg        oadd           res
```

`ExpBB` is thus the type of the encoded `Exp` values. The `ExpBB` ctor is not really a data ctor: it is a newtype wrapper, to be viewed as the Haskell notation for `Λ` (big lambda type abstraction). Conversely, `unExpBB` marks locations of type applications (see the example below).

A data type declaration such as `Exp` earlier, defines a new type, data ctors (introductions), deconstructors (elimination), and the induction principle (fold).

For the encoded `Exp`, the just introduced `ExpBB` is the type of the encoded `Exp` values. Here are the ctors, defined systematically, by just looking at the type `ExpBB`:

```hs
lit :: Int -> ExpBB
lit x = ExpBB $ \onlit onneg onadd -> onlit x

neg :: ExpBB -> ExpBB
neg e = ExpBB $ \onlit onneg onadd -> onneg (unExpBB e onlit onneg onadd)

add :: ExpBB -> ExpBB -> ExpBB
add e1 e2 = ExpBB $ \onlit onneg onadd -> 
  onadd (unExpBB e1 onlit onneg onadd) (unExpBB e2 onlit onneg onadd)
```

In the conventional System F notation, `neg`, for one, is written as:

```sf hs
λe : ExpBB.
  ΛA .
  λ (onlit : Int -> A)
    (onneg : A -> A)
    (onadd : A -> A -> A).
  onneg (e [A] onlit onneg onadd)
```

where [A] denotes the type application of `A`.

In Haskell, we write `ExpBB` for type abstraction and `unExpBB` for type application.

Looking back at the definition of `fold_Exp` in the previous section, 
it becomes clear how the Boehm-Berarducci encoding works:    
a data type value `exp :: Exp` is encoded as a lambda-term equivalent to   
`\onlit onneg onadd -> fold_Exp onlit onneg onadd exp :: ExpBB`

Incidentally, we can group the ctors `lit`, `neg` and `add` into a `ExpOps` record:

```hs
bb_ops :: ExpOps ExpBB
bb_ops = ExpOps {olit = lit, oneg = neg, oadd = add}
```

That is, the set of `ExpBB` values with `bb_ops` operations on them is an `Exp` algebra. We will see the full significance of this fact later. The sample term

```hs
tbb1 = add (lit 8) (neg (add (lit 1) (lit 2)))
```

looks the same as the sample Exp term ti1 modulo the capitalization of the constructors. Its normal form, in the conventional System F notation, is

```hs
ΛA . λ (onlit : Int -> A)
       (onneg : A -> A)
       (onadd : A -> A -> A).
     onadd (onlit 8) (onneg (onadd (onlit 1) (onlit 2)))
```

Indeed, the term is represented with only abstractions and applications.
The view-like consumer of the encoded `Exp` values is:

```hs
viewBB:: ExpBB -> String
viewBB e = unExpBB e onlit onneg onadd
  where
  onlit n = show n
  onneg e = "(-" ++ e ++ ")"
  onadd e1 e2 = "(" ++ e1 ++ " + " ++ e2 ++ ")"

tbb1v = viewBB tbb1
-- "(8 + (-(1 + 2)))"
```

The function `view :: Exp -> String` was structurally recursive: it was an instance of `fold_Exp`. Since the Boehm-Berarducci encoding of `Exp` is the fold, `viewBB` merely needs to instantiate it.

Unlike `view` of `Exp`, `viewBB` is not recursive: the iteration is driven by the input `ExpBB` value itself.

Boehm and Berarducci call the functions like `view` *iterative*. For an iterative function `f` on an algebraic data type, they give a mechanical procedure of re-writing the definition of `f` into the definition of the corresponding function on the encoded data type.

The code for `viewBB` came from the mechanical rewriting of the code for view.

The `viewBB` code above is the expanded form of

```hs
viewBB e = unExpBB e (olit view_ops) (oneg view_ops) (oadd view_ops)
```

One may want to stop to reflect what `viewBB tbb1` actually does. Recall, `tbb1`, which is the encoded `Exp` term `ti1`, is essentially    
`\onlit onneg onadd -> fold_Exp onlit onneg onadd ti1`

Then `viewBB`, supplying the operations of `view_ops` as `onlit`, `onneg`, `onadd` arguments to `tbb1`, performs the fold over `ti1` using `view_ops`.

Indeed, `viewBB tbb1` does exactly what `view ti1` did on the original `Exp` term.

What if, instead of `view_ops`, we use `bb_ops`? That is, what is the result of
`unExpBB tbb1 (olit bb_ops) (oneg bb_ops) (oadd bb_ops)`

A moment of reflection shows it is `tbb1` itself. 
In fact, for any term `e :: ExpBB` we have

```hs
unExpBB e (olit bb_ops) (oneg bb_ops) (oadd bb_ops) ~= e
```

where `~=` stands for the extensional equivalence.

This is the instance of the famous `Eq` in the Boehm-Berarducci's paper. It looks utterly trivial. But let's think of it more.

An `Exp` term like our sample `ti1` was inductively constructed using `Lit`, `Neg` and `Add`. Its Boehm-Berarducci encoding `tbb1` is a fold over `ti1`, using the supplied fold parameters (algebra operations).

One may say that `tbb1` describes the inductive construction of the sample term, with the user-supplied constructors.

And yet `tbb1` is itself inductively constructed, using `lit`, `neg` and `add` as ctors. The inductive construction is itself inductively constructed.

Chances are, however, that the above explanation does not make much sense. It is better to look at further applications and examples. One day it will click.

- Version: The current version is July 2020
- References:
  - `BB_LAM.hs` [11K] The complete Haskell code for the example
  - `BoehmBerarducci.ml` [4K] The OCaml code for a similar example


## Deconstructing fold

How to deal with the operations on Exp that are not folds, that is, are not structurally recursive? How to deconstruct ExpBB values using a sort of `pattern-matching'? Boehm and Berarducci turns out to have answered that question too. Alas, that answer is only understandable after an independent rediscovery. Hopefully the following is an easier-to-understand explanation of the pattern-matching on ExpBB.
To build intuition, we step back to the signature of the Exp algebra, ExpOps, and specify it differently, in the form of a strictly-positive functor (a functor built from constants, sums and products):

    data ExpF a = FLit Int 
                | FNeg a
                | FAdd a a
Clearly ExpF specifies the names and the types (the arities) of Exp constructors just as well as ExpOps does. We then introduce two functions with characteristic names:

    roll :: ExpF ExpBB -> ExpBB
    roll (FLit n) = lit n
    roll (FNeg e) = neg e
    roll (FAdd e1 e2) = add e1 e2
   
    unroll :: ExpBB -> ExpF ExpBB
    unroll e = unExpBB e onlit onneg onadd
     where
      onlit :: Int -> ExpF ExpBB
      onlit n = FLit n
      onneg :: ExpF ExpBB -> ExpF ExpBB
      onneg e = FNeg (roll e)
      onadd :: ExpF ExpBB -> ExpF ExpBB -> ExpF ExpBB
      onadd e1 e2 = FAdd (roll e1) (roll e2)
The names roll and unroll meant to evoke the witnesses of the isomorphism between an iso-recursive type and its one-step unrolling. These functions are present in the Boehm-Berarducci's paper, in a somewhat hidden way. Observe that roll and unroll, as befits the isomorphism witnesses, are inverses of each other. For example, roll . unroll is extensionally equivalent to the identity. That is, for any concrete value x :: ExpBB built by the constructors lit, neg and add, roll (unroll x) is x -- which can be proven by induction on the construction of x. In the paper, the extensional equivalence of roll . unroll and the identity is essentially stated in Eq. (*) of Section 7. Clearly roll . unroll is not intensionally the identity, since no sequence of beta- and eta- reductions can bring \x -> roll (unroll x) to be the same as \x -> x. Yet these two terms cannot be distinguished by any context: they are contextually observationally equivalent. (Boehm and Berarducci introduce the symbol ~= for this equivalence, noting that characterizing it is an open problem.)
The function unroll that essentially exposes the `top-level' constructors of ExpBB values tells us how to define the ExpBB deconstructor, systematically.

    newtype ExpD = 
     ExpD{unED :: forall w. (Int -> w) -> (ExpBB -> w) -> (ExpBB -> ExpBB -> w) -> w}
One may call ExpD a companion, deconstructing encoding of Exp, which relates to unroll as ExpBB relates to fold_Exp. Like ExpBB, the values of ExpD can be inductively constructed, with the following constructors:
    dlit :: Int -> ExpD
    dlit x = ExpD $ \onlit onneg onadd -> onlit x
    
    dneg :: ExpD -> ExpD
    dneg e = ExpD $ \onlit onneg onadd -> onneg (unED e lit neg add)
    
    dadd :: ExpD -> ExpD -> ExpD
    dadd e1 e2 = ExpD $ \onlit onneg onadd -> 
     onadd (unED e1 lit neg add) (unED e2 lit neg add)
The code of these constructors looks deceptively similar to that of the constructors of lit, neg and add of ExpBB -- but look closely!
Since ExpD values can be inductively constructed, ExpBB can do that: ExpBB embodies the structural recursion, induction principle of our data type. Therefore:

    decon :: ExpBB -> ExpD
    decon e = unExpBB e dlit dneg dadd
This conversion of ExpBB to ExpD is the deconstructor. As an illustration, we re-write viewBB with `pattern-matching', or deconstruction:
    viewBBd:: ExpBB -> String
    viewBBd e = unED (decon e) onlit onneg onadd
     where
      onlit n = show n
      onneg e = "(-" ++ viewBBd e ++ ")"
      onadd e1 e2 = "(" ++ viewBBd e1 ++ " + " ++ viewBBd e2 ++ ")"
The code looks pretty much like the original view. Like view, but unlike viewBB, it is (structurally) recursive.
The real payoff of introducing the deconstructor is being able to re-write the non-structurally recursive push_neg to operate on the encoded ExpBB:

    push_negBB :: ExpBB -> ExpBB
    push_negBB e = unED (decon e) onlit onneg onadd
      where
      onlit _ = e
      onneg e2 = unED (decon e2) onlit2 onneg2 onadd2
        where
        onlit2 n = e
        onneg2 e = push_negBB e
        onadd2 e1 e2 = add (push_negBB (neg e1)) (push_negBB (neg e2))
      onadd e1 e2 = add (push_negBB e1) (push_negBB e2)
   
    tbb1_norm = push_negBB tbb1
    tbb1_norm_viewBB = viewBBd tbb1_norm
    -- "(8 + ((-1) + (-2)))"
The function push_negBB looks quite like the original push_neg, down to nested `pattern-matching'. (In the tagless-final form, see below, it looks almost exactly like push_neg.)
Meditation on roll and unroll reveals inefficiency: unroll-ing the value neg (neg (neg ... (lit 1))) with N neg constructors involves N rolls. A single deconstruction of an ExpBB value takes time proportional to the total size of the value (the number of constructors used to build the value). The function viewBBd that does repeated deconstruction takes the quadratic time in the size of the value.

## Boehm-Berarducci encoding as initial algebra
A slight modification to the encoding gives a deep algebraic insight. This modification is not present in Boehm and Berarducci's paper, since it is a bit out of scope of their translation of data types to lambda-terms. The modified encoding however is isomorphic to the original one. The modification makes roll and unroll particularly elegant, helps us see the encoding as the initial algebra, and connects the encodings with continuations and streams.
We have already mentioned that the signature of the Exp algebra -- the names and the types of its constructors -- are equally well specified by the data type ExpOps a or by ExpF a (beside the Exp data type itself; Exp is recursive however). The connection goes deeper: ExpOps a and ExpF a -> a are equivalent. Here are the witnesses.

    sigma_dict :: (ExpF a -> a) -> ExpOps a
    sigma_dict sigma = ExpOps{ olit = \n -> sigma (FLit n),
                               oneg = \e -> sigma (FNeg e),
                               oadd = \e1 e2 -> sigma (FAdd e1 e2) }
   
    dict_sigma :: ExpOps a -> (ExpF a -> a)
    dict_sigma ops (FLit n) = olit ops n
    dict_sigma ops (FNeg e) = oneg ops e
    dict_sigma ops (FAdd e1 e2) = oadd ops e1 e2
The equivalence should not surprise anyone: it is a particular case of the duality between sums (ExpF, in our case) and products (ExpOps), and an expression of the de Morgan law. Thus the operations of an Exp algebra with the carrier U can be specified either as an ExpOps U value, or in the form of a function ExpF U -> U. Earlier we have mentioned the uncurried form of the Boehm-Berarducci encoding:
    type ExpBB1 = forall a. (ExpOps a -> a)
Replacing ExpOps a with ExpF a -> a brings the following equivalent form of the encoding
    newtype ExpC = ExpC{unExpC :: forall a. (ExpF a -> a) -> a}
whose connections with continuations are hard to miss. Let us write the constructors explicitly:
    sigma_expC :: ExpF ExpC -> ExpC
    sigma_expC (FLit n) = ExpC $ \f -> f (FLit n)
    sigma_expC (FNeg e) = ExpC $ \f -> f (FNeg (unExpC e f))
    sigma_expC (FAdd e1 e2) = ExpC $ \f -> f (FAdd (unExpC e1 f) (unExpC e2 f))
The encoding ExpC is fully equivalent to ExpBB, and inter-convertible. It is not mentioned in the Boehm-Berarducci's paper since its definition contains the data type ExpF a. Boehm and Berarducci's program was to encode data types in lambda-terms only. One advantage of ExpC is giving to the functions roll and unroll a particularly elegant, revealing form:

    rollC :: ExpF ExpC -> ExpC
    rollC = sigma_expC
   
    unrollC :: ExpC -> ExpF ExpC
    unrollC e = unExpC e (fmap sigma_expC)
The definition of unrollC is well worth contemplating.
The algebra with the carrier ExpC and the operations sigma_ExpC is the initial algebra of the functor ExpF. For an arbitrary ExpF algebra with the carrier U and the operations sigma :: ExpF U -> U there exists a unique homomorphism (hc sigma) :: ExpC -> U, such that the hc sigma . sigma_ExpC = sigma . fmap (hc sigma). A simple case analysis indeed gives us the unique expression for hc:

    hc :: (ExpF a -> a) -> ExpC -> a
    hc sigma e = unExpC e sigma
The unique homomorphism is not only elegant but also practical. Recall the view_ops algebra, with String as the carrier set. We can recast it in the equivalent functorial view:

    sigma_view :: ExpF String -> String
    sigma_view = dict_sigma view_ops
and immediately obtain the function to view ExpC values:
    viewC :: ExpC -> String
    viewC = hc sigma_view
We have shown that the modified, and hence the original Boehm-Berarducci encoding is the initial algebra. The modification gave the operation of peeling off one level of `constructors' an insightful form. The modification paves way to connecting the encoding with co-algebras.


## Tagless-Final and Boehm-Berarducci representations and pattern-matching on tagless-final terms
The Exp data type example was the introductory example in the lectures on tagless-final encoding. After presenting the data type Exp and operations on it (similarly to Baseline: operating on an algebraic data type), the lectures introduced its tagless-final representation, as the type class
    class ExpSYM repr where
        lit :: Int -> repr
        neg :: repr -> repr
        add :: repr -> repr -> repr
which may be viewed as defining the trivial DSL with operations lit, neg and add. The sample term is then constructed as
    tf1 :: ExpSYM repr => repr    -- inferred
    tf1 = add (lit 8) (neg (add (lit 1) (lit 2)))
Operations on tagless-final terms are the interpreters of the DSL -- or, the instances of ExpSYM. Here is the familiar view interpreter, to show the terms:
    instance ExpSYM String where
        lit n = show n
        neg e = "(-" ++ e ++ ")"
        add e1 e2 = "(" ++ e1 ++ " + " ++ e2 ++ ")"
    
    view :: String -> String
    view = id
    
    tf1_view = view tf1 
    -- "(8 + (-(1 + 2)))"
After the explanations of the Boehm-Berarducci encoding, it is hard to avoid the feeling of deja vu. For example, the type class ExpSYM looks quite like the record ExpOps. In fact, in the dictionary passing implementation of type classes (whose origin goes back to the original ML (POPL 1978), if not earlier), the ExpSYM class declaration is exactly the ExpOps record declaration. The sample term tf1 is hence, in the dictionary-passing form:

    tf1' :: forall repr. ExpOps repr -> repr
    tf1' = \ExpOps{olit=lit,oneg=neg,oadd=add} ->
      add (lit 8) (neg (add (lit 1) (lit 2)))
which is essentially tbb1, the Boehm-Berarducci encoded term (to be precise, using the ExpBB1 variation of the encoding). The instance ExpSYM String is then the particular record view_ops :: ExpOps String, seen so many times, and tf1_view is tf1' view_ops.
Thus, for ordinary algebraic data types, the tagless-final representation is a form of the Boehm-Berarducci encoding -- using the language facilities such as type classes in Haskell, modules in OCaml or implicits in Scala to group and hide the abstractions over the constructors (such as \onlit onneg onadd ...) ubiquitous in the Boehm-Berarducci encoding. This grouping and hiding not only makes the encoded terms easier to write and read, but also helps make the encoding extensible (because Haskell type class dictionaries, as ML modules and Scala traits, are extensible). Tagless-final encoding also applies to non-positive data type and higher-order abstract syntax.

From the very beginning the explanations of the tagless-final style provoked questions about pattern-matching on its terms. The tutorials and lectures showed various ad hoc techniques. The Boehm-Berarducci approach introduces the general way to pattern-match on and deconstruct tagless-final terms, which we illustrate below.

As was already mentioned, tagless-final representations of the Exp data type are the Haskell terms of the type forall repr. ExpSYM repr => repr. Since Haskell (GHC) does not (well) support impredicative polymorphism, it helps to introduce the wrapper

    newtype ExpBB1 = ExpBB1{unExpBB1 :: forall repr. ExpSYM repr => repr }
We came across ExpBB1 earlier, as the modified form of the Boehm-Berarducci encoding, and saw that it is an initial algebra, with operations:
    instance ExpSYM ExpBB1 where
      lit n          = ExpBB1 $ lit n
      neg (ExpBB1 e) = ExpBB1 $ neg e
      add (ExpBB1 e1) (ExpBB1 e2) = ExpBB1 $ add e1 e2
The Hindley-Milner--like polymorphism offered by Haskell (and other languages) is usually enough to fruitfully use the tagless-final approach. Therefore, introducing algebras like ExpBB1 is rarely needed. Boehm-Berarducci's approach however crucially relies on the first-class polymorphism.
The original Boehm-Berarducci approach expressed everything in terms of just abstractions and applications. It is more convenient however to use the functor representation of the algebraic signature, as explained in Deconstructing fold:

    data ExpF a = FLit Int 
                | FNeg a
                | FAdd a a
and define the functions roll:
    roll :: ExpF ExpBB1 -> ExpBB1
    roll (FLit n) = lit n
    roll (FNeg e) = neg e
    roll (FAdd e1 e2) = add e1 e2
and unroll:
    instance ExpSYM (ExpF ExpBB1) where
      lit n = FLit n
      neg e = FNeg (roll e)
      add e1 e2 = FAdd (roll e1) (roll e2)
And that is it. We can now pattern-match on tagless-final terms as if they were ordinary algebraic data types. Here is the view operation (compare with the view of Baseline: operating on an algebraic data type):
    viewBBd:: ExpF ExpBB1 -> String
    viewBBd (FLit n) = show n
    viewBBd (FNeg e) = "(-" ++ viewBBd (unExpBB1 e) ++ ")"
    viewBBd (FAdd e1 e2) =
      "(" ++ viewBBd (unExpBB1 e1) ++ " + " ++ viewBBd (unExpBB1 e2) ++ ")"
    
    tf1vd = viewBBd tf1
    -- "(8 + (-(1 + 2)))"
and here is the analogue of the non-structurally recursive push_neg
    push_negBB :: ExpF ExpBB1 -> ExpBB1
    push_negBB e@(FLit n) = roll e
    push_negBB e@(FNeg e') = case (unExpBB1 e') of
      FLit _ -> roll e
      FNeg (ExpBB1 e) -> push_negBB e
      FAdd (ExpBB1 e1) (ExpBB1 e2) ->
        add (push_negBB (neg e1)) (push_negBB (neg e2))
    push_negBB (FAdd (ExpBB1 e1) (ExpBB1 e2)) =
      add (push_negBB e1) (push_negBB e2)
    
    tf1_norm = viewBBd $ unExpBB1 $ push_negBB tf1
    -- "(8 + ((-1) + (-2)))"
which looks very much like the original push_neg for the Exp data type, down to the clausal-form definition.
One should keep in mind however the inherent inefficiency of the Boehm-Berarducci's deconstruction. Therefore, in practice, the ad hoc methods explained in the tagless-final lectures, and the normalization-by-evaluation are usually preferred.

References
Typed Tagless-Final Interpretations: Introductory Course
Introduction to Algebras for Computer Scientists describes tagless-final representations as algebras

BB.hs [3K]
Explaining the relationship between tagless-final and Boehm-Berarducci representations on an even simpler example

## How to take the tail of a functional stream
We show an application of Boehm-Berarducci encoding to a co-algebraic data type: stream. Boehm-Berarducci's constructors cannot build an infinite stream without resorting to general recursion. However, Boehm-Berarducci's deconstructors apply as they are to deconstructing/transforming the stream, even the infinite one. Given the following functional stream or its monadic version:
    newtype FStream a = SFK (forall ans. SK a ans -> FK ans -> ans)
    type FK ans   = () -> ans          -- failure continuation
    type SK a ans = a -> FK ans -> ans -- success continuation
  
    newtype MFStream m a = MSFK (forall ans. MSK m a ans -> MFK m ans -> m ans)
    type MFK m ans   = m ans                   -- failure continuation
    type MSK m a ans = a -> MFK m ans -> m ans -- success continuation
the question is obtaining several first elements of that stream. In general, the problem is to split a non-empty functional stream into the head element and the rest, which can be split again, etc. That rest must be a stream, of the type MFStream m a.
This is a far more difficult problem than it may appear. One may think that we merely need to convert the functional stream to a regular, nil/lazyCons stream, for example:

    mfstream_to_stream:: (Monad m) => MFStream m a -> m (Stream a)
    mfstream_to_stream mfstream = unMSFK mfstream sk fk
      where fk = return Nil
            sk a fk' = fk' >>= (\rest -> return (Cons a (\ () -> rest)))|]]
However, if the monad m is strict (i.e., the bind operator >>= forces its first argument -- as it is the case for the IO monad, for example), then we must fully convert the functional stream to the regular stream before we can examine the first few elements. If the source functional stream is infinite, mfstream_to_stream diverges.
The code below explains the problem and shows the general solution, which underlies the LogicT monad transformer.

Version
The current version is 1.2, Jul 4, 2005
References
car-fstream.lhs [6K]
Literate Haskell code with examples and explanation.
How to zip folds: A library of fold transformers (streams)

Fair and expressive backtracking monad transformer
