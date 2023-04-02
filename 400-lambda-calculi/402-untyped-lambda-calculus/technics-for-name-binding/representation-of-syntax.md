# Representations of Syntax with Binding

https://jesper.sikanda.be/posts/1001-syntax-representations.html

- Name capture avoiding substitution
- Barendregt convention
- nameless representations
  - locally nameless
  - De Bruijn indices
  - De Bruijn levels
- Nominal signatures
- Nominal techniques



## Introduction

In compiler theory and programming language design, a very common issue has to do with different representations of the syntax of a programming language in order to interpret, compile, analyze, optimize, and transform it in the most efficient manner.

A common way to represent the syntax is as an *abstract syntax tree* (AST). The AST makes it easy to traverse and transform the entire tree or parts of it.

However, the syntax is even better represented by a graph, especially if we are modelling a language based on λ-calculus.

The infamous problem with implementing λ-calculus is handling of β-reduction, particularly the handling of substitution that avoids name capture.


Since the identifiers (of variables, functions, classes, modules, etc.) can occur all over the code. 

This is usually handled by having the first identifier occurrence bind the name, and so it's called the *binding occurrence*, and the other occurrences of that identifier, called *application occurrences*, can then point to the binder.


Like AST is a commonly accepted way to model abstract syntax, so we'd like to have a universal way of representing the structure of variable occurrences. We'd like to model the relation of the binding occurrence to its application occurrences (the binder and the mentions). There are numerous different approaches to the problem of name binding, but none have managed to become the standard.


This post is an overview of some different techniques for implementing untyped lambda calculus in Agda. This post doesn't cover the problem of *name resolution*, i.e. the process of figuring out which binder each occurrence of a name points to. Instead, we focus on how to represent and manipulate syntax where names are used correctly according to the rules of the language. You can think of this as finding a good representation of the output of name resolution, similar to how an AST is the output of parsing.

List of references to the papers on the topic of variable binding:
https://researchr.org/bibliography/variable-binding/publications

## de Bruijn indices

Possibly the most ubiqitous representation of variable binding is known as the *de Bruijn indices*. While de Bruijn indices have became a standard part of λ-calculus implementation, there is still the issue of *name synchronization*, i.e. the process of back and forth conversion between the internal representation of variables (as indices, i.e. practically, as integers), and their presentational form (as strings), all the while retaining consistency between variable names used in the initial lambda term, with names used in the intermediate redexes.

* De Bruijn indices - seminal paper:
https://www.win.tue.nl/automath/archive/pdf/aut029.pdf

De Bruijn indices are the most common *nameless representation* of name binding. A de Bruijn index represents a variable name by counting how many λ-binders to skip, traversing outward in a λ-term, in order to reach the appropriate λ-binder for the variable.

λn. λf. λx. f (n f x) = λ λ λ 1 (2 1 0)

Here is the definition of lambda terms in Agda using de Bruijn indices, and a representation of the term `λ f. λ x. f x` = `λ (λ (1 0))`

```hs agda
module DeBruijnSyntax where

data Term : Set where
  var : ℕ → Term
  lam : Term → Term
  app : Term → Term → Term

ex : Term
ex = lam {-f-} (lam {-x-} (app (var {-f-} 1) (var {-x-} 0)))
```

De Bruijn syntax is used widely in the implementation and formalization of programming languages, especially with functional implementation languages. For example, Agda is implemented in Haskell and the internal syntax represents variables (but not other names) using de Bruijn indices.

The big advantage of de Bruijn indices is that each lambda-term has a unique representation and hence any two α-equivalent terms (e.g. `λx.x` and `λy.y`) are represented the same. It also leads to a more uniform implementation of substitution than using strings for names.

A variation on de Bruijn indices are *de Bruijn levels*, which count the number of binders starting from the root node rather than from the name occurrences. This simplifies the implementation of some operations, but the assumption that there is a global "root node" complicates other assumptions, so overall the choice between de Bruijn indices and de Bruijn levels is kind of awash.

`λ f. (λ x. (f x))` = `λ (λ (1 0))`

```
    λ  relative  λ  root node  λ
   / \            \             \
  f   λ            λ             λ
     / \            \             \
    x   @            @             @
       / \          / \           / \
      f   x        1   0         0   1
     normal       indices        levels
```

## Locally nameless

One of the problems with de Bruijn syntax is the absence of any actual names when constructing syntax. One possible solution is to distinguish between bound and free variables, and note that *only bound variables need to be anonymous*. This leads to the class of syntax representations known as locally nameless.

* The Locally Nameless Representation, 2012, Arthur Chargueraud
http://www.chargueraud.org/research/2009/ln/main.pdf

