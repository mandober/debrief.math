# 1. Clean Slate

## TOC

- 1. Types and functions (aka "Clean slate")
- 1.1 Types and functions
- 1.2 Equality, uniqueness, terminal and initial objects (aka "Yin and Yang")
- 1.3 Elements
- 1.4 The object of arrows


## 1.1 Types and functions

*Type* is a primitive notion (it is not and cannot be defined). 
This primitive entity is called
- *type* in type theory
- *object* in category theory
- *proposition* in logic


### Rant #1

In category theory, a category contains objects and arrows.

Since sets are so ubiquitous in math, we should note that sets are "just" objects in many concrete categories based on sets, such as the `Set` category of sets, `FinSet` category of finite sets, `Rel` category of relations (relations are sets of ordered pairs), `Fun` category (functions are sets of ordered pairs).

`Set` category
- objects: sets
- arrows: functions on sets

`FinSet` category
- objects: finite sets
- arrows: functions on finite sets

`Rel` category
- objects: relations [on-sets?]
- arrows: relations on relations [?]

`Fun` category
- objects: functions [on-sets?]
- arrows: functions on functions [?]

NOTE: Hmm, I'm not sure about the `Fun` being a category (although I'm sure that `Rel` is a category; it think it has relations as objects and *alegories* as arrows!). What would be the arrows in `Fun`? Functions on functions? (why not relations on functions? Or functions on relations? Or functionally related relata to functionally relational relatum?).

Moreover, since functions are also sets (of ordered pairs) functions are also objects in `Set`. Relations are also sets (of ordered pairs) so they are objects in `Set` too. And a Cartesian products of two sets is again a set (of ordered pairs) so `A × B` is again an object in `Set` (where A and B are objects in Set). And `A ⊌ B` (disjoint union) is as well. And `A ⋃ B`, `A ⋂ B`, `A ∖ B`, `A̅`, ..., all operations on sets, really. Including `𝒫(A)`.

[btw, is there a category where objects are sets but only sets of ordered pairs? `Ord`, if such a cat exists, would be a category with orders as objects, but orders are relations at heart, so there probably is; then again relations are essentially sets so orders are also objects in `Set`. The category `Set` is probably one of the largest cats around since pretty much everything is a set - set theory would say that *everything* is a set].

>`Set` is a very busy category.


However, sets, as objects in `Set`, are not viewed in the same way as in set theory. Namely, a set-theoretical view of sets is microscopic. A set is a collection of elements and we can assure ourselves of it since we are able to inspect inside it, seeing its glorious structure and discerning each element. However, a category-theoretical view of sets is macroscopic. Although a set is still a collection of elements, we are not able to see its struture and the elements inside. We see entire sets as featureless blobs. Any set (e.g. `𝔹`, `ℕ`, `ℝ`, `{1, 2, 3}`, etc.) is a structureless blob and therefore represented in diagrams as a featureless dot (a vertex). Hand at heart we can switch our view between set and category-theoretical perspectives when we want to make sure we're on the right track.

>Amazingly, we should be able to derive the same information using a telescope in category theory as we were able to do using a microscope in set theory.

This is because *objects* (with their potentially rich structure we cannot see) are determined not in terms of themselves (like in set theory) but in terms of the relations each one maintains (this is trhe categorical view). Nevertheless, by relying exclusively on relations, we are able to infer their potentially rich structure anyway. Is that just neat? When in doubt we are free to confirm our findings by switching from the category- to the set-theoretical perspective.

### Types

(end of rant, back to the book)

Type is a primitive notion, thus introduced without a definition.

Types have names (`Int`, `Bool`, `a`) signifying nothing special.

Types have no meaning.

A type by itself has no meaning. What makes it special is how it relates to other types. These associations are described by arrows. An arrow goes from an object called *source object*, to an object called *target object*.

In a category, an **arrow** or **morphism** connects a source object to a target object. Let `a,b ∈ Ob(𝓒). f : a -> b`. So, `f ∈ Ar(𝓒)`.

A morphism with the same source and target object is called an *endomorphism*, depicted as a looping arrow in diagrams (`a -> a`). An object `a ∈ Ob(𝓒)` can have any number of endomorphisms, but one of them must be the **identity morphism**, denoted by `1ₐ : a -> a`.

In programming (in Haskell), an arrow between types is called a *function*. In a category, an arrow between objects is called a *morphism*. In logic, an arrow between propositions is called an *entailment*. These are just words used to describe arrows in different areas of mathematics.

A proposition is something that may be true. In logic, we interpret an arrow between two objects as `a` entails `b`, or `b` is derivable from `a`.

There often are multiple arrows between two types, so we need to name them. For instance, an arrow `f` that goes from `a` to `b` is denoted, `f : a -> b`.

One way to interpret it is to say that a function `f` takes an argument of type `a` and produces a result of type `b`. In logic, we say that `f` is a proof that, if `a` is true, then `b` is also true.

