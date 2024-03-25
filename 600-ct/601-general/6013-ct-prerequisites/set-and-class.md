# Sets and classes

## TL/DR

- Category theory has a lot of collections. If small enough, such collections are sets; otherwise, if a collection is "too large" in some sense it is a (proper) class. This distinction exists to avoid the Russell's paradox. The turnover point and the exact mechanics are usually elided [like go check it in the context of set theory - but, surprise, there's not much there either. It's somewhat of a trend in many an author's writings to elide some cases even if these concerns arise naturaly; they might be relying on the consumer's fear lest they pose a trivial/stupid question. Don't fear the ripper].

- The notion of set is undefined - it is a mathematical primitive. Intuitively, a *set* is an unordered collection of unique elements.
- A set may be specified explicitly by listing all its elements, or via the set comprehension that specifies a property that all elements must satisfy. However, unrestricted set comprehension yields contradiction and thus makes such a set theory inconsistent (e.g. Russell's paradox).
- A *class* is a collection of objects whose members are exclusively sets specified by a certain property. Classes act as a way to have set-like collections while differing from sets so as to avoid Russell's paradox.
- A class may be like a set, i.e. a set-like collection that may contain sets and classes, but cannot be contained in a set. A *proper class* can only contain sets.
- A class that is a set is a *small class*, but a class that is not a set is a *proper class*. A proper class is a collection of objects that are not also members of another collection.
- A set is a collection of mathematical objects, but sets themselves are also mathematical objects, thus a set may contain other sets. An element that itself is not some sort of a collection is called an *urelement*.



## Sets

A set is an undefined mathematical primitive. Intuitively, a set is an unordered collection of unique objects called its elements or members.

The state of an object belonging to a set is called its *elementhood* or *membership*. The fact that an object `x` is in set `A` is denoted by `x ∈ A`. The fact that an object `y` is not in a set `A` is denoted by `y ∉ A`.

A set is specified explicitly by listing its elements, or via the set-builder notation that specifies a property that all elements must satisfy. For example, `A = { n | n ∈ ℤ ⋀ n ≡ 0 (mod 2) }` specifies a set `A` that contains all even integers; the property `P` here is `P = n ∈ ℤ ∧ n ≡ 0 (mod 2)`. In general, a property that elements of a set `A` satisfy is `A = { n | P(n) }`. In naive set theory, any property defines a set, which makes such set theory inconsistent because it becomes possible to specify sets that yield contradictions.

For example, consider the property `P(x) = x ∉ x` and the set defined by it, the so-called Russell's set, `R = { x | x ∉ x }`. This property implies that all the elements of `R` are sets themselves, and it dictates that an element (which is a set) must not be a member of itself in order to belong to `R`. Most sets satisfy this property - they are not members of themselves - so they are included in `R`. The problem is the set `R` itself: it doesn't contain itself, so it should also be included in `R`; but, if it is a member of `R` then it is a member of itself - so it shouldn't be included. Therein lies the contradition.

This is called the *Russell's paradox* and it arises due to self-referential properties. It is made possible by allowing *unrestricted set comprehension*, i.e. by permitting any property to define a set.

One solution to it is to restrict the allowed properties, or to restrict some set operations that give rise to the Russell's paradox. Russell himselves has proposed type theory as a possible solution - he constructed a hierarchy of sets, starting with the base level set of objects, and then demanding that a lower-level set can only be contained by a higher-level collection called a class.

The precise definition of "class" depends on the foundational context of a set theory, e.g. ZFC only has the informal notion, whereas NBG axiomatizes it. ZFC is a consistent set theory that approaches the Russell's paradox by having a well-defined universal set, and then restricts set comprehension and allowed set constructions to only the subsets of the universal set. Thus, in ZFC, the universal set is a class.

A class is also a collection of objects, but unlike a set that can contain all kinds of objects, *a class can only contain sets*. A class is a restricted set - it is like a set but it lacks certain set operations. Also like a set, a class may be specified by a property that all its elements must satisfy. A class is used as a container for a very large number of objects.

A **class** is a collection whose members are sets unambiguously defined by a certain property. Classes act as a way to have set-like collections while differing from sets so as to avoid Russell's paradox.

A class that is a set is called a **small class**, while a class that is not a set is called a **proper class**. For example, the class of ordinal numbers and the class of all sets (universe of sets) are proper classes. A *proper class* is a collection of objects that are not also members of another collection.

## Collections

- A *mathematical object* is any kind of entity recognized in mathematics.
- A group of objects gather together is called a *collection* when we want to use a generic term with the least amount of semantic bagagge.
- An *element* or *member* is an object belonging to a collection. A collection contains the elements, and each element has membership in the collection.
- There are several collections that differ in their relation to the notions of order and object uniqueness: list, bag, set. A *list* is an ordered collection of possibly duplicated objects. A *bag* is an unordered collection of possibly duplicated objects. A *set* is an unordered collection of unique objects.
- A *set* is an unstructured collection of objects without the notion of order, but with a complicated notion of object uniqueness. A set is a container that may contain any number (none, one, or more) of mathematical objects. A set is a collection of mathematical objects, but sets themselves are also mathematical objects, thus a set may contain other sets.
- An element that is not itself a collection is called an *urelement*.
- A *class* is a collection of sets. A class may be specified by a property. Classes act as a way to have set-like collections while differing from sets so as to avoid Russell's paradox.
- A class that is a set is called a *small class*. It contains sets and classes.
- A class that is not a set is called a *proper class*. It contains sets only.


## Small and large categories

Category theory uses sets as collections of objects. It uses sets when appropriate, switching to classes for the large collections of objects that are in some sense "too big" to be sets. And when a class also gets "too big" a collection, then a conglomerate is used. A *conglomerate* has further restrictions, all in order to maintain a consistenty hierarchy of collections.

In category theory, a collection of objects in a category `𝒞` is denoted by 
`Ob(𝒞)`, and the collection of arrows is, in general, denoted by `Ar(𝒞)`.

A collection of arrows from an object `A` to an object `B` in category `𝒞` is denoted by `Ar(A,B)` or by `A -> B`. In fact, such collections are called home sets (even if the collection in question is not a set but a class - i.e. they don't change their name to hom-class).

A **homset** is a collection of all arrows going from an object `A` to an object `B` in a category `𝒞`, denoted by `hom(A,B)`, or, more explicitly with `homᶜ(A,B)`.

A category is called **locally small category** if the collection of arrows between every pair of objects forms a set (i.e. if every homset in a category is a set).

A **large category** is a category in which the collection of arrows between every pair of objects forms a proper class (i.e. if every homset in a category is a class).

In category theory, some collections form sets and some form classes (or even conglomerates), but "set" is then just a name for a particular collection, as opposed to the category named `𝗦𝗲𝘁` whose objects are sets (abstract set collections) and whose arrows are functions on sets. The intigue with the category 𝗦𝗲𝘁 is that, e.g. a homset - a collection of arrows between any two particular objects in the category - is also an element in this category.
