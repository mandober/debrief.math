# Böhm-Berarducci encoding

https://okmij.org/ftp/tagless-final/course/Boehm-Berarducci.html

## Introduction

In 1985, Corrado Boehm and Alessandro Berarducci published the **encoding of strictly-positive algebraic data types in polymorphic lambda-calculus** (i.e. `System F`).

They showed how to systematically, automatically translate operations on data types - construction and especially pattern-matching - into the language that has only applications and abstractions.

They proved that the encoding is bijective (one-to-one and onto): it encodes all strictly-positive algebraic data types with no junk. For example, the set of all closed normal terms of the type `∀a. ((a -> a) -> a -> a)` is exactly the set of encoded natural numbers.

Polymorphic types become "a system of notation to describe data structures". Furthermore, the encoding commutes with operations on data types: it is an isomorphism.

In modern terms, they showed how to construct an initial algebra of a strictly-positive functor using a set of System F terms as a carrier.

Boehm-Berarducci encoding is often confused with Church encoding. First of all, Church encoding, which represents data types in an untyped lambda-calculus, is not tight. Without types, it is impossible to separate lambda-terms that encode some data type, from the terms that represent no value of that data type.

The main distinction between the two approaches is subtle. In a word, Church encoding only describes introductions whereas Boehm and Berarducci also define the elimination, or pattern-matching, on encoded data types.

For example, the list `[1,2]` is represented in either encoding as the term `\f x -> f 1 (f 2 x)`. It is easy to write the function `head`, which applied to the above lambda-term returns `1`. It is much harder to define `tail`, which applied to the above term returns `\f x -> f 2 x`, the encoding of `[2]`.

The solution, which is *the generalization of the predecessor on Church numerals*, seems ad hoc. It is not clear how to extend it to the encodings of other data structures and to make it automatic. Boehm and Berarducci were the first to show "the trick", the systematic method of writing pattern-matching functions on encodings of any algebraic data type.

The Boehm-Berarducci encoding translates algebraic data types and the operations on them into System F, which contains only abstractions and applications and base type constants. The encoding applies only to what is now called *strictly positive data types*: there are no functions in the domain of constructors.

For example, the encoding does not apply to the higher-order abstract syntax. The encoding represents recursive (inductive, to be precise) data types as System F terms with non-recursive, but higher-rank types. Informally, the encoding replaces the type-level primitive recursion with the term-level primitive recursion and the higher-rank type, of the order at most two. The encoding can be implemented in OCaml or Haskell, both of which support higher-rank types. As we shall see, the encoding has an inherent severe performance problem due to repeated re-encoding.

## References

* Corrado Boehm and Alessandro Berarducci: *Automatic Synthesis of Typed Lambda-Programs on Term Algebras*, Theoretical Computer Science, 1985, v39, pp. 135--154.
* Philip Wadler: *Recursive types in polymorphic lambda calculus*, message on the Types mailing list inquiring of the origin of the encoding, 14 May 1999
http://www.seas.upenn.edu/~sweirich/types/archive/1999-2003/msg00138.html


## Baseline: operating on an ADT

The typical work we perform on an algebraic data type includes declaring it, defining constructors, consumers and transformers of its values. We show this on a simple example that serves as a baseline.

In the next two sections we'll rewrite it in System F, the language with no data types, using the Boehm-Berarducci encoding.

The example, borrowed from the tagless-final lectures, represents expressions of a trivial DSL of additions and negations of integers, as the following ADT:

```hs
data Exp
  = Lit Int
  | Neg Exp
  | Add Exp Exp

-- Here is a sample Exp value
ti1 = Add (Lit 8) (Neg (Add (Lit 1) (Lit 2)))
```

A sample consumer shows `Exp` values as a string. It is structurally recursive, relying on pattern-matching to deconstruct its `Exp` argument. The comments after `ti1_view` show the result of viewing the sample term.

```hs
view:: Exp -> String
view (Lit n) = show n
view (Neg e) = "(-" ++ view e ++ ")"
view (Add e1 e2) = "(" ++ view e1 ++ " + " ++ view e2 ++ ")"

ti1_view = view ti1  -- "(8 + (-(1 + 2)))"
```

In the general form, structural recursion over `Exp` values is expressed as:

```hs
fold_Exp :: (Int -> a)      -- Lit
         -> (a -> a)        -- Neg
         -> (a -> a -> a)   -- Add
         -> Exp
         -> a
fold_Exp onlit onneg onadd (Lit n)     = onlit n
fold_Exp onlit onneg onadd (Neg e)     = onneg (fold_Exp onlit onneg onadd e)
fold_Exp onlit onneg onadd (Add e1 e2) =
  onadd (fold_Exp onlit onneg onadd e1)
  (fold_Exp onlit onneg onadd e2)
```

To make `fold_Exp` more convenient to use, it makes sense to group its parameters (telling how to handle `Lit`, `Neg` and `Add` nodes of the data type) in a record:

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

A sample term transformer *pushes the negation down*, converting terms to a *negative normal form*, in which only literals are negated, and only once. The code still uses pattern-matching, but it is not structurally recursive (see the last-but-one clause).

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
