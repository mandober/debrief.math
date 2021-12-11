# Lambda calculus combinators in Haskell


Com| LC                   |A| name       | Haskell function
---|----------------------|-|------------|------------------------------------
B  | λabc.a(bc)           |3| (.)        | \g f x         -> g (f x)
B1 | λabcd.a(bcd)         |4|            | \a b c d       -> a (b c d)
B2 | λabcde.a(bcde)       |5|            | \a b c d e     -> a (b c d e)
B3 | λabcd.a(b(cd))       |4|            | \a b c d       -> a (b (c d))
C  | λabc.acb             |3| flip       | \f a b         -> f b a
D  | λabcd.ab(cd)         |4|            | \a b c d       -> a b (c d)
D1 | λabcde.abc(de)       |5|            | \a b c d e     -> a b c (d e)
D2 | λabcde.a(bc)(de)     |5|            | \a b c d e     -> a (b c) (d e)
E  | λabcde.ab(cde)       |5|            | \a b c d e     -> a b (c d e)
Ê  | λabcdefg.a(bcd)(efg) |7|            | \a b c d e f g -> a (b c d) (e f g
F  | λabc.cba             |3|            | \x f g         -> g f x
G  | λabcd.ad(bc)         |4|            | \a b c d       -> a d (b c)
H  | λabc.abcb            |3|            | \a b c         -> a b c b
I  | λa.a                 |1| id         | \a             -> a
J  | λabcd.ab(adc)        |4|            | \a b c d       -> a b (a d c)
K  | λab.a                |2| const      | \a b           -> a
KI | λab.b                |2| flip const | \a b           -> b
L  | λab.a(bb)            |2|            | \a b           -> a (b b)
M  | λa.aa                |1|            | \f             -> f f
M2 | λab.ab(ab)           |2|            | \f g           -> f g (f g)
O  | λab.b(ab)            |2|            | \a b           -> b (a b)
Q  | λabc.b(ac)           |3|            | \a b c         -> b (a c)
Q1 | λabc.a(cb)           |3|            | \a b c         -> a (c b)
Q2 | λabc.b(ca)           |3|            | \a b c         -> b (c a)
Q3 | λabc.c(ab)           |3|            | \a b c         -> c (a b)
Q4 | λabc.c(ba)           |3|            | \a b c         -> c (b a)
R  | λabc.bca             |3|            | \a b c         -> b c a
S  | λabc.ac(bc)          |3|            | \g f x         -> g x (f x)
T  | λab.ba               |2| (&)        | \x f           -> f x
U  | λab.b(aab)           |2|            | \a b           -> b (a a b)
V  | λabc.cab             |3|            | \x y f         -> f x y
W  | λab.abb              |2|            | \f x           -> f x x
W1 | λab.baa              |2|            | \x f           -> f x x

## Functions

Name     | A | Term                                     | Dependencies | Free?
---------|---|------------------------------------------|--------------|-------
Add      | 4 | (λm. λn. λf. λx. m f (n f x))            |              |
Mul      | 3 | (λm. λn. λf. m (n f))                    |              |
Pred     | 2 | (λm. λn. n m                             |              |
Is0      | 1 | (λn. n (λx. False) True)                 | True, False  | 1
Sub      | 2 | (λm. λn. (n Pred) m)                     | Pred
Pred
