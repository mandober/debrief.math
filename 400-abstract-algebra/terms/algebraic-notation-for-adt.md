# Algebraic notation for algebraic data types

Algebra       | Datatype
--------------|--------------------------------------------------------------------
0             | data T
1             | data T = T
2             | data T = L | R
a             | 
+             | data T a b = L a | R b
*             | (a,b)
^             | a -> b = bᵃ
--------------|--------------------------------------------------------------------
a + a         | data T a   = L a | R a
a + b         | data T a b = L a | R b
a * a         | (a,a)
a * b         | (a,b)
a * b         | a×b, a*b, ab, (a,b), Pair a b = (a,b)
a + b         | a+b, a|b, Either a b = Left a | Right b
b ^ a         | bᵃ ≅ (a -> b)
--------------|--------------------------------------------------------------------
1 + a         | data T a = N|C a, Maybe a
1 * a         | ((), a) ≅ a
0 + a         | (Void | a) ≅ a
--------------|--------------------------------------------------------------------
1 + a²        | data T a = Leaf   | C   (T a) (T a)
1 + a³        | data T a = Leaf   | C a (T a) (T a)
a + a²        | data T a = Leaf a | C   (T a) (T a)
a + a³        | data T a = Leaf a | C a (T a) (T a)
1 + a + a²    | data T a = Leaf | B a | C (T a) (T a)
1 + a + a³    | data T a = Leaf | B a | C a (T a) (T a)
--------------|--------------------------------------------------------------------


List a = Leaf | Node a (List a)
La = 1 + a * La
La = 1 + a * a
La = 1 + a²

Tree a = Leaf | Node a (Tree a) (Tree a)
Ta = 1 + a * Ta * Ta
Ta = 1 + a * a * a
Ta = 1 + a³

1 + 1 ≅ 1 * 2 ≅ 2  Bool = (Void, Bool)
