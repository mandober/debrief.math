# Duality

https://www.youtube.com/watch?v=oIc0K81yz6E

In this video we introduce the idea of *duality*, and the notion of the *opposite category*. We define the *initial object* of a category, and show that it can be viewed as the empty set, within the category of sets. We also introduce the idea of the *coproduct* and show that it corresponds to the discriminated union, within the category of sets. We also show how the Cartesian product can be viewed as a functor in the category of sets. More generally, we show that the *categorical product* can be viewed as a functor, when the categorical product of each pair of objects is defined. This also gives us a notion of the *categorical product of a pair of arrows*.

## Duality and opposite categories

The **opposite category** of a category `C` is the category `Cᴼᴾ` where all arrows of C are reversed.

* Initial and terminal objects
https://youtu.be/oIc0K81yz6E?list=PLCTMeyjMKRkoS699U0OJ3ymr3r01sI08l&t=148

* Coproduct
https://youtu.be/oIc0K81yz6E?list=PLCTMeyjMKRkoS699U0OJ3ymr3r01sI08l&t=801

* Set Union
https://youtu.be/oIc0K81yz6E?list=PLCTMeyjMKRkoS699U0OJ3ymr3r01sI08l&t=1318

```
A = {1,2}
B = {2,3}

A⨯B = { (1,2), (1,2)
      , (2,1), (2,3)
      }

A+B = {L}⨯A ⋃ {R}⨯B
{L}⨯A = { (L,1), (L,2) }
{R}⨯B = { (R,2), (R,3) }
A+B = {L}⨯A ⋃ {R}⨯B
A+B = { (L,1), (L,2) } ⋃ { (R,2), (R,3) }
A+B = { (L,1), (L,2)
      , (R,2), (R,3)
      }
```

* In Haskell

```hs
{-# LANGUAGE OverloadedLists #-}

import Data.Set (Set)
import Data.Set qualified as S

-- Product type A ⨯ B
type a ⨯ b = (a, b)

-- Cartesian product function: ∀ A B. {A} ⨯ {B} = {(A,B)}
(⨯) :: Set a -> Set b -> Set (a ⨯ b)
(⨯) = S.cartesianProduct

-- projection 1, A⨯B → A
π₁ :: a ⨯ b -> a
π₁ (a ⨯ b) = a

-- projection 2, A⨯B → B
π₂ :: a ⨯ b -> b
π₁ (a ⨯ b) = b


-- Union operation A ⋃ B
(⋃) :: Set a -> Set a -> Set a
(⋃) = S.union

-- A + B
-- A + B = [L]⨯A ⋃ [R]⨯B
-- L and R injection functions
data a + b = L a | R b
-- not (L,1)
-- but (L 1)

-- or, A + B as a GADT
data a + b where
  L :: a -> a + b
  R :: b -> a + b

a :: Set Int
a = [1,2]

b :: Set Int
b = [2,3]

p :: Set (a ⨯ b)
p = [ (1,2), (1,2)
    , (2,1), (2,3)
    ]

c :: Set (a + b)
c = [ (L,1), (L,2)
    , (R,2), (R,3)
    ]

l1 :: Int + b
l1 = L 1

r1 :: a + Char
r1 = R 'a'

-- {L} ⨯ A
ma = L 1


-- A -> {L}⨯A
-- [L]⨯A = [ (L,1), (L,2) ]
ma :: Set a -> Set (a + b)
ma xs = fmap L xs

-- B -> {R}⨯B
-- [R]⨯B = [ (R,2), (R,3) ]
mb :: Set b -> Set (a + b)
mb xs = fmap R xs


mx :: (a + b) -> Set x -> Set (a + b)
mx tag xs = fmap tag xs
mx L xs = fmap L xs
mx R xs = fmap R xs

-- A+B = [L]⨯A ⋃ [R]⨯B
-- A+B = [ (L,1), (L,2) ] ⋃ [ (R,2), (R,3) ]
bmx :: Set a -> Set b -> Set (a + b)
bmx as bs = (fmap L as) ⋃ (fmap R bs)

elim :: Set (a + b) -> (a -> c) -> (b -> c) -> c
elim sum ac bc = case sum of
  L a -> ac a
  R b -> bc b
```
