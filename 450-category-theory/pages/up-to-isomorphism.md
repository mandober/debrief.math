# Up to an isomorphism

## Uniqueness up to isomorphism

What does "unique up to isomorphism" really mean? (2019)
http://statusfailed.com/blog/2019/04/25/what-does-unique-up-to-isomorphism-really-mean.html

The meaning of the sentence "terminal objects are unique up to an isomorphism": a category might contain multiple terminal objects, but if it does, then there must exist an isomorphism between those objects.

_The_ terminal object in the category of sets is _a_ singleton set. Notice the different articles, "the" vs "a", even though we're talking about the same object(s). Normally, we talk about _a_ singleton set (sure, since there are numerous singleton sets). However, when discusing category of sets, we talk about _the_ terminal object (as if there were only one such object).

The justification lies in the fact that all singleton sets are isomorphic to each other, we can easily convert between them with a pair functions, `from` and `to`. And since they are all isomorphic, we might as well collapse them all in a single object, as if they were its instances, allowing us to refer to that collection of singleton sets as _the_ terminal object.

All singleton sets are isomorphic to each other, and the existence of an isomorphism between any two such objects, literally and formally, means they have the same shape, in the sense that they have the same relations to other objects.

Categorically, relations are represented by morphisms (arrows). 

In particular, the existence of an isomorphism between two objects A and B implies that there is a bijection between their morphisms. That is, 

If objects `A` and `B` are isomorphic, then, if object `A` has an outgoing morphism to object `C`, such as `f : A → C`, then `B` must also have an outgoing morphism to `C`, that is, `g : B → C`. The object `B` is bound to maintain the same relations as object `A`, since `A` and `B` are a couple of isomorphic objects. These two maintain the same relations to other objects in the category, and that is the sense in which they behave the same way, i.e. the sense in which they have the "same shape".

When we say that two objects are *unique up to an isomorphism*, we crucially mean that with respect to some property. For example, wrt the property of initiality or the property of terminality ("being a terminal object").

When we say of many objects that they are unique up to an isomorphism, this means that all the objects satisfying some definition are isomorphic.
