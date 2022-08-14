# Categories, Types, and Functions

## Sets

A set, in this book, is simply a bag of dots. The number of elements of a set `X` is called its cardinality, denoted by |X|. Note that cardinalities of infinite sets may involve very large numbers indeed.

n' = nth ordinal
0' = {}
1' = {1}
2' = {1,2}
3' = {1,2,3}
n' = {1,2,3,...,n}

Given a set `X`, a **subset** of it is another set `Y` such that every element of `Y` is an element of `X`, denoted `Y ⊆ X`. Also, `Y ⊆ X → |Y| ≤ |X|`.

Given a set `X` and a set `Y`, their **cartesian product** is the set `X × Y` that consists of the ordered pairs `(x,y)` as elements, where `x ∈ X` and `y ∈ Y`. The cardinality of the product is the product of the cardinalities: |X × Y| = |X| × |Y|. Also, A × ∅ = ∅ = ∅ × A.

## Functions

Let `X` and `Y` be sets. A mathematical **function** `f` from `X` to `Y`, denoted `f : X → Y`, is a subset of `f ⊆ X × Y` with the following properties:
- `∀x ∈ X` there is at least one `y ∈ Y` for which `(x,y) ∈ f`
- `∀x ∈ X` there is at most one `y ∈ Y` for which `(x,y) ∈ f`
- If `f` satisfies the first property it is *total*, and if it satisfies the second property it is *deterministic*. If `f` is a function satisfying both properties, then we write `f x` to denote the unique `y` such that `(x,y) ∈ f`

It can be said that `X` is the *domain* of `f`, and `Y` the *codomain* of `f`, but some authors say that the source set is the domain, the target set is the codomain, and the function `f` relates the two sets. The problem is that not all of cod elements are asociated with the function but the definition of a function should still incorporate the entire codomain and not just the range.

A function is forbidden from splitting a domain element into multiple codomain elements, i.e. mapping the same dom el into several cod elements. A function is allowed to collapse multiple elements from domain into one element of the codomain; such function is surjective. A second source of asymmetry: functions are defined for all elements in the domain, but not every element of the codomain needs to be associated.

The subset of elements in the codomain that are mapped by a function is called the *image of a function*: `img f = {y ∈ Y |∃x ∈ X. f(x) = y}`

The directionality of functions is reflected in the notation we are using: we represent functions as arrows going from source to target, from domain to codomain. This directionality makes them interesting.

You may think of *a function that maps many things to one as discarding some information*. The function ℕ → 𝔹 that takes a natural number and returns 'true' if it's even and 'false' otherwise, doesn't care about the precise value of a number, it only cares about it being even or odd. It *abstracts* some important piece of information by discarding the details it considers inessential.

You may think of *a function that doesn't cover the whole codomain as modeling its domain in a larger environment*. It's creating a model of its domain in a larger context, especially when it additionally collapses it by discarding some details. A helpful intuition is to think of the domain as defining a shape that is projected into a bigger set and forms a pattern there. We'll see later that, compared to category theory, set theory offers a very limited choice of bare-bones shapes. *Abstraction* and *modeling* are the two major tools that help us understand the world.

### Functions from a singleton set

A **singleton set**, that is, a set with one element, such as `{1}` or `{∗}`, is the simplest non-trivial shape. *A function from a singleton set picks a single element from the target set*. There are as many distinct functions from a singleton to a non-empty set as there are elements in that target set. In fact, we may identify elements of a set with functions from the singleton set. We'll see this idea used in category theory to define *global elements*.

If we take unit as the source, singleton, set and Bool as the targer set, then there are exactly two distinct functions `() → Bool`, as confirmed by the cardinality formula, 2¹ = 2. In Haskell, these 2 functions can be defined as:

```hs
true :: () -> Bool
true () = True

false :: () -> Bool
false () = False
```

So the function `true` always picks the same element, i.e. `True`, from the target set, while `false` always pick the element `False`. In this way each function identifies or selects one element from the target set.

### Functions from a two-element set

An **unordered pair**, or a **two-element set**, can be used to pick pairs of elements in the target set. It embodies the idea of a pair.

Taking Bool set as the selector set, each function from Bool to any non-empty set X is a subset of the Carthesian product of the source and target sets, denoted by `(Bool ⟼ X) ⊆ (Bool × X)`. Of course, this is fairly evident being the definition of a relation, and functions are just special relations. Any relation or function from a set A to a set B will always be some subset of the cartesian product of A and B.

```js
Bool = {T, F}
Two  = {1, 2}
Bool × Two = { (T,1), (T,2), (F,1), (F,2) }

p11 : Bool → Two = { (T,1), (F,1) }
p12 : Bool → Two = { (T,1), (F,2) }
p21 : Bool → Two = { (T,2), (F,1) }
p22 : Bool → Two = { (T,2), (F,2) }

pXX ⊆ Bool × Two
```

So each of the four functions is a subset of the Carthesian product of the source and target sets, `pXX ⊆ Bool × Two`.

In Haskell, these 4 functions can be defined by:

