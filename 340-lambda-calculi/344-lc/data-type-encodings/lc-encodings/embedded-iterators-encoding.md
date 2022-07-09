# Embedded-Iterators Encoding

* Stump-Fu (2014): A number is the ordered collection of iterators for all its predecessors.

*Embedded-Iterators Encoding* is a relatively recent development of a new encoding scheme for the encoding of natural numbers invented by Stump-Fu in 2014. It builds on and improves the approach to issue of defining an efficient encoding for the natural numbers, the quest that started immediately after the invention of the LC itself.

## Embedded-Iterators Encoding (Stump-Fu 2014)

* Same asymptotic time complexities as Parigot
* But: normal form of numeral n is only O(n2)
* Basic idea: `3 := (c3, (c2, (c1, (c0, 0))))`
  where `cN` is the Church encoding of `N`


```js
0    := λf. λa. a
1    := λf. λa. f c1 0
2    := λf. λa. f c2 1
3    := λf. λa. f c3 2

succ := λn.     n (λc. λp. λf. λa. f (c succ c) n) 1
add  := λn. λm. n (λc. λp.            c succ m) m
```

* Use embedded Church-encoded numbers for iteration
* Put embedded iterators in binary to reduce space to `O(nlog₂n)`


## Typing the Embedded-Iterators Encoding

`Nat = ∀X : Type. (CNat -> (Nat -> X)) -> (X -> X)`

* Like Parigot encoding, typable in `System F` + positive-recursive types
* Recursive use of Nat is positive
