# Element

https://en.wikipedia.org/wiki/Element_(mathematics)

- object
- element of a set
- member of a set
- urelement
- atom
- set elements: urelements (non-collections), sets, classes
- collections: set, subset, class, subclass, universe


In the context of sets and set theory, an **element** or **member** of a set is any one of the distinct objects that belong to the set.

In a way, when an object finds itself in a set, it gets a new attribute - it is then also called an element (of that set).

What an element actually is (what kind of entity is an element) depends on a particular set theory. Some differentiate between objects that are not sets (these non-set elements are called *urelements*), and some consider an element to be any object that is in a set, whether it is an urelement, another set, or a class.

## Atom

The Zermelo set theory of 1908 included *urelements*, and hence is a version we now call ZFA or ZFCA (ZFA with axiom of choice). It was soon realized, in the context of this and closely related axiomatic set theories, that urelements were not needed because they could be easily modeled (in a set theory without urelements). Thus, standard expositions of the *canonical axiomatic set theories* ZF and ZFC do not mention urelements (for an exception, see Suppes).

Axiomatizations of set theory that do invoke urelements include *Kripke-Platek set theory with urelements*, and the *variant of Von Neumann-Bernays-Gödel set theory described by Mendelson*. In type theory, an object of *type-0* can be called an urelement, hence the name "atom".

When building a hierarchy or universe of sets `V`, the initial level, `V₀`, is the set of atoms. Atoms are the basic building blocks; e.g. some theories use natural numbers as atoms (!?). Atoms are non-set objects. In set theories that have them, atoms are urelements. In ZFC, there are no atoms, i.e. everything is a set in ZFC.

`V` is the universe of all sets:
```hs
V₀ is the set of atoms
V₁ = 𝒫(V₀) ⋃ V₀
V₂ = 𝒫(V₁) ⋃ V₁
⋯
Vω = V₀ ⋃ V₁ ⋃ V₂ ⋃ ⋯
Vω﹢₁ = 𝒫(Vω) ⋃ Vω
Vω﹢₂ = 𝒫(Vω﹢₁) ⋃ Vω﹢₁
⋯
Vω﹢ω = Vω ⋃ Vω﹢₁ ⋃ Vω﹢₂ ⋃ ⋯
V2ω﹢₁ = 𝒫(Vω﹢ω) ⋃ Vω﹢ω
⋯
```

In ZFC
- V₀ = `∅`
- V₁ = 𝒫(V₀) ⋃ V₀ = {∅} ⋃ ∅ = `{∅}`
- V₂ = 𝒫(V₁) ⋃ V₁ = 𝒫({∅}) ⋃ {∅} = {∅, {∅}} ⋃ {∅} = `{∅, {∅}}`
- V₃ = {∅, {∅,{∅}}, {∅}, {{∅}}} ⋃ {∅, {∅}}
  V₃ = {∅, {∅,{∅}}, {∅}, {{∅}}  ,  ∅, {∅}}
 V₃ = `{∅, {∅,{∅}}, {∅}, {{∅}}}`
