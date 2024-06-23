# Dependent function types (Π-types)

HoTT Book > I Foundations > 1.1. Type theory > 1.4 Dependent function types


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

As with non-dependent functions, we can apply a dependent function 
`f : ∏(x:A) B(x)` to an argument `a : A` to obtain an element `f(a) : B(a)`.

The equalities are the same as for the ordinary function type, i.e. we have the computation rule: given `a : A`, we have `f(a) ≡ Φ′` and `(λx. Φ)(a) ≡ Φ′`, where `Φ′` is obtained by replacing all occurrences of `x` in `Φ` by `a` (avoiding variable capture, as always).

Similarly, we have the **uniqueness principle**: `f ≡ (λx.f x)` for any 
`f : ∏(x:A) B(x)`.

As an example, recall from §1.3 that there is a type family `Fin : ℕ → 𝒰` whose values are the standard finite sets, with elements `0ₙ, 1ₙ, …, (n − 1)ₙ : Fin(n)`. 

There is then a dependent function `fmax : ∏(n:N) Fin(n + 1)` which returns the "largest" element of each nonempty finite type, `fmax(n) :≡ nₙ﹢₁`. As was the case for `Fin` itself, we cannot define `fmax` yet, but we will be able to soon (see Exercise 1.9).

Another important class of dependent function types, which we can define now, are functions which are polymorphic over a given universe. 

A polymorphic function is one which takes a type as one of its arguments, and then acts on elements of that type (or of other types constructed from it). 

An example is the polymorphic identity function `id : ∏(A : 𝒰) A → A`, which we define by `id :≡ λ(A : 𝒰). λ(x : A). x`. Like λ-abstractions, `Π`s  automatically scope over the rest of the exp unless delimited; thus `id : ∏(A : 𝒰) A → A` means `id : ∏(A : 𝒰)(A → A)`. This convention, though unusual in mathematics, is common in type theory.

We sometimes write some args of a dependent fns as subscripts. For instance, we might equivalently define the polymorphic identity function by `idA(x) :≡ x`. Moreover, if an arg can be inferred from context, we may omit it altogether. For instance, if `a : A`, then writing `id(a)` is unambiguous, since id must mean `idA` in order for it to be applicable to `a`. 

Another, less trivial, example of a polymorphic function is the `swap` operation that switches the order of the arguments of a (curried) two-argument function:

    swap : ∏ (A : 𝒰) ∏ (B : 𝒰) ∏ (C : 𝒰) (A → B → C) → (B → A → C)

We can define this by

    swap A B C g :≡ λb. λa. g a b

We might also equivalently write the type arguments as subscripts:

    swapᴀʙᴄ g (b, a) :≡ g(a, b)

Note that as we did for ordinary functions, we use currying to define dependent functions with several arguments (such as swap). However, in the dependent case the second domain may depend on the first one, and the codomain may depend on both.

That is, given `A : 𝒰` and type families `B : A → 𝒰` and `C : ∏(x:A) B(x) → 𝒰`, we may construct the type `∏(x:A) ∏(y:B(x)) C(x, y)` of functions with two arguments. In the case when B is constant and equal to A, we may condense the notation and write `∏(x,y:A)`; e.g. the type of `swap` could also be written as

    swap : ∏ {A,B,C : 𝒰} (A → B → C) → (B → A → C)

Finally, given `f : ∏(x:A) ∏(y:B(x)) C(x, y)` and arguments `a : A` and `b : B(a)`, we have `f (a)(b) : C(a, b)`, which, as before, we write as `f(a, b) : C(a, b)`.
