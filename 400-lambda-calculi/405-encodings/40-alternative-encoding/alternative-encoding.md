# Alternative to Church, Scott and Parigot encoding

https://gist.github.com/zmactep/c5e167c86fb8d80dcd5532792371863f

When it comes to encoding data on the pure λ-calculus (without complex extensions such as ADTs), there are 3 widely used approaches:
1. Church Encoding
2. Scott Encoding
3. Parigot Encoding

"Alternative" encoding is a nameless encoding scheme that is more efficient than Church, Scott and Parigot encoding of data types in lambda calculus. It is an enhancement of the Parigot encoding, which enhances Scott encoding, which enhances Church encoding.

## Comparsion

Numerals         | Church      | Scott     | Parigot      | Alt
-----------------|-------------|-----------|--------------|--------------
fold: recursive? | ☐ rec       | ☐ nonrec  | ☐ rec        | ☐ rec
fold: simple?    | ☑ yes       | ☒ no!     | ☑ yes        | ☑ yes
pred: time?      | ☒ O(N)      | ☑ O(1)    | ☑ O(1)       | ☑ O(1)
pred: complex?   | ☒ very!     | ☒ very    | ☒ very       | ☑ no


Encoding | foldNat                                                          | pred
---------|------------------------------------------------------------------|-----------------------------
Church   | foldNat = \s z nat -> (nat s z)                                  | pred = \ n (\ g h -> h (g succ)) (const zero) id
Scott    | foldNat = (s z nat -> (nat (pred -> (s (foldNat s z pred))) z))  | pred = (nat -> (nat (pred -> pred) _))
Parigot  | foldNat = (nat -> (nat (fold _ -> fold) __))                     | pred = (nat -> (nat (_ pred -> pred) _))
Alt      | foldNat = (s z nat -> (nat (cont pred -> (s (cont pred))) z))    | pred = (nat -> (nat (_ pred -> pred) _))

```hs
--------------------------------------------------------------------------------
0 | c0 = \f x -> x
0 | s0 = \f x -> x
0 | p0 = \f x -> x
0 | π0 = \f x -> x
0 | a0 = \f x -> x
--------------------------------------------------------------------------------
1 | C1 = \f x -> f x
1 | s1 = \f x -> f               (\f x -> x)
1 | p1 = \f x -> f (\f x -> f x) (\f x -> x)
1 | π1 = \f x -> f C1            (\f x -> x)
1 | a1 = \f x -> f (\k -> k f x) (\f x -> x)
--------------------------------------------------------------------------------
2 | C2 = \f x -> f (f x)
2 | s2 = \f x -> f (\f x -> f (\f x -> x))
2 | p2 = \f x -> f (\f x -> f (f x)) (\f x -> f (\f x -> f x) (\f x -> x))
2 | π2 = \f x -> f C2                (\f x -> f C1            (\f x -> x))
2 | a2 = \f x -> f (\k -> k f x)     (\f x -> f (\k -> k f x) (\f x -> x))
--------------------------------------------------------------------------------
3 | C3 = \f x -> f (f (f x))
3 | s3 = \f x -> f (\f x -> (f (\f x -> (f (\f x -> x)))))
3 | p3 = \f x -> (f (f x -> (f (f (f x)))) (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))))
3 | π3 = (f x -> (f C3 (f x -> (f C2 (f x -> (f C1 (f x -> x)))))))
3 | a3 = (f x -> (f (k -> (k f x)) (f x -> (f (k -> (k f x)) (f x -> (f (k -> (k f x)) (f x -> x)))))))
--------------------------------------------------------------------------------
```

- `π` Parigot numerals with Church numeral literals
- `\k -> k f x` continuator


Encoding| succ        | foldNat                                                 | pred
--------|-------------|---------------------------------------------------------|-----------------------------
Church  | λnfx.f(nfx) | foldNat = \s z n -> n s z                               | pred = \n (\g h -> h (g SUCC)) (CONST ZERO) ID
Scott   | λnfx.fn     | foldNat = \s z n -> n (\pred -> s (foldNat s z pred) z) | pred = \n -> (n (pred -> pred) _))
Parigot | λnfx.?      | foldNat = \n     -> n (\fold _ -> fold) __)             | pred = \n -> (n (_ pred -> pred) _))
Alt     | λnfx.?      | foldNat = \s z n -> n (\k pred -> s (k pred) z)         | pred = \n -> (n (_ pred -> pred) _))



