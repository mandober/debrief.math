# Algebraic data types

Category Theory 5.2: Algebraic data types
by Bartosz Milewski, Published on Sep 23, 2016
[https://www.youtube.com/watch?v=w1WMykh7AxA&list=PLMTONe7-tohmWwR5sew2lqixoI90o_K_-&index=10]


Algebraic data types: there are products and sums, just like in algebra only with types. We have at least a monoid: e.g., mult is a bin op that is assoc and has a unit. How does it relate to types? Is the product type actually behaving like mult? We can check if they respect the monoid rules.

Although symmetry does not hold for any monoid, the product of two numbers is indeed symmetric. Does the symmetry also hold for types? For example, is the pair (a,b) symmetric to the pair (b,a), that is, will a func that expect the former also accept the latter? Of course no. These indeed are different types, however they have the same structure, they encode the same information, if only in a slightly different way. This means they are **isomorphic**. The isomorphism between these two types is called `swap`. It is a func that takes a pair (a,b) and returns (b,a):

```hs
swap :: (a,b) -> (b,a)
swap p = (snd p, fst p)
-- or, with pattern matching
swap (p, q) = (q, p)
```

Concluding that these two pairs are not really symmetric, but they are symmetric *up to an isomorphism*.

The next req is that, for a monoid, the product has to be assoc. What is assoc wrt pairs? If we have a pair `((a,b), c)`, it is obviously different from the pair `(a, (b,c))`, but can we do something to rearrange it in order to write it as an isomorphism? Why, yes.

```hs
assoc :: ((a,b),c) -> (a,(b,c))
assoc ((p,q),r) = (p,(q,r))
```

In order to be an isomorphism the arrows must have an inverse. Sure enough, swap is inverse of swap: `swap $ swap p == p`.

So, this "mult of types" is assoc...Now, we need to see if there's a unit type. Namely, what would be the type, that, when paired with any other type, gives back that same type?

Well, `(a, ())` is not really the same thing as `a`, but, it kinda is...up to an isomorphism. It is isomorphic to `a` as it has exactly the same elements.

```hs
(a, ()) ≈ a
munit  (x, ()) = x
munitInverse x = (x, ())
```
