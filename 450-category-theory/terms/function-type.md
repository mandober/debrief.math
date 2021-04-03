# Function type

https://bartoszmilewski.com/2015/03/13/function-types/

A function type is different from other types: Int, for instance, is just a set of integers, Bool is a two element set, but a function type `a -> b` is more than that: it is a set of morphisms between objects `a` and `b`. A set of morphisms between two objects in any category is called a *hom-set*. It just so happens that in the category `𝗦𝗲𝘁` every hom-set is itself an object in the same category because it is, after all, a set. The same is not true of other categories where hom-sets are external to a category. They are even called *external hom-sets*. It is the self-referential nature of the category `𝗦𝗲𝘁` that makes function types special. But there is a way, at least in some categories, to construct objects that represent hom-sets. Such objects are called *internal hom-sets*.

## Universal Construction

Let's forget for a moment that function types are sets and try to construct a function type, or more generally, an internal hom-set, from scratch. As usual, we'll take our cues from the Set category, but carefully avoid using any properties of sets, so that the construction will automatically work for other categories.

A function type may be considered a composite type because of its relation to the argument type and the result type. We've already seen the constructions of composite types - those that involved relations between objects. We used universal constructions to define a product type and a coproduct types. We can use the same approach to define a function type: we need a pattern that involves 3 objects:
1. the function type that we're constructing, `a -> b`
2. the argument type, `a`
3. the result type, `b`

The obvious pattern that connects these three types is called *function application*. Given a candidate for a function type, let's call it `z` (notice that, if we are not in the category Set, this is just an object like any other object), and the argument type `a` (an object), the application maps this pair to the result type `b` (an object). Similar to modus ponens: `a -> b, a |- b`.

app :: ⟨a -> b, a⟩ ⟼ b

So, we have 3 objects, and two of them are fixed (those representing the argument type and the result type).

We also have the application, which is a mapping. How do we incorporate this mapping into our pattern? If we were allowed to look inside objects, we could pair a function `f ∈ z` with an argument `x ∈ a` and map it to `f x ∈ b`.

In the `𝗦𝗲𝘁` category, we can pick a function `f` from a set of functions `z`, and we can pick an argument `x` from the set/type `a`, and we get an element `f x` in the set/type `b`.

But instead of dealing with individual pairs (f, x), we can talk about the whole product of the function type z and the argument type a. The product `z×a` is an object, and we can pick, as our application morphism, an arrow `g` from that object to `b`. In Set, `g` would be the function that maps every pair `(f, x)` to `f x`.

That is our pattern: a product of two objects `z` and `a`, linked to another object `b` by a morphism `g`.

z × a ----g---> b
