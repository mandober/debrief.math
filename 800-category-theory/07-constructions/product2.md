# 5. Products

Products and coproducts
https://bartoszmilewski.com/2015/01/07/products-and-coproducts/

Products
https://www.youtube.com/watch?v=Bsdl_NKbNnU


We want to find a cartesian product. We know that a cartesian product of two sets A and B is a set of ordered pairs C = A×B = {(a,b) | a ∈ A ∧ b ∈ B}, but this is a category and the sets are abstracted into tiny objects we cannot directly examine and see their elements. We cannot see what elements constitute the sets A, B, not that the set C consists of ordered pairs.

The only way to talk about a particular object in a category is by pointing out the relations it has with the other objects in the category and with itself; the relations that are all defined by morphisms.

To recognize a product, we should start by examining all the patterns that match having an object C with two arrows, one to an object A, and the other to the object B. These arrows C -> A and C -> B are called *projections*.

Back in set theory, a cartesian product is a total relation between two sets A and B, denoted A×B. If the set C = A×B then its elements are all ordered pairs. There is no function that sends an element a ∈ A to the position of the first component of an ordered pair (a,b) element of C, because the dot product is a relation - each element of the first set, A, is paired with each element of the second set, B, producing a set C, their product, which contains a whole lotta pairs.

However, there are functions that operate on pairs (more generally, on tuples) called projections. Generally, a projection function, `πᵢⁿ`, takes an index, `i`, the arity `n`, and (presumably) an `n`-tuple and returns the component of the tuple at that particular index.

Considering only ordered pairs, Haskell has a function `fst` that returns the first component of a pair, and a function `snd` which returns the second.

```hs
fst :: (a, b) -> a
fst (x,_) = x

snd :: (a, b) -> b
snd (_,y) = y
```








---

Returning to the category theory, we loose sight of the details: despite the fact that `fst` doesn't work on a set but only on a pair, here we only see that there is an arrow from C to A and another from C to B.

And that is our search pattern: 3 objects and 2 morphisms, with both arrows going from one object to the other two. With labels: there should be an object, C, with an outgoing arrow to another object, A, and another outgoing arrow to another object, B.



```
            C (A+B)
           🔘
          ⋰   ⋱
(fst) f ⋰       ⋱ g (snd)
      ⋰           ⋱
    ⋰               ⋱
  ↙                   ↘
🟣                    🟠
A                      B
```

> [Sidenote: the explanations for product don't really talk of triplets of objects, as if there are no others. They spend a lot of effort on describing how to weed out the best C out of all similar C's, but no mentioned of an entirely differet triplet of objects that matches this pattern. Sure, that implies the given category may have multiple products, but it's be nice to state it explicitly. And also explain why A and B are fixed, as if they can't also have competing candidates.]


However, there may be a ton of triplets like this that match our search pattern. We need a system to rank them and discover the best one, so we use universal construction.


But what's the pattern that connects the product set with its constituent sets? If we can figure that out, we'll be able to generalize it to other categories.


```
            C'
           🔘
          ⋰ ⁞ ⋱
     p' ⋰   ⁞   ⋱ q'
      ⋰     ⁞m    ⋱
    ⋰       ⁞       ⋱
  ↙   p     ↓    q    ↘
🟣←--------🔺--------→🟠
A           C          B
```

p' = p . m
q' = q . m

Morphism `m` is a unique arrow `C' -> C`. The arrow `m` factorizes the candidte projections p' and q' - it is their common factor. We can recreate p' and q' given p and q and m. We can't recreate `p` and `q` given `p'`, `q'` and `m'`.


---

Our pattern to detect products consists of an object `c` and two morphisms `p` and `q` connecting it to `a` and `b`, respectively:

```hs
p :: c -> a
q :: c -> b
```

All `c`'s that fit this pattern will be considered candidates for the product. There may be lots of them. For instance, let's pick, as our constituents, two Haskell types, `Int` and `Bool`.

### Int as a product candidate

So, a candidate for a product of Int and Bool is `Int` becasue it has these two projections:

```hs
p :: Int -> Int
p x = x

