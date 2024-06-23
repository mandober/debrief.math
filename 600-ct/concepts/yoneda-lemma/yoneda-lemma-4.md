# Yoneda lemma

John Baez
https://www.classe.cornell.edu/spr/1999-09/msg0017972.html


It took me ages to get the hang of the Yoneda lemma. Let me just say a few things that might eventually help. One way to think of the Yoneda lemma is precisely this: that the objects of any category can be interpreted as sets with extra structure. Think about this a minute. We have an abstract category C and we wish to associate to each object of C some set equipped with extra structure. Moreover, we want to do this in a way which completely records everything there is to know about this object. How can we do it?

Well, the only interesting thing about an object in a category is its morphisms to and from other objects, and how these compose with *other* morphisms. This principle should be our guide. So, what should we do? Simple: associate to the object `c` the set of all morphisms from c to other objects in C! Let's call this set `hom(c,-)`.

Of course, this is more than a mere set: it's a set with extra structure. First of all, it's a set made of lots of little subsets for each object `c'` in C, we get a subset `hom(c,c')`, consisting of all morphisms from c to c'.

Second of all, it's a set with an "action of C". In other words, given an element `f` in `hom(c,c')`, and a morphism `g: c' -> c''`, we get an element `fg` in `hom(c,c'')`, just by composing `f` and `g`.

A set with all this structure has a name: it's called a *functor from C to Set*.

The Yoneda lemma says that this "set with extra structure" knows everything you'd ever want to know about the object `c`. You might enjoy making this precise and proving it. (The only way to understand certain theorems, it seems, is to prove them yourself - sometimes repeatedly).

Note that I got away with less than you might have thought I'd need! I only considered the morphisms *from* c, not the morphisms *to* c. In fact there is another version of the Yoneda lemma that uses the morphisms *to* c instead. I believe this is the one people usually talk about - but of course it doesn't really matter.

The importance of all this for physics is as follows. Lots of people working on quantum gravity like to stress the importance of "relationalism" - the idea that physical things only have properties by virtue of their relation with other physical things. For example, it only makes sense to say how something is moving *relative* to other things. This idea is an old one, going back at least to Leibniz, and attaining a certain prominence with Mach (who primarily applied it to position and velocity, rather than other properties).

Relationalism is appealing, at least to certain kinds of people, but it's a bit dizzying: if all properties of a thing make sense only in relation to other things, how do we get started in the job of describing anything at all? The danger of "infinite regress" has traditionally made certain other kinds of people recoil from relationalism; they urge that one posit of something "absolute" to get started.

Category theory provides a nice simple context to see relationalism in action, in a completely rigorous and precise form. In a category, objects do not have "innards" - viewed in isolation, they are all just featureless dots. It's only by virtue of their morphisms to and from other objects (and themselves) that they acquire distinct personalities. This is why an isomorphism between objects allows us to treat them as "the same": it establishes a 1-1 correspondence between their morphisms to, or from, other objects. (Moreover, this correspondence preserves the extra structure described above).

This suggests that a truly relational theory of physics should take advantage of category theory.

Of course, when people say something like the previous sentence, we usually don't take them very seriously: philosophically, it may seem like a great idea to base one's theory of physics on this or that principle, but the test of a theory of physics is the predictions it makes, not how cool its underlying philosophy may be.

Thus, to prove that I am not merely engaged in idle chit-chat, I
should really exhibit a theory of physics, based on category theory,
which makes new predictions, and ultimately I should test these
predictions and make sure they're right.

Unfortunately I can't do this yet.

What I *can* do, though, is to note that various "toy models" -
simplified theories of physics - can be formulated very neatly
using category theory.  The neatest example is 3d Riemmannian
quantum gravity, possibly coupled to Chern-Simons gauge fields.

A more ambitious example is the Barrett-Crane model of 4d Lorentzian
quantum gravity.  It's incredibly elegant, but it's too soon to 
say it's "right": since it has local degrees of freedom, unlike
the 3d example, it is not exactly soluble, so we don't yet know
how to calculate with it, other than by throwing a supercomputer
at it (which none of us category-theoretic physicists can afford).

And, of course, by "right" I don't mean that the Barrett-Crane
models stands a chance of describing *our* universe, since it
doesn't include matter, only gravity.  What I mean is simply that
it reduces to the vacuum Einstein equations in a suitable low-
energy limit.  

(I should be careful: it's possible that wormhole ends in pure 
quantum gravity manage to act like spin-1/2 particles - thus giving
us "matter without matter".  I actually hope this is true.  However, 
I find it rather unlikely that the Standard Model gauge group
could pop out of pure quantum gravity, even with wormholes around.
So my most optimistic realistic hope is that a souped-up Barrett-
Crane model with a bigger gauge group could give real-world physics.)