The connection between type theory, lambda calculus, logic and category theory is known as *Curry-Howard-Lambek correspondence*.


## 1.2 Equality and uniqueness, terminal and initial objects
(aka 1.2 'Yin and Yang')

An object is defined by its connections, which are described by arrows.

An arrow is a proof or witness of the fact that two objects are connected. Sometimes there is no proof if objects are disconnected. Sometimes there are many proofs since there may be many connections between two objects. And sometimes there is a single proof - a *unique arrow* between two objects. The quality of uniqueness implies that if you can find two of these, they must be the same.

In category theory, an object that has a *unique outgoing arrow to every object* in that category is the **initial object**, denoted by `0`.

Note: we didn't say "to every *other* object" because it may also have a unique arrow back to itself.

The categorical dual of the initial object is the object that has a *unique incoming arrow from every object* in that category, the **terminal object**, denoted by `1`.

Note: the determiner "the" is justified by isomorphic uniqueness. We say that two (initial, terminal) objects are unique *up to an isomorphism*. This means even if two such objects exists, they are indiscernable from the aspect of the totality of their relations. Thus, they are treated the same, as the one object; hence the "the".

Diagram of the `Set` category:

```
({a} in Set, () in Hask)
      Terminal
         🔆↩
      ↑↑↑↑↑↑↑↑


{cloud of set-objects}


      ↑↑↑↑↑↑↑↑
         🔱↩
       Inital
(∅ in Set, Void in Hask)
```

The **initial object** is the source of everything, symbolizing the chaos from which everything arises.

- In `Set`, the *empty set* `∅` is the initial object.
- In `Hask`, the *empty type* `Void` is the initial object.
- In logic, bottom, `⊥`, is the initial object.

Since there's an arrow from `Void` to every type, there is also an arrow from `Void` to `Void`. Thus, `Void` begets `Void` and everything else.


The **terminal object** unites everything, symbolizing the ultimate order.

- In `Set`, a *singleton set* `{a}` is the terminal object.
- In `Hask`, the *unit type* `()` is the terminal object.
- In logic, top, `⊤`, is the terminal object.

In logic, the terminal object, symbolized by `⊤`, signifies (the ultimate) truth. The fact that there is an arrow to `⊤` from any object means that `⊤` is true regardless of assumptions. Dually, the initial object, called falsum or bottom and symbolized by `⊥`, signifies falsehood (or contradiction or counterfactual). The fact that there is an arrow from `⊥` to any object means that you can prove anything from `⊥`, i.e. from false premises; as the Roman logicians would say, "ex nihilo quidlibet".

There are infinitely many types in Haskell, and there is a unique function from `Void` to each type. All these functions, `Void -> a`, are known under the same name, `absurd`, because they cannot ever be invoked. Even their existence is an absurd thanks to the convention that `x⁰ = 1`, and especially, `0⁰ = 1`, which implies there is one function from `Void` to `Void`.

CT                | Set      | Rel        | Logic       | TT       | Haskell
------------------|----------|------------|-------------|----------|----------
object            | set      | relation   | proposition | type     | type
morphism (arrow)  | function | alegory    | implication | function | function
initial object  1 | ∅        | (∅, ∅)     | False ⊥     | top 1    | Void
terminal object 0 | {a}      | ({a}, {a}) | True  ⊤     | bottom 0 | ()


## 1.3 Elements

An object has no parts but it may have structure. The structure is defined by the *arrows pointing at the object*.

We can probe an object with arrows.

### Initial object

In programming and logic, we want our **initial object** to have no structure. So we assume that it has no incoming arrows (other than the identity). Therefore, `Void` has no structure.

### Terminal object

The **terminal object** has the simplest structure. There is only one incoming arrow from any object to it: there is only one way of probing it from any direction. In this respect, the terminal object behaves like an indivisible point. Its only property is that it exists, and the arrow from any other object to it proves it.

### Terminal object is a selector

>Because the *terminal object* is so simple, we can use it to probe other, more complex objects, `1 -> a`.

If there is more than one arrow from the terminal object to some object `a`, it means that `a` has some structure: there is more than one way of looking at it.

```hs
true  :: () -> Bool
true () = True

false :: () -> Bool
false () = False
```

There are 2 arrows from the terminal object, `()`, to `Bool`, one arrow for each element of `Bool`.

>However many elements (terms) an object (type) has, that many arrows will go from the terminal object to it.

`|a| = n` then there are `n` arrows `() -> a`. One function (arrow) for each term (element) in the object (type) `a`.

Since the terminal object behaves like a point, we can visualize each arrow from it as picking a different element in the target object.

### Selecting elements

However, in category theory we refrain from talking about objects and pay more attention to arrows that relate them.

>So, how can we refer to an object without referring to the object?

The concept of objects does exist in CT, but they are merely used as anchors so the arrows have a place to hang off of. In any category, all objects collapse to blobs, and so they are represented by dots.

