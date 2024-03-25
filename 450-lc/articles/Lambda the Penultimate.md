---
created: 2021-09-03T23:22:41 (UTC +02:00)
tags: []
source: https://benlynn.blogspot.com/2018/11/lambda-penultimate_16.html
author: Ben Lynn
---

# Ben Lynn's Online Garbage: Lambda the Penultimate

> ## Excerpt
> Lambda expressions have proven so useful that even Java and C++ support them nowadays. But how do we compile them for a machine to run? No...

---
Lambda expressions have proven so useful that even Java and C++ support them nowadays. But how do we compile them for a machine to run? No CPU has a lambda instruction.

Unfortunately, even with extra rewrite rules, classic bracket abstraction yields monstrous unwieldy expressions. Decades ago, they worked around this problem by building custom combinators tailored for each input program, known as _supercombinators_. Compilation is trickier, but at least the output is reasonable.

data Deb \= Zero | Succ Deb | Lam Deb | App Deb Deb deriving Show
infixl 5 :#
data Com \= Com :# Com | S | I | C | K | B | Sn Int | Bn Int | Cn Int
ski :: Deb \-> (Int, Com)
ski deb \= case deb of
  Zero                           \-> (1,       I)
  Succ d    | x@(n, \_) <- ski d  \-> (n + 1,   f (0, K) x)
  App d1 d2 | x@(a, \_) <- ski d1
            , y@(b, \_) <- ski d2 \-> (max a b, f x y)
  Lam d | (n, e) <- ski d \-> case n of
                               0 \-> (0,       K :# e)
                               \_ \-> (n \- 1,   e)
  where
  f (a, x) (b, y) \= case (a, b) of
    (0, 0)             \->         x :# y
    (0, n)             \-> Bn n :# x :# y
    (n, 0)             \-> Cn n :# x :# y
    (n, m) | n \== m    \-> Sn n :# x :# y
           | n < m     \->                Bn (m \- n) :# (Sn n :# x) :# y
           | otherwise \-> Cn (n \- m) :# (Bn (n \- m) :#  Sn m :# x) :# y

Our ski function returns an integer and a combinatory logic term equivalent to the input lambda term. The integer is zero if the given lambda term is closed; for an open term, it’s the number of lambdas needed to close it.

It uses bulk variants of the B, C, and S combinators:

linBulk :: Com \-> Com
linBulk b \= case b of
  Bn n   \-> iterate ((B:#        B):#) B !! (n \- 1)
  Cn n   \-> iterate ((B:#(B:#C):#B):#) C !! (n \- 1)
  Sn n   \-> iterate ((B:#(B:#S):#B):#) S !! (n \- 1)
  x :# y \-> linBulk x :# linBulk y
  \_      \-> b

logBulk :: Com \-> Com
logBulk b \= case b of
  Bn n   \-> go n (K:#I)         :# B              :# I
  Cn n   \-> go n (K:#(C:#I:#I)) :# (B:#(B:#C):#B) :# I
  Sn n   \-> go n (K:#(C:#I:#I)) :# (B:#(B:#S):#B) :# I
  x :# y \-> logBulk x :# logBulk y
  \_      \-> b
  where
  go n base \= foldr (:#) base $ (\[b0, b1\]!!) <$> bits \[\] n
  bits acc 0 \= reverse acc
  bits acc n | (q, r) <- divMod n 2 \= bits (r:acc) q
  b0 \= C:#B:#(S:#B:#I)
  b1 \= C:#(B:#S:#(B:#(B:#B):#(C:#B:#(S:#B:#I)))):#B

For example:

λ print $ logBulk $ Sn 1234
CB(SBI)(C(BS(B(BB)(CB(SBI))))B(CB(SBI)(CB(SBI)(C(BS(B(BB)(CB
(SBI))))B(CB(SBI)(C(BS(B(BB)(CB(SBI))))B(C(BS(B(BB)(CB(SBI))
))B(CB(SBI)(CB(SBI)(C(BS(B(BB)(CB(SBI))))B(K(CII))))))))))))
(B(BS)B)I
λ print $ logBulk $ Bn 1234
CB(SBI)(C(BS(B(BB)(CB(SBI))))B(CB(SBI)(CB(SBI)(C(BS(B(BB)(CB
(SBI))))B(CB(SBI)(C(BS(B(BB)(CB(SBI))))B(C(BS(B(BB)(CB(SBI))
))B(CB(SBI)(CB(SBI)(C(BS(B(BB)(CB(SBI))))B(KI)))))))))))BI

For completeness, we include our pretty-printing code:

instance Show Com where
  show S \= "S"
  show I \= "I"
  show C \= "C"
  show K \= "K"
  show B \= "B"
  show (l :# r@(\_ :# \_)) \= show l ++ "(" ++ show r ++ ")"
  show (l :# r)          \= show l ++        show r
  show (Bn n) \= "B\_" ++ show n
  show (Cn n) \= "C\_" ++ show n
  show (Sn n) \= "S\_" ++ show n

In other words, we can easily rewrite a lambda term of length N as a combinatory logic term of length O(N log N).

Kiselyov laments bracket abstraction has "many descriptions and explanations and blogs", all of which take a syntactic approach. I’m one of the guilty parties, and hope to redeem myself with this post. Also, I rewrote [one of my toy compilers][1] to demonstrate another algorithm from Kiselyov’s paper. Though not linear, the algorithm avoids bulk combinators and often produces short and sweet programs.

[1]: https://crypto.stanford.edu/~blynn/lambda/crazyl.html
