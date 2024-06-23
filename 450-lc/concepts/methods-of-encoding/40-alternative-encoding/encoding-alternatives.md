# Alternative encodings

There are 3 well-known approaches for data representation in the pure λ-calculus (without complex extensions such as ADTs), viz. the Church, Scott and Parigot encoding.

## Church Encoding

The Church Encoding represents data structures as folds. For example, the natural number 3 is represented via the function obtained from folding the successor tree times onto a zero function:

```hs
zero = \  f x ->        x
succ = \n f x -> f (n f x)

-- by successive appl. of succ to zero we get ℕ
c1 = \s z -> s z
c2 = \s z -> s (s z)
c3 = \s z -> s (s (s z))
```

The Church Encoding embeds iteration and it is typeable in System F, which mean it can be used in a total language. Algorithms on Church-encoded data are *strongly normalizing*; writing a folding function for Nat type is trivial, but its major issue is that the pattern matching takes linear time, and so does the predecessor function, which isn't trivial to write (has several version).

```hs
-- not recursive (good)
foldNat = \s z n -> n s z

-- one of pred variants, O(n). Also, WTF.
pred = \n (\g h -> (h (g succ))) (const zero) id
```


## Scott Encoding

`O(N)` pred is considered bad, and solved by the Scott Encoding, which represents data structures as their pattern-match. Here is 3 again:

```hs
0 s0 = (f x -> x)
1 s1 = (f x -> (f (f x -> x)))
2 s2 = (f x -> (f (f x -> (f (f x -> x)))))
3 s3 = (f x -> (f (f x -> (f (f x -> (f (f x -> x)))))))
```

With this representation, we get constant-time pattern-matching, but we need general recursion to implement foldr. That means we can't implement `foldNat` in a total language, and no implementation of `foldNat` for Scott-encoded structures has a beta normal form.

```hs
-- O(1). Good.
pred    = (nat -> (nat (pred -> pred) _))

-- Recursive. Also, WTF.
foldNat = (s z nat -> (nat (pred -> (s (foldNat s z pred))) z))
```


## Parigot Encoding

To solve even this issue, the Parigot encoding is sometimes used. It works like a combination of the Church and Scott encodings:

```hs
0 p0 = (f x -> x)
1 p1 = (f x -> (f (f x -> (f x)) (f x -> x)))
2 p2 = (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))
3 p3 = (f x -> (f (f x -> (f (f (f x)))) (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))))
```

We can make it easier to read using church-number literals:

```hs
0 p0 = (f x -> x)
1 p1 = (f x -> (f c1 (f x -> x)))
2 p2 = (f x -> (f c2 (f c -> (f c1 (f x -> x)))))
3 p3 = (f x -> (f c3 (f x -> (f c2 (f x -> (f c1 (f x -> x)))))))
```

This allows us to see that it is just the Scott encoding with Church-numbers stored inbetween - or, if you prefer, a Scott-encoded list of Church-encoded naturals. This allows us to get `pred` in constant time (just take the tail of the list), and `foldr` without recursion (just take the head of the list).

```hs
-- O(1). Good.
pred    = (nat -> (nat (_ pred -> pred) _))

-- Non-recursive. Good.
foldNat = (nat -> (nat (fold _ -> fold) _))
```

But the Parigot Encoding has its own problem: terms take quadratic amount of space.


## Alternative Encoding

There is another encoding which combines all good properties from the previous, but I've never seen on literature. This is it:

```hs
0 a0 = (f x -> x)
1 a1 = (f x -> (f (c -> (c f x)) (f x -> x)))
2 a2 = (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> x)))))
3 a3 = (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> x)))))))
```

Like Parigot encoding, this uses a Scott-list. Instead of Church-numbers, we store continuators, `(c -> (c f x))`. Each continuator gives us fuel to fold to the next pred - all the way to zero, where there isn't fuel anymore, so the term has to halt. Pred is still just tail `(O(1))`, and there is a non-recursive implementation of foldNat with a beta normal form.

```hs
-- Non-recursive. Good.
foldNat = (s z nat -> (nat (cont pred -> (s (cont pred))) z))

-- O(1). Good.
pred    = (nat -> (nat (_ pred -> pred) _))
```

It can easily be extended to arbitrary data-types and, differently from the Parigot encoding, terms take linear space. That looks like a decent solution.
(Was this proposed? Is there any merit on that kind of encoding?)
