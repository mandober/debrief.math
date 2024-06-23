# Curry's paradox

[recursive-types] [totality]

In the simply-typed lambda calculus (which has only function types and a base type), infinite loops are impossible and all programs halt.

However, this stops being true once *recursive types* are added, even if no recursive functions or loops are present in the language.

In most languages, there are plenty of ways to write programs that do not terminate, and finding one more is not a soundness issue. However, in total languages (in which all programs halt), this does present a *soundness issue and the allowable forms of recursive types must be restricted*.

The recursive types in question are those that contain a function or method which takes the same type as an argument, which can be used to build a nonterminating computation as follows:

```hs
newtype Curry = Curry { unCurry :: Curry -> Int }

f c = unCurry c c
loop = f (Curry f)
```

In Haskell, this ADT puts the type-checker into a loop; the error below is reported by GHC 9.4.4

```hs
newtype Curry a = Curry { unCurry :: Curry a -> a }

f :: Curry a -> a
f c = unCurry c c

loop :: a
loop = f (Curry f)

{-
  Program error:
    Simplifier ticks exhausted

  When trying UnfoldingDone f
    To increase the limit, use -fsimpl-tick-factor=N (default 100).

  In addition try adjusting -funfolding-case-threshold=N and -funfolding-case-scaling=N for the module in question. 
  Using threshold=1 and scaling=5 should break most inlining loops.

  If you need to increase the tick factor substantially, while also adjusting unfolding parameters please file a bug report and indicate the factor you needed.

  If GHC was unable to complete compilation even with a very large factor (a thousand or more), please consult the "Known bugs or infelicities" section in the Users Guide before filing a report. There are a few situations unlikely to occur in practical programs for which simplifier non-termination has been judged acceptable.

  To see detailed counts use: -ddump-simpl-stats

  Total ticks: 77200
-}
```

In logic, this is known as **Curry's paradox**.

Under the *propositions-as-types viewpoint*, it causes inconsistency: by replacing `Int` with any proposition `P` (including `False`), the `loop` function above proves `P`.

To avoid this problem, languages that aim for logical consistency (e.g. the proof assistants Coq and Agda) ban recursive types that take themselves as arguments to functions or methods, i.e. the they prohibit the so-called **negative recursion**.

In defining the type `Curry`, the data ctor `C` takes the defining type `Curry` as arg, while it is in the *negative position*:

```hs
newtype Curry a = C (Curry a -> a)
```

An arg is in negative position if it occurs before an arrow. More precisely, an arg is in negative position if it occurs before an odd number of arrows.


In fact, due to a different issue, banning negative recursion is often not enough, and recursive types must be restricted further to **strictly positive recursion** to remain consistent (see "Positivity, strict and otherwise").


[1]: https://en.wikipedia.org/wiki/Curry%27s_paradox
[2]: https://plato.stanford.edu/entries/curry-paradox/
