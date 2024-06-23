# Semigroupoids

https://hackage.haskell.org/package/semigroupoids
https://github.com/ekmett/semigroupoids

A semigroupoid is a Category without id. This package provides a range of id-free versions of type classes, as well as some supporting functions and data types.

## Field Guide

![semigroupoids](https://raw.github.com/ekmett/semigroupoids/master/img/classes.svg)

The diagram below describes the relationships between the type classes defined in this package, and those from base (with some from contravariant as well). Thick-bordered nodes correspond to type classes defined in this package; thin-bordered ones are from elsewhere. Solid edges represent subclass relationships that actually exist; dashed edges are those which should exist in theory.

A diagram of the relationships between type classes defined in this package and elsewhere.

We also provide the following table. This is structured in superclass order - thus, for any type class T, all superclasses of T will be listed before T in the table.

Name          | Location      | Superclass of           | Ideally superclass of
--------------|---------------|-------------------------|----------------------
Functor       | base          | Alt, Apply, Traversable | _
Foldable      | base          | Traversable, Foldable1  | _
Bifunctor     | base          | Biapply                 | _
Contravariant | base          | Divise, Decide          | _
Semigroupoid  | semigroupoids | _                       | Category
Alt           | semigroupoids | Plus                    | _
Apply         | semigroupoids | Bind                    | Applicative
Traversable   | base          | Traversable1            | _
Foldable1     | semigroupoids | Traversable1            | _
Biapply       | semigroupoids | _                       | _
Divise        | semigroupoids | _                       | Divisible
Decide        | semigroupoids | Conclude                | Decidable
Category      | base          | Arrow                   | _
Plus          | semigroupoids | _                       | Alternative
Applicative   | base          | Alternative, Monad      | _
Bind          | semigroupoids | _                       | Monad
Traversable1  | semigroupoids | _                       | _
Divisible     | contravariant | _                       | _
Conclude      | semigroupoids | _                       | Decidable
Arrow         | base          | _                       | _
Alternative   | base          | MonadPlus               | _
Monad         | base          | MonadPlus               | _
Decidable     | contravariant | _                       | _
MonadPlus     | base          | _                       | _


We omit some type class relationships from this diagram, as they are not relevant for the purposes of this package.
