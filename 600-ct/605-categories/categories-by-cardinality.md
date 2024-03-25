# Categories by cardinality

Since arrows connect objects, the cardinality of a category is determined by the number of objects it contains. Objects are prerequisite for arrows - no objects, no arrows. Here, I consider some categories divided by classes which are determined by the number of contained objects; then each class has a number of subclasses that form by the incremental addition of arrows.

The code in parens (x.y) denotes the number of objects (x) along with the number of id arrows (always the same number, since each object must have its own unique id arrow), and the number of non-identity arrows (y).


## No objects

(0.0) There exists the empty category, a category devoid of objects and thus also of arrows, however, it's not particularly interesting. No objects, no arrows.

## One object

(1.0) At a minimum, besides the object `A`, a single-object category must also have its identity arrow, `1ᴀ`. One object, one arrow (id).

```
1ᴀ : A -> A
1ᴀ ∘ 1ᴀ ∘ ... ∘ 1ᴀ = 1ᴀ   "either way you turn your ass is behind"

    1ᴀ
A <-----> A
```

(1.x) A singleton category can possibly have any number of other arrows [?], but they are all isomorphic to the identity arrow. If this is true, how does one distinguish the id arrow?

```
1ᴀ  : A -> A
id_ : A -> A

    1ᴀ
A <-----> A
↑         ↑
|id??     |id?
↓         ↓
A <-----> A
    id???
```

1 object and its id arrow, plus ∞ of other arrows [?]


## Two objects

(2.0) At a minimum, a category with two objects has:
- two distinct objects `A` and `B`
- two ID arrows, `1ᴀ` and `1ʙ`, one for each object

```
  1ᴀ
A ----> A


B ----> B
  1ʙ
```

The objects need not be connected, so no other arrows need exist.


(2.1) Finally, we have a situation when an arrow is added to our 2-object category! We decide to direct it from `A` to `B` and name it `f`. How existing, our first proper morphism `f : A -> B`! It allows us to finally compose things, although trivially; we can only precompose `1ᴀ` before `f` as `f ∘ 1ᴀ`. It leads us to our first equality `f ∘ 1ᴀ = f`. [NOTE] Some authors use this to define the identity arrow [!?], which seems incorrect because there are categories without inter-object arrows that still have identity arrows!


which is equal to `f` i.e.. On the other hand composing `1ᴀ` after `f`, `1𝕒 ∘ f`, would make no sense because the codomain of `f` is not the domain of `1ᴀ`, i.e. `cod(f) ≠ dom(1ᴀ)`.

```
    1ᴀ
A -------> A
|          |
|f         |f
↓          ↓
B -------> B
    1ʙ

f ∘ 1ᴀ = f


       A -> A              A -> B
dom (1ᴀ) -> cod(1ᴀ) |> dom(f) -> cod(f)
dom (1ᴀ) == cod(1ᴀ) == dom(f)

f : A → B
g :     B → C
g ◦ f : A → C

f ◦ g : error

```


## Definition

A category is a collection of objects together with morphisms connecting these objects.

A category `C` is given by a collection `C₀` of objects and a collection `C₁` of arrows, which have the following structure:
- each arrow has an object as source and target, `f: A -> B`
- identity: each object has identity arrow, `1ₐ` or `Iₐ`
- transitivity axiom: if there is an arrow `a -> b` and an arrow `b -> c` then there must be an arrow `a -> c`

## Examples of categories

- Ordered categories: sets and relations
- Category of sets and functions
- `Hask` quasi-category of Haskell types and functions

---

A category C is an algebraic structure consisting of a class of objects (denoted by A, B, C, etc.), and a class of arrows (denoted by f, g, h, etc.), together with three total and one partial operation.

The first two total operations are called *target* and *source*; both assign an object to an arrow. We write `f : A <- B` (pronounced "f has type A from B") to indicate that the target of the arrow `f` is `A` and the source is `B`.

The third total operation takes an object `A` to an arrow `idᴀ : A <- A`, called the *identity* arrow on `A`.

The partial operation is called *composition* and takes two arrows to another one. The composition `f ∘ g` (read "f after g") is defined iff `f : A <- B` and `g : B <- C` for some objects A, B, C, in which case `f ∘ g : A <- C`. In other words, if the source of `f` is the target of `g`, then `f ∘ g` is an arrow whose target is the target of `f` and whose source is the source of `g`.

Composition is required to be associative and to have identity arrows as units:

∀fgh. (f: A <- B) ∧ (g: B <- C) ∧ (h: C <- D) .    
f ∘ (g ∘ h) = (f ∘ g) ∘ h = f ∘ g ∘ h

∀f. f: A <- B .     
idᴀ ∘ f = f = f ∘ idʙ
