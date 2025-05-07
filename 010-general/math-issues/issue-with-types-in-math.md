# The issue woth types in mathematics

Looking at math-friendly programming languages - languages that mimic mathematical notation and/or semantics - a thing that pops out the most is a strong static type system that comes with multitude of bultin types, but also supports custom types, allowing them to enjoy the same features that builtin types do.

>If types are so important in languages inspired by math, how come they are so overlooked in math?

We can see an inadequate differentiation and classification of mathematical objects by type in almost every math field. With set theory being the foundation of amthematics, it would be expected that sets have a stronger notion of type that they do.

In almost all PLs there is a distinction between an empty and non-empty collection. Many languages have support for generic types, so a generic set is denoted `Set<A>`, meaning it takes an argument that is a type, and only then yields a complete type, like `Set<Int>` or `Set<Bool>`, or even `Set<Set<String>>`. In another notation, `Set a`, `a` represents the *type parameter* - it will be *instantiated* by a (concrete) type, so we get `Set Int` or `Set Bool` or `Set (Set String)`.

Even without support for generics, languages distinguish between a collection of integers and a collection of strings; `int xs[]` vs `char* ys[]` (this clumsy notation is from C). In languages with a serious type system, values of type `Set Int` and those of `Set Bool` can have little to do with each other, jsut like `Int` has little to do with `Bool`.

