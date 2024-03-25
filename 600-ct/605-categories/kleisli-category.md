# Kleisli category

A *Kleisli category* is a category based on a monad.
- objects: Haskell types
- arrows: embellish functions

Morphisms from type `a` to type `b` are functions that go from `a` to a type derived from `b` using the particular embellishment, `a -> m b`. (The term "embellishment" corresponds to the notion of an endofunctor in a category as we'll see later).

A Kleisli category is based on a monad, and that monad may be the Writer monad, the Reader monad, the State monad, etc. Each Kleisli category defines its own way of composing morphisms, and its own way of defining identity arrows, which then must also behave as units of composition. The writer monad is used for logging or tracing the execution, and it is also an example of a more general mechanism for embedding effects in pure computations.

We can model types and functions in the category of sets (disregarding bottoms, as usual). Here we have extended this model to a slightly different category, a category where morphisms are represented by embellished functions, and their composition does more than just pass the output of one function to the input of another. We have one more degree of freedom to play with - the composition itself. It turns out that this is exactly the degree of freedom which makes it possible to give simple denotational semantics to programs that in imperative languages are traditionally implemented using side effects.

The construction of a Kliesli category is based on another category, so you have to keep track of two categories (which are not observed as being connected by functors), similarly to considering a category and its opposite category.

So, one the hand (on the left), we have a category `C`, and on the other a Kleisli category `K`. The objects in `K` are the same objects of `C`, but the arrows are not the same. If there's an arrow `f : a -> b` in C, there will be 1) objects `a` and `b` in `K` and 2) an arrow `f : a -> m b` in `K`. The `m` will turn out to be a mapping by a functor. An embellished arrow `a -> m b` in C category is a direct arrow `a -> b` in K category. It's sorta like we're implementing a new category K in terms of category C. We're implementing an arrow in category K as an arrow in category C.





## Refs

* Kleisli categories
https://bartoszmilewski.com/2014/12/23/kleisli-categories/

* Kleisli categories - talk by Bartosz
https://www.youtube.com/watch?v=zer1aFgj4aU&list=PLMTONe7-tohmE02KadSPXvgpu26sn5j_n&index=7
