---
downloaded:       2022-05-30
page-url:         https://homotopytypetheory.org/2011/04/18/whats-special-about-identity-types/
article-title:    What's Special About Identity Types
---
# What's Special About Identity Types | Homotopy Type Theory
From a homotopy theorist's point of view, identity types and their connection to homotopy theory are perfectly natural: they are "path objects" in the category of types. However, from a type theorist's point of view, they are somewhat more mysterious. In particular, identity types are just one particular *inductive family*; so what's special about them that they give us homotopy theory and other inductive families don't? And specifically, how can it be that we "get out" of identity types more than we inductively "put into them"; i.e. why can there be elements of `Id(x,x)` other than `refl`, whereas for some other inductive types like `Fin`, we can prove that there's nothing in them other than what we put in?

Dan Licata's [recent post][1] partly answered the second of these questions. He pointed out that instead of an inductive family indexed by , we can regard  as indexed by one copy of *A* and parametrized by the other. Then, for any fixed *M*:*A*, it is provable that any element of  must be of the form `refl M`.

However, he also mentioned that identity types are still different from some other inductive families in what we can prove about inhabitants of a *specific* instance. For instance, we can prove (using a large elimination) that there are no elements in `Fin 0` and that there is exactly one element in `Fin 1`, which are specific instances of the inductive family `Fin` of finite sets. However, we cannot prove that there is exactly one element of `Id M M`, which is a specific instance of the family of identity types. When I [asked why][2], the [answer][3] I got was that it has to do with *what you know about the index type*.

This is a good answer, but I don't think it's quite the whole story. For instance, there are inductive families with an arbitrary index type, but for which we can prove things about inhabitants of specific instances. An obvious example is the inductive family with no constructors. On the other hand, another obvious question is *what* we need to know about the index type in order to prove things about inhabitants of specific instances? Finally, what is special about identity types that they relate to homotopy theory, and can we say something similar about any other inductive families?

