# Fitch notation: proof examples

https://mrieppel.github.io/fitchjs/
https://mrieppel.github.io/fitchjs/samples/examples.html

## Examples


```js
// Problem 1
(p -> q) |- (p -> (a -> q))

1   p -> q                P₁
2     p                   A₁
3       a                 A₂
4       q                 MP 1,2


Problem: (P > Q) |- (P > (A > Q))

1  |_  (P > Q)          Premise
2  | |_  P              Assumption
3  | | |_  A            Assumption
4  | | |   Q            1,2  >E
5  | |   (A > Q)        3-4  >I
6  |   (P > (A > Q))    2-5  >I


// 2
Problem: (A v B) |- ~(~A & ~B)

1   |_  (A v B)        Premise
2   | |_  (~A & ~B)    Assumption
3   | | |_  A          Assumption
4   | | |   ~A         2  &E
5   | | |   #          3,4  #I
6   | | |_  B          Assumption
7   | | |   ~B         2  &E
8   | | |   #          6,7  #I
9   | |   #            1,3-5,6-8  vE
10  |   ~(~A & ~B)     2-9  ~I


// 3
Problem: (A v (Ex)Fx) |- (Ex)(A v Fx)

1   |_  (A v (Ex)Fx)        Premise
2   | |_  A                 Assumption
3   | |   (A v Fa)          2  vI
4   | |   (Ex)(A v Fx)      3  EI
5   | |_  (Ex)Fx            Assumption
6   | | |_  Fa              Assumption
7   | | |   (A v Fa)        6  vI
8   | | |   (Ex)(A v Fx)    7  EI
9   | |   (Ex)(A v Fx)      5,6-8  EE
10  |   (Ex)(A v Fx)        1,2-4,5-9  vE


// 4
Problem:  |- (Ax)(Ay)((Fx & ~Fy) > ~x=y)

1   |_  a                            Flag
2   | |_  b                          Flag
3   | | |_  (Fa & ~Fb)               Assumption
4   | | | |_  a=b                    Assumption
5   | | | |   Fa                     3  &E
6   | | | |   ~Fb                    3  &E
7   | | | |   Fb                     4,5  =E
8   | | | |   #                      6,7  #I
9   | | |   ~a=b                     4-8  ~I
10  | |   ((Fa & ~Fb) > ~a=b)        3-9  >I
11  |   (Ay)((Fa & ~Fy) > ~a=y)      2-10  AI
12    (Ax)(Ay)((Fx & ~Fy) > ~x=y)    1-11  AI
```


## Raw input

compatible with:
* http://teachinglogic.liglab.fr/DN/index.php
* https://mrieppel.github.io/fitchjs/


```js
// 0
Example: p ⋀ q, p -> ¬q |- ⟘
AKA:    (p & q) & (p => -q) => F

1 assume p ⋀ q ⋀ (p -> ¬q)
2   p ⋀ q                             ⋀E₁ 1
3   p -> ¬q                           ⋀E₂ 1
4   p                                 ⋀E₁ 2
5   q                                 ⋀E₂ 2
6   ¬q                                →E 3,4
7   F                                 →E 6,5
8 ∴ p ⋀ q ⋀ (p -> ¬q) -> F            →I 1,7





// 1
Problem: (P > Q) |- (P > (A > Q))

1  |_  (P > Q)          Premise
2  | |_  P              Assumption
3  | | |_  A            Assumption
4  | | |   Q            1,2  >E
5  | |   (A > Q)        3-4  >I
6  |   (P > (A > Q))    2-5  >I


// 2
Problem: (A v B) |- ~(~A & ~B)

1   |_  (A v B)        Premise
2   | |_  (~A & ~B)    Assumption
3   | | |_  A          Assumption
4   | | |   ~A         2  &E
5   | | |   #          3,4  #I
6   | | |_  B          Assumption
7   | | |   ~B         2  &E
8   | | |   #          6,7  #I
9   | |   #            1,3-5,6-8  vE
10  |   ~(~A & ~B)     2-9  ~I


// 3
Problem: (A v (Ex)Fx) |- (Ex)(A v Fx)

1   |_  (A v (Ex)Fx)        Premise
2   | |_  A                 Assumption
3   | |   (A v Fa)          2  vI
4   | |   (Ex)(A v Fx)      3  EI
5   | |_  (Ex)Fx            Assumption
6   | | |_  Fa              Assumption
7   | | |   (A v Fa)        6  vI
8   | | |   (Ex)(A v Fx)    7  EI
9   | |   (Ex)(A v Fx)      5,6-8  EE
10  |   (Ex)(A v Fx)        1,2-4,5-9  vE


// 4
Problem:  |- (Ax)(Ay)((Fx & ~Fy) > ~x=y)

1   |_  a                            Flag
2   | |_  b                          Flag
3   | | |_  (Fa & ~Fb)               Assumption
4   | | | |_  a=b                    Assumption
5   | | | |   Fa                     3  &E
6   | | | |   ~Fb                    3  &E
7   | | | |   Fb                     4,5  =E
8   | | | |   #                      6,7  #I
9   | | |   ~a=b                     4-8  ~I
10  | |   ((Fa & ~Fb) > ~a=b)        3-9  >I
11  |   (Ay)((Fa & ~Fy) > ~a=y)      2-10  AI
12    (Ax)(Ay)((Fx & ~Fy) > ~x=y)    1-11  AI
```
