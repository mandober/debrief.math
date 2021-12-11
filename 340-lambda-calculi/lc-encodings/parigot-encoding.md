# Parigot encoding

Parigot encoding for F-Algebras
https://cstheory.stackexchange.com/questions/46677/parigot-encoding-for-f-algebras


Introduction to the Parigot encoding *podcast*
https://www.buzzsprout.com/728558/2780188-introduction-to-the-parigot-encoding
https://www.buzzsprout.com/728558/2809891-more-on-the-parigot-encoding


## The Parigot Encoding

* Parigot (1988): a number is a recursor

* Recursor: like an iterator, but given the predecessors!
  `Rec n f a = f (n −1) ···(f 1 (f 0 a))`

* In the Parigot encoding, numbers are recursors:
  `n f a = f (n−1) … (f 1 (f 0 a))`


```js
0    := λf. λa. a
1    := λf. λa. f 0 a
2    := λf. λa. f 1 (f 0 a)
3    := λf. λa. f 2 (f 1 (f 0 a))

succ := λn. λf. λa. f n (n f a)
add  := λn. λm. n (λp. suc) m
mul  := λn. λm. n (λp. add m) 0
pred := λn.     n (λp. λd. p) 0
```


## Typing the Parigot Encoding

`Nat = ∀X : Type. (Nat -> (X -> X)) -> (X -> X)`

- Typable in System F + positive-recursive types (Parigot,Mendler)
- Recursive use of Nat is positive:
  - occurs in the left part of an even number of arrows
  - for polarity, `p -> q` is like `¬p ⋁ q`
- Typable programs still guaranteed to terminate!
- Suitable basis for computer proofs under Curry-Howard


* this time the problem is that Parigot encoding requires exponential space!
