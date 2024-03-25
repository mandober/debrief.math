# CT :: Identities

Notions of identity in category theory.

- identity axiom
  - left identity axiom
  - right identity axiom
  - identity element (wrt the binary operation over the carrier set)
  - neutral element
  - unit
- identity function
- endofunction
- identity object
- identity arrow, identity morphism
- identity functor
- endofunctor

## Identity element in algebra

**Identity** is an axiom of abstract algebra related to algebraic structures. An algebraic structures is a set, called the carrier set, endowed with one or more binary operations, and satisfying a set of axioms. The **identity axiom** requires that the carrier set `A` has a specific, unique element, usually denoted by `ϵ`, which acts as a unit of a particular binary operation (each binary operation has own identity/unit). If `A` is a carrier set, with `a ∈ A` being any element, `⨁` a binary operator and `ϵ` the unit, then `ϵ ⨁ a = a` (left unit axiom) and `a ⨁ ϵ = a` (right unit axiom), so the **unit axiom** holds, `ϵ ⨁ a = a = a ⨁ ϵ`. More precisely, `∃ϵ∀a. ϵ ⨁ a = a = a ⨁ ϵ`. Note that the quatifier `∃` comes before `∀` to convey that `ϵ` is a unique element across the set: the identity, `ϵ`, is the same for all elements `a`. Compare this with the formula for the axiom of invertibility, where each element `a` has its own unique inverse `a̅`, stated by `∃ϵ∀a∃a̅. a̅ ⨁ a = ϵ = a ⨁ a̅`.

## Identity function

Considering any concrete type `τ` (where `τ` is e.g. Int, Bool), there is a unique function, called the **identity function**, that maps the type `τ` to itself by mapping each term `x` in `τ` back to itself, `ι :: τ -> τ` (abstract and general signature).

Each concrete type has its own identity function that virtually the same (save the "carrier" type).

```hs
idInt :: Int -> Int
idInt x = x

idBool :: Bool -> Bool
idBool x = x
```

PLs with generics have *type variables* that represent a type just like a *term variable* represents a value.

Above, in the `idInt` function, `x` is a *term variable* that stands for any integer. However many values a type has (`Int` type has 2⁶⁴ values), that many distinct invocations of the function `idInt` are possible. As a stepping stone on the way to *further generalization*, we can think of each invocation as a unique **instantiation** of this function (The initial generalization was from values to functions). However, no matter how many terms a type has, there is only ever a single unique identity function (we invoke the same function `idInt` whether the arg is 4, -1, etc.). This is contrasted by the number of (simple) constant functions a type has: a type has as many constant functions are there are terms - one constant functions for each term, `∀z ∈ ℤ. λx.z`, for example, `λx.0`, `λx.1`, `λx.42`, etc. No matter the arg, a constant function always returns a fixed value: `(λx.0)0 = 0`, `(λx.0)43 = 43`, `(λx.0)(-1) = 0`, even if the argument is non-number (if allowed), e.g. `(λx.0)(λx.0) = 0`.

Each type has a single, unique identity function, but the fact that each such function must have a unique name is cumbersome - all these identity functions virtually do the same thing (just return their arg) no matter their type; save for the type, they have exactly identical implementations.

Just like term variables abstract values/terms, type variables abstract types. Term variables are encountered at the *term level*, and type variables at the *type level*. The level after that is the *kind level*. These levels are made by what is called a **sort**; values, types and kinds constitute 3 distinct sorts. A formal system with 3 sorts is called *3-sorted*. A formal system is a system of logic or a programming language (all PLs are formal languages).

1. term level (sort_1):
- terms are values
- without types, we cannot relly discuss different values
- perhaps we can use an alternative notion of a *shape* for now
- and divide values by their shape into scalars and compound values
- scalar values
  - scalars are values that have the simplest, non-compound, shape
  - scalars are atomic values that have no parts
  - scalars are the basic building blocks in a PL
  - examples of scalar values (but there are no types yet): 1 (Int), 1 (Integer), True (Bool), 3.5 (Float), 3.5 (Double), 'c' (Char)
  - scalars are simple so they may pass as "data", but not really as "structure". When types are available, scalars may also pass as "types" or "data types", but not really as "type structures" or "data structures".
  - (when types become available) a scalar is a simple, single, atomic type
- compound values
  - all types have structure in some sense, but we usually associate structure with compound values, which may have a very simple or entirely complicated structure. A simple structure is examplified by an array of integers; is is so simple, it is indistinguishable from a series of integers (laid out contiguously in memory).

  - compound values (structures)
    - data structures (data type)
      - algebraic data types (ADTs)
        - zero type (`Void`, empty, 𝟘)
        - one type (unit, `()`, 𝟙)
        - product types (×), canonically: `(,)` pair, `(,) a b` or `(a, b)`
        - coproduct types (+), canonically: `Either`, `Either a b`
        - exponential types (^), canonically: `(->)`, `(->) a b` or `a -> b`
        - other (quotient types, distribution types)
    - function values (or just 'functions')
      - functions are exponential types, `a -> b` ≅ `bᵃ`
      - term-level functions: `term -> term`
      - in most aspects, functions are like the other compound types (but should be investigated a the type level not here at the term level)

2. type level (sort_2):
  - type term-level functions: 
    `type -> type`
    `term -> type`
    `type -> term`

        - in most aspects, functions are like the other compound types (but should be investigated a the type level not here at the term level)
        that is, like the other binary type constructors. Function type ctor

3. kind level (sort_3):
  - kinds
  - kind-level functions (kind -> kind)

Where do functions `term -> type` and `type -> term` live? Also at the type level, of course.


At the *term level* we have *values*. Values are classified (mostly by behavior, but also by capacity - since computers have finite memory) into *types*, which live at the *type level*.


After types, the next level of abstraction is kinds, which live at 




So each concrete type has its own unique identity function, which must have a unique name (to tell apart different id functions). This would accumulate so many names (one name per type) for basically the same thing (and it is what we have to do in PLs without generics, e.g. C; and not just for the id function).


```hs
-- general signature of the id function for concrete type τ
ι :: τ -> τ


class IdFunction a where
  idFunction :: a -> a

instance IdFunction Bool where
  idFunction :: Bool -> Bool
  idFunction b = b

instance IdFunction Int where
  idFunction :: Int -> Int
  idFunction x = x
```

The identity function is a polymorphic function
