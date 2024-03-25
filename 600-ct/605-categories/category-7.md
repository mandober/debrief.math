# Definition of category

There are many equivalent definitions of a category. 
One commonly used definition is as follows.

A category C consists of
- a class of objects, `Ob(C)`
- a class of morphisms or arrows (maps between the objects), `Hom(C)`
- a domain, or source object class function,`dom : Hom(C) -> Ob(C)`
- a codomain, or target object class function, `cod : Hom(C) -> Ob(C)`



for every three objects a, b and c, a binary operation hom(a, b) × hom(b, c) → hom(a, c) called composition of morphisms; the composition of f : a → b and g : b → c is written as g ∘ f or gf. (Some authors use "diagrammatic order", writing f;g or fg).
Note: Here hom(a, b) denotes the subclass of morphisms f in hom(C) such that {\displaystyle {dom} (f)=a}{\displaystyle {dom} (f)=a} and {\displaystyle {cod} (f)=b}{\displaystyle {cod} (f)=b}. Such morphisms are often written as f : a → b.

such that the following axioms hold:

(associativity) if f : a → b, g : b → c and h : c → d then h ∘ (g ∘ f) = (h ∘ g) ∘ f, and
(identity) for every object x, there exists a morphism 1x : x → x (some authors write idx) called the identity morphism for x, such that every morphism f : a → x satisfies 1x ∘ f = f, and every morphism g : x → b satisfies g ∘ 1x = g.
We write f: a → b, and we say "f is a morphism from a to b". We write hom(a, b) (or homC(a, b) when there may be confusion about to which category hom(a, b) refers) to denote the hom-class of all morphisms from a to b.[2] From these axioms, one can prove that there is exactly one identity morphism for every object. Some authors use a slight variation of the definition in which each object is identified with the corresponding identity morphism.
