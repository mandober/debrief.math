# 1.9 Function Types

- video: https://www.youtube.com/watch?v=REqRzMI26Nw
- blog: https://bartoszmilewski.com/2015/03/13/function-types/

## Function Type

A function type is different from other types. The Integer type is just a set of integers, like the Boolean type is a two-set, and smilarly all the so-called base types that are not coumpount types.

A a function, however is a compound type, similarly to a product and sum types. In fact, exactly like a product or coproduct type, a function type also takes two type arguments; if those are `a` and `b`, then a function type is `a -> b`.

>A function type is a **set of morphisms** between objects `a` and `b`, in a suitable category `C`.

A suitable category is not just any old category; for now, we are limiting ourselves to `Set` category, which definitely has function types; but this is not true in general, for any category.

A set of morphisms between two objects in any category is called a **hom-set**.

Now, in `Set` category, every hom-set is actually a set; and so, being a set, it is member of category `Set`. The `Set` category contains objects, each of which is a set. So `a` and `b` objects in `Set` are sets, and so is the hom-set between them, `Homᴄ(a,b)`, `C(a,b)`, `a -> b ∈ C`, `Arrᴄ(a,b)` (where `C` is `Set` category). It just so happens that in the category Set every hom-set is itself an object in the same category - because it is, after all, a set.

Particular to the `Set` category is the fact that a hom-set between any two objects in `Set` is internal to the category. The same is not true of other categories where hom-sets are external to a category and called **external hom-sets**. The hom-sets of such a category are extrnal to it - in fact, they are members of the `Set` category (naturally, as `Set` collects all sets).

The self-referential nature of the `Set` category is what makes function types special. But there is a way, at least in some categories, to construct objects that represent hom-sets - such objects are then called **internal hom-sets**.

## Universal Construction

Forgetting for a moment that function types are sets, we'll try to construct from scratch a *function type*, or more generally, *an internal hom-set*.

As usual, we'll take our cues from the `Set` category, being carefully not to refer to any intrinsic properties of sets, so that our construction becomes applicable to other categories as well.

A function type is a *compound type* as it is associated to an argument object (type) and a result object (type). Through constructing the product type, we have seen how might a construction of a compound type look like, and we'll reuse the same approach to define a function type.

*The pattern*: the pattern to llok for involves 3 objects:
- the function object (type) under construction
- the argument object (type)
- the result object (type)

Note: we're interchangibly using the terms "type" and "object" here.

