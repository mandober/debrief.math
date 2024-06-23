# Identity type

https://ncatlab.org/nlab/show/identity+type

In type theory, **the identity type** represents the concept of equality, also called **propositional equality** to differentiate it from judgemental equality.

In intensional type theory, under the propositions-as-types paradigm, 
an identity type (equality type) is the incarnation of equality.

For any type `A`, and any terms `x, y : A`, 
the type `Idᴀ(x,y)` is the type of proofs 
that `x` and `y` are the same, `x = y` 
i.e. the type of reasons why they are the same.

To contrast it with computational (definitional, judgemental) equality, 
inhabitation of an identity type is also called propositional equality.

The identity type is denoted by `Idᴀ(x,y)` or `Eqᴀ(x,y)`, while the notation 
`x = y` (i.e. `x ≡ y`) is usually reserved for definitional equality.

In extensional type theory, such as that modeled in the internal logic of a 1-category, *equality is an h-proposition*, and hence each `Idᴀ(x,y)` is a subsingleton.

However, in the internal type theory of higher categories, such as the _internal logic of an (∞,1)-topos_, identity types represent *path objects* and are highly nontrivial. One speaks of homotopy type theory. In these cases, identity types are also known as *path types* or *path space types* and are sometimes written as `Pathᴀ(x,y)` instead of `Idᴀ(x,y)`.

## Identity type

https://en.wikipedia.org/wiki/Identity_type

In type theory, the identity type represents the concept of equality. It is also known as propositional equality to differentiate it from "judgemental equality". Equality in type theory is a complex topic and has been the subject of research, such as the field of homotopy type theory.

## Contents

- Comparison with Judgemental Equality
- Beyond Judgemental Equality
- Versions of the Identity Type
- Complexity of Identity Type
- References

## Comparison with Judgemental Equality

The identity type is one of 2 different notions of equality in type theory.

The more fundamental notion is "judgemental equality", which is a judgement.

## Beyond Judgemental Equality

The identity type can do more than what judgemental equality can do.

It can be used to show `∀x(x + 1 = 1 + x)`
which is impossible to show with judgemental equality. 
This is accomplished by using 
the eliminator, i.e. the *recursor*, 
of the natural numbers, known as `R`.

The `R` function let's us define a new function on the natural numbers.

That new function `P` is defined to be `(λ x : nat . x + 1 = 1 + x)`. 

The other arguments act like the parts of an induction proof. 

The argument `PZ : P 0` becomes the base case `0 + 1 = 1 + 0`, 
which is the term `refl nat 1`. 

The argument `PS : P n → P (S n)` 
becomes the inductive case. 

Essentially, this says that when `x + 1 = 1 + x` 
has `x` replaced with a canonical value, 
the expression will be the same as `refl nat (x + 1)`.


## Versions of the Identity Type

The identity type is complex and is the subject of research in type theory. 
While every version agrees on the constructor, `refl`, 
their properties and eliminator functions differ dramatically.

> For extensional approaches, any identity type can be converted into a judgemental equality.

A computational version is known as **Axiom K** due to Thomas Streicher. 
These are not very popular lately.

## Complexity of Identity Type

Martin Hoffman and Thomas Streicher have refuted 
the idea that type theory requires 
all terms of the identity type to be the same.

A popular branches of research into the identity type are 
Homotopy Type Theory, and its brach of Cubical Type Theory.
