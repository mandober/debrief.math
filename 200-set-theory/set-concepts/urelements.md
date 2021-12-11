# Urelement

https://en.wikipedia.org/wiki/Urelement

An **urelement** (or ur-element, from the German prefix "ur-" meaning "primordial") is an object that an element of a set but that is not a set. It is also referred to as an *atom* or *individual*.

```
- all Sets are Objects: if x is a set then x is an object, ∀x. S(x) -> O(x)
- if x is an object then it is maybe a set:     ∃x.O(x) ⋀  S(x)
- if x is an object then it is maybe not a set: ∃x.O(x) ⋀ ¬S(x)
  where
  O is-object predicate
  S is-set predicate
  x ∈ Obj ⋀ x ∉ Set

Obj := Set | Set
M := Contained | Container
Ur = Atomic object
Member = { Ur, Set, Pure, Class, ProperClass, PureClass }
Set = { Pure set, Class, Proper class, Pure class }

Set         = { x | Obj(x) }
PureSet     = { x | Obj(x) ⋀ ¬Set(x) }
Class       = { x | Obj(x) ⋀  Set(x) }
ProperClass = { x | Class(x) } ⋀ ProperClass ∉ Set
PureClass   = { x | ProperClass(x) }
```

* A *set* contains objects (either urelements or sets).
* A *pure set* contains only urelements.
* A *class*    contains only sets.
* A *pure class* is a class that contains only proper classes.
* A *proper class* is a set but never an element.

As far as set theory is concerned only sets need exist; no other objects but sets are necessary to derive further mathematical objects like numbers.

Props
* An object is either an atomic object or a set.
* An element is an object contained in a set.
* An element is either an atomic object or a set (except a Proper Set).
* An object is either an element or non-element.
* Proper Set is always a Set but never an element.
* Proper Set is a non-element.
* Universal set, `𝓤`, is a proper class: always container, never contained.
* Universal set, `𝓤`, is an object but a non-element.