A pattern that connects these three types is *function application* (but that's not a function, is it?): given a candidate for a function type, `z` (outside Set, this is an object like any other), and an argument type `a`, an application maps this pair to a result type `b`. Out of these 3 types, two are fixed - the arg and result types.

A function application is a mapping and we need to incorporate it into the pattern. If we were allowed to look inside objects, we could pair a function `f` (an element of `z`) with an arg object `x` (an element of `a`) and map them to `f x` - the application of `f` to `x`, which is an element of `b`.

In brief, in `Set`, we can pick a function `f` from a set of functions `z`, and we can pick an argument `x` from the set (type) `a`. We get an element `f x` in the set (type) `b`.

It's necessary that a category has products: *no products, no function types*. This is almost self-explanitory knowing that function types are exponential objects, and exponentiation is iterated multiplication. Category theory and categorical consatructions are compatile with these notions from algebra (arithmetic).

```hs
-- function is an exponential
-- bᵃ is the number of possible functions from a to b
a → b ≅ bᵃ

-- binary function and exponential obj
  a → b → c
= a → (b → c)
≅ (b → c)ᵃ
= (cᵇ)ᵃ = cᵇᵃ

-- these are the same:
(cᵇ)ᵃ = cᵇᵃ = cᵃᵇ = (cᵃ)ᵇ

-- equivalence between the proper (taking a pair of
-- args) binary function and its curryied version:
(a ⨯ b) → c
≅ cᵃᵇ
≅ (cᵃ)ᵇ = b → cᵃ = b → (a → c) = b → a → c
≅ (cᵇ)ᵃ = a → cᵇ = a → (b → c) = a → b → c

-- equivalences:
(a ⨯ b) → c ≅ (b ⨯ a) → c ≅ a → b → c ≅ b → a → c

-- distribution of mult over addition
cᵃᐩᵇ
= cᵃ ⨯ cᵇ
= (a → c) ⨯ (b → c)
-- is distribution of exponential over coproduct
cᵃᐩᵇ
= (a + b) → c
-- therefore
(a → c) ⨯ (b → c) = (a + b) → c
```


However, we cannot make a continuous arrow that connects `f` through `a` with `b` since arrows don't work like that in CT. We gotta figure out the approach with pairs (because we can construct pairs) - a pair of function type and argument type, `(f, x)`, having the type `(a → b, a)`.


Instead of dealing with individual pairs `(f, x)`, we can as well talk about the whole product of the function type `z` and the argument type `a`. The product `z×a` is an object, and we can pick, as our application morphism, an arrow `g` from that object to `b`. In Set, `g` would be the function that maps every pair `(f, x)` to `f x`:

```hs
g :: ((a -> b), a) -> b
g (f, x) = f x
```

So that's the pattern: a product of two objects, `z` and `a`, connected to another object `b` by a morphism `g` (where `g` is the "evaluation" arrow).

This pattern is specific enough to single out the function type using a universal construction at least in `Set` and CCC, but not in other categories.

...


## Currying

## Exponentials

## Cartesian Closed Categories

Cartesian closed category (CCC) is a larger category (then Set) that can also be used to model types and functions. Set is just one example of a CCC.

A CCC must contain:
- the terminal object
- a product for any pair of objects
- an exponential for any pair of objects

If we consider an exponential as an iterated product (possibly infinitely many times), then we can think of a CCC as one supporting products of an arbitrary arity. In particular, the terminal object can be thought of as a product of zero objects - or the zeroth power of an object.

The terminal object and the product have their duals: the initial object and the coproduct. A CCC that also supports those two, and a category in which product can be distributed over coproduct is called a **Bicartesian Closed Category**.

```hs
a × (b + c) = a × b + a × c
(b + c) × a = b × a + c × a
```

We'll see in the next section that BCCs, of which `Set` is a prime example, have some interesting properties.

## Exponentials and Algebraic Data Types

The interpretation of function types as exponentials fits very well into the scheme of algebraic data types. It turns out that all the basic identities from high-school algebra relating numbers zero and one, sums, products, and exponentials hold pretty much unchanged in any bicartesian closed category theory for, respectively, initial and final objects, coproducts, products, and exponentials. We don't have the tools yet to prove them (such as adjunctions or the Yoneda lemma), but I'll list them here nevertheless as a source of valuable intuitions.

### Zeroth Power

>a⁰ = 1

In the categorical interpretation, we replace 0 with the initial object, 1 with the final object, and equality with isomorphism.

The exponential is the internal hom-object.

This particular exponential represents the set of morphisms going from the initial object to an arbitrary object `a`. By the definition of the initial object, there is exactly one such morphism, so the hom-set `C(0,a)` is a singleton set. A singleton set is the terminal object in `Set`, so this identity trivially works in `Set`. What we are saying is that it works in any Bicartesian Closed Category.

In Haskell, we replace 0 with `Void`, 1 with `()`, and the exponential with the function type. The claim is that the set of functions from `Void` to any type `a` is equivalent to `()` - which is a singleton. In other words, there is only one function `absurd :: Void -> a`.

This is a little bit tricky, for two reasons. One is that in Haskell we don't really have uninhabited types - every type contains bottom. The second reason is that all implementations of `absurd` are equivalent because, no matter what they do, nobody can ever execute them. There is no value that can be passed to absurd. And if you manage to pass it a never ending calculation, it will never return.

### Powers of One

>1ᵃ = 1

This identity, when interpreted in Set, restates the definition of the terminal object: *There is a unique morphism from any object to the terminal object*.

In general, the internal hom-object from `a` to the terminal object is isomorphic to the terminal object itself.

In Haskell, there is only one function from any type `a` to `()`, and it is called unit, `unit :: a -> ()`.

You can also think of it as the function `const` partially applied to `()`, i.e. `const ()`.


### First Power

>a¹ = a

This is a restatement of the observation that morphisms from the terminal object can be used as the element selectors of the object `a`.

The set of such morphisms is isomorphic to the object itself. In Set, and in Haskell, the isomorphism is between elements of the set `a` and functions that pick those elements, `() -> a`, i.e. `select :: forall a. () -> a`.

If `a` is instantiated to `ℕ` then there are as many selectors on ℕ as there are elements (values) of ℕ:

```hs
selectℕ :: () -> ℕ
select0 _ = 0
select1 _ = 1
select2 _ = 2
…
```

### Exponentials of Sums

>aᵇᐩᶜ = aᵇ × aᶜ

Categorically, this says that the exponential from a coproduct of two objects is isomorphic to a product of two exponentials. In Haskell, this algebraic identity has a very practical, interpretation. It tells us that a function from a sum of two types is equivalent to a pair of functions from individual types. This is just the case analysis that we use when defining functions on sums. Instead of writing one function definition with a case statement, we usually split it into two (or more) functions dealing with each type constructor separately. For instance, take a function from the sum type (Either Int Double):


```hs
f :: Either Int Double -> String

-- It may be defined as a pair of functions from, respectively, Int and Double:
f (Left n)  = if n < 0 then "Negative int" else "Positive int"
f (Right x) = if x < 0.0 then "Negative double" else "Positive double"
-- Here, n is an Int and x is a Double.
```


### Exponentials of Exponentials

>(aᵇ)ᶜ = aᵇᶜ

This is just a way of expressing currying purely in terms of exponential objects. A function returning a function is equivalent to a function from a product (a two-argument function).

### Exponentials over Products

>(a × b)ᶜ = aᶜ × bᶜ

In Haskell: A function returning a pair is equivalent to a pair of functions, each producing one element of the pair.

It's pretty incredible how those simple high-school algebraic identities can be lifted to category theory and have practical application in FP.


## Curry-Howard Isomorphism

I have already mentioned the correspondence between logic and algebraic data types.

`Void` type and `()` correspond to false and true. Product types and sum types correspond to logical conjunction and disjunction. The function type corresponds to logical implication.

>According to the Curry-Howard isomorphism, every type can be interpreted as a proposition - a statement that may be true or false.

In type theory this is impl with types: a true proposition corresponds to an inhabited type, and false to an uninhabited type.

In particular, a logical implication is true if the function type corresponding to it is inhabited, which means that a function of that type realy does exists.

An implementation of a function is therefore a proof of a theorem. Writing programs is equivalent to proving theorems.

```hs
type Not a = a -> Void

-- These are all equivalent, but the last one seems most reasonable:

-- (a ∨ b) ∧ ¬(a ∧ b)
type Xor a b = (Either a b, (a, b) -> Void)

-- (a ∨ b) ∧ (¬a ∨ ¬b)
type Xor a b = (Either a b, Either (a -> Void) (b -> Void))

-- (a ∧ ¬b) ∨ (b ∧ ¬a)
type Xor a b = Either (a, b -> Void) (b, a -> Void)
```

* A tutorial implementation of a dependently typed lambda calculus
https://www.andres-loeh.de/LambdaPi/

* How to implement dependent type theory I
http://math.andrej.com/2012/11/08/how-to-implement-dependent-type-theory-i/
