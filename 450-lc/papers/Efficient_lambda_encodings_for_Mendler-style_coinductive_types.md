# Efficient lambda encodings for Mendler-style coinductive types in Cedille

* Paper: Efficient lambda encodings for Mendler-style coinductive types in Cedille - by Christopher Jenkins, Aaron Stump, Larry Diehl, 2020
https://arxiv.org/abs/2005.00199
https://arxiv.org/abs/2005.00199v1
https://arxiv.org/pdf/2005.00199v1.pdf

* Talk at MSFP'20 (Mathematically Structured Functional Programming 2020)
Efficient lambda encodings for Mendler-style coinductive types in Cedille
https://www.youtube.com/watch?v=O_wGpU1IE2I

* Slides from the Talk at MSFP'20:
https://cwjnkins.github.io/assets/JSD20_Efficient-Mendler-Style-Coinductive-Types_Talk.pdf

* Code from the Talk at MSFP'20:
https://github.com/cedille/cedille-developments/tree/master/efficient-mendler-codata

* 8th Workshop on Mathematically Structured Functional Programming (MSFP 2020)
https://msfp-workshop.github.io/msfp2020/


## Abstract
from the paper: Efficient lambda encodings for Mendler-style coinductive types in Cedille - by Christopher Jenkins, Aaron Stump, Larry Diehl, 2020

In the **Calculus Of Dependent Lambda Eliminations (CDLE)**, it is possible to define inductive datatypes via lambda encodings that feature constant-time destructors and a course-of-values induction scheme. This paper begins to address the missing derivations for the dual, *coinductive types*. Our derivation utilizes new methods within CDLE, as there are seemingly fundamental difficulties in adapting previous known approaches for deriving inductive types. The lambda encodings we present implementing coinductive types feature constant-time constructors and a *course-of-values corecursion scheme*. Coinductive type families are also supported, enabling proofs for many standard coinductive properties such as stream bisimulation. All work is mechanically verified by the Cedille tool, an implementation of CDLE.

## Info from the talk and slides

**Coinductive (coalgebraic) data types** classify possibly infinite objects (data structures). They come equipped with
- *destructors* for making finite observations
- *generators* for their production (recursion schemes)
- *productivity* is often desired for these recursion schemes, i.e. that all finite observations are well-defined

Lambda encodings are an identification of the codata type with a particular corecursion scheme
- Codata are lambda expressions
- Types defined impredicatively ("impredicative encodings")

*Productivity* for a given scheme comes for free if the corresponding encoding is definable in a *total type theory*, so why not adopt encodings where this matters (total FP, ITPs).

Historically, lambda encodings for inductive types faced difficulties (efficiency and logical expressivity). Similarly for coinductive types.

Efficiency of corecursion for streams (in a number of observations) showed
- (Church) constructors incur linear overhead
- constructors trigger re-generation of codata
- (Parigot) flat linear overhead
- additional case distinction for each observation

Overhead can be much worse for other coinductive types.

Inefficiency, and the lack of coinduction in CC (logical expressivity), motivates the development of the *calculus of coinductive constructions* (CIC), where primitive coinductive datatypes are added to the theory.

Primitive datatypes with induction swell the *TCB* (positivity checking, possibly termination checking). Support for more expressive corecursion schemes may require further changes to the meta-theory.

The **calculus of dependent lambda eliminations (CDLE)** is a formally small extension of Curry-style CC that addresses the foregoing issues for lambda encodings directly
- induction is derivable generically for many encodings
- it possible to define efficient encodings for inductive types

*Cedille* is a higher-level language with special syntax for inductive types elaborated to lambda terms in CDLE.

What about coinductive types?

A **Mendler-style encoding for codata** in CDLE that is
- *generic*: works for any positive datatype signature
- *efficient*: no penalty for constructors
- *expressive*: supports a combined course-of-values coiteration and primitive corecursion scheme

However it still misses *true coinduction* (bisimilarity ⇒ equality), with a counter-result wrt CDLE's primitive equality type. Indexed corecursion for reasoning is supported (see the paper).

Focus: How we guarantee efficiency for just the primitive corecursion scheme
- How the Mendler-style helps
- Monotone fixed point types (Matthes, 1998)
- Proof-irrelevant type inclusions (CDLE)

## Mendler-style corecursion schemes

For every "classic" structured corecursion scheme, there is an equivalent Mendler-style scheme.

Advantages of the Mendler-style
- More idiomatic for FP:
  explicit corecursive calls, like general corecursion
- Avoids intermediate structures in more complex schemes: 
  no build-up/tear-down assists in efficiency gain

### Coiteration - streams

#### Classic

```hs
h : S -> A     t : S -> S
--------------------------
coit h t : S -> Stream A

head (coit h t s) = h s
tail (coit h t s) = coit h t (t s)
```

Conceptually, `t : S -> S` is a "state transition"

#### Mendler-style

```hs
h : S -> A     t : ∀R.(S -> R) -> S -> R
-----------------------------------------
      mcoit h t : S -> Stream A

head (mcoit h t s) = h t
tail (mcoit h t s) = t (mcoit h t) s
                     └────┬──────┘
                     R := Stream A
```

Conceptually, `t : ∀R.(S -> R) -> S -> R` is a "generator transformer".

### Primitive corecursion - streams

"Short-circuit" generation by returning a pre-made stream.

#### Classic

```hs
h : S -> A      t : S -> Stream A + S
--------------------------------------
     corec h t : S -> Stream A

head (corec h t s) = h s
tail (corec h t s) =
  case (t s) of
    Left(x)  -> x
    Right(y) -> corec h t y
```

Observations require additional case distinction.

#### Mendler-style
