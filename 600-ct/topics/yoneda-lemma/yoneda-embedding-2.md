# Yoneda embedding

## The Yoneda Embedding Expresses Whether, What, HOW, Why

`The Yoneda Embedding Expresses Whether, What, HOW, Why` - by Math 4 Wisdom
https://www.youtube.com/watch?v=c7nmC1pbVXw
https://www.math4wisdom.com/wiki/Research/YonedaEmbeddingFoursome


The *Yoneda Lemma* is the fundamental theorem of category theory. The *Yoneda Embedding* is the backbone of the Yoneda Lemma. I will sHOW HOW the Yoneda Embedding relates 4 levels of knowledge: Whether, What, HOW, Why in terms of an arrow f : A -> B.

## WHAT is an arrow `f : A -> B`?

It is an *element in the set of arrows* that go from A to B. We denote such set by `Hom(A,B)` and we call it a **homset**.

Hom is short for homomorphism since we are typically thinking of A and B as being mathematical objects of the same kind, in the same category, such as groups or spaces or graphs, and then the arrows are structure preserving maps, known as morphisms or *homomorphisms*.

`Hom(A,_)` is a functor, whose input is an object such as B and whose output is the set of arrows from A to B. We can think of the functor `Hom(A,_)` as the action of laying down the arrows from a fixed A to the input B.

In the words of Steve Adowey, "A functor is a picture of one category in another category". Here, the functor is taking us from the world of A and B to the world of sets (in category `Set`), thus picturing what their relationship looks like in the world of sets. What is an arrow f : A -> B? It is part of this picture, it is an element in the set of arrows which is output.

## HOW is an arrow `f : A -> B`?

It is the *action which prepends this arrow* as a puzzle piece that was missing. Consider the arrows from B to X. If we prepend the arrow f, then by composition we will get arrows from A to X.

We are filling in the arrow that was not, that was lacking, that was missing. In doing so, we are extending the arrows from B to X so that they become arrows from A to X.

Indeed, our action is extending the functor `Hom(B,_)` which lays down arrows from B to some X, and that extension yields arrows from A to that X, which is what the functor `Hom(A,_)` does.

This turns out to be a *natural transformation*, which is to say, a map, a morphism, an arrow from one functor to another functor.

The natural transformation works by filling in the missing arrow with a particular arrow such as f.

>The Yoneda lemma says, in this case, that for each arrow f from A to B there is a corresponding natural transformation,
and here those are all of the natural transformations, there are no other possible, there are no mysteriously clever natural transformations that could satisfy functoriality, which is to say, act suitably, harmoniously, systematically, within the system of arrows that f belongs to.

A natural transformation is a functor between functors, an arrow between arrows. In the words of Steve Awodey, "A good way to think of a functor is as a kind of construction".

When we think "HOW there is an arrow f from A to B", we think of this arrow as this natural transformation, this action which fills in the gap from A to B with a particular arrow f from A to B and thereby extends the elements of the output of the functor `Hom(B,_)` to yield elements in the output of `Hom(A,_)`.

We write these natural transformations 

>Hom(Hom(B,-), Hom(A, -))

and note that the order of A and B has become reversed because we are prepending the arrow f to an old arrow from B to X to yield a new arrow from A to X.

So, HOW is an arrow f from A to B? It is the natural transformation which places the arrow f to bridge the gap from A to B.

The Yoneda embedding relates "What is an arrow f" and "HOW is an arrow f".

The Yoneda embedding sets up a *natural isomorphism* between these two ways of looking at things.

This natural isomorphism consists of two natural transformations:
- One natural transformation takes us from the world of HOW to the world of WHAT and thereby describes WHETHER there is an arrow.
- The other natural transformation moves us in the opposite direction, from the world of WHAT to the world of HOW and thereby describes WHY there is an arrow.

These natural transformations involve *functoriality*, the assurance that the whole system fits together harmoniously.

We now focus on the related bijection between "WHAT is an arrow f" and "HOW is an arrow f". This *bijection* consists of two set functions
- one of which takes us from WHAT to HOW
- another which takes us from HOW to WHAT

Let us now start with HOW is an arrow f from A to B.

By this I mean that there is a gap from A to B and we know HOW to fill that gap with the arrow f. And in doing so, we will extend any arrow from B to X by prepending f, yielding an arrow from A to X.

Here I will cite what Eugenia Cheng, in her new book "The Joy of Abstraction", calls "The Yoneda-ey principle". She says, "the one thing we know we have in any world of homsets is the identity, and all the Yoneda functors and natural transformations are acting by composition on one side or the other".

For us this means, let us consider the case when `X = B`, and specifically, the identity morphism from B to B. Then the action HOW prepends to it the arrow `f` and this yields that very same arrow `f`, which is WHAT `f` is. Thus the trivial extention of `f`, the do-nothing action from B to B, this existential stub, is the grounds WHETHER there is an arrow `f`. It is the aspect (feature, essence) by which the action HOW yields the arrow WHAT. WHETHER is what takes us from HOW to WHAT.

...

## Yoneda Lemma

The Yoneda Lemma is a more general version of the Yoneda Embedding. The logic is basically the same but the circumstances are more abstract. Instead of an object A and a functor `Hom(A, -)`, we think more generally in terms of a functor `F`.

Recall that the natural transformations Whether and Why focused on the arrows from B to X and from B to B, and since those arrows do remain, the logic is practically unchanged. It's just unclear how to draw the diagrams now.

What is more clear in the Yoneda Lemma, however, is that the functor `F(B)` represents the world of appearances which the functor `F` outputs, as when Steve Awodey talks of making a picture.

*Functoriality* is the fact that arrows in the input world lift up to the output world, along with their compositionality, their identity morphisms and associativity.
