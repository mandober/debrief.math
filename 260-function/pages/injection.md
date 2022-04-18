# Injective function

https://en.wikipedia.org/wiki/Injective_function

An **injective function** (*injection*, *one-to-one function*) is a function that maps distinct elements of its domain to distinct elements of its codomain. That is, every element of the function's codomain is the image of at most one element of its domain.

* Injective functions have equinumerous domain and range:

`|dom| = |ran|` <= |cod|


A mapping `f: A -> B` that has the uniqueness property "given any element `b` of `B` there is at most one element `x` of `A` for which `f(x) = b`" is called an **injective** or **one-to-one** mapping.

In other words, if `f` is an injective mapping, then 
  ∀aa' ∈ A. f(a) = f(a') <-> a = a'

Informally, a mapping is injective if no element in the codomain is double mapped, but there some elements that are not involved in the mapping at all. In other words, it's a one-to-one mapping with extra codomain elements.

Injective mapping means that the domain and the range of `f` are equal, `dom(f) = ran(f)`

Injection also means that the codomain is strictly larger then the range, `cod(f) > ran(f)`, since some elements in B are not involved in the mapping. It is also larger then the domain, `dom(f) < cod(f)`, for the domain and the range are equal.


If the codomain of an injection `f` is shrinked to be equal to the range of `f`, the `f` would be bijective.

Injection is partially invertable; `f` has an inverse mapping, `f⁻¹`, 
`f(a)=b -> ∃b ∈ B. f⁻¹(b)=a`, since there are elements in the codomain for which the mapping, and thus, its inverse is not defined.


* A function `f` is injective if no two elements in the domain of `f` correspond to the same element in the range of `f`.
* Each `x` in domain has exactly one image in the range, and no `y` in the range is the image of more than one `x` in the domain.
