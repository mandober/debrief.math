# 9. Natural Transformations

## TOC

- 9. Natural Transformations
  - 9.1 Natural Transformations Between Hom-Functors
  - 9.2 Natural Transformation Between Functors
  - 9.3 Natural Transformations in Programming
  - 9.4 The Functor Category
    - Vertical composition of natural transformations
    - Horizontal composition of natural transformations
    - Whiskering
    - Interchange law
  - 9.5 Universal Constructions Revisited
    - Picking objects
    - Cospans as natural transformations
    - Functoriality of cospans
    - Sum as a universal cospan
    - Product as a universal span
    - Exponentials
  - 9.6 Limits and Colimits
  - 9.7 The Yoneda Lemma
    - Yoneda lemma in programming
    - The contravariant Yoneda lemma
  - 9.8 Yoneda Embedding
  - 9.9 Representable Functors
    - The guessing game
    - Representable functors in programming
  - 9.10 2-category Cat
  - 9.11 Useful Formulas

## 9. Natural Transformations

We saw that, when two objects `a` and `b` are isomorphic, they generate bijections between the sets of arrows, which we can now express as isomorphisms between hom-sets:

    C(a, x) ≅ C(b, x)
    C(x, a) ≅ C(x, b)

The converse is not true: an isomorphism between hom-sets does not result in an isomorphism between object unless additional naturality conditions are satisfied.

We now re-formulate naturality conditions in progressively more general settings.

## 9.1 Natural Transformations between Hom-Functors

## 9.2 Natural Transformation between Functors

## 9.3 Natural Transformations in Programming

A natural transformation is a family of arrows parameterized by objects.

In programming, this corresponds to a family of functions parameterized by types, that is, to a *polymorphic function*.

The type of the argument to a natural transformation is constructed using one functor, and the return type using another.

In Haskell, we can define a data type that accepts two type ctors representing two functors, and produces a type of natural transformations:

```hs
data Natural :: (Type -> Type) -> (Type -> Type) -> Type where
  Natural :: (forall a. f a -> g a) -> Natural f g
```

As long as `f` and `g` are functors, this formula defines a natural transformation.

The types defined with `forall` are special - they are parametrically polymorphic. These types are contrasted with ad-hoc polymorphic types. The implementation of an ad-hoc polymorphic function varies according to type. Ad-hoc polymorphism is used to define a single (function) name with different implementations. For example, the function `fmap`, a method of the Functor class, has one implementation for lists, another for the `Maybe` type, and so on - each type implementing the Functor class is required to define its own implementation of `fmap`. On the other hand, a parametrically polymorphic function is used by any and all types (as is); it is a single formula that works for all types.

It turns out that the fact that natural transformations are implemented in Haskell using parametrically polymorphic functions not only satisfies, but represents an even stronger restriction then the naturality conditions do in category theory. It is an example of parametricity producing the so called "theorems for free".

The standard definition of a (parametric) natural transformation in Haskell uses a type synonym:

```hs
type Natural f g = forall a. f a -> g a
```

Example functions that are natural transformations: `safeHead` is a NT between the list and Maybe functors, `reverse` an NT from the list to list functor.

```hs
safeHead :: Natural [] Maybe
safeHead [] = Nothing
safeHead (a : as) = Just a

reverse :: Natural [] []
reverse [] = []
reverse (a : as) = reverse as ++ [a]
```

A useful intuition for understanding NTs builds on the idea that functors acts like containers for data. There are two completely orthogonal things that you can do with a container: You can transform the data it contains, without changing the shape of the container, which is what `fmap` does. Or you can transfer the data, without modifying it, to another container. This is what a NT does - it is a procedure for moving data between containers.

**Naturality condition** enforces the orthogonality of these two operations: it should not matter if you first modify the data and then move it to another container, or if you move it first and then modify it.

This is another example of successfully decomposing a complex problem into a sequence of simpler ones. Keep in mind, though, that not every operation with containers of data can be decomposed in that way. Filtering, for instance, requires both examining the data, as well as changing the size or even the shape of the container.

On the other hand, almost every parametrically polymorphic function is a natural transformation.

In some cases you may have to consider the identity or the constant functor as either source or the target. For instance, the polymorphic identity function can be though of as a natural transformation between two identity functors.






## 9.4 The Functor Category

In Cat, the category of categories, functors are arrows. What is an arrow in one category could be an object in another. Since now we have NTs that go between functors, it looks like we have a new category with functors as objects and NTs as arrows.

### Vertical composition of natural transformations

### Horizontal composition of natural transformations

### Whiskering

Often, horizontal composition of NTs is used when one NT is the identity NT. There is a shorthand notation for such composition, e.g. `β ◦ idF` is written as `β ◦ F`. Because of the characteristic shape of the diagram, such composition is called **whiskering**.

```
                           G
        F           -------------->
C --------------> D      β ⇊       E
                    -------------->
                           Gʹ
```

In components, we have: `(β ∘ F) x = β ꜰˣ`. The functor `F` maps `x ∈ C` to an object `F x` in `D`. A component of `β` at object `F x` is `β ꜰˣ`.

Let's consider how we would translate this to Haskell. A NT is a polymorphic function. Because of parametricity, it's defined by the same formula for all types. So whiskering on the right doesn't change the formula, it changes function signature. For instance, if this is the declaration of `beta`:

```hs
beta :: G x -> G' x
```

then its whiskered version would be:
```hs
beta_F :: G (F x) -> G' (F x)
```
Because of Haskell's type inference, this shift is often implicit.


Similarly, `idG ◦ α` is written as `G ◦ α`.

```
       F
 -------------->         G
C     α ⇊       D --------------> E
 -------------->
       Fʹ
```