```hs
-- | Church Numerals
-- fold: non-recursive    ✔
-- fold: not complex      ✔
-- pred: O(N)             ✘
-- pred: too complex      ✘
foldNat = \s z nat -> (nat s z)
pred = \ n (\ g h -> h (g succ)) (const zero) id

-- | Scott Numerals
-- fold: recursive        ✔
-- fold: too complex      ✘
-- pred: O(1)             ✔
-- pred: not complex      ✔
foldNat = (s z nat -> (nat (pred -> (s (foldNat s z pred))) z)) 
pred = (nat -> (nat (pred -> pred) _))

-- | Parigot Numerals
-- fold: non-recursive    ✔
-- fold: not complex      ✔
-- pred: O(1) time        ✔
-- pred: O(n²) space      ✔
-- pred: not complex      ✔
foldNat = (nat -> (nat (fold _ -> fold) _))
pred = (nat -> (nat (_ pred -> pred) _))

-- | Alternative Numerals
-- fold: non-recursive    ✔
-- fold: not complex      ✔
-- pred: O(1) in time     ✔
-- pred: O(?) in space    ✔
-- pred: not complex      ✔
foldNat = (s z nat -> (nat (cont pred -> (s (cont pred))) z))
pred    = (nat -> (nat (_ pred -> pred) _))
```

## Church Encoding

The Church Encoding represents data structures as their folds. Using Caramel's syntax, the natural number 3 is, for example. represented as:

```hs
0 := λsz.z
1 := λsz.sz
2 := λsz.s(sz)
3 := λsz.s(s(sz))

c0 = \f x -> x
c1 = \f x -> f x
c2 = \f x -> f (f x)
c3 = \f x -> f (f (f x))
```

- The Church encoding provides iteration.
- The Church encoding is **typeable in System F** (?)
- which mean it can be used in a total language.
- algorithms on Church-encoded data are *strongly normalizing*; writing `foldNat` is trivial. It has a major issue, though: pattern matching takes O(n) time, and so does `pred`, which isn't trivial to write.

```hs
-- fold: non-recursive    ✔
-- fold: not complex      ✔
foldNat = \s z nat -> (nat s z)
-- pred: O(N)             ✘
-- pred: too complex      ✘
pred = \ n (\ g h -> h (g succ)) (const zero) id
```

## Scott Encoding

O(n) `pred` is considered bad, and solved by the Scott Encoding, which represents data structures as their pattern-match. Here is 3 again:

```hs
s0 = \f x -> x
s1 = \f x -> f (\f x -> x)
s2 = \f x -> f (\f x -> (f (\f x -> x)))
s3 = \f x -> f (\f x -> (f (\f x -> (f (\f x -> x)))))
```

With this representation, we get constant-time pattern-matching, but we need general recursion to implement `foldr`. That means we can't implement `foldNat` in a total language, and no implementation of `foldNat` for Scott-encoded structures has a beta normal form.

```hs
-- fold: recursive    ✔
-- fold: too complex  ✘
foldNat = (s z nat -> (nat (pred -> (s (foldNat s z pred))) z)) 
-- pred: O(1)         ✔
-- pred: not complex  ✔
pred = (nat -> (nat (pred -> pred) _))
```

## Parigot Encoding

To solve even this issue, the Parigot encoding is sometimes used. It works like a combination of the Church and Scott encodings:

```hs
p0 = \f x -> x
p1 = \f x -> (f (\f x -> f x) (\f x -> x))
p2 = \f x -> \f (f x -> f (f x)) (\f x -> f (\f x -> f x) (\f x -> x))
p3 = (f x -> (f (f x -> (f (f (f x)))) (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))))
```

We can make it easier to read using church-number literals:

```hs
p0 = (f x -> x)
p1 = (f x -> (f c1 (f x -> x)))
p2 = (f x -> (f c2 (f x -> (f c1 (f x -> x)))))
p3 = (f x -> (f c3 (f x -> (f c2 (f x -> (f c1 (f x -> x)))))))
```

This allows us to see that it is just the Scott encoding with Church-numbers stored inbetween - or, if you prefer, a Scott-encoded list of Church-encoded naturals. This allows us to get `pred` in constant time (just take the tail of the list), and `foldr` without recursion (just take the head of the list).

```hs
-- fold: non-recursive    ✔
-- fold: not complex      ✔
foldNat = (nat -> (nat (fold _ -> fold) _))


-- pred: O(1) time        ✔
-- pred: O(n²) space      ✔
-- pred: not complex      ✔
pred = (nat -> (nat (_ pred -> pred) _))
```

But the Parigot Encoding has its own problem: terms take quadratic amount of space.


## Alternative Encoding

There is another encoding which combines all good properties from the previous, but I've never seen on literature. This is it:

```hs
a0 = (f x -> x)
a1 = (f x -> (f (c -> (c f x)) (f x -> x)))
a2 = (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> x)))))
a3 = (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> x)))))))
```

Like Parigot encoding, this uses a Scott-list. Instead of Church-numbers, we store continuators, `(c -> (c f x))`. Each continuator gives us fuel to fold to the next pred - all the way to zero, where there isn't fuel anymore, so the term has to halt. Pred is still just tail `(O(1))`, and there is a non-recursive implementation of foldNat with a beta normal form.

```hs
-- Non-recursive. Good.
foldNat = (s z nat -> (nat (cont pred -> (s (cont pred))) z))

-- O(1). Good.
pred    = (nat -> (nat (_ pred -> pred) _))
```

It can easily be extended to arbitrary data-types and, differently from the Parigot encoding, terms take linear space. That looks like a decent solution. Was this proposed? Is there any merit on that kind of encoding?
