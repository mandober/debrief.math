---
created: 2021-08-28T11:25:55 (UTC +02:00)
tags: []
source: https://www.haskellforall.com/2021/01/the-visitor-pattern-is-essentially-same.html
author: 
---

# Haskell for all: The visitor pattern is essentially the same thing as Church encoding

> ## Excerpt
> church-encoding          This post explains how the visitor pattern  is essentially the same thing as Church encoding  (or Böh...

---
   church-encoding 

This post explains how the [visitor pattern][1] is essentially the same thing as [Church encoding][2] (or Böhm-Berarducci encoding). This post also explains how you can usefully employ the visitor pattern / Church encoding / Böhm-Berarducci encoding to expand your programming toolbox.

#### Background

Church encoding is named after [Alonzo Church][3], who discovered that you could model any type of data structure in the untyped lambda calculus using only functions. The context for this was that he was trying to show that lambda calculus could be treated as a universal computational engine, even though the only features it supported were functions.

> **Note:** Later on, Corrado Böhm and Alessandro Berarducci devised the equivalent solution in a typed lambda calculus (specifically, System F):
> 
> -   [Automatic synthesis of typed Λ-programs on term algebras][4]
> 
> … so I’ll use “Church encoding” when talking about this trick in the context of an untyped language and use “Böhm-Berarducci” encoding when talking about the same trick in the context of a typed language. If we’re not talking about any specific language then I’ll use “Church encoding”.

In particular, you can model the following types of data structures using language support for functions and nothing else:

-   records / structs (known as “product types” if you want to get fancy)
    
    The “product” of two types `A` and `B` is a type that stores both an `A` **and** a `B` (e.g. a record with two fields, where the first field has type `A` and the second has type `B`)
    
-   enums / tagged unions (known as “sum types”)
    
    The “sum” of two types `A` and `B` is a type that stores either an `A` **or** a `B`. (e.g. a tagged union where the first tag stores a value of type `A` and the second tag stores a value of type `B`)
    
-   recursive data structures
    

… and if you can precisely model product types, sum types, and recursion, then you can essentially model any data structure. I’m oversimplifying things, but that’s close enough to true for our purposes.

#### Relevance

The reason we care about Church-encoding is because not all programming languages natively support sum types or recursion (although most programming languages support product types in the form of records / structs).

However, most programming languages _do_ support functions, so if we have functions then we can use them as a “backdoor” to introduce support for sum types or recursion into our language. This is the essence of the visitor pattern: using functions to Church-encode sum types or recursion into a language that does not natively support sum types or recursion.

To illustrate this, suppose that we begin from the following Haskell code:

```
data Shape
    = Circle{ x :: Double, y :: Double, r :: Double }
    | Rectangle{ x :: Double, y :: Double, w :: Double, h :: Double }

exampleCircle :: Shape
exampleCircle = Circle 2.0 1.4 4.5

exampleRectangle :: Shape
exampleRectangle = Rectangle 1.3 3.1 10.3 7.7

area :: Shape -> Double
area shape = case shape of
    Circle    x y r   -> pi * r ^ 2
    Rectangle x y w h -> w * h

main :: IO ()
main = do
    print (area exampleCircle)
    print (area exampleRectangle)
```

… but then we hypothetically disable Haskell’s support for algebraic data types. How would we amend our example to still work in such a restricted subset of the language?

We’d use Böhm-Berarducci encoding (the typed version of Church-encoding), and the solution would look like this:

```
{-# LANGUAGE RankNTypes #-}

-- | This plays the same role as the old `Shape` type
type Shape = forall shape
    .  (Double -> Double -> Double -> shape)
    -> (Double -> Double -> Double -> Double -> shape)
    -> shape

-- | This plays the same role as the old `Circle` constructor
_Circle :: Double -> Double -> Double -> Shape
_Circle x y r = \_Circle _Rectangle -> _Circle x y r

-- | This plays the same role as the old `Rectangle` constructor
_Rectangle :: Double -> Double -> Double -> Double -> Shape
_Rectangle x y w h = \_Circle _Rectangle -> _Rectangle x y w h

exampleCircle :: Shape
exampleCircle = _Circle 2.0 1.4 4.5

exampleRectangle :: Shape
exampleRectangle = _Rectangle 1.3 3.1 10.3 7.7 

area :: Shape -> Double
area shape = shape
    (\x y r   -> pi * r ^ 2)
    (\x y w h -> w * h)

main :: IO ()
main = do
    print (area exampleCircle)
    print (area exampleRectangle)
```

The key is the new representation of the `Shape` type, which is the type of a higher-order function. In fact, if we squint we might recognize that the `Shape` type synonym:

```
type Shape = forall shape
    .  (Double -> Double -> Double -> shape)
    -> (Double -> Double -> Double -> Double -> shape)
    -> shape
```

… looks an awful lot like a GADT-style definition for the `Shape` type:

```
{-# LANGUAGE GADTs #-}

data Shape where
    Circle    :: Double -> Double -> Double -> Shape
    Rectangle :: Double -> Double -> Double -> Double -> Shape
```

This is not a coincidence! Essentially, Böhm-Berarducci encoding models a type as a function that expects each “constructor” as a function argument that has the same type as that constructor. I put “constructor” in quotes since we never actually use a real constructor. Those function arguments are place-holders that will remain abstract until we attempt to “pattern match” on a value of type `Shape`.

In the `area` function we “pattern match” on `Shape` by supplying handlers instead of constructors. To make this explicit, let’s use [equational reasoning][5] to see what happens when we evaluate `area exampleCircle`:

```
area exampleCircle

-- Substitute the `area` function with its definition
= exampleCircle
    (\x y r   -> pi * r ^ 2)
    (\x y w h -> w * h)

-- Substitute `exampleCircle` with its definition
= _Circle 2.0 1.4 4.5
    (\x y r   -> pi * r ^ 2)
    (\x y w h -> w * h)

-- Substitute the `_Circle` function with its definition
= (\_Circle _Rectangle -> _Circle 2.0 1.4 4.5)
    (\x y r   -> pi * r ^ 2)
    (\x y w h -> w * h)

-- Evaluate the outer-most anonymous function
= (\x y r -> pi * r ^ 2) 2.0 1.4 4.5

-- Evaluate the anonymous function
= pi * 4.5 ^ 2
```

In other words, Church encoding / Böhm-Berarducci encoding both work by maintaining a fiction that eventually somebody will provide us the “real” constructors right up until we actually need them. Then when we “pattern match” on the value we pull a last-minute bait-and-switch and use each “handler” of the pattern match where the constructor would normally go and everything works out so that we don’t need the constructor after all. Church-encoding is sort of like the functional programming equivalent of [“fake it until you make it”][6].

The same trick works for recursive data structures as well. For example, the way that we Böhm-Berarducci-encode this Haskell data structure:

```
data Tree = Node Int Tree Tree | Leaf

exampleTree :: Tree
exampleTree = Node 1 (Node 2 Leaf Leaf) (Node 3 Leaf Leaf)

preorder :: Tree -> [Int]
preorder tree = case tree of
    Node value left right -> value : preorder left ++ preorder right
    Leaf                  -> []

main :: IO ()
main = print (preorder exampleTree)
```

… is like this:

```
{-# LANGUAGE RankNTypes #-}

type Tree = forall tree
    .  (Int -> tree -> tree -> tree)  -- Node :: Int -> Tree -> Tree -> Tree
    -> tree                           -- Leaf :: Tree
    -> tree

_Node :: Int -> Tree -> Tree -> Tree
_Node value left right =
    \_Node _Leaf -> _Node value (left _Node _Leaf) (right _Node _Leaf)

_Leaf :: Tree
_Leaf = \_Node _Leaf -> _Leaf

exampleTree :: Tree
exampleTree = _Node 1 (_Node 2 _Leaf _Leaf) (_Node 3 _Leaf _Leaf)

preorder :: Tree -> [Int]
preorder tree = tree
    (\value left right -> value : left ++ right)
    []

main :: IO ()
main = print (preorder exampleTree)
```

This time the translation is not quite as mechanical as before, due to the introduction of recursion. In particular, two differences stand out.

First, the way we encode the `_Node` constructor is not as straightforward as we thought:

```
_Node :: Int -> Tree -> Tree -> Tree
_Node value left right =
    \_Node _Leaf -> _Node value (left _Node _Leaf) (right _Node _Leaf)
```

This is because we need to thread through the `_Node` / `_Leaf` function arguments through to the node’s children.

Second, the way we consume the `Tree` is also different. Compare the original code:

```
preorder :: Tree -> [Int]
preorder tree = case tree of
    Node value left right -> value : preorder left ++ preorder right
    Leaf                  -> []
```

… to the Böhm-Berarducci-encoded version:

```
preorder :: Tree -> [Int]
preorder tree = tree
    (\value left right -> value : left ++ right)
    []
```

The latter version doesn’t require the `preorder` function to recursively call itself. The `preorder` function is performing a task that is morally recursive but the `preorder` function is, strictly speaking, not recursive at all.

In fact, if we look at the Böhm-Berarducci-encoded solution closely we see that we never use recursion anywhere within the code! There are no recursive datatypes and there are also no recursive functions, yet somehow we still managed to encode a recursive data type and recursive functions on that type. This is what I mean when I say that Church encoding / Böhm-Berarducci encoding let you encode recursion in a language that does not natively support recursion. Our code would work just fine in a recursion-free subset of Haskell!

For example, [Dhall][7] is a real example of a language that does not natively support recursion and Dhall uses this same trick to model recursive data types and recursive functions:

-   [How to translate recursive code to Dhall][8]

That post goes into more detail about the algorithm for Böhm-Berarducci-encoding Haskell types, so you might find that post useful if the above examples were not sufficiently intuitive or clear.

#### Visitor pattern

The [visitor pattern][9] is a special case of Church encoding / Böhm Berarducci encoding. I’m not going to provide a standalone explanation of the visitor pattern since the linked Wikipedia page already does that. This section will focus on explaining the correspondence between Church encoding / Böhm-Berarducci encoding and the visitor pattern.

The exact correspondence goes like this. Given:

-   a Church-encoded / Böhm-Berarducci-encoded type `T`
    
    e.g. `Shape` in the first example
    
-   … with constructors `C₀`, `C₁`, `C₂`, …
    
    e.g. `Circle`, `Rectangle`
    
-   … and values of type `T` named `v₀`, `v₁`, `v₂`, …
    
    e.g. `exampleCircle`, `exampleRectangle`
    

… then the correspondence (using terminology from the Wikipedia article) is:

-   The “element” class corresponds to the type `T`
    
    e.g. `Shape`
    
-   A “concrete element” (i.e. an object of the “element” class) corresponds to a constructor for the type `T`
    
    e.g. `Circle`, `Rectangle`
    
    The `accept` method of the element selects which handler from the visitor to use, in the same way that our Church-encoded constructors would select one handler (named after the matching constructor) out of all the handler functions supplied to them.
    
    ```
    _Circle :: Double -> Double -> Double -> Shape
    _Circle x y r = \_Circle _Rectangle -> _Circle x y r
    
    _Rectangle :: Double -> Double -> Double -> Double -> Shape
    _Rectangle x y w h = \_Circle _Rectangle -> _Rectangle x y w h
    ```
    
-   A “visitor” class corresponds to the type of a function that pattern matches on a value of type `T`
    
    Specifically, a “visitor” class is equivalent to the following Haskell type:
    
    This is more restrictive than Böhm-Berarducci encoding, which permits pattern matches that return any type of value, like our `area` function, which returns a `Double`. In other words, Böhm-Berarducci encoding is not limited to just performing side effects when “visiting” constructors.
    
    (Edit: [Travis Brown][10] notes that the visitor pattern is not restricted to performing side effects. This might be an idiosyncracy of how Wikipedia presents the design pattern)
    
-   A “concrete visitor” (i.e. an object of the “visitor” class) corresponds to a function that “pattern matches” on a value of type `T`
    
    e.g. `area`
    
    … where each overloaded `visit` method of the visitor corresponds to a branch of our Church-encoded “pattern match”:
    
    ```
    area :: Shape -> Double
    area shape = shape
        (\x y r   -> pi * r ^ 2)
        (\x y w h -> w * h)
    ```
    
-   The “client” corresponds to a value of type `T`
    
    e.g. `exampleCircle`, `exampleRectangle`:
    
    ```
    exampleCircle :: Shape
    exampleCircle = _Circle 2.0 1.4 4.5
    
    exampleRectangle :: Shape
    exampleRectangle = _Rectangle 1.3 3.1 10.3 7.7 
    ```
    
    The Wikipedia explanation of the visitor pattern adds the wrinkle that the client can represent more than one such value. In my opinion, what the visitor pattern should say is that the client can be a recursive value which may have self-similar children (like our example `Tree`). This small change would improve the correspondence between the visitor pattern and Church-encoding.
    

#### Limitations of Böhm-Berarducci encoding

Church encoding works in any untyped language, but Böhm-Berarducci encoding does not work in all typed languages!

Specifically, Böhm-Berarducci only works in general for languages that support polymorphic types (a.k.a. [generic programming][11]). This is because the type of a Böhm-Berarducci-encoded value is a polymorphic type:

```
type Shape = forall shape
    .  (Double -> Double -> Double -> shape)
    -> (Double -> Double -> Double -> Double -> shape)
    -> shape
```

… but such a type cannot be represented in a language that lacks polymorphism. So what the visitor pattern commonly does to work around this limitation is to pick a specific `result` type, and since there isn’t a one-size-fits-all type, they’ll usually make the result a side effect, as if we had specialized the universally quantified type to `IO ()`:

```
type Shape =
    .  (Double -> Double -> Double -> IO ())
    -> (Double -> Double -> Double -> Double -> IO ())
    -> IO ()
```

This is why Go has great difficulty modeling sum types accurately, because Go does not support polymorphism (“generics”) and therefore Böhm-Berarducci encoding does not work in general for introducing sum types in Go. This is also why people with programming language theory backgrounds make a bigger deal out of Go’s lack of generics than Go’s lack of sum types, because if Go had generics then people could work around the lack of sum types using a Böhm-Berarducci encoding.

#### Conclusions

Hopefully this gives you a better idea of what Church encoding and Böhm-Berarducci encoding are and how they relate to the visitor pattern.

In my opinion, Böhm-Berarducci encoding is a bigger deal in statically-typed languages because it provides a way to introduce sum types and recursion into a language in a type-safe way that makes invalid states unrepresentable. Conversely, Church encoding is not as big of a deal in dynamically-typed languages because a Church-encoded type is still vulnerable to runtime exceptions.

[1]: https://en.wikipedia.org/wiki/Visitor_pattern
[2]: https://en.wikipedia.org/wiki/Church_encoding
[3]: https://en.wikipedia.org/wiki/Alonzo_Church
[4]: https://www.sciencedirect.com/science/article/pii/0304397585901355
[5]: https://www.haskellforall.com/2013/12/equational-reasoning.html
[6]: https://en.wikipedia.org/wiki/Fake_it_till_you_make_it
[7]: https://dhall-lang.org/
[8]: https://docs.dhall-lang.org/howtos/How-to-translate-recursive-code-to-Dhall.html
[9]: https://en.wikipedia.org/wiki/Visitor_pattern
[10]: https://twitter.com/travisbrown/status/1346411026275827714
[11]: https://en.wikipedia.org/wiki/Generic_programming
