# 3. Isomorphisms

When we say that `f ∘ (g ∘ h) = (f ∘ g) ∘ h` or `f = f ∘ id` we are asserting the equality of arrows. The arrow on the left is the result of one operation, and the arrow on the right is the result of another. But the results are *equal*. We often illustrate such equalities by drawing commuting diagrams. We draw them when comparing arrows for equality.

We don't compare objects for equality. We see objects as confluences of arrows, so if we want to compare two objects, we look at the arrows.

## TOC

- 3. Isomorphisms
  - 3.1 Isomorphic Objects
  - 3.2 Naturality
  - 3.3 Reasoning with Arrows
  - 3.4 Reversing the Arrows

## 3.1 Isomorphic Objects

The simplest relation between two objects is an arrow. The simplest round trip (between two objects) is a composition of two arrows going in opposite directions. If `f : a -> b` and `g : b -> a` then there are two possible round trips: `g ∘ f`, which goes from `a` to `a`, and `f ∘ g`, from `b` to `b`.

If both of them result in identities, then we say that `g` is the **inverse** of `f`, provided that: `g ∘ f = 1ᵃ` and `f ∘ g = 1ᵇ`, and we write `g = f⁻¹`. The arrow `f⁻¹` undoes the work of the arrow `f`.

Such a pair of arrows is called an **isomorphism** and we say that *the two objects are isomorphic*.

What does the existence of an isomorphisms tell us about the two objects connected objects? Objects are described by their interactions with other objects, via arrows. Let's consider what the two isomorphic objects look like from the perspective of an *observer object* `x`.

Consider an arrow `h : x -> a`. Then there must be an arrow `x -> b` as the composition of `f ∘ h`, or the action of `(f ∘ -)` on `h`.

For any arrow probing `a` there is a corresponding arrow probing `b` given by the action of `(f ∘ -)`. 
Similarly, 
for any arrow probing `b` there is a corresponding arrow probing `a` given by the action of `(f⁻¹ ∘ -)`.

We can move focus back and forth between `a` and `b` using the mappings 
`(f ∘ -)` and `(f⁻¹ ∘ -)`.

We can combine these two mappings to form a round trip. 
The result is the same as if we applied the composite `((f⁻¹ ∘ f) ∘ -)`. 
But this is equal to `(1ᵃ ∘ -)` which leaves the arrows unchanged.

>(f ∘ -) ∘ (f⁻¹ ∘ -) == ((f⁻¹ ∘ f) ∘ -) == (1ᵃ ∘ -)

Similarly, the round trip induced by `f ∘ f⁻¹` leaves the arrows `x -> b` unchanged.

This creates a *"buddy system"* between the two groups of arrows. Imagine each arrow sending a message to its buddy, as determined by `f` or `f⁻¹`. Each arrow would then receive exactly one message, and that would be a message from its buddy. No arrow would be left behind, and no arrow would receive more than one message. Mathematicians call this kind of buddy system a *bijection* or one-to-one correspondence.

Therefore, arrow by arrow, the two objects `a` and `b` look exactly the same from the perspective of `x`. Arrow-wise, there is no difference between the two objects.

In particular, if you replace `x` with the terminal object `1`, you'll see that the two objects have the same elements. For every element `x : 1 -> a` there is a corresponding element `y : 1 -> b`, namely `y = f ∘ x`, and vice versa. There is a *bijection between the elements of isomorphic objects*. Such indistinguishable objects are called *isomorphic* because they have "the same shape". You've seen one, you've seen them all. 

We write this isomorphism as `a ≅ b`.

When dealing with objects, we use isomorphism in place of equality.

>In programming, two isomorphic types have the same external behavior.

One type can be implemented in terms of the other and vice versa. One can be replaced by the other without changing the behavior of the system (except possibly performance).

In classical logic, if `B` follows from `A` and `A` follows from `B`, then `A` and `B` are *logically equivalent*. We often say that `B` is true if and only if `A` is true.

However, unlike previous parallels between logic and type theory, this one is not as straightforward if you consider *proofs to be relevant*. In fact, it led to the development of a new branch of fundamental mathematics, Homotopy Type Theory (HoTT).

## 3.2 Naturality

When two objects (like `a` and `b`) are isomorphic, we can switch **focus** from one to another using **post-composition**: 
using either `(f ∘ −)` or `(f⁻¹ ∘ −)` we can shift focus between the two isomorphic two objects `a` and `b`, where `f : a -> b` and `f⁻¹ : b -> a`.

Conversely, to switch between different *observers*, we would use *pre-composition*.

Indeed, an arrow `h : x -> a` probing `a` from `x` is related 
to the arrow `h ∘ g : y -> a` probing the same object `a` from `y`.

Similarly, an arrow `h' : x -> b` probing `b` from `x` corresponds 
to the arrow `h' ∘ g : y -> b` probing `b` from `y`.

In both cases, we change **perspective** from `x` to `y` by applying **pre-composition** `(− ∘ g)`.

The important observation is that the change of perspective preserves the buddy system established by the isomorphism. If two arrows were isomorphic buddies from the perspective of `x`, they are still isomorphic buddies from the perspective of `y`.

This is as simple as saying that it doesn't matter if you first *pre-compose* with `g` to switch *perspective*, and then *post-compose* with `f` to switch *focus*, or you first post-compose with `f` and then pre-compose with `g`.

We call this the **naturality condition** and we write it symbolically as:

>(− ∘ g) • (f ∘ −) == (f ∘ −) • (− ∘ g)


The meaning of this equation is revealed when you apply it to an arrow `h : x -> a`, both sides evaluate to `f ∘ h ∘ g`.

```
( (− ∘ g) • (f ∘ −) ) h =
= (− ∘ g) ((f ∘ −) h) =
= (− ∘ g) (f ∘ h)
= ((f ∘ h) ∘ g)
= f ∘ h ∘ g

( (f ∘ −) • (− ∘ g) ) h =
= (f ∘ −) ((− ∘ g) h) =
= (f ∘ −) (h ∘ g)
= (f ∘ (h ∘ g))
= f ∘ h ∘ g
```

Arrows are used to broadcast information about an isomorphism. Naturality tells us that all objects get a consistent view of it, independent of the path.


We can also reverse the roles of observers and subjects.

For instance, using an arrow `h : a -> x`, the object `a` can probe an arbitrary object `x`. If there is an arrow `g : x -> y`, it can switch focus to `y`. Switching the perspective to `b` is done by precomposition with `f⁻¹`.

Again, we have the naturality condition, this time from the point of view of the isomorphic pair:

>(− ∘ f⁻¹) • (g ∘ −) == (g ∘ −) • (− ∘ f⁻¹)


This situation when we have to take two steps to move from one place to another is typical in category theory. Here, the operations of pre-composition and postcomposition can be done in any order - we say that they *commute*.

But in general the order in which we take steps leads to different outcomes. We often impose *commutation conditions* and say that one operation is compatible with another if these conditions hold.



## 3.3 Reasoning with arrows

If two objects are isomorphic
- they have the same sets of incoming arrows.
- they also have the same sets of outgoing arrows.

When two objects, `a` and `b`, are isomorphic, any isomorphism `f` induces a one-to-one mapping, `(f ∘ −)`, between corresponding sets of arrows.




## 3.4 Reversing the arrows

The duality between the observer and the observed cannot be complete unless the observer is allowed to switch roles with the observed.
