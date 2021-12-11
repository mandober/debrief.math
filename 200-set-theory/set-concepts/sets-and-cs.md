# Sets and CS

In math, we can base everything on a set, and for that we only need the existence of the empty set, ∅.

- math-objects
  - primitives
  - sets
  - lists
- primitives
  - numbers, ℕ
  - ∅ , 0, zero, empty set,   (empty unordered collection)
  - (), 1, unit, empty tuple, (empty ordered   collection)
  - set (unordered collection)
  - list (ordered collection)
- atomic-objects
  - primitives
- urelements
  - primitives
- sets (unordered collections)
- lists (ordered collection)


- collections (are structures)
  - unordered collection
    - set
    - ordered pair
  - ordered collection
    - tuple
    - list


```
obj   :=
       | nums
       | ()
       | ∅
       | set
       | tuples
       | list


nums  := 0, 1, 2, …

prim  := 

set   := { obj* }       set is an unordered collection of 0+ objects
set-0 := ∅ or {}        the empty set
set-1 := { obj }
set-2 := { obj, obj }


* a list is an ordered collection of 0+ objects
  list := ( obj, obj, … )

list-4   = (a, b, c, d)
tuple-4  = (a, (b, (c, d)))
tuple-4' = ( ( (a, b), c) ,d )

(a, b)
(a, b, c)    | (a, (b, c))      | ((c, b), a)      | ((a, b), c)
(a, b, c, d) | (a, (b, (c, d))) | (((d, c), b), a) | (((a, b), c), d)

(a, 𝓑)   (a, b, C)
(𝓑🗗, a)   (B, a)

🗗

* tuple contains any number of component objects
* 

unit    := ()              unit is an empty tuple

1-tuple := ( obj )
2-tuple := ( obj, obj )
3-tuple := ( obj, obj, obj )


pair := ( obj , ( obj | pair ) )

pair, list-2  := ( obj , obj )

pair, list-3  := ( obj , ( obj , obj ) )
pair, list-3  := ( obj , ( obj , (obj , obj) ) )

pair := ( obj, obj )


```


Let
- the set of mathematical objects, `𝓜`, `𝓸` ranges over `𝓜`
  - primitive objects:
    - The set of the Natural numbers, `ℕ`
      - `0` which corresponds to the ∅
      - `n` ranges over ℕ
      - usually, numbers are taken as mathematical objects in their own right
      - 0 ∈ 𝓜
  - set (mathematical object in its own right)
  - ordered pair (mathematical object in its own right)
    - `⟨a,b⟩`
    - even if defined as: `(a,b) ≡ {{a}, {a,b}}`
- set members (elements)
  - urelements: all objects except sets
  - pure ements: 

- metavar `α` range over mathematical objects

Ranges over
- The relation "ranges-over" can be defined an ordered pair `(a,b)` where `a` is a (meta)variable and `b` is a set.
- `(n, ℕ)`, a variable `n` ranges over `ℕ`
- `(𝓸, objects)`
- (𝓢, sets)



- in PLT, especially in FP, particularly in Haskell
  - a set corresponds to a type
    - `Σ : Set` ~~> `τ : Type`
  - an element of a set corresponds to a term (value) of that type
    - `a ∈ A` ~~> `α ∈ τ`
  - in FP, a set of sets correspond to a type class
    - ∀S. (S : Set). S ∈ 𝓤
    - (C : Class) -> Tᶜ ∈ C
  - in FP, operations over a set correspond to functions
  - in FP, operations over a set of sets correspond to methods
