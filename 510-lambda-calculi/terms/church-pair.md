# Church pair

https://en.wikipedia.org/wiki/Church_encoding

Representing a pair in LC is the same as representing any other data structure - we use functions to store data since functions are all we have around to work with. Although they may not be the ideal way to store data, functions are incredibly dexterous and sufficient to represent many common data structures.

The **Church pair** is a part of the bigger *Church encoding* scheme for representing many mathematical objects, used to represent an ordered pair.

In math, an ordered pair is denoted `(a,b)`, but in LC, with only functions available, we can represent the two components of a pair with a couple of function parameters. (Since functional languages are based on the LC, we'll use Haskell since it can nicely represent both math and the LC).


---

Hastily, a function that takes two arg, `cpair a b = ???`, leaves us without options but to just return one, `cpair a b = a`, which is a well-known `const` function.


Encoding a pair, `(a,b)`, in LC means representing a pair as a function that will later allow extraction of its components.

        cpair := λabs.sab = λa.λb.λs.sab

---

A Church pair is basically an ordered pair with two components. A Church pair ctor function (cpair) takes two values, one for each component, and a selector function that will return either. Kestrel as the selector returns the first, while Kite returns the second element.

However, constructing a Church pair with all 3 args provided immediately is not very intersting - a pair really exists only when the selector arg is left out, as a partially applied (to the first two arg) cpair function. When the selector is actually supplied, we can only get one of the values out at the time (we cannot get back both values at once in LC).


## Pairs

A pair (2-tuple) can be defined in terms of TRUE and FALSE, by using the Church encoding for pairs. For example, PAIR encapsulates the pair (x,y), FIRST returns the first element of the pair, and SECOND returns the second.

PAIR        := λabs.sab
FIRST       := λp.pT
SECOND      := λp.pF
NIL         := λx.T
NULL        := λp.p (λx.λy.F)

A linked list can be defined as either NIL for the empty list, or the PAIR of an element and a smaller list. The predicate NULL tests for the value NIL. (Alternatively, with NIL := FALSE, the construct l (λh.λt.λz.deal_with_head_h_and_tail_t) (deal_with_nil) obviates the need for an explicit NULL test).

As an example of the use of pairs, the shift-and-increment function that maps (m, n) to (n, n + 1) can be defined as

Φ := λx.PAIR (SECOND x) (SUCC (SECOND x))

which allows us to give perhaps the most transparent version of the predecessor function:

PRED := λn.FIRST (n Φ (PAIR 0 0))
