# Monomorphism

https://en.wikipedia.org/wiki/Monomorphism

(n. monomorphism, mono; adj. monic.)

A morphism `f: X → Y` is called a monomorphism 
if `f ∘ g = f ∘ g'` implies `g = g'` 
for all morphisms `g, g': Z → X`.

A morphism `f` has a *left inverse* (or is a *split monomorphism*) if there is a morphism `g: Y → X` such that `g ∘ f = idx`. Thus `f ∘ g : Y → Y` is idempotent, that is, `(f ∘ g) = f ∘ (g ∘ f) ∘ g = f ∘ g`. The left inverse `g` is also called a *retraction* of `f`.

An arrow `m : b → c` is a monic iff for every pair of arrows `f,f': a → b`,
if `mf = mg` then `f = f'`; i.e. if `∀f,f': a → b`. `f ∘ m = f' ∘ m`->`f=f'`, then `m : b → c` arrow is monic.
