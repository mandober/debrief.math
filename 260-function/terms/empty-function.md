# Empty function

The empty function arises from partiality which allows some domain elements not to participate in the relation. A curious question is just how many elements may fail to participate in a relation for it to still be consider a partial function? Can all domain elements fail to associate? In fact, they can; if all domain elements fail to participate in a relation, we get an empty function.

Under the view of functions as sets, the graph of function is what defines a fucntion and therefore there is only one empty function. But under the stricter definition of a function where a function is determined not only by its graph but by the domain and codomain set as well, there are many empty functions.

The empty function also arises from enumerability, where the empty set is considered to be denumerable - its members are enumerated exactly by the empty function.

---

For every set `X`, there is a unique function, called the **empty function**, from the empty set to `X`. The graph of an empty function is the empty set.

`∀X ∈ 𝙎𝙚𝙩. void : ∅ → X`

By definition, the graph of the empty function to X is a subset of the Cartesian product `∅ × X`, and this product is empty.

void ⊆ ∅×X
void ⊆ ∅
void = ∅

The existence of empty functions is needed both for the coherency of the theory and for avoiding exceptions concerning the empty set in many statements.

- f : 𝔹 → 𝔹, then there are 2² = 4 functions from 𝔹 to 𝔹
- f : ∅ → 𝔹, then there are 2⁰ = 1 function from ∅ to 𝔹
- f : ∅ → X, then there are x⁰ = 1 function from ∅ to any set


Under the usual set-theoretic definition of a function as an *ordered triple* (such that the definition also includes domain and codomain, besides the graph of the function), there is exactly one empty function for each set, thus the empty function `∅ ↦ X` is not equal to `∅ ↦ Y` iff `X ≠ Y`, even though their graphs are the same - they are both empty (the empty set).

```hs
void, absurd :: Void -> a
absurd _ = undefined


(voidˣ : ∅ ↦ X) ≠ (voidʸ : ∅ ↦ Y) ⇔ X ≠ Y

X = Y ⇔ (voidˣ : ∅ ↦ X) = (voidʸ : ∅ ↦ Y)
```

There is deeper interpretation of types and functions in terms of logic called the Curry-Howard isomorphism. The type `Void` represents falsity, and the type of `absurd` corresponds to the statement that from falsity follows anything ("ex falso sequitur quodlibet"). 

Negation in IL is defined as `¬p := p → ⊥`, but that has nothing to do with absrurd (my bad).
