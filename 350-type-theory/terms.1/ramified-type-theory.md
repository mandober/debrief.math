section    : math
subsection : Type Theory
title      : Ramified Type Theory
filename   : ramified-type-theory.md
parent     : 90-type-theory
path       : 90-type-theory/ramified-type-theory.md
link       : [Ramified Type Theory](90-type-theory/ramified-type-theory.md)

---

# Ramified Type Theory

Russell introduced types, in 1908 edition of his and Whitehead's _Principia Metematica_, in hope of avoiding paradoxes, especially the Russell paradox that occurs in face of impredicativity.

Something that is **impredicative** contains reserences to itself, it is a self-referencing definition. Roughly speaking, a definition is impredicative if it mentions (or quantifies over) the set being defined, or, more commonly, another set that contains the thing being defined.

Russell's paradox is an example of an impredicative construction - namely the set of all sets that do not contain themselves. The paradox is that such a set cannot exist, because if it did, the question becomes whether it contains itself or not: if it does, then by definition it should not, and if it doesn't, then by definition it should.

On the other hand, **predicativity** entails building **stratified** (or ramified) theories with quantification over lower levels of entities that results in variables of some new type, distinguished from the lower types that the variable ranges over. An example is intuitionistic type theory, which retains stratification (ramification) in order to avoid impredicativity.

Therefore, Russell's plan was to avoid impredicativity by applying the vicious circle principle: "_Whatever involves all of a collection must not be one of the collection_". Types in **Ramified Type Theory** (RTT) of _Principia_ have a double hierarchy: one of simple types and one of orders. The notion of a general set was replaced with the hierarchy of sets of different types - a set of a certain type is only allowed to contain sets of strictly lower types. The primary objects are assigned to type 0, the properties of individuals to type 1, properties of properties of individuals to type 2, and so on, and no properties which do not fall into one of these logical types are allowed.

In _Principia_, Whitehead and Russell attempted to found mathematics on logic, the approach that is known as **logicism**. The result was a very formal and accurate build-up of mathematics, avoiding the logical paradoxes, however, the description of RTT, though extensive, was still informal.
