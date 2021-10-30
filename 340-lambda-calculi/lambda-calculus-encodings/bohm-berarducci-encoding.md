page-name:  bohm-berarducci-encoding.md
page-title: Böhm-Berarducci encoding
---

# Böhm-Berarducci encoding

The visitor pattern is essentially the same thing as Church encoding (2021)   
https://www.haskellforall.com/2021/01/the-visitor-pattern-is-essentially-same.html

Alonzo Church discovered that you could model any data structure in the untyped lambda calculus using the technic that is now called Church encoding. Later, Corrado Böhm and Alessandro Berarducci had devised a version of Church encoding that worked to encode data structures in typed lambda calculi, specifically in System F, presented in the paper: [Automatic synthesis of typed Λ-programs on term algebras](https://www.sciencedirect.com/science/article/pii/0304397585901355)

We can model the following data structures:
- Products (records, structs). A product of two types is a type that stores both of them; e.g. a record with two fields, first of type A, second of type B
- Coproducts (sum types, tagged unions). A sum of two types A and B is a type that stores either A or B; e.g. a tagged union where the first tag stores a value of type A and the second tag stores a value of type B)
- Recursive data structures

The Böhm-Berarducci encoding (BBE) is known as the adjustment of the Church encoding for typed settings. Like other encoding schemes, BBE can encode any datatype using just anonymous function. Scott's encoding is also similar to these two, and it has a clear number of steps for translation of a data type from Haskell to a types λ-calculus.

## Example in Haskell

We use Haskell to show how the Shape type is defined using GADTs, as `ShapeG`, and how its translattion into Böhm-Berarducci encoding, as `ShapeBB`, looks like. The Shape type evidently non-recursive, which simplifies matters.

We can start by defining the Shape type using the regular ADT declaration,

```hs
-- ADT decl
data Shape
  = Circ { x :: Double, y :: Double, r :: Double }
  | Rect { x :: Double, y :: Double, w :: Double, h :: Double }

-- shorthanded but equivalent ADT decl
data ShapeA = CircA { x,y,r :: Double } | RectA { x,y,w,h :: Double }
```

but in this particular example, nothing is gained from using GADT syntax: other than allowing accessor functions (field names) there's no functional differences between this declaration and the one below that uses the GADT syntax. However, the benefit of using the GADT syntax in this case is that a GADT declaration looks incredibly similar to the Böhm-Berarducci encoding (of the data type), as will soon become evident.

The exemplary Shape data type, named `ShapeG` in its GADT form, consists of a nullary type ctor and two data ctors, each with a different number of fields. GADT syntax explicitly shows that all data ctors must return an instance of the declared type, but since the type ctor is nullary here, the return type of each data ctor must be exactly the same.

The strategy is to define a lambda function with as many params as there are data ctors in the type. Each param is 




```hs
-- | GADT
data ShapeG where
  CircG :: Double -> Double -> Double -> ShapeG
  RectG :: Double -> Double -> Double -> Double -> ShapeG

-- | BBE
type ShapeBB = forall shape
  .  (Double -> Double -> Double -> shape)
  -> (Double -> Double -> Double -> Double -> shape)
  -> shape

-- | BBE Circle "data ctor"
circCtor :: Double -> Double -> Double -> ShapeBB
circCtor x y r = \hCirc hRect -> hCirc x y r

-- | BBE Rectangle "data ctor"
rectCtor :: Double -> Double -> Double -> Double -> ShapeBB
rectCtor x y w h = \hCirc hRect -> hRect x y w h


-- | GADT: area
areaA :: ShapeG -> Double
areaA shape = case shape of
  CircG x y r   -> pi * r ^ 2
  RectG x y w h -> w * h
-- | BBE: area
areaB :: ShapeBB -> Double
areaB shape = shape
  (\x y r   -> pi * r ^ 2)
  (\x y w h -> w * h)


-- | GADT: example circle
circA :: ShapeG
circA = CircG 2.0 1.4 4.5
-- | BBE: example circle
circB :: ShapeBB
circB = circCtor 2.0 1.4 4.5


-- | GADT: example rectangle
rectA :: ShapeG
rectA = RectG 1.3 3.1 10.3 7.7
-- | BBE: example rectangle
rectB :: ShapeBB
rectB = rectCtor 1.3 3.1 10.3 7.7


main = do
  putStrLn ("ShapeG circle's area: "     <> show (areaA circA))
  putStrLn ("ShapeBB circle's area: "    <> show (areaB circB))
  putStrLn ("ShapeG rectangle's area: "  <> show (areaA rectA))
  putStrLn ("ShapeBB rectangle's area: " <> show (areaB rectB))
```


BB-encoding a non-recursive data type:
1. First declare the datatype as a GADT that will be used a "model"
2. GADT uses the 'data' keyword while BB can use anything:
   - 'type' can be used to declare only a type alias but
   - 'newtype' is better if we're to impl classes for it
   - 'data' is probably the most comfortable since the type


* the return type is a forall-type
* each "ctor" param plays the role of data ctor
* there is an "extra" overall return type that is the same as
  the return types of each "ctor" param (that expect a funarg)
