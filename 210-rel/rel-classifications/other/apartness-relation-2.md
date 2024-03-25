# Apartness relation

https://en.wikipedia.org/wiki/Apartness_relation

In constructivism, an *apartness relation* is a *constructive form of inequality*, often taken to be more primitive than equality.

An Apartness relation is denoted by `⧣` (or `#`) to distinguish it from the negation of equality (the denial of inequality), `≠`, which is weaker.

An apartness relation is a symmetric, irreflexive, binary relation with the additional condition that if two elements are apart, then any other element is apart from at least one of them, the property which is called *co-transitivity* or *comparison*.


A binary relation `⧣` is an apartness relation if it satisfies:
1. `¬(x ⧣ x)`                 (irreflexivity)
2. `x ⧣ y -> y ⧣ x`            (symmetry)
3. `x ⧣ y -> (x ⧣ z ⋁ y ⧣ z)`   (co-transitivity or comparison)

∀x∀y(x~y ⇒ x=y) reflexivity,   ∀x(x~x)
∀x∀y(x~y ⇔ x=y) reflexivity,   ∀x(x~x)

∀x∀y(x~y ⇒ x≠y) irreflexivity, ∀x(x≁x)
∀x∀y(x~y ⇔ x≠y) irreflexivity, ∀x(x≁x)

∀x∀y(x~y ⇒ y~x) symmetry
∀x∀y(x~y ⇔ y~x) symmetry

∀x∀y(x~y ⋀ y~x ⇒ x=y) anti-symmetry
∀x∀y(x~y ⋀ y~x ⇔ x=y) anti-symmetry

∀x∀y(x~y ⇒ y≁x) asymmetry
∀x∀y(x~y ⇔ y≁x) asymmetry

∀x∀y∀z(x~y ⋀ y~z ⇒ x~z)  transitivity
∀x∀y∀z(x~y ⋀ y~z ⇒ x≁z)  anti-transitivity
∀x∀y∀z(x~y ⇒ (x~z ⋁ y~z)  co-transitivity
∀x∀y∃z(x~y ⇒ (x~z ⋁ y~z)  co-transitivity



>The complement of an apartness relation is an equivalence relation, as the above 3 conditions become reflexivity, symmetry, and transitivity:

`¬(¬(x ~ x)) --> x~x`


If this equivalence relation is in fact equality, then the apartness relation is called tight.

That is, `⧣` is a **tight apartness relation** if it additionally satisfies:

4. `¬(x ⧣ y) -> x = y`



In classical mathematics, it also follows that every apartness relation is the complement of an equivalence relation, `⧣ is ≡ᶜ`; and the only tight apartness relation (TAR) on a given set is the complement of equality, `TAR is =ᶜ`. So in that domain, the concept is not useful. In constructive mathematics, however, this is not the case.

The prototypical apartness relation is that of the real numbers: two real numbers are said to be *apart if there exists (one can construct) a rational number between them*. In other words, real numbers `x` and `y` are apart if there exists a rational number `z` such that `x < z < y` or `y < z < x`.

The **natural apartness relation** of the real numbers is then the disjunction of its *natural pseudo-order*.

The complex numbers, real vector spaces, and indeed any metric space then naturally inherit the apartness relation of the real numbers, even though they do not come equipped with any natural ordering.

If there is no rational number between two real numbers, then the two real numbers are equal. Classically, then, if two real numbers are not equal, one would conclude that there exists a rational number between them. However it does not follow that one can actually construct such a number.

>Thus to say two real numbers are apart is a stronger statement, constructively, than to say that they are not equal.

While equality of real numbers is definable in terms of their apartness, the apartness of real numbers cannot be defined in terms of their equality.

For this reason, in constructive topology especially, the apartness relation over a set is often taken as primitive, and equality is a defined relation.

A set endowed with an apartness relation is known as a **constructive setoid**. A function `f : A → B` where A and B are constructive setoids is called a morphism for `⧣ᴀ` and `⧣ʙ` if `∀xy ∈ A. f(x) #ʙ f(y) --> x #ᴀ y`.
