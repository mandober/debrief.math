# Encoding of inductive types

`Lambda encodings in type theory`, Peng Fu, 2014

Lambda encodings (such as Church encoding, Scott encoding, Parigot encoding) are methods to represent data in lambda calculus. Curry-Howard correspondence relates the formulas and proofs in intuitionistic logics to the types and programs in typed functional programming languages. Roughly speaking, type theory (Intuitionistic Type Theory) formulates the intuitionistic logic in the style of typed functional programming language.

In this thesis (`Lambda encodings in type theory`, Peng Fu, 2014) we investigate the mechanisms to support lambda encodings in type theory.

Type theory, for example, *Calculus of Constructions* (CoC) *does not directly support inductive data* because the induction principle for the inductive data is proven not to be derivable. Thus, inductive data together with inductive principle are added as primitives to CoC, leading to several nontrivial extensions, e.g. Calculus of Inductive Constructions.

In this thesis, we explore alternatives to incorporate inductive data in type theory.

We propose adding an *abstraction construct* to the intuitionistic type theory to support lambda-encoded data, while still be able to derive the corresponding induction principle. The main benefit of this approach is that we obtain relatively simple systems, which are easier to analyze and implement.

Inductively defined data type (inductive data), together with the pattern matching mechanism, are commonly used in theorem proving and functional programming. Most FPL and theorem provers (Haskell, OCaml, Agda, Coq, TRELLYS) support them as primitives.

Usually, the concepts of inductive data and program are separated, one can only perform pattern matching on inductive data.

In lambda calculus however, there are no distinctions between program and data. For example, for Church numeral 2, it can be used as a higher order function that takes in a function `f` and a data `b` as arguments, then applies `f` to `b` twice.
