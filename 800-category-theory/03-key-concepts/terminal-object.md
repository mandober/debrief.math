# Terminal Object

We define initial and terminal objects, which we shall use for describing algebras and initial algebras.

(Definition) Let `𝒞` be a category. An object `0` is the initial object of `𝒞`
if, for all objects `a`, there is a unique morphism `0 → a`.

(Definition) Let `𝒞` be a category. An object `1` is the terminal object of `𝒞` if, for all objects `a`, there is a unique morphism `a → 1`.

(Lemma) Initial and terminal objects are unique up to isomorphism.

(Proof) Let 𝒞 be a category with initial objects 0 and 0′. There are unique morphisms `00′ ∶ 0 → 0′` and `0′0 ∶ 0′ → 0`, and `00 = id0` and `0′ 0′ = id0′`. Hence, `0′0 ∘ 00′ = id0` and `00′ ∘ 0′0 = id0′`. That is, 0 is unique up to isomorphism. Similarly, let `𝒞` be a category with terminal objects 1 and 1′. There are unique morphisms `11′ ∶ 1′ → 1` and `1′1 ∶ 1 → 1′`, and `11 = id1` and
`1′1′ = id1′`. Hence, `11′ ∘ 1′1 = id1` and `1′1 ∘ 11′ = id1′`. That is, 1 is unique up to isomorphism.

In Hask, Void (the empty or uninhabited type) is the initial object, and unit or `()` type is the terminal object.

In Set, the elements of a set 𝐴 can be considered as functions from a terminal object, that is, any singleton set, to 𝐴. More specifically, if 𝑥 ∈ 𝐴 and 1 is a terminal object, then 𝑥 can be considered as a function 𝑥 ∶ 1 → 𝐴 which assigns 𝑥 to the element of 1.
