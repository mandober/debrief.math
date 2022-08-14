# Monomorphism

https://en.wikipedia.org/wiki/Monomorphism

(n. monomorphism, mono; adj. monic.)

A morphism `f: X → Y` is called a monomorphism 
if `f ∘ g = f ∘ g'` implies `g = g'` 
for all morphisms `g, g': Z → X`.

A morphism `f` has a *left inverse* (or is a *split monomorphism*) if there is a morphism `g: Y → X` such that `g ∘ f = idx`. Thus `f ∘ g : Y → Y` is idempotent, that is, `(f ∘ g) = f ∘ (g ∘ f) ∘ g = f ∘ g`. The left inverse `g` is also called a *retraction* of `f`.

An arrow `m : b → c` is a monic iff for every pair of arrows `f,f': a → b`,
if `mf = mg` then `f = f'`; i.e. if `∀f,f': a → b`. `f ∘ m = f' ∘ m`->`f=f'`, then `m : b → c` arrow is monic.


# Monic arrow

Monomorphisms or monic arrows correspond to set-theoretic injective functions.

An injection is also called 1-to-1 mapping but it doesn't have to cover the entire codomain (if it does, then it is also a surjection, and with that a bijection). Thus, it embeds the domain in the codomain, without collapsing any points (unlike surjection that does collapse points).

Informally, an injective function on sets is a (total) function that is further restricted wrt to the uniqueness of associated pairs of dom, cod elements: each codomain element must be associated with *at most one* domain element. This is a functional view with the perspective switched to the codomain side.

Normally, in the definition of function, we consider a relation from domain's side, stating that each element of the domain must be associated to *exactly one* codomain element. This makes sure all domain elements are engaged (*left-total*) and that each one is associated to exactly one element of the codomain (*right-serial*). However, this definition of functions leaves some things unspecified: first, it allows for two distinct domain elements to be associated to the same codomain element, and second, it doesn't enforce complete coverage of the codomain.

The problem is now to translate this set-theoretic notion of injectivity into categorical settings, and for that we're gonna have to consider a broader view of a category, pulling info from may sides in order to be able to define the corresponding concept of monomorphic arrows. The formal definition says that

an arrow `m : b → c` is a monic iff     
for any two arrows `∀fg ∈ 𝒞. f,g : a → b`   
`(m ∘ f = m ∘ g) => f = g`

> m : b → c is monic if     
> ∀fg ∈ Arr(𝒞). f,g : a → b.      
> (f ∘ m = g ∘ m) => (f = g)









A set-theoretic function 
`m : A -> C` is injective if 
∀ab ∈ A. ∀cd ∈ B.
if
a ≠ b
then
fa ≠ fb

`m` is injective when, 
for any two 
strictly distinct 
dom elements, a ≠ b,
produces strictly distinct 
outputs, fa ≠ fb


`∀y ∈ B. ∃x ∈ A. f(x) = y`


`m` is injective when, 
given any pair of distinct 
input values, a and b, a ≠ b,
outputs a distinct pair of values, 
fa and fb, s.t fa ≠ fb


for any two 
strictly distinct 
dom elements, a ≠ b,
produces strictly distinct 
outputs, fa ≠ fb
