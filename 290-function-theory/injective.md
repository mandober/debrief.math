# Injective

* A mapping `f: A -> B` that has the uniqueness property "given any element `b` of `B` there is at most one element `x` of `A` for which `f(x) = b`" is called an **injective** or **one-to-one** mapping.

* In other words, if `f` is an injective mapping, then 
  ∀aa' ∈ A. f(a) = f(a') <-> a = a'

* Informally, a mapping is injective if no element in the codomain is double mapped, but there some elements that are not involved in the mapping at all. In other words, it's a one-to-one mapping with extra codomain elements.

* Injective mapping means that the domain and the range of `f` are equal, `dom(f) = ran(f)`

* Injection also means that the codomain is strictly larger then the range, `cod(f) > ran(f)`, since some elements in B are not involved in the mapping. It is also larger then the domain, `dom(f) < cod(f)`, for the domain and the range are equal.

* dom(f) : cod(f) : ran(f)
  * dom(f) < cod(f)
  * cod(f) > ran(f)
  * dom(f) = ran(f)

* If the codomain of an injection `f` is shrinked to be equal to the range of `f`, the `f` would be bijective.

* Injection is partially invertable; `f` has an inverse mapping, `f⁻¹`, 
`f(a)=b -> ∃b ∈ B. f⁻¹(b)=a`, since there are elements in the codomain for which the mapping, and thus, its inverse is not defined.
