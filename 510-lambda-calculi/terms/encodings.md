# Alternative encodings of data

Alternative to the Church, Scott and Parigot encoding of data structures in λ-calculus.

When it comes to encoding data in the λ-calculus without complex extensions, such as ADT, there are 3 popular approaches (1 popular, 2 known).

## Church Encoding

Church Encoding is a very popular encoding which repr represents data structures as their folds. The natural numbers represented this way are referred to as Church numerals. Some examples, using Caramel's syntax:

```
0 c0 = (f x -> x)
1 c1 = (f x -> (f x))
2 c2 = (f x -> (f (f x)))
3 c3 = (f x -> (f (f (f x))))
```

The Church Encoding provide iteration, and is typeable in System F, which mean it can be used in a total language. Algorithms on Church-encoded data are strongly normalizing; writing foldNat is trivial. It has a major issue, though: pattern matching takes O(N) time, and so does pred, which isn’t trivial to write.

```
foldNat = (s z nat -> (nat s z))                    -- Non-recursive. Good.
pred    = (n (g h -> (h (g succ))) (const zero) id) -- O(N). Also, WTF.
```

## Scott Encoding

`O(N)` pred is considered bad, and solved by the Scott Encoding, which represents data structures as their pattern-match. Here is 3 again:

```
0 s0 = (f x -> x)
1 s1 = (f x -> (f (f x -> x)))
2 s2 = (f x -> (f (f x -> (f (f x -> x)))))
3 s3 = (f x -> (f (f x -> (f (f x -> (f (f x -> x)))))))
```

With this representation, we get constant-time pattern-matching, but we need general recursion to implement foldr. That means we can’t implement `foldNat` in a total language, and no implementation of `foldNat` for Scott-encoded structures has a beta normal form.

```
pred    = (nat -> (nat (pred -> pred) _))                       -- O(1). Good.
foldNat = (s z nat -> (nat (pred -> (s (foldNat s z pred))) z)) -- Recursive. Also, WTF.
Parigot Encoding
```

To solve even this issue, the Parigot encoding is sometimes used. It works like a combination of the Church and Scott encodings:
```
0 p0 = (f x -> x)
1 p1 = (f x -> (f (f x -> (f x)) (f x -> x)))
2 p2 = (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))
3 p3 = (f x -> (f (f x -> (f (f (f x)))) (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))))
```

We can make it easier to read using church-number literals:
```
0 p0 = (f x -> x)
1 p1 = (f x -> (f c1 (f x -> x)))
2 p2 = (f x -> (f c2 (f c -> (f c1 (f x -> x)))))
3 p3 = (f x -> (f c3 (f x -> (f c2 (f x -> (f c1 (f x -> x)))))))
```

This allows us to see that it is just the Scott encoding with Church-numbers stored inbetween - or, if you prefer, a Scott-encoded list of Church-encoded naturals. This allows us to get pred in constant time (just take the tail of the list), and foldr without recursion (just take the head of the list).
```
pred    = (nat -> (nat (_ pred -> pred) _)) -- O(1). Good.
foldNat = (nat -> (nat (fold _ -> fold) _)) -- Non-recursive. Good.
```

But the Parigot Encoding has its own problem: terms take quadratic amount of space.

## Alternative Encoding

There is another encoding which combines all good properties from the previous, but I’ve never seen on literature. This is it:
```
0 a0 = (f x -> x)
1 a1 = (f x -> (f (c -> (c f x)) (f x -> x)))
2 a2 = (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> x)))))
3 a3 = (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> (f (c -> (c f x)) (f x -> x)))))))
```

Like Parigot encoding, this uses a Scott-list. Instead of Church-numbers, we store continuators, `(c -> (c f x))`. Each continuator gives us fuel to fold to the next pred - all the way to zero, where there isn’t fuel anymore, so the term has to halt. Pred is still just tail `(O(1))`, and there is a non-recursive implementation of foldNat with a beta normal form.
```
foldNat = (s z nat -> (nat (cont pred -> (s (cont pred))) z)) -- Non-recursive. Good.
pred    = (nat -> (nat (_ pred -> pred) _))                   -- O(1). Good.
```

It can easily be extended to arbitrary data-types and, differently from the Parigot encoding, terms take linear space. That looks like a decent solution. Was this proposed? Is there any merit on that kind of encoding?
