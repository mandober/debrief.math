# Alternative method of encoding the natural numbers

The problem of encoding the natural numbers is not exclusive to lambda calculus, but may be encountered in other math fields as well, especially in the theories entertaining the possibility to play the role in the foundations of mathematics.

Set theory, for one, is faced with a seemingly harder challenge because, as the still most popular candidate for the FOM, it must come up with a consistent scheme to comprehensively represent all mathematical objects in terms of sets, while lambda calculus only has to cover the common PL concepts and in terms of functions.

## Church Encoding

The Church Encoding, which represents data structures as their folds. Using Caramel's syntax, the natural number 3 is, for example. represented as:

```hs
c0 := λf x.         x
c1 := λf x.       f x
c2 := λf x.    f (f x)
c3 := λf x. f (f (f x))
```

The Church Encoding provide iteration, and is typeable in System F, which mean it can be used in a total language. Algorithms on Church-encoded data are strongly normalizing; writing foldNat is trivial. It has a major issue, though: pattern matching takes O(N) time, and so does pred, which isn't trivial to write.

```hs
foldNat := λs z n. n s z                              -- Non-recursive. Good
pred    := λn. (λg h. (h (g succ))) (const zero) id)  -- O(N) (also, WTF?!)
```

## Scott Encoding

O(N) for the `pred` is considered bad, and solved by the Scott Encoding, which *represents data structures as their pattern-match*. Here is 3 again:

```hs
s0 := λf x. x
s1 := λf x. f s0  =  λf x.                   f (λf x. x)
s2 := λf x. f s1  =  λf x.          f (λf x. f (λf x. x))
s3 := λf x. f s2  =  λf x. f (λf x. f (λf x. f (λf x. x)))
```

With this representation, we get constant-time pattern-matching, but we need general recursion to implement `foldr`. That means we can't implement `foldNat` in a total language, and no implementation of `foldNat` for Scott-encoded structures has a beta normal form.

```hs
-- O(1)
pred := λn. n I s0
pred := λn. n (λp. p) (λf x. x)

-- Recursive (also, WTF?!)
foldNat := λs z n. n (λp. s (foldNat s z p)) z
```

## Parigot Encoding

To solve even this issue, the Parigot encoding is sometimes used. 
It works like a combination of the Church and Scott encodings:

```hs
p0 := λf x. x
p1 := λf x. f (λf x. f x) (λf x. x)


p0 = f => x => x
p1 = f => x => f (f => x => f x) (f => x => x)


p2 = (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))
p3 = (f x -> (f (f x -> (f (f (f x)))) (f x -> (f (f x -> (f (f x))) (f x -> (f (f x -> (f x)) (f x -> x)))))))
```

We can make it easier to read using Church number literals:

```hs
p0 = (f x -> x)
p1 = (f x -> (f c1 (f x -> x)))
p2 = (f x -> (f c2 (f c -> (f c1 (f x -> x)))))
p3 = (f x -> (f c3 (f x -> (f c2 (f x -> (f c1 (f x -> x)))))))
```

This allows us to see that it is just the Scott encoding with Church-numbers 
stored inbetween - or, if you prefer, a Scott-encoded list of Church-encoded 
naturals. This allows us to get `pred` in constant time (just take the `tail` 
of the list), and `foldr` without recursion (take the `head` of the list).


```hs
pred    = (nat -> (nat (_ pred -> pred) _)) -- O(1). Good.
foldNat = (nat -> (nat (fold _ -> fold) _)) -- Non-recursive. Good.
```

But the Parigot Encoding has its own problem: 
>terms take quadratic amount of space.

## Alternative Encoding

There is another encoding which combines all good properties from the previous, but I've never seen on literature.

```hs
a0 = f x -> x

a1 = f x -> f (c -> c f x) (f x -> x)

a2 = f x -> f (c -> c f x)
    (f x -> f (c -> c f x)
    (f x -> x)
    )

a3 = f x -> f (c -> c f x)
    (f x -> f (c -> c f x)
    (f x -> f (c -> c f x)
    (f x -> x)
    ))
```

Like Parigot encoding, this uses a Scott-list. Instead of Church-numbers, we store *continuators*, `c -> (c f x)`. Each continuator gives us fuel to fold to the next `pred` - all the way to zero - where there isn't fuel anymore, so the term has to halt.

The `pred` is still just `tail`, so O(1), and there is a non-recursive implementation of `foldNat` with a beta normal form.

```hs
foldNat = (s z nat -> (nat (cont pred -> (s (cont pred))) z)) -- Non-recursive. Good.
pred    = (nat -> (nat (_ pred -> pred) _))                   -- O(1). Good.
```

It can easily be extended to arbitrary data-types and, differently from the Parigot encoding, terms take linear space.