But let's take the category of sets, `Set`, as a guiding example, and let's prevent the collapse of sets into the abstract set or blobs, so we can see their structure. In the `Set` category, the terminal object is a singleton set, denoted as `1`. The terminal object is related to any object (so to any set) in the category of sets by there always being at least one arrow between `1` and any set.

The terminal object is actually so defined as the *only* object that has a unique incoming arrow from any object, *including itself* ("only" is up to an isomorphism). Since there's only one arrow from any object to the terminal object, it means that the identity arrow on `1` is that unique arrow incoming to the terminal object from the terminal object. This makes a weird signature for that arrow, `1 : 1 -> 1`. Usually though, we denote the identity arrow of an object `a` by `1ᵃ` (or sometimes by `Idᵃ`). However, since the terminal object is special, we use `1` for everything, the object itself, its identity arrow (otherwise it'd be `1¹`), and its *global element* arrow.

However, it is not this direction of arrows (into `1`) that we're interested in at the moment - we should focus on the arrows going out from `1`.

Since we prevented collapsing of sets, we see that the `1` and some set `a` are related in a particular way: if the set `a` has cardinality `n`, then there is `n` functions (yes, functions, this time) going from `1` to `a`.

Each of these `n` functions picks a unique element in `a`, so we can identify each element of `a` by the corresponding function; e.g. an elem `x` is identified by the function `x : 1 -> a`, an elem `y` is identified by the function `y : 1 -> a`, etc.

```hs
true  :: () -> Bool
true () = True

false :: () -> Bool
false () = False
```

There's no reason to name these functions differently fro mthe elements they select. Each function identifies the element named by it. Each element is identifid by a function named after it, so these functions and elements are essentially the same.

When we return to the categorical view of `Set` and let sets collapse, each of these function will become a morphism; there will still be `x : 1 -> a` (this time as a morphism), and the morphism `y : 1 -> a`, and as many of these morphisms as there are elements in what is the now collapsed set `a`.

>Each one of them is called a *global element* as it identifies an element.

Therefore, we can refer to an arrow (to any of these arrows indeed) that represents a global element, instead of referring directly to the element.

>In CT, we say that `x` is a **global element** of the object `a` if it is an (selector) arrow `x : 1 -> a`.

Even though in programming we say that `x` is a term of type `a`, `x :: a`, in category theory we instead identify an object with its global element, that is, we equate the object `x` with the arrow `x :: 1 -> a`.

Haskell's type system makes a difference between `x :: a` and `x :: () -> a`, but in *categorical semantics*, they denote the same thing.


In logic, such `x` is called a proof of `A`, since it corresponds to the implication `⊤ -> A` (if *True* is true then `A` is true). Notice that there may be many different proofs of `A`.

Since we have mandated there be no arrows from any other object to `Void`, there is no arrow from the terminal object to it. Therefore `Void` has no elements. This is why we think of `Void` as the empty object (set, type).

The terminal object has just one element, since there is a unique arrow coming from it to itself, `id : 1 -> 1` or `id :: () -> ()`. This is why we sometimes call it a singleton.

Note: In category theory there is no prohibition against the initial object having incoming arrows from other objects.
>However, in Cartesian Closed Categories (CCC), which we study here, incoming arrows into the initial object (from other objects) are not allowed (only the id arrow from it to itself).


## 1.4 The object of arrows

>Arrows between any two objects form a *set*
>(at least in a locally small category).


In programming we talk about the type of functions from `a` to `b`. In Haskell we write `f :: a -> b`, meaning that `f` is of the type "function from `a` to `b`". Here, `a -> b` is just the name we are giving to this type.

If we want function types treated the same as other types, we need an object that could represent a set of arrows from `a` to `b`.

To fully define such an object, we would have to describe its relation to other objects, in particular to both object `a` and object `b`.

More on that later, for now, keep in mind the following distinction:

* On the one hand, we have arrows which connect two objects `a` and `b`; the totality of these arrows form a set.
* On the other hand, we have an *object of arrows* from `a` to `b`. An "element" of this object is defined as an arrow from the terminal object `1` to the object we call `a -> b`, i.e. `f ∈ 1 -> bᵃ`.

The notation we use in programming tends to blur this distinction. This is why in category theory, this object of arrows is called an **exponential object** and written `bᵃ`.

The statement `f : a -> b` is equivalent to the `f : 1 -> bᵃ`.

In logic, an arrow `A -> B` is an implication: it states the fact that "if A then B". An exponential object `Bᴬ` is the corresponding proposition. It could be true or false, we don't know before we prove it. That proof is an element of `Bᴬ`. Show me an element of `Bᴬ` and I'll know that `B` follows from `A`.

Consider again the statement, "If wishes were horses, beggars would ride", this time as an object. It's not an empty object, because you can point at a proof of it; something along the lines: "A person who has a horse rides it. Beggars have wishes. Since wishes are horses, beggars have horses. Therefore beggars ride". But, even though you can have a proof of this statement, it's of no use to you, because you can never prove the premise (i.e. that wishes are horses).
