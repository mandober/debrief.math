# The visitor pattern and Church encoding

The visitor pattern is essentially the same thing as Church encoding, 2021   
https://www.haskellforall.com/2021/01/the-visitor-pattern-is-essentially-same.html

This post explains how the visitor pattern is essentially the same thing as Church encoding (or Böhm-Berarducci encoding). It also explains how you can usefully employ the visitor pattern (or Church encoding or Böhm-Berarducci encoding) to expand your programming toolbox.

Alonzo Church discovered that you could model any data structure in the untyped lambda calculus using the technic that is now called *Church encoding*.

Later, Corrado Böhm and Alessandro Berarducci devised their version of Church encoding, now called *Böhm-Berarducci encoding*, that worked to encode data structures in typed lambda calculi, specifically in System F.

[Automatic synthesis of typed lambda-programs on term algebras](https://www.sciencedirect.com/science/article/pii/0304397585901355)

We use the term *Church encoding* when talking about this trick in the context of untyped lambda calculi, and *Böhm-Berarducci encoding* when talking about it in the context of typed lambda calculi. When not talking about any specific lambda calculi we'll use the former.

We can model the following data types using nothing but functions:
- Products
- Coproducts
- Recursive data structures

But if we can model these types, then we can essentially model any other.

The essence of the visitor pattern is that we can use functions to Church-encode sum types (e.g. JS) or recursion (e.g. DHALL) in a PL that doesn't natively support it.

## Example in Haskell

Haskell's `Shape` ADT is translated into `Shape` using BBE. The Shape data type is non-recursive, simplifying matters.

We first define the `Shape` as an ADT:

```hs
-- as ADT
data Shape
  = Circ { x,y,r   :: Double }
  | Rect { x,y,w,h :: Double }

c0 :: Shape
c0 = Circ 2.0 1.4 4.5

r0 :: Shape
r0 = Rect 1.3 3.1 10.3 7.7

area :: Shape -> Double
area shape = case shape of
  Circ x y r   -> pi * r * r
  Rect x y w h -> w * h

main :: IO ()
main = do
  print (area c0)
  print (area r0)
```

But now imagine if we had to implement this without ADTs using only functions. We'd use Böhm-Berarducci encoding (the typed version of Church-encoding), and the solution would look like this:

```hs
-- after: we must add this pragma
{-# LANGUAGE RankNTypes #-}

-- before (but as GADT instead of ADT)
-- The GADT encompasses both the type and its two data ctors
data Shape where
  Circ :: Double -> Double -> Double -> Shape
  Rect :: Double -> Double -> Double -> Double -> Shape

-- after:
-- We need to encode the type and its two data ctors as separate functions.
-- In fact, the type doesn't exists (in untyped an λ-calculus), so we alias it.

-- | This type alias plays the same role as the original `Shape` type.
-- Since we cannot know what it returns, we use the existential type `r`.
type Shape = forall r
            . (Double -> Double -> Double -> r)
           -> (Double -> Double -> Double -> Double -> r)
           -> r

-- The two data ctors are separate functions but are nevertheless related:
-- both first take their arguments (circ takes 3 and rect takes 4), but then
-- both take the same HANDLER FUNCTIONS, `hcirc` and `hrect`, except that
-- `circ` uses `hcirc` applied to its 3 args, and `rect` uses `hrect` applied
-- to its 4 args. So the value obtain from applying the `circ` function will be a function set up to apply 

-- | The `circ` function acts as the original `Circ` data ctor
circ :: Double -> Double -> Double -> Shape
circ x y r = \ hc _ -> hc x y r

-- | The `rect` function acts as the original `Rect` data ctor
rect :: Double -> Double -> Double -> Double -> Shape
rect x y z w = \ _ hr -> hr x y z w

-- before: (shapes as flat values)
c0,r0 :: ShapeA
c0 = Circ 5 5 2
r0 = Rect 10 7 3 4

-- after: (shapes as closures)
c1,r1 :: Shape
c1 = circ 5 5 2
r1 = rect 10 7 3 4

-- | before: shape area calculation
areaA :: ShapeA -> Double
areaA s = case s of
  Circ x y r -> pi * r * r
  Rect x y h w -> h * w

-- | after: shape area calculation
area :: Shape -> Double
area shape = shape
  (\ x y r   -> pi * r * r)
  (\ x y h w -> h * w)

printArea :: IO ()
printArea = do
  let xs = []
      x0 = "[before] circ: " ++ show (areaA c0)
      y0 = "[before] rect: " ++ show (areaA r0)
      x1 = "[after]  circ: " ++ show (area  c1)
      y1 = "[after]  rect: " ++ show (area  r1)
  mapM_ putStrLn (y1 : x1 : y0 : x0 : xs)
```

Böhm-Berarducci encoding models a data type as a set of functions, each representing one of the original data ctors.

### Creating values

To create a circle (corresponding to the use of the original 3-ary data ctor `Circ`), we now use the 3+2-ary lambda (function constructor) `circ`. The first 3 args are fields values `x`, `y` and `r` intened to bind the numbers.

```hs
-- circ fn ctor
circ = (\ x y r -> \ hc hr -> hc x y r)

-- we create a new circle by applying the `circ` to 3 numbers:
circ 5 5 2
= (\ x y r -> \ hc hr -> hc x y r) 5 5 2
= (\ hc hr -> hc 5 5 2)
```

So, the closure `(\ hc hr -> hc 5 5 2)` *is* a circle, i.e. a value of the circle variant of the type shape.

It is similar, save for the number of field args, for creation of a rectangle:

```hs
-- rect fn ctor
rect = (\ x y h w -> \ hc hr -> hr x y h w)

-- we create a new rectangle by applying the `rect` to 4 numbers:
rect 10 7 3 4
= (\ x y h w -> \ hc hr -> hr x y h w) 10 7 3 4
= (\ hc hr -> hr 10 7 3 4)
```

So, the closure `(\ hc hr -> hr 10 7 3 4)` *is* a rectangle, i.e. a value of the rectangle variant of the type shape.

This is it - we've created two values (closures-as-values). It is only when we need to do something with these values that we need to saturate these closures by providing the final two args.

### Consuming values

So, these two closures *are* values, and we don't saturate them until we need to do something with them, like calculate the area of a shape.

```hs
c1 = (\ hc hr -> hc  5 5 2)
r1 = (\ hc hr -> hr 10 7 3 4)
```

Note that the handler for circle `hc` is applied to all 3 fields (`hc 5 5 2`).



---

Essentially, Böhm-Berarducci encoding models a type as a function that expects each "constructor" as a function argument that has the same type as that constructor. I put "constructor" in quotes since we never actually use a real constructor. Those function arguments are place-holders that will remain abstract until we attempt to "pattern match" on a value of type Shape. In the `area` function we "pattern match" on `Shape` by supplying handlers instead of constructors.

In other words, Church encoding or Böhm-Berarducci encoding both work by maintaining a fiction that eventually somebody will provide us the "real" constructors right up until we actually need them. Then when we "pattern match" on the value we pull a last-minute bait-and-switch and use each "handler" of the pattern match where the constructor would normally go and everything works out so that we don't need the constructor after all.

The same trick works for recursive data structures as well. For example, the way that we Böhm-Berarducci-encode this Haskell data structure:

## Encoding a tree with BBE

```hs
-- | before: rec type
data TreeA where
  Node :: Int -> TreeA -> TreeA -> TreeA
  Leaf :: TreeA

-- | after: rec type in BBE
type Tree = forall r. (Int -> r -> r -> r) -> r -> r

-- | `node` ctor: all r's become Tree, not like with non-rec types where only the last did. `node` takes a value and 2 subtrees (lst, rst) + 2 handlers (node', leaf'). It assembles a new tree by applying the handler `node'` to the 3 args: the value, left and right subtree args. These new left and right subtree args are assembled from the lst/rst arg and the 2 handlers.
node :: Int -> Tree -> Tree -> Tree
node n lst rst = \ node' leaf' -> node' n (lst node' leaf') (rst node' leaf')

leaf :: Tree
leaf = \ node' leaf' -> leaf'


-- | before: example value
t0 :: TreeA
t0 = Node 1
  (Node 2 Leaf Leaf)
  (Node 3 Leaf Leaf)

-- | after: example value
t1 :: Tree
t1 = \ node' leaf' ->
  node' 1
    (node' 2 leaf' leaf')
    (node' 3 leaf' leaf')


-- | before: example consumer
preorder :: TreeA -> [Int]
preorder tree = case tree of
    Node value left right -> value : preorder left ++ preorder right
    Leaf                  -> []

-- | after: example consumer
pre :: Tree -> [Int]
pre t = t non emp
  where
  non :: Int -> [Int] -> [Int] -> [Int]
  non n ls rs = n : ls ++ rs
  emp :: [Int]
  emp = []


check :: IO ()
check = do
  putStrLn $ show (preorder t0)
  putStrLn $ show (pre t1)
```

This time the translation is not quite as mechanical as before, due to the introduction of recursion. In particular, two differences stand out.

First, the way we encode the `node` constructor is not as straightforward as for the non-recursive data types because now we need to thread the `node'` and `leaf'` function args through to the both subtree children (`lst` and `rst`).

Second, the way we consume a tree is also different. Compared the original Haskell code, the BBE version doesn't require the preorder function to call itself. The preorder function is performing a task that is logically recursive, but the function itself is not recursive (the data is).

## Visitor pattern