```hs
-- Bool = {T, F}
-- Two  = {1, 2}

p11 :: Bool -> Two
p11 True  = 1
p11 False = 1
-- p11 : Bool → Two = { (T,1), (F,1) }

p12 :: Bool -> Two
p12 True  = 1
p12 False = 2
-- p12 : Bool → Two = { (T,1), (F,2) }

p21 :: Bool -> Two
p21 True  = 2
p21 False = 1
-- p21 : Bool → Two = { (T,2), (F,1) }

p22 :: Bool -> Two
p22 True  = 2
p22 False = 2
-- p22 : Bool → Two = { (T,2), (F,2) }
```

There are 4 functions from `Bool` to `Two` as confirmed by the formula 2² = 4. Each function picks a certain pair of elements from the target set. `p11` and `p22` are constant functions because they ignore their argument always returning the same element from the target set.


The **identity function** on a set X is the function `idx : X → X` given by id(x) = x. Given an input x, it outputs that same x. It does nothing.

Let `f : X → Y` and `g : Y → Z` be functions. Then a **function composition**, denoted either `g ◦ f` or `f |> g`, is the function `X → Z` that sends each `x ∈ X` to `g(f(x)) ∈ Y`.

Since we usually draw arrows in the left-to-right order, as in `f : X → Y`, or `X ⟼ Y`, it's natural to write composition *in diagrammatic order* as `f |> g` for `X ⟼ Y ⟼ Z`. The operator `&` is already defined in Haskell that works for this style of function composition and application, e.g. `x & f & g` means the same thing as `g(f(x))`. We can also define our custom operator for this style, e.g. `|>` making the application more evident: `x |> f |> g`.

On the other hand, considering the notation for function application f(x), we can denote function composition *in application order* as `g ◦ f` because then the application is `g(f(x))`.

With the *diagrammatic notation* `bc ∘ ab`, where `bc : b -> c` and `ab : a -> b`, the output of the right function, `ab`, must match the input of the left function, `bc` (they indeed have the matching type parameter `b`).

With the *application notation* `ab |> bc`, the things are more obvious: the output of the left function `ab` must match the input of the right function `bc`.


Two functions `f : X → Y` and `g : Y → Z` are equal if `f(x) = g(x)` for every `x ∈ X`. This is the *intensional equality* of functions. The extensional equality of functions would be determined by whether they are defined the same, up to α-equivalence.

*The unit laws* then say that for any `f : A → B`, we have `f ◦ idᴀ = f` (right identity) and `idʙ ◦ f = f` (left identity). Or, as the total identity `idʙ ◦ f = f = f ◦ idᴀ`.

*The associative law* says that `(h ◦ g) ◦ f = h ◦ (g ◦ f)`.

**Composition of functions** obeys 3 laws: the left and right unit laws, and the associative law.


## Categories

A category is a network of composable relationships.

The prototypical category is `𝗦𝗲𝘁`, the category of sets. The objects in `𝗦𝗲𝘁` are sets and the relations are functions. These form a vast network of arrows pointing from one set to another. More precisely, `𝗦𝗲𝘁` is the category of small sets, i.e. sets all of whose elements come from some huge, pre-defined, universal set `𝒰`(in order to avoid paradoxes).

A category `𝒞` consists of four constituents:
1. a set of objects, `Ob(𝒞)`, elements of which are called *objects* of `𝒞`
2. a set of *arrows*, `Arr(𝒞)`. For every pair of objects `a,b ∈ Ob(𝒞)`, a set `𝒞(a,b)`, elements of which are called morphisms from `a` to `b`, denoted `f : a → b`
3. for every object `a`, a specific morphism `idₐ ∈ 𝒞(a,a)` called the *identity morphism* for `a`.
4. for every 3 objects `b,c,d`: if there are morphisms `f : b → c` and `g : c → d`, then there must be a morphism `(g ◦ f) : b → d`, the *composite morphism* of `g` after `f` (sometimes denoted `f |> g`).

These constituents are subject to 3 constraints:
1. *Left unital*:  for any `f : a → b`, the equation `idᴀ ◦ f = f` holds
2. *Right unital*: for any `f : a → b`, the equation `f ◦ idʙ = f` holds
3. *Associative*:  for any 3 morphisms the law of associativity holds

If `f : c → d` is a morphism, we again call `c` the domain and `d` the codomain of `f`. Also, we can only compose morphisms when the codomain of one morphism matches the codomain of another morphism.

So a category is some objects, some morphisms that relate them, and a rule for composing these morphisms!

The associativity law says that we can take any sequence of arrows, following as many arrows as we like, uniquely collapsing it down to a single arrow that captures that entire sequence.

The identity morphism says that for any object, we can simply choose an empty sequence, a "do nothing" arrow (standing for a sequence of arrows), and that can still be represented as a morphism in the category, namely, the identity morphism.

The notation `C(a,b)` signifies the set of morphisms between two objects `a` and `b` in a category `C`. For example, `𝗦𝗲𝘁(A,B)` is the set of functions from `A` to `B` in 𝗦𝗲𝘁 category. 


𝗦𝗲𝘁, the category of sets has all the (small) sets as its objects. Given two sets A,B ∈ Ob(Set), the set Set(A,B) is a set of arrows in Set which has as its elements all functions on sets, f : A → B. So, there's plenty of sets: objects are sets, and for every two objects we have another set, Set(A,B). The identity morphism idᴀ : A → A is just the identity function, and composition of arrows is the composition of functions on sets.
