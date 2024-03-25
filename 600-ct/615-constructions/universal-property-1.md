# Universal property

A universal property characterizes an object in a category in an essentially unique way in terms of its relation to other objects through arrows.

This stands in contrast to characterizations that may refer to intrinsic details of objects which are irrelevant from a category-theoretic perspective.

Categories and functors allow us to study universal properties.

A universal property abstracts potentially complicated or messy details of a particular construction leading to more elegant results. It also allows us to avoid repeating the same proofs in different categories. Once we know that an object in a category is universal, anything that follows from the universal property is known to be true of that object.

Universal properties are analogous in some ways to interfaces in programming. For example, the functor type class in Haskell specifies an interface - namely, `fmap` that functorial types must implement and expose, but the class doesn't specify implementation details. Using a universal property in a proof is therefore like programming to an interface, in that you're only using things that are exposed by the API and not any intrinsic details of the universal object. However, universal properties are stronger than most interfaces in programming because they determine objects essentially uniquely (as in they define a very strict interface).

For example, in the category of sets, consider the Cartesian product of two sets A and B which consists of all ordered pairs of elements of A and B. There are many things you can say about the product, like how an ordered pair is implemented using sets - perhaps it uses the Kuratowski definition or some other variant. However, from a category-theoretic perspective, there's only one thing that's really important about the product: the product allows us to freely translate between a pair of functions `X -> A` and `X -> B`, and a single function into the product `X -> A⨯B`.

```
π₁ : A⨯B -> A          f : X -> A         f = m ∘ π₁
π₂ : A⨯B -> B          g : X -> B         g = m ∘ π₂
                       m : X -> A⨯B       m = [f;g]     m x = (f x, g x)
```

This property completely characterizes the product and from it you can derive anything you need about the product, without relying on any intrinsic implementation details.

It means that the product A⨯B and the pair of projection functions π₁ and π₂ is universal in the sense that any pair of functions from a set into A and B can be obtained through this one in a unique way.