In math, on the other hand, sets (as one of the math's elementary objects) have almost no notion of types. Some set theories have some level of distinction between sets (separating them into proper sets and classes), but even that is weak, and anyway, the ruling set theory (ZFC) has no types whatsoever. In fact, in ZFC, *everything is a set*, i.e. when everything has the same type there are practically no types at all. All axioms of ZFC only talk about sets, there is no notion of other kinds of objects - like non-set objects which are in some alternative set theories called *urelements*.

>If one agrees that set theory is an appealing foundation of mathematics, then all mathematical objects must be defined as sets of some sort (or introduced as primitives).

Gathering the notions across the various set theories, we'd have the notions of sets, proper sets, classes, proper classes, urelements, conglomerates, etc. However, most of these concepts describe what could be interpreted as *kind* rather then type. The basic notion of types with regard to sets, would be to distinguish sets by the type of elements they contain. An even stronger notion of types would make distinctions based both on the type of elements and their number.

However, in modern math based on ZFC, any singleton set is deemed to have the same type as any two-element set, which is the same type that a set containing a bunch of nested sets has. There is no elementary differentiation of sets on the inhabited vs non-inhabited plane: the type of `∅` is the same as the type of `{∅}`. 

### Ordered pairs

If one agrees that set theory is an appealing foundation of mathematics, then all mathematical objects must be defined as sets of some sort. Hence if the ordered pair is not taken as primitive, it must be defined as a set.

Many people, however, feel this distinction. In discussing the definition for an ordered pair in terms of sets, the accepted definition is Kuratowski's, given by: `(a, b) = {{a} , {{a, b}}}`. Defining an ordered pair as a set must be careful to account for the `(a, a)` situation. If the definitio nwas instead `{{a} , {a, b}}`, then `(a, a)` would expand to

```js
(a, b) = {{a}, {a, b}}
// but if a = b
(a, a) = {{a}, {a, a}}
       = {{a}, {a}}
       = {{a}}
// WRONG
```

which would be incorrect. That's why the actual definition has an extra set of braces around what is the second component in set notation, i.e. `{{a, b}}`. But then some authors have objected to this, saying that the two sets that represent pair components "do not have the same type" - meaning the "type" of `{a}` vs the "type" of `{{a, b}}`. This instance showes that the notion of types is aleady present, just not enforced.


Norbert Wiener proposed the first set theoretical definition of the ordered pair in 1914: `(a,b) := { {{a},∅}, {{b}} }`. Wiener used `{{b}}` instead `{b}` to make the definition compatible with type theory where all elements in a class must be of the same "type". By nesting `{b}` within an additional set, the type of the "second pair component", `{{b}}`, becomes equal to the type of the "first pair component", `{{a},{}}`.


Anyway, once order pairs were defined they have become mathematical objects in their own right (just like sets), so now, weirdly, there is a type distinction between a set and an order pair - despite the fact that ordered pairs are essentially sets.

Still considering ZFC at the center of it all, today, mathematics distinguishes between these typesat least
- set (sets in general have the type "set")
- fundamental number sets, ℕ ℤ ℚ ℝ ℂ, each has a distinct type
- ordered pair
- number

Sets in general have the type "set" which is supposed to be different from the types of cencrete number sets: the type ℕ is not the same as a feneral "set" type. The type ℕ is definitely distinct from the type ℝ.
- type "set" ≠ type ℤ
- type "set" = {ℤ}
- type "set" = {ℤ, ℚ}
- type ℤ ≠ type {ℤ}
- type ℤ ≠ type {ℤ, ℚ}
- type ℚ ≠ type ℝ



Types `ℕ, ℤ, ℚ, ℝ, ℂ` and their variants are used in function definitions where they stand for domain and codomain set. 
- 0 ∈ ℕ
- ∀n ∈ ℕ ⇒ S n ∈ ℕ
- ∀n ∈ ℕ. S n ≠ 0
- ∀n∀m ∈ ℕ. S n = S m ⇒ n = m
- ∀n∀m ∈ ℕ.
  - n + 0   = n
  - n + S m = S (n + m)
  - addional facts:
  - [ 1 = S 0                   ]
  - [ 2 = S (S 0)               ]
  - [ 3 = S (S (S 0))           ]
  - [   n +   1 = S n           ]
  - [ S n +   m = S (n + m)     ]
  - [ S n + S m = S (S (n + m)) ]
- 1 ∉ {ℕ}
- ℕ ∉ ℕ
- ℕ ∉ {ℕ}



## Emergence of types

It is not the case that math lacks types completely, but they have emerged almost by accident, even after the introduction of serious type theories in the first half of the 20th century. After a couple of millenia of loosely typing, 'twas a time when math finally ran out of the excuses to keep grunting without type support. In fact, creeping this feature in became imperative as math got itself into a bit of a pickle.


Types
- Simple types
  - Set type: any distinct set may be considered a type.
    - the empty set `∅` is a type, namely the uninhabited *zero type*
    - the set of natural numbers is the type `ℕ`
  - the set of prime numbers is the type `ℙ` (a subset and subtype of ℕ)
  - the set of odd numbers is a type
  - the set of even numbers is a type
  - the set of integral numbers is the type `ℤ`
  - the set of rational numbers is the type `ℚ`
  - the set of real numbers is the type `ℝ`
  - the set of complex numbers is the type `ℂ`
- function types: a function type is a type
  - function type `f : ℕ → ℕ` is distinct from `ℕ`, `ℝ`, `ℕ → ℝ`, …
  - the set of irrational numbers is a type, `ℝ∖ℚ`

  - number sets, ℕ, ℝ, ℚ
  - subsets of number sets
- multi-valued function, `f : ℕ → {ℝ}` (multi/sub/super/set co/domain)
- powerset, 𝒫(ℕ) (unusual co/domain), `f : ℕ → 𝒫(ℕ)`

A function `f : ℕ → 𝒫(ℕ)` cannot exists, still there are some similar functions that return a collection of sets (collection of subsets).

It would be superflous if each and every *singleton set* would be considered a type because all singleton sets are the same in a way. Namely, they are all *isomorphic* to each other. Math allows for the existence of multiple singleton set, but just like with the empty set, one is all that's required. There is always a function that can transform one singleton set into another. In fact, many mathematical theories (category theory primarily) stipulate the existence of a unique (and thus sole) singleton set (they are all unique - up you… ahm, up to isomorphism). This is the reason there is only one type called "one" or `𝟙` (empty set represents the *zero type*), and any singleton set is an instance of this type. This is probably confusiong - there are many singleton sets but only one, aka "the" singleton set, and only one *singleton type*. 'tis what it is.

- 𝟘, empty set `∅`
- 𝟙, signleton set, `{∙}`
- ℕ
- ℤ
- ℚ
- ℝ
- ℂ
*Type variables* are usually uppercased, value-level vars are lowercased.
- `x y z…` are value variables, as in `x + 1` or `f(x) = x³`
- `X Y Z…` are type variables

Typically, `X` (or whatever letter) represents a set. So, the type of an arbitrary function could be denoted by `f : X → Y`. Note that `X → Y` is a compound type, more precisely, it is a function type, as opposed to a plain (flat) type, like `X` that denotes a set. In fact, `→` is what is called a *type constructor*. A type constructor is like a function on the type level, but it takes other types as arguments. The type `X → Y` then takes two (concrete) types as arguments, and produces a function type. For example, it may take ℕ and ℝ and produce the function type `ℕ → ℝ`.

Function type constructor is a binary type ctor. Another binary type ctor is the tuple, that is, the 2-tuple (aka a pair). The name of this type ctor is symbolic (it is like a type operator - an operator on the type level), `(,)` (the comma is actual type ctor, but since it cannot live without parens we also count them as part of the type ctor). The tuple type ctor is named `(,)` but defined as `(X, Y)` - it has two type variables, so it needs two (concrete) types to *saturate*.

>Only saturated types are inhabited by values.

For example, many mathematical structures, especially in algebra have a signature (are defined) as tuples, e.g. `(A, f)` is a proper type of homogeneous functions because function's domain and codomain must also be specified. Sure, we can infer the function's domain from the function's graph `f`, but not its codomain. Here, however, there is only one set specified because homogeneous functions (endofunctions) are maps on the same set, as in e.g. `f : ℕ → ℕ`, which is a different function then `h : ℤ → ℤ` even if `f` and `h` are defined exactly the same, e.g. even if both are identity functions such that `f : ℕ → ℕ` is defined by `f(x) = x`, and `h : ℤ → ℤ` is defined by `h(x) = x`.


## Math types

Math possibly distinguishes between these types:
- set (sets in general have the type "set")
- relation: set of ordered pairs
- function: set of ordered pairs
- ordered pair: set, essentailly
- fundamental number sets, ℕ ℤ ℚ ℝ ℂ, each has a distinct type (sets)
- number (set)

>Actually, if one agrees that set theory (ZFC, concretely) is an appealing foundation of mathematics, then all mathematical objects must in fact be defined as sets (or introduced as primitives).

Thus, on the one hand, all mathematical objects are sets.

On the other hand, it is often said that once a new object is established it is a mathematical object in its own right (but perhaps it is not a distinct type).
