# Comparison: numbers

- Church encoding
- Parigot encoding
- Embedded-iterators encoding

```js
// 1) Church encoding
n := λs. λz. s (… (s z) …)
4 := λs. λz. s (s (s (s z)))
3 := λs. λz. s (s (s z))
2 := λs. λz. s (s z)
1 := λs. λz. s z
0 := λs. λz. z
succ := λn. λf. λx.       f (n f x)  // f  (fⁿ   x) = fⁿᐩ¹ x
add  := λm. λn. λf. λx. m f (n f x)  // fᵐ (fⁿ   x) = fⁿᐩᵐ x
mul  := λm. λn. λf. λx. m   (n f x)  //    (fⁿ)ᵐ x  = fⁿᵐ x
pow  := λm. λn. λf. λx.    n m f x   // n m         = mⁿ


// 2) Scott encoding
0    := λz. λs. z
1    := λz. λs. s 0
2    := λz. λs. s 1
3    := λz. λs. s 2
pred := λn. n 0 (λx. x)
case := λn. λa. λf. n a f

// case is for pattern matching CASE_N
case: n a f
    | n == 0       ->  a
    | n == succ x  ->  f x

// with pattern matching, we can define predecessor
pred := λn. CASE_N n Z (λm. m)



// 3) Parigot encoding
0    := λf. λa. a
1    := λf. λa. f 0 a
2    := λf. λa. f 1 (f 0 a)
3    := λf. λa. f 2 (f 1 (f 0 a))

succ := λn. λf. λa. f n (n f a)
add  := λn. λm. n (λp. suc) m
mul  := λn. λm. n (λp. add m) 0
pred := λn.     n (λp. λd. p) 0


// 4) Embedded-iterators encoding
0    := λf. λa. a
1    := λf. λa. f c1 0
2    := λf. λa. f c2 1
3    := λf. λa. f c3 2
succ := λn.     n (λc. λp. λf. λa. f (c succ c) n) 1
add  := λn. λm. n (λc. λp.            c succ m) m
```
