# Lambda calculus combinators in Haskell


Comb| LC                   |A| name       | Haskell function                    |    
----|----------------------|-|------------|-------------------------------------|----
B   | λabc.a(bc)           |3| (.)        | \g f x         -> g (f x)           | 3.3
B1  | λabcd.a(bcd)         |4|            | \a b c d       -> a (b c d)         | 4.4
B2  | λabcde.a(bcde)       |5|            | \a b c d e     -> a (b c d e)       | 5.5
B3  | λabcd.a(b(cd))       |4|            | \a b c d       -> a (b (c d))       | 4.4
C   | λabc.acb             |3| flip       | \f a b         -> f b a             | 3.3
D   | λabcd.ab(cd)         |4|            | \a b c d       -> a b (c d)         | 4.4
D1  | λabcde.abc(de)       |5|            | \a b c d e     -> a b c (d e)       | 5.5
D2  | λabcde.a(bc)(de)     |5|            | \a b c d e     -> a (b c) (d e)     | 5.5
E   | λabcde.ab(cde)       |5|            | \a b c d e     -> a b (c d e)       | 5.5
Ê   | λabcdefg.a(bcd)(efg) |7|            | \a b c d e f g -> a (b c d) (e f g) | 7.7
F   | λabc.cba             |3|            | \x f g         -> g f x             | 3.3
G   | λabcd.ad(bc)         |4|            | \a b c d       -> a d (b c)         | 4.4
H   | λabc.abcb            |3|            | \a b c         -> a b c b           | 3.3
I   | λa.a                 |1| id         | \a             -> a                 | 1.1
J   | λabcd.ab(adc)        |4|            | \a b c d       -> a b (a d c)       | 4.5
K   | λab.a                |2| const      | \a b           -> a                 | 2.1
KI  | λab.b                |2| flip const | \a b           -> b                 | 2.1
L   | λab.a(bb)            |2|            | \a b           -> a (b b)           | 2.3
M   | λa.aa                |1|            | \f             -> f f               | 1.2
M2  | λab.ab(ab)           |2|            | \f g           -> f g (f g)         | 2.4
O   | λab.b(ab)            |2|            | \a b           -> b (a b)           | 2.3
Q   | λabc.b(ac)           |3|            | \a b c         -> b (a c)           | 3.3
Q1  | λabc.a(cb)           |3|            | \a b c         -> a (c b)           | 3.3
Q2  | λabc.b(ca)           |3|            | \a b c         -> b (c a)           | 3.3
Q3  | λabc.c(ab)           |3|            | \a b c         -> c (a b)           | 3.3
Q4  | λabc.c(ba)           |3|            | \a b c         -> c (b a)           | 3.3
R   | λabc.bca             |3|            | \a b c         -> b c a             | 3.3
S   | λabc.ac(bc)          |3|            | \g f x         -> g x (f x)         | 3.4
T   | λab.ba               |2| (&)        | \x f           -> f x               | 2.2
U   | λab.b(aab)           |2|            | \a b           -> b (a a b)         | 2.4
V   | λabc.cab             |3|            | \x y f         -> f x y             | 3.3
W   | λab.abb              |2|            | \f x           -> f x x             | 2.3
W1  | λab.baa              |2|            | \x f           -> f x x             | 2.3
