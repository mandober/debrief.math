# Image and Preimage

- Image and preimage are connected and associated like individual elements are
- Image and preimage are sets of elements (not of ordered pairs)
- Image is a subset of codomain but defined by a subset of domain's elements
- Preimage is a subset of domain but defined by a subset of codomain's elements


Definition: let `f` be a function `f : A -> B`. Then
- If `X ⊆ A`, the **image** of `X` is the set    
  `f(X) = { f(x) : x ∈ X } ⊆ B`
- If `Y ⊆ B`, the **preimage** of `Y` is the set   
  `f⁻¹(Y) = { x ∈ A : f(x) ∈ Y } ⊆ A`

The image `f(X)` of `X` is the set of all things in `B`, where `X ⊆ A`, that `f` sends elements of `X` to. Roughly, `f(X)` may be considered a distorted "copy" (image) of `X` in the codomain `B`.

The preimage `f⁻¹(Y)` of `Y`, where `Y` is a subset of codomain `B` i.e. `Y ⊆ B`, is the set of all things in the domain `A` that `f` sends into `Y`.

If Y ⊆ B, the expression `f⁻¹(Y)` has a meaning even if `f` is not an invertible function; it denotes the set of elements in A, that is, it denotes all the elements in X, where X is a subset of the domain A.

Some authors talk about a single element `x` that is associated to the element `f(x)`, which they call `x`'s image, even though it is a single element rather than a singleton set (sloppy treatment). Also they call `x` the preimage of `f(x)`. In a strict treatment image and pre-image are always sets, even if they contain only a single element. The sloppy treatment may be tolerated when a bijective function is scrutinize, but in the case of a surjective function it can easily happen that the image of an element x, `{x}`, is a set of more than one element, like `{a,b}`. In a bijective function, the associated image and preimage are always equinumerous sets.

## Example

Let `f : A -> B`    
where `A = {s,t,u,v,w,x,y,z}`   
and   `B = {0,1,2,3,4,5,6,7,8,9}`   
and the function `f` is defined by the following set of ordered pairs:    
f={ (s,4)
  , (t,8)
  , (u,8)
  , (v,1)
  , (w,2)
  , (x,4)
  , (y,6)
  , (z,4)
  }

The function `f` is neither injective nor surjective, so it certainly is not
invertible.

It is important to realize that the preimage `X`, where X ⊆ A, is a subset of domain `A`, and the image `Y`, where Y ⊆ B, is a subset of codomain `B`. They are not individual elements nor sets of ordered pairs (like functions and relations are).

Still considering the example, if X ⊆ A and X = {s,x,z} and Y ⊆ B and B = {4}, then X is the preimage `f⁻¹({s,z,x}) = {4}` and Y is the image `f({4}) = {s,z,x}`. The expression `f⁻¹(4)` has no meaning since `f` has no inverse (function). Likewise, there is a difference between `f({s}) = {s}` and `f(s) = 4`.
