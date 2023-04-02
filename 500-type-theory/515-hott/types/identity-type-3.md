# Identity type

https://ncatlab.org/nlab/show/identity+types
http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/identity+type

https://ncatlab.org/nlab/show/definitional+equality
https://ncatlab.org/nlab/show/equality
https://ncatlab.org/nlab/show/equivalence+relation


## Idea

http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/identity+type

In intensional type theory, under the propositions-as-types paradigm, an *identity type (or equality type)* is the incarnation of equality.

That is, for any type `A` and any terms `x,y:A`, the type `Idᴀ(x,y)` is "the type of proofs that x = y" or "the type of reasons why x = y".

To contrast with computational or definitional (judgemental) equality, inhabitation of an identity type is sometimes called **propositional equality**.

The **identity type**, `Idᴀ(x,y)`, is sometimes written as `Eqᴀ(x,y)`, or just as `(x = y)`. In fact, the symbol `=` is usually reserved for definitional equality, while `≡` or `≐` is often used for propositinal equality.

In extensional type theory, such as that modeled in the internal logic of a 1-category, equality is an *h-proposition*, and hence each `Idᴀ(x,y)` is a subsingleton.

However, in the internal type theory of higher categories, such as the internal logic of an (∞,1)-topos, identity types represent *path objects* and are highly nontrivial. One speaks of homotopy type theory. In these cases, identity types are also known as *path types* or *path space types* and are sometimes written as `Pathᴀ(x,y)` instead of `Idᴀ(x,y)`.

## Idea

https://ncatlab.org/nlab/show/identity+types

In type theory - where one understands every piece of data (every "term") as being of a given type which specifies its operational behaviour - identity types (maybe better: identification types) `Idᴀ` are the types of those terms which serve as "witnesses" or "certificates" (see at "propositions as types") of identification of terms of type `A`.

What exactly this means depends on the nature of the ambient type theory and the choices for the inference rules of the identity types (see at extensional and intensional type theory). In some setups (see below), having a term of identity type means much the same as having an equality in classical mathematics, and for this (historical) reason identity types are often denoted simply by equality signs, for better or worse.

But the power of the notion of identity types goes beyond this classical situation and results from the fact that they may give the notion of equality a constructive meaning ("propositional equality"). Taking this constructive principle of identity types to its logical conclusion, leads - notably in Martin-Löf dependent type theory, see below - to identity types which themselves have identity types, reflecting identifications-of-identification, and so on, paralleling the higher structure of homotopies and homotopies of homotopies in homotopy theory, whence one refers to type theories with such identity types also as homotopy type theories.
