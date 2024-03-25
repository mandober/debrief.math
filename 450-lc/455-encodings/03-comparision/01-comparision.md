# Comparision of encodings

- Church encoding (CE)
- Scott encoding (SE)
- Parigot encoding (PE)
- Böhm-Berarducci encoding (BBE)


## Church encoding

- Church encoding is typeable [?] in System F
- Church encoding encodes data types as folds.
- Church-encoded algorithms are strongly normalizing.
- Church encoding gives closed terms for the constructors
- and naturally allows to define functions by iteration. 
- An additional nice feature is that in system F (polymorphically typed lambda calculus) one can define types for such data and the iteration scheme is well-typed.
- A problem is that primitive recursion is not directly available: it can be coded in terms of iteration at the cost of inefficiency (e.g. `pred` with linear run-time).


Church Numerals:
- Church Numerals: invented by Church in 1936
- Church Numerals: encoding of the naturals via n-fold function composition
- Church Numerals: number `n` := `n f x` ≅ `fⁿ x`
- Church Numerals: encoding of the naturals as iterators (folds)
- Church Numerals allow us to write iterative definitions of numbers.
- Pro: writing `foldNat` is trivial
- Con: encoding a natural `n` takes `0(n)` time
- Con: `pred` is `0(n)`
- Con: pattern matching takes `O(n)` time


## Scott encoding

* Scott encoding is only typable in System F when the polymorphism using positive data types is added.
* Scott Numerals are based on case analysis pattern matching.
+ Pro: Scott Numerals has `pred` that is `0(1)`.
+ Pro: Scott Encoding, which represents data structures as their pattern-match
- Con: we need general recursion to implement `foldr`, which means we can't implement fold (e.g. `foldNat`) in a total language.
- Con: no impl of fold for Scott-encoded structures has a β-normal form.
- The Scott Numerals have case distinction as a primitive.
- The Scott-encoded terms are not typable in system F and there is no iteration scheme, but there is a constant time destructor (e.g. `pred`).
- Scott data (e.g. the Scott numerals) are not readily typable in system F


## Church-Scott encoding

- Herman Geuvers has presented ("The Church-Scott representation of inductive and coinductive data", H.Geuvers, 2014) a unification of the Church and Scott definition of data types, he dubbed *the Church-Scott encoding*.
- Church-Scott encoding has primitive recursion as basic.
- It uses the Parigot Numerals to encode numbers.
- We show how these can be typed in the polymorphic lambda calculus extended with recursive types.
- We show that this also works for the dual case, co-inductive data types with primitive co-recursion.
- We single out the major schemes for defining functions over data-types: the iteration scheme, the case scheme and the primitive recursion scheme, and we show how they are connected to the Church, Scott and Church-Scott encoding.
- We also single out the duals of these schemes: co-iteration, co-case and primitive co-recursion as schemes for defining function to a co-data-type.
- A major advantage is that all these are encodings in pure untyped λ-calculus and that strong normalization is guaranteed since the terms are typable in the polymorphic lambda calculus extended with recursive types.

## Parigot encoding

* Parigot encoding (1992) allows us to write recursive definitions, but requires System F to be extended with recursion (on positive data types).
* Pro: Parigot Numerals solve the lack of β-normal form of the Scott Numerals.
- Parigot Numerals are an the enhancement of Scott encoding.
- Parigot Numerals work like a combination of Church and encodings.
- Parigot Numerals are a Scott-encoded list of Church Numerals. In fact, the Scott-encoding with Church literals inbetween.
- Pro: `pred` is `0(1)` (just take the tail of the list)
- Pro: `foldr` needs no recursion (just take the head of the list).
- Con: Parigot-encoded terms have quadratic, `O(n²)`, space complexity

# Alternative encoding

- "Alternative encoding" is an enhancement of the Parigot encoding
- Like Parigot encoding, Alt uses a Scott-list but instead of Church Numerals, it stores *continuators*, `(c -> (c f x))`. Each continuator gives us fuel to fold to the next `pred` - all the way to zero, where there isn't fuel anymore, so the term has to halt.
- Pro: `pred` is still just tail of the list so it is `O(1)`
- Pro: non-recursive implementation of `foldNat` with a beta normal form.
- Pro: can easily be extended to arbitrary data-types.
- Pro: unlike the Parigot encoding, terms take linear space, `0(n)` space.

## Böhm-Berarducci encoding

- BBE is a variant of the Church encoding in typed setting.
- In 1985, Bohm and Berarducci gave typings of Church Numerals in System F.
- The name 'Church encoding' is normally associated with Bohm and Beraducci's System F encoding.