```hs agda
module LocallyNameless where

Name = String

data Term : Set where
  bound : ℕ → Term
  free  : Name → Term
  lam   : Term → Term
  app   : Term → Term → Term
```

To mediate between bound and free variables (e.g. when going under a binder), we define operations for opening and closing a term:

```hs agda
openUnder : ℕ → Name → Term → Term
openUnder k x (bound n) = if does (k ℕ.≟ n) then free x else bound n
openUnder k x (free y)  = free y
openUnder k x (lam u)   = lam (openUnder (suc k) x u)
openUnder k x (app u v) = app (openUnder k x u) (openUnder k x v)

openT = openUnder 0

closeUnder : ℕ → Name → Term → Term
closeUnder k x (bound n) = bound n
closeUnder k x (free y)  = if does (x String.≟ y) then bound k else free y
closeUnder k x (lam u)   = lam (closeUnder (suc k) x u)
closeUnder k x (app u v) = app (closeUnder k x u) (closeUnder k x v)

closeT = closeUnder 0
```

Using `closeT`, we can write down variables as strings but convert them to de Bruijn indices on the fly:

```hs agda
ex = lam (closeT "f" (
        lam (closeT "x" (
          app (free "f") (free "x")
        ))
      ))

_ : ex ≡ lam (lam (app (bound 1) (bound 0)))
_ = refl
```

There are many possible variants of the locally nameless style, where either the representation of either free or bound variables differs. For example, representing both free and bound variables as names (from two distinct types) leads to the locally named representation, which was actually introduced first. In the other direction, instead of representing free variables as strings one could instead represent them as de Bruijn levels, which results in an interesting *combination of de Bruijn indices and de Bruijn levels*.

Locally nameless syntax representations have been successfully used for doing formal metatheory in Coq, including the formalization of PCUIC for the MetaCoq project. However, using it successfully requires a lot of boilerplate for dealing with opening and closing of terms, which might be prohibiting unless the boilerplate can be generated automatically. Repeated opening and closing of terms might also introduce a performance bottleneck when this approach is used for a practical implementation and not just doing metatheory.

## Nominal signatures

Next in the broad family of nameless representations based on de Bruijn's representation is a wholly different way to think about names - **nominal techniques**.

* `Nominal unification`
https://www.sciencedirect.com/science/article/pii/S0304397504004013?via%3Dihub
Christian Urban, Andrew M. Pitts and Murdoch J. Gabbay (2004). 
doi:10.1016/j.tcs.2004.06.016.

* `A NEW approach to abstract syntax with variable binders`
https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.7.4261
Murdoch J. Gabbay and Andrew M. Pitts (2002). 
CiteSeerX 10.1.1.7.4261. doi:10.1007/s001650200016

* Nominal techniques
https://en.wikipedia.org/wiki/Nominal_techniques

* Nominal terms
https://en.wikipedia.org/wiki/Nominal_terms_(computer_science)


In brief, this technic relies on the presence of one or more *abstract sorts of atoms* (i.e. names), together with an operation for swapping two atoms in a term, and a *predicate expressing freshness of an atom with respect to a term*.

On top of these, one can define a sort constructor for abstracting over a single atom/name (I am deliberately using the word "sort" instead of "type" since these are not regular Agda types). We can then use name abstraction directly to write down a signature of our syntax and its induction principle.

While nominal techniques provide a general approach to define and reason about syntax with binders, I actually hesitate to include it here because it seems to require special language support to use effectively, which Agda does not have. However, we can work around that problem by defining a record type that specifies an abstract interface for working with atoms and (nominal) sorts (here I simplify it to a single sort of atoms):

```hs agda
module Nominal where
  record Nominal : Set₂ where
    field
      Sort  : Set₁
      Atom  : Sort
      1ᵉ    : Sort
      _×ᵉ_  : Sort → Sort → Sort
      _→ᵉ_  : Sort → Sort → Set
      absᵉ  : Sort → Sort
      -- lots of axioms omitted
  open Nominal {{...}}
```

The interface first declares a type Sort of sorts, and a particular sort Atom of atoms. It also contains fields for the analogues of regular Agda type constructors on sorts, such as pairs, functions, and predicates. We then declare that for each sort A, we have another sort absᵉ A of elements of A abstracted over a single (unknown) name. Finally, although I didn't write them here, if you would actually want to use this you would also need lots of other fields with axioms to specify freshness, as well as how to instantiate an element of absᵉ A with a fresh variable.

Once we have declared this abstract interface, we can use it to declare our syntax. Since Agda does not allow defining datatypes in an abstract type such as Sort, we once again resort to an abstract interface for declaring the syntax.
