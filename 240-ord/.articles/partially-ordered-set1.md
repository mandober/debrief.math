# Partially ordered set




A familiar example of a poset (or rather, a partially ordered type) can be found in almost any programming language that implements the floating point numbers according to the IEEE 754 standard (which is practically always the case). The standard identifies the existence of a small set of the special values, including `NaN`, `Infinity`, `-Infinity`. Most of these special values, and particularly `NaN`, cannot be compared with floating-point numbers even though all the values have the same type. Interestingly, e.g. in JS, both the strict and loose comparison, `NaN === NaN` and `NaN == NaN`, return `False`, thereby also destroying the reflexive property, which, along with antisymmetry and transitivity, is the defining property of partial orders and posets.

Rust is very pedantic about this issue, introducing a separate class for partial orders, `PartialOrd`, in order to distinguish such types (`f32`, `f64`) from those that are totally ordered, `Ord` (`u32`, `i32`, `u64`, `i64`). Consistrntly, Rust also makes an effort to distiguish `Eq` from `PartialEq` (trait for equality comparisons which are partial equivalence relations). Haskell, on the other hand, does not, sporting only `Eq` and `Ord` type classes. Type classes have made their debut in Haskell, become popular and transplanted into other PLs. Rust had witnessed Haskell's implementation and, in the case of partial types, decided to introduce their partial counterparts (and I'm not sure if they make any significant difference; I can't say that I long for partial variants of `Ord` and `Eq` in Haskell).


## Informal definition

A partial order defines a notion of comparison. A pair of elements may be either comparable or incomparable. Provided they are comparible, they may be further related to each other.

- `x` and `y` are incomparable
- `x` and `y` are comparable - they compare as
  - `x < y`
  - `x > y`
  - `x = y`


# Partially ordered set

https://en.wikipedia.org/wiki/Partially_ordered_set

In order theory, a **partially ordered set (poset)** formalizes and generalizes the intuitive concept of an ordering (sequencing, arrangement) of set elements.

A partially ordered set (poset) consists of:
- carrier set
- binary relation, aka a partial order

The relation itself is called a *partial order*. The word "partial", in the terms "partial order" and "partially ordered set" indicates that not every pair of elements is *comparable* - some pairs of elements may be incomparable such that neither element precedes the other.

Properties of a partial order `~` over a set `A`
- reflexivity:  `∀a(a ∈ A -> a ~ a)`
- antisymmetry: `∀a,b ∈ A. (a ~ b ⇔ b ~ a)`
- transitivity: `∀a,b,c ∈ A. (a ~ b ⋀ b ~ c -> a ~ c)`


Partial orders are a generalization of total orders in which every pair of elements is comparable; e.g. `ℕ` with a binary relation `<=` is a total order.



## My

The fact that partial orders have pairs of elements that are incomparable is the most easily realized if you consider the subsets (of some set) ordered by inclusion, so they form a lattice. Then the pairs of elements on the same level won't be comaprable with each other, e.g., `{1,2} ⊀ {2,3}` nor `{1,3} ⊀ {2,3}` and neither is `{1,2} ⊀ {1,3}`. However, the comparable pairs of elements (usually made explicit by connected them with lines) will be comparable, e.g. `∅ ≺ {1}`, `{1} ≺ {1,2}` and `{1,2} ≺ {1,2,3}`, and so by transitivity, `∅ ≺ {1,2}`, `{1} ≺ {1,2,3}`, and so on.

A well-known example of a partial order is the standard type of floating point numbers (e.g. binary64) used in many PLs; it contains special elements (`NaN`, `+Infinity`, `-Infinity`, etc.) which are not comparable between themselves or with any other element (value).

There may be pairs of elements for which neither element precedes the other in the poset. Partial orders thus generalize total orders, in which every pair is comparable.

## Comparability

there may be pairs of elements for which neither element precedes the other, denoted by `a ⊀ b` (`a` does not precede `b`).

The ordering relation indicates that, for certain pairs of elements in the carrier set, one of the elements precedes the other in the ordering, denoted by `a ≺ b` (`a` precedes `b`) or by `a ≼ b` (`a` precedes `b` or they share the same position).

A position of an element in an order is called its *rank*.

In an order set, a pair of elements, `a` and `b`, may relate to each other as
- incomparable (incompatible)
  - a and b are incomparable
- comparable (comparable)
  - a preceds b
  - b suceeds a
- negation
  - a does not precede b
  - b does not suceede a

  - not precedence vs does not succeed
  - not precedence
  - not succedence

## Symbols

Comparable elements of an ordered set may form a sequence 


In an ordered set, a pair of comparable elements, 
- `a ≺ b`: a comes strictly before b in the order
- `a ≼ b`: a precedes b or they have the same rank


+ `a ≺ b` a precedes b
+ `a` precedes `b` or they rank equally
+ `a` precedes `b`: `a` comes strictly before `b` in the order


Symbols for precedence and succedence in ordering
- `a ≺ b` means `a` precedes `b`
- `a ≼ b` means `a` precedes `b` or they rank equally
- `a ⊀ b` means `a` does not precede `b`
- `a ⋠ b` it is not the case that `a` precedes `b` or they rank equally


## Unicode symbols

- `≺` PRECEDES 0x227a
- `⊀` DOES NOT PRECEDE              0x2280
- `≼` PRECEDES OR EQUAL TO          0x227c
- `⋠` DOES NOT PRECEDE OR EQUAL     0x22e0
- `≾` PRECEDES OR EQUIVALENT TO     0x227e
- `≽` SUCCEEDS OR EQUAL TO          0x227d
- `⋡` 
- `⋩` 
- `⊱` 
- `⊰` 
- `⋞` 
- `⋟` 
- `⋦` 
- `⋬`
- `⋭`
- `⋫` 
- `⋪` 
