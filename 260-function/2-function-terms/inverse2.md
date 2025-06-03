# Inverse

- bijections: inverse as function
- injections: inverse as partial function
- surjections: inverse as relation
- general functions: inverse as relation
- partial functions: inverse as relation
- relations: inverse as relation

In general, any function has an "inverse", only most inverses are relations, not functions. Functions are specialzed relations, but relations nonetheless. Therefore, all functions are relations (but not vice verse), so an inverse of a fucntion is definitetly a relation, if not qualified to be a function itself.

## Bijections have function as inverse 

The only way for a function to have an inverse that is also a function is in case of *bijections*. Inverse of a bijective function is a function that is not only a fucntion but also a bijection.

>Inverse of a bijection is a bijection (so, a function + also a bijection).

## Injections have partial function as inverse

In case `f` is an *injection*, it seems possible to speak of its inverse as a function, but the problem with injections is that they do not cover the entire codomain; for some elements of the codomain, `f⁻¹` would be undefined. Thus, an injection can only have an inverse that is a partial function.

## Other functions have relation as inverse

*Functions in general* and *surjections* have an inverse but it cannot be a function (not even a partial function) - it falls back to being a *relation*. *Partial functions* have inverses that are relations. *Relations* have inverses that are relations.

- Can an inverse of a non-functional relation be a function? Sure. The inverse of a ("fork" like) relation, `R = { (a, b₁), (a, b₂) }` is a function defined as `R⁻¹ = { (b₁, a), (b₂, a) }`.

## Notation

Given a function `f`, its inverse is denoted `f⁻¹`, but, normally, this notation is assumes that the inverse is a function; otherwise, the same notation may be reused, provided it was made clear that it denotes a relation.

## "The" or "an" inverse
Or, converting an inverse relation into an inverse function

Surjective functions are best known for two things: their "positive" property that the entire codomain is covered, and their "negative" property in that they collapse domain elements. Focusing on this second property, consider a simple surjective function `f: A → B` that sends all elements of `A` to the single (and only) element `b ∈ B`. Clearly, `f`'s inverse cannot possibly be a function because the cardinal rule of functions would be broken: each domain element must associate precisely one element of the codomain (not two or more, and not none).

```hs
a₀, a₁, a₂ ∈ A
b ∈ B

-- all three elements of A associate to the same and only elem of B:
-- thus, f is a surjection
f   = { (a₀, b), (a₁, b), (a₂, b) }

-- thus, its inverse, f⁻¹, cannot be a function but only a relation
f⁻¹ = { (b, a₀), (b, a₁), (b, a₂) }
```

On the other hand, we could interpret this situation by saying that `f` has *an* inverse, 3 of them actually, each a function! So, instead of having a single *inverse relation*, we could say that `f` has 3 *inverse functions*. It has exactly 3 inverse functions since there are 3 ways to define each, by only including one inverse mapping and discarding the other two.

In general, we can define an inverse function based on the existing inverse relation by discarding some reverse mappings.

In this example, the 3 inverse functions are the following, each with the subscript of the domain element it decided to return:

```hs
f₀⁻¹ = { (b, a₀) }
f₁⁻¹ = { (b, a₁) }
f₂⁻¹ = { (b, a₂) }
```

We can just pick an arbitrary one and claim that the original surjective function `f` does indeed have an inverse that is a function - in fact, it has 3 distinct inverse functions, besides the fact that its proper inverse is actually a relation.

So now we have:

```hs
f₀⁻¹ ∘ f(a₀) = a₀
f₁⁻¹ ∘ f(a₁) = a₁
f₂⁻¹ ∘ f(a₂) = a₂
```