The answer I'm about to give is probably obvious to some people, but it wasn't obvious to me at first, so I thought I would share it. (I wrote this post over the weekend with no Internet access. When I got back, I discovered that Peter Lumsdaine had already mentioned part of what I'm about to say over at the [n-Cafe][4].)

Recall that in categorical semantics for type theory in a locally cartesian closed category, an ordinary W-type is a (weakly) initial algebra for a *polynomial functor*. This is a functor of the form , where  is arbitrary map, representing a dependent type (sometimes called a "container" in this context).

For instance, the natural numbers are the initial algebra for the polynomial functor defined by . This says that they have two constructors (`zero` and `succ`), one of which has arity 0 (the point of 2 not in the image of 1) and the other of which has one recursive input (the other point of 2, over which the fiber of *p* is 1).

More generally, an inductive *family* is a (weakly) initial algebra for a *dependent polynomial functor* on a slice category , which is a functor of the form  for a given diagram

(I feel the need to point out, since it confused me once, that this diagram does not in general live entirely in  - which is to say that we do not have *s p* = *r*. However, the whole diagram may be taking place in some other slice category over an ambient context  of "parameters," as opposed to the "indices" *X*.)

For instance, the family `Fin` of finite sets, indexed over the natural numbers, is the initial algebra for the dependent polynomial functor determined by

This says that `Fin 0` has one constructor of arity zero, while `Fin (succ n)` has two constructors, one of arity zero and one which takes an input of type `Fin n`. Similarly, the identity type of *X* can be defined by the data

This says that there is one nullary constructor of type `Id x x`, for any `x:X`.

Now in intensional type theory, nothing mandates that every morphism in the category represents a dependent type; we can specify a suitable subclass of *display maps* which do. The display maps must be closed under pullback along arbitrary maps (for reindexing), composition (for dependent sums), and exponentials (for dependent products). The latter means that if *p* is a display map, then we have a functor  which acts on display maps. This means that in order for a dependent polynomial functor, defined as above, to take display maps to display maps, we must have *p* and *s* being display maps. This restriction would give us one notion of "inductive family" in a category with display maps.

However, if all we want to do is define inductive families, we don't actually need to require *s* to be a display map. We do need to require *p* to be a display map in order for the functor  to exist; but even if *s* is not a display map, the functor  still exists (it is just composition with *s*), though it may not take display maps to display maps. Thus, if only *p* is a display map, we have a "dependent polynomial functor"

taking the category of display maps over *X* into the full slice category over *X*. We can then still define what an *algebra* for this functor is (a display map  with a map  over *X*) and thereby a (weakly) initial algebra, and call such a thing an inductive family.

I claim that what gives rise to "extra stuff" in inductive families that we didn't "put into them" is precisely this fact that *s* may not be a display map. On the one hand, if *s* is a display map, then it's quite easy to prove that everything in the inductive family comes from some constructor. This is done at the beginning of [this file][5]. Note that there is no large elim here; the large elim comes in when constructing the dependent type corresponding to *s* in examples such as `Fin`.

On the other hand, of course the diagonal  is not generally a display map. Saying that it is is more or less tantamount to saying that the type *X* has computationally decidable equality, and this is known to imply that it is a set; i.e. that there's nothing other than `refl` in its identity type.

But what about other cases when *s* is not a display map? Consider the general case when the object *B* is empty, so that the dependent polynomial functor is constant at *s*. (In particular, the functor for identity types is of this form.) If *s* is a display map, then an initial algebra for such a functor must be *s* itself, so that what we get out is exactly what we put in. But if *s* is not a display map, then a weakly initial algebra for this functor will instead be some display map  equipped with a map  over *X*, having the property that any other map  over *X*, with *q* a display map, factors through . The "extra stuff" that might turn up in the inductive family is precisely the failure of  to be an isomorphism, since *A* is what we "put in" and  is what we "get out."

Here's what that inductive family looks like in Coq:

```
Inductive hfiber {A X} (f : A -> X) : (X -> Type) :=
  inj : forall (x : A), hfiber f (f x).

```

I've called it `hfiber` because in homotopy theory, this type represents the homotopy fiber of the map *f*. Now since display maps are closed under pullback, the property of  cited above implies that  has the left lifting property with respect to all display maps. Therefore, if we have all inductive families, then there is a weak factorization system whose right class is generated by the display maps; the factorizations are given by . Conversely, such a weak factorization system amounts more or less to having inductive families of the `hfiber` sort.

From this point of view, of course, the identity type of *X* is just the homotopy fiber of the diagonal  (where we can either regard both copies of *X* as indices, or one as a parameter and one as an index, as Dan described). In terms of homotopy theory, these are the path objects relative to the weak factorization system. On the other hand, Nicola Gambino and Richard Garner proved that from *only* the identity types, one can construct the whole weak factorization system. (Their argument is precisely analogous to the "mapping path space" in homotopy theory, which constructs factorizations out of path objects.)

Furthermore, if we combine `hfiber` with inductive families for dependent polynomials where *s* is a display map, then we can construct the more general sort of inductive families where *s* isn't a display map, by first constructing the homotopy fiber of *s* (and using a large elimination). Such a construction is also implemented [here][6] (same file as before). Thus, general inductive families can be reduced to a combination of inductive families where *s* is a display map - which behave in more of the way a type theorist might naively expect (there is nothing in them that we didn't put in) - plus a weak factorization system (or, equivalently, identity types), which both (1) introduces homotopy theory and (2) allows the definition of more general inductive families.

As a homotopy theorist, I find this a satisfying answer as to why identity types seem to be special among inductive families. But I'm interested to hear the response of the type theorists.

[1]: https://homotopytypetheory.org/2011/04/10/just-kidding-understanding-identity-elimination-in-homotopy-type-theory/
[2]: https://homotopytypetheory.org/2011/04/10/just-kidding-understanding-identity-elimination-in-homotopy-type-theory/#comment-99
[3]: https://homotopytypetheory.org/2011/04/10/just-kidding-understanding-identity-elimination-in-homotopy-type-theory/#comment-105
[4]: http://golem.ph.utexas.edu/category/2011/04/homotopy_type_theory_v.html#c037497
[5]: http://www.math.ucsd.edu/~mshulman/hott/Factorization.v
[6]: http://www.math.ucsd.edu/~mshulman/hott/Factorization.v
