# Dependent function types (Π-types)

1. Foundations : 1.1. Type theory : 1.4 Dependent function types (Π-types)

In type theory, we often use a more general version of function types, called a **Π-type** or **dependent function type**.

The elements of a Π-type are functions 
whose codomain type can vary 
depending on the element of the domain 
to which the function is applied, 
called *dependent functions*.

The name "Π-type" is used because this type can also 
be regarded *as the cartesian product over a given type*.

Given a type `A : 𝓤` 
and a family `B : A → 𝓤`, 
we may construct the type 
of dependent functions:

`Π (x : A) B(x) : 𝓤`.

The alternative notation is:

`Π (x : A) B(x)`

If `B` is a constant family, 
then the dependent product type 
is the ordinary function type:

`Π (x : A) B` ≡ `A -> B`

All the constructions of Π-types are generalizations of 
the corresponding constructions on ordinary function types.

We can introduce dependent functions by explicit definitions: 
to define `f : Π (x : A) B(x)` 
where `f` is the name of a dependent function to be defined, 
we need an expression `Φ : B(x)` 
possibly involving the variable `x : A`, 
and we write:

`f(x) :≡ Φ` for `x : A`

or, as λ-abstraction:

`λx.Φ : Π (x:A) B(x)`
