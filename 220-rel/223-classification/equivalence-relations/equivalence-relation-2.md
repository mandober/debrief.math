# Equivalence relations

>An equivalence relation is a *binary* relation that is *reflexive*, *symmetric* and *transitive*.

* `R` is an equivalence relation IFF `R` is a strongly connected relation on a digraph.

Equivalence relations
- equality, `=`
- congruence, `≡ (mod n)`
- "same size as" (e.g. for sets, if finite)
- "same color as"

---

>What eq rel is always available to partition any set into a single eq class?
is what I'd like to know.

---

A total function `f : A -> B` induces an equivalence relation on a set `A` defined by `a ≡ a′ ⇔ f(a) ≡ f(a′)`.

https://www.youtube.com/watch?v=s-E5T3igntw&list=PLUl4u3cNGP60UlabZBeeqOuoLuj_KNphQ&index=53

Whenever you have a total function `f` on a set `A`, it defines an equivalence relation on the set `A`. Namely, if `f` is a total function from domain A to codomain B, then we can define a relation - we can call it 'equivalence subscript f on the set A', `≡𝟋A` by the rule that two elements are equivalents of `f` if and only if they have the same image under `f` - they hit the same thing. That is, `a` is equivalent under `f` to `a′` if and only if `f(a) = f(a′)`, i.e. `a ≡ a′ ⇔ f(a) ≡ f(a′)`. Equivalence under `f` immediately inherits the properties of equality, which makes it an equivalence relation.

Hmm… a function is a relation fo sho, but functions are generally not reflexive, symmeteric and transitive, unless it is exactly the identity function. So any function `f` is not an equivalence relation itself since it says that "any total function `f` on a set `A` defines an equivalence relation on `A`". Also, an eq. rel. is an endorelation and f is a function from A to B. So it must be that `f` induces an equivalence relation. And `f` induces an eq. rel. only when defined to satisfy `a ≡ a′ ⇔ f(a) ≡ f(a′)`. Right? Good god, how frustratingly imprecise these definitions are. One place says an eq rel must be a binary rel, the other drops 'binary'. Then this guy says "So whenever you have a total function f on a set A, it defines an equivalence relation on the set A", which is maybe ok, if he means 'induces' by 'defines'. Rigor my ass.

---
