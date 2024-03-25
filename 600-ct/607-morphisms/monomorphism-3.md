# Monomorphism

When we reason about sets and functions, we are often interested in functions with special properties such as being *injective* (into, one-to-one), *surjective* (onto), or *bijective* (into and onto, one-to-one correspondence, invertable, isomorphism). Appropriate analogues of these concepts also play an important role in categorical reasoning.

[definition] An arrow `m : B -> C` in a category C is a **monomorphism** (or monic) if, for any pair of arrows `g,h : A -> B` in C, the equality `m ∘ g = m ∘ h` implies `g = h`.

```
A -------g-------> B -------m-------> C
  -------h------->
```

>m ∘ g = m ∘ h ⇒ g = h


[proposition] In Set, the monomorphisms are just the injective functions, i.e. functions `m` such that `m x = m y ⇒ x = y`.

[proof-1] Let `m : B -> C` be an injective function, and let `g,h : A -> B` be such that `m ∘ g = m ∘ h` but `g ≠ h`. Then there is some element `a ∈ A` for which `g a ≠ h a`. But since `m` is injective, `m (g a) ≠ m (h a)`, which contradicts our assumption that `m ∘ g = m ∘ h`. This shows that `m` is a monomorphism.

Since `m` is an injection, there are no two distinct elems `x` and `y` in `B` for which the value of `m` is the same. That is, for any two elements `x` and `y` in `B`, if `m x = m y` then `x = y` ; meaning the only way that `m x = m y` is if `x` and `y` are not distinct but the same, `x = y`. By contraposition, if `x ≠ y` then `m x ≠ m y`, i.e. if `x` and `y` are distinct, then they necessarily map to distinct elements.

[proof-2] Conversely, let `m : B -> C` be a monomorphism. If `m` is not injective, then there are distinct elements `b,b' ∈ B` for which `m b = m b'`. Let `A` be the one-element set `{a}`, and let `g: A -> B` map `a` to `b`, while `h: A -> B` maps `a` to `b'`. Then `m (g a) = m (h a)`, contradicting the assumption that `m` is a monomorphism.

[End_of_Proof]