In components: `(G ∘ α) x = G(αˣ)`

In Haskell, the lifting of `αˣ` by `G` is done using `fmap`, so given:

```hs
alpha :: F x -> F' x
```

the whiskered version would be:

```hs
g_alpha :: G (F x) -> G (F' x)
g_alpha = fmap alpha
```

Again, Haskell's type inference engine figures out which version of fmap to use (here, it's the one from the Functor instance of G).

### Interchange law

We can combine vertical composition with horizontal composition, as seen in the following diagram:



The *interchange law* states that the order of composition doesn't matter: we can first do vertical compositions and then the horizontal one, or first do the horizontal compositions and then the vertical one.


## 9.5 Universal Constructions Revisited

Defining an object by its outgoing or incoming arrows, with respect to all objects in the category, is called a **universal construction**.

>Why are natural transformations so important?
It's because most categorical constructions involve *commuting diagrams*. If we can re-cast these diagrams as *naturality squares*, we move one level up the abstraction ladder and gain new valuable insights.

Being able to compress a lot of facts into small elegant formulas helps us see new patterns. We'll see, for instance, that natural isomorphisms between hom-sets pop up all over category theory and eventually lead to the idea of an adjunction.

But first we'll study several examples in greater detail to get some understanding of the terse language of category theory. Let's try to decode the statement that the coproduct of two objects is defined by the following *natural isomorphism*:

    [𝟚, C](D, ∆x) ≅ C(a + b, x)

### Picking objects

Even a simple task of pointing at an object has a special interpretation in CT. We have seen that pointing at an element of a set is equivalent to selecting a function from the singleton set to it.

Similarly, picking an object in a category is equivalent to selecting a functor from the single-object category, `𝟙`; or, equivalently, it can be done using a constant functor from another category. Often we want to pick a pair of objects. That, too, can be accomplished by selecting a functor from a 2-object (stick-figure) category, `𝟚`. Similarly, picking an arrow is the same as selecting a functor from the "walking arrow" category, and so on. Judiciously selecting our functors and NTs between them, we can reformulate all the universal constructions we've seen so far.

### Cospans as natural transformations

The definition of a sum requires the selection of two objects to be summed; and a third one to serve as the target of the mapping out.

```
    Left          Right
a ───────→ a + b ←─────── b
│            ┆            │
│            ┆h           │
│            ┆            │
│            ↓            │
╰──────────→ c ←──────────╯
f                         g
```

This diagram can be further decomposed into 2 simpler shapes called *cospans*:

a ─────────→ x ←───────── b


To construct a cospan, we first have to pick a pair of objects. To do that we start with a two-object category `𝟚`. We call its objects `1` and `2`. We use a functor `D : 𝟚 -> C` to select the objects `a` and `b` 

    D 1 = a
    D 2 = b

`D` stands for diagram, since the two objects form a very simple diagram consisting of two dots in C. We use the constant functor `∆x : 2 -> C` to select the object `x`. This functor maps both 1 and 2 to `x` (and the two identity arrows to `idx`).

Since both functors go from 𝟚 to C, we can define a natural transformation `α` between them. In this case, it's just a pair of arrows:

    α₁ : D 1 → ∆x 1
    α₂ : D 2 → ∆x 2

These are exactly the two arrows in the cospan.

Naturality condition for α is trivial, since there are no arrows (other than identities) in 𝟚.

There may be many cospans sharing the same 3 objects (meaning): there may be many NTs between the two functors D and ∆x. These NTs form a hom-set in the functor category `[𝟚, C]`, namely, the hom-set `[𝟚, C](D, ∆x)`.

### Functoriality of cospans

### Sum as a universal cospan

### Product as a universal span

### Exponentials

## 9.6 Limits and Colimits

In the previous section we defined the sum and the product using natural transformations. These were transformations between diagrams defined as functors from a very simple stick-figure category 2, one of the functors being the constant functor.

Nothing prevents us from replacing the category 2 with something more complex. For instance, we could try categories that have non-trivial arrows between objects, or categories with infinitely many objects.

There is a whole vocabulary built around such constructions.





## 9.7 The Yoneda Lemma

A functor from some category C to the category of sets can be thought of as a model of this category in Set. Modeling, in general, is a lossy process: it discards some information. A constant Set-valued functor is an extreme example: it maps the whole category to a single set and its identity function.



### Yoneda lemma in programming

Now for the trivial part: The proof of the Yoneda lemma translates directly to Haskell code. We start with the type of natural transformation between the hom-functor `a -> x` and some functor `f`, and show that it's equivalent to the type of `f` acting on `a`.

```hs
forall x. (a -> x) -> f x -- is isomorphic to (f a)
```

We produce a value of the type `f a` using the standard *Yoneda trick*

```hs
yoneda :: Functor f => (forall x. (a -> x) -> f x) -> f a
yoneda g = g id
```

Here is the inverse mapping:

```hs
yoneda_1 :: Functor f => f a -> (forall x. (a -> x) -> f x)
yoneda_1 y = \h -> fmap h y
```


### The contravariant Yoneda lemma



## 9.8 Yoneda Embedding

## 9.9 Representable Functors

### The guessing game

### Representable functors in programming


## 9.10 2-category Cat


## 9.11 Useful Formulas

>Yoneda lemma for covariant functors:

[C,Set](C(a, −), F) ≅ F a

>Yoneda lemma for contravariant functors:

[Cᴼᴾ,Set](C(−, a), F) ≅ F a

>Corollaries to the Yoneda lemma:

[C,_Set_](C(x, −), C(y, −)) ≅ C(y, x)

[Cᴼᴾ,Set](C(−, x), C(−, y)) ≅ C(x, y)
