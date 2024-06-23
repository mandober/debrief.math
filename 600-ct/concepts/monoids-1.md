# Monoid

https://en.wikipedia.org/wiki/Monad_(category_theory)
https://en.wikipedia.org/wiki/Monoid_(category_theory)
https://en.wikipedia.org/wiki/Monoidal_category

https://www.youtube.com/watch?v=PH-OhkrXXvA

https://blog.juliosong.com/linguistics/mathematics/category-theory-notes-4/

A category having a single object is a monoid. Note that the number of arrows is not a requirement for a placement among monoidal categories. On one extreme of the spectrum is a trivial category made of the lonely object and its identity arrow. It really is a category because it has the identity arrow and the composition of morphisms is the operation of composing the identity arrow with itself, which is an associative operation.


To check that a category with one object is a monoid, note that if a category `C` has one object `x`, the `hom(x,x)` of all morphisms from `x` to `x` is indeed a set with an associative binary operation, namely composition, and a unit element, namely `1x`.



===============================================================================

Any category with a single object is a monoid.

If we consider the set of integers with addition operation and zero as the identity, `(ℤ, +, 0)`, then we have a monoid.

Also (ℤ, )



So we'll have one object and we'll just have a bunch of arrows starting and ending at that object. And think of these arrows not at functions but as each element of the monoid set. So in the case of integers, think of x and y as 1 or as 2 or as 3 etc, as actual integers. And categories require that given any two arrows where the domain and codomain match, we should be able to form their composition.

So the composition between two arrows here is going to be this monoid composition that we talked about before. And then similarly, the category is going to require for every object, in this case a single object, to have an identity arrow, such that it is going to be a left and right identity with respect to arrow composition. That's just going to be the monoid identity that we talked about earlier. So in categorical language, this identity composed with x should be the same as x, and the way we have defined composition here is going to be the monoid composition and hopefully we can see that the category laws map onto the Monoid laws appropriately. Here I started with an existing monoid, and then sort of shown how that translates to categories, but we can also take a category of one object and map that back to a Monoid because the requirements for being a category are going to be the same as the requirements for being a monoid. @adelbertchang Simplicity in Composition Adelbert Chang explains how monoids map onto category theory Category Theory Monoid 1 2 3 4 5 6 monoid composition arrow composition identity arrow monoid identity



===============================================================================

A category with one object is a monoid.

In abstract algebra, a monoid is defined as a set `M` with an associative binary operation, `⊕` , and a unit element, `1`, such that `a ⊕ 1 = 1 ⊕ a = a` for all `a ∈ M`.

To check that a category with one object is a monoid, note that if a category `C` has one object `x`, the `hom(x,x)` of all morphisms from `x` to `x` is indeed a set with an associative binary operation, namely composition, and a unit element, namely `1x`.

Conversely, if you hand me a monoid `M` in the traditional sense, I can easily cook up a category with one object `x` and `hom(x,x) = M`.

How about categories in which every morphism is invertible? We say a morphism f: x → y in a category has inverse g: y → x if fg = 1x and gf = 1y. Well, a category in which every morphism is invertible is called a "groupoid".

Finally, a group is a category with one object in which every morphism is invertible. It's both a monoid and a groupoid!


When we use groups in physics to describe symmetry, we think of each element g of the group G as a "process". The element 1 corresponds to the "process of doing nothing at all". We can compose processes g and h - do h and then g - and get the product gh. Crucially, every process g can be "undone" using its inverse g-1.

We tend to think of this ability to "undo" any process as a key aspect of symmetry. I.e., if we rotate a beer bottle, we can rotate it back so it was just as it was before. We don't tend to think of SMASHING the beer bottle as a symmetry, because it can't be undone. But while processes that can be undone are especially interesting, it's also nice to consider other ones... so for a full understanding of symmetry we should really study monoids as well as groups.

But we also should be interested in "partially defined" processes, processes that can be done only if the initial conditions are right. This is where categories come in! Suppose that we have a bunch of boxes, and a bunch of processes we can do to a bottle in one box to turn it into a bottle in another box: for example, "take the bottle out of box x, rotate it 90 degrees clockwise, and put it in box y". We can then think of the boxes as objects and the processes as morphisms: a process that turns a bottle in box x to a bottle in box y is a morphism f: x → y. We can only do a morphism f: x → y to a bottle in box x, not to a bottle in any other box, so f is a "partially defined" process. This implies we can only compose f: x → y and g: u → v to get fg: x → v if y = u.

So: a monoid is like a group, but the "symmetries" no longer need be invertible; a category is like a monoid, but the "symmetries" no longer need to be composable!

One can only pretend a groupoid is a group if all its objects are isomorphic. Groupoids really are more general.

So: in contrast to a set, which consists of a static collection of "things", a category consists not only of objects or "things" but also morphisms which can viewed as "processes" transforming one thing into another. Similarly, in a 2-category, the 2-morphisms can be regarded as "processes between processes", and so on. The eventual goal of basing mathematics upon ω-categories is thus to allow us the freedom to think of any process as the sort of thing higher-level processes can go between.

Cat is the 2-category whose objects are categories, whose morphisms are functors, and whose 2-morphisms are natural transformations.

So recall what the objects, morphisms and 2-morphisms in Cat are: they are categories, functors and natural transformations. A functor F: C → D assigns to each object x of C an object F(x) of D, and to each morphism f of C a morphism F(f) of D, and has

If f: x → y, then F(f): F(x) → F(y).
If fg = h, then F(f)F(g) = F(h).
If 1x is the identity morphism of x, then F(1x) is the identity morphism of F(x).
Given two functors F: C → D and G: C → D, a "natural transformation" T: F → G assigns to each object x of C a morphism Tx: F(x) → G(x), such that for any morphism f: x → y in C, the diagram commutes:

                               F(f)
                         F(x) -----> F(y)
                          |           |
                        Tx|           |Ty
                          v           v
                         G(x) -----> G(y)
                               G(f)

Let me give a nice example. Let `Top` be the category with topological spaces and continuous functions between them as morphisms. Let `Gpd` be the category with groupoids as objects and functors between them as morphisms (a groupoid is a category with all morphisms invertible). Then there is a functor `Π1: Top → Gpd` called the "fundamental groupoid" functor, which plays a very basic role in algebraic topology.
