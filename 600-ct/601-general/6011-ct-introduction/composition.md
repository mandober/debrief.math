# CT :: Composition

- composition
- composition of functions
- composition of morphisms
- composition of functors
- composition of NTs


```hs
(>=>) :: (a -> m b) -> (b -> m c) -> (a -> m c)
(>>=) :: m a -> (a -> m b) -> m b

ma >>= amb = \a -> amb a
(>>=) = \ma amb -> \a -> amb a

x >>= f = \a -> a
x >>= f = id

join :: m (m a) -> m a
join mma = mma >>= id
```



## Composition of functions on sets

In set theory, we have sets and functions between sets (although functions are also sets there - sets of ordered pairs).

Given 3 nonempty sets `A`, `B` and `C`, there may be a function `f : A -> B` that maps a domain (source) set `A` to a codomain (target) set `B`, and, similarly, a function `g : B -> C`. When the codomain of one function is the domain of another, then the functions are composable, `g ∘ f : A -> C`.

The composition, `∘`, is a binary operator that uses functions on sets as its input (functions as elements) and treats identity functions (each set has one) as units (neutral or identity elements).

Composition of set functions is simialar to a monoid algebraic structure: a
<Monoid is a carrier set endowed with a closed and associative binary operation with both units>. It combines two elements from the carrier set to produce a result that is also an element of the same set (the axiom of closure). Similarly, function composition combines two elements (functions) from the carrier set (function space) to produce a result that is still in that set (a function from the function space).

The associativity of function composition makes parenthesis redundant:

`(h ∘ g) ∘ f` = `h ∘ (g ∘ f)` = `h ∘ g ∘ f`





Given a function `f : A -> B` between two sets and the identity function of each set, `1ᴬ : A -> A` and `1ᴮ : B -> B`, units of composition mean that a left (`1ᴮ ∘ f`) or right (`f ∘ 1ᴬ`) composition with some function `f`, leaves `f` unchanged.

```
f  : A -> B
1ᴬ : A -> A
1ᴮ : B -> B

units of composition
left 1ᴮ ∘ f
right
f ∘ 1ᴬ

1ᵇ ∘ f = f = f ∘ 1ᵃ
```


The adjective "appropriate" above means that the condition of composition is satisfied: that is, codomain of one function is the domain of another


give rise to the category called 𝗦𝗲𝘁, with sets as objects and functions as morphisms. But already in set theory we meet composition of functions, which is then lifted to the composition of arrows in Set and also in all other categories. In fact, the composition of arrows is the single binary operation of categories that is closed over the category, but also associative and with both left and right identities (in this way it's similar to a monoid). However, the axioms of category demand that all objects have identity arrows, and that the composition of arrows is closed under the transitivity relation. This type of closure is similar but not the same as the axiom of closure or totality; rather, the closure under transitivity means that, if two arrows are composable then the arrow that is their composition must exist.

Thus, the arrows compose "producing new arrows" - actually, nothing is produced as such arrow must already exist by the transitivity closure - but it is often convenient to imagine as if we are constructing these composite arrows.

Morphisms are mappings between the objects in a category, and identity arrows are the units of their composition.

```hs
-- composition
f : a -> b
g : b -> c
(g ∘ f) : a -> c

-- units
1ᵃ : a -> a
1ᵇ : b -> b
1ᵇ ∘ f = f = f ∘ 1ᵃ
```

Functors are mappings between categories that preserve structure. 
Functors map a source category, `𝒞`, to a target category `𝒟`, 
`F : 𝒞 -> 𝒟`. 

When the source and target are the same category, we have endofunctors. 
Endofunctors are mappings on the same category. 
Endofunctors map a category to back to itself, 
`E : 𝒞 -> 𝒞`

Identity functor maps a category to back to itself, 
`I : 𝒞 -> 𝒞`

The extra property of being structure-preserving maps