q :: Int -> Bool
q _ = True
```

However, the mapping `m` for this candidate is:

```hs
m :: Int -> (Int, Bool)
m x = (x, True)
```

And its two projections, p' and q' can be reconstructed as:

```hs
p' x = fst (m x) = x
q' x = snd (m x) = True
```

### (Int, Int, Bool) as a product candidate

Another cadidate is a 3-tuple `(Int, Int, Bool)`m which has these projections:

```hs
p :: (Int, Int, Bool) -> Int
p (x, _, _) = x

q :: (Int, Int, Bool) -> Bool
q (_, _, b) = b
```

The mapping m for the first candidate is:
```hs
m :: Int -> (Int, Bool)
m x = (x, True)
```

Indeed, the two projections, p and q can be reconstructed as:
```hs
p x = fst (m x) = x
q x = snd (m x) = True
```

The m for the second example is similarly uniquely determined:
```hs
m (x, _, b) = (x, b)
```


We were able to show that (Int, Bool) is better than either of the two candidates. Let's see why the opposite is not true. Could we find some m' that would help us reconstruct fst and snd from p and q?

```hs
fst = p . m'
snd = q . m'
```

In our first example, q always returned True and we know that there are pairs whose second component is False. We can't reconstruct snd from q.

The second example is different: we retain enough information after running either p or q, but there is more than one way to factorize fst and snd. Because both p and q ignore the second component of the triple, our m' can put anything in it. We can have:

```hs
m' (x, b) = (x, x, b)
-- or
m' (x, b) = (x, 42, b)
-- and so on.
```

Putting it all together, given any type c with two projections p and q, there is a unique m from c to the cartesian product (a, b) that factorizes them. In fact, it just combines p and q into a pair.

```hs
m :: c -> (a, b)
m x = (p x, q x)
```

That makes the cartesian product (a, b) our best match, which means that this universal construction works in the category of sets. It picks the product of any two sets.

Now let's forget about sets and define a product of two objects in any category using the same universal construction. Such product doesn't always exist, but when it does, it is unique up to a unique isomorphism.

A product of two objects `a` and `b` is the object `c` equipped with two projections, `p` (`fst`) and `q` (`snd`) such that for any other object `c'` equipped with two projections, `p'` and `q'`, there is a unique morphism `m` from `c'` to `c` such that `m` factorizes those projections:   
`p' = p . m` and `q' = q . m`.


A (higher order) function that produces the factorizing function m from two candidates is sometimes called the *factorizer*. In our case, it would be the function:

```hs
factorizer :: (c -> a) -> (c -> b) -> (c -> (a, b))
factorizer p q = \x -> (p x, q x)
```

But we haven't explored yet the other part of the universal construction: the ranking. We want to be able to compare two instances of our pattern. We want to compare one candidate object c and its two projections p and q with another candidate object c' and its two projections p' and q'. We would like to say that c is "better" than c' if there is a morphism m from c' to c - but that's too weak. We also want its projections to be "better," or "more universal," than the projections of c'. What it means is that the projections p' and q' can be reconstructed from p and q using m: `p' = p . m` and `q' = q . m`.

Another way of looking at these equation is that m factorizes p' and q'. Just pretend that these equations are in natural numbers, and the dot is multiplication: m is a common factor shared by p' and q'.

The bad candidates were the first one which was non-surjective, which was shrinking stuff coz it was to narrow, and the second one, which was too big and non-injective.

Now, the proper candidate, the pair (Int, Bool), with the two canonical projections, `fst` and `snd` is indeed better than the other two because it is bijective. Its projections cannot be derived from some p', q' and m' like the projections of bad candidates can. That is, it's projections cannot be factorized.

Therefore, a **product** in a category is an **object**, `C`, together with two arrows (projections) `C -> A` and `C -> B`.
