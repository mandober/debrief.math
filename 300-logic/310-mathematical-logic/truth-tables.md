# Truth tables

A *truth function* is a function whose domain and codomain is a Boolean set,    
𝔹 = {true, false}. True and false are sometimes referred to as *truth values*.


That is, unary truth functions take a Boolean to a Boolean, 𝔹 -> 𝔹, while polyadic truth functions take an n-tuple of Booleans to a Boolean. In fact, all truth functions always return a single Boolean value.


taking a n-tuple of Booleans (truth values) and returns a single truth value, i.e. a single Boolean value (True or False). All truth function always return a single Boolean.

- A unary truth function takes a Boolean (1 var)    
  `Bool -> Bool`
- A binary truth function takes a 2-tuple of Booleans (2 vars)    
  `(Bool, Bool) -> Bool`
- A binary truth function takes a 3-tuple of Booleans (3 vars)    
  `(Bool, Bool, Bool) -> Bool`

and so on.

where:
- v is number of varibles
- c is number of configurations
- f is number of truth functions


If we let single letters variables (e.g. p, q, r, s, t, etc.) stand for values of Boolean type (each one is either T or F), we see that 

the number of truth functions is related to the number of variables, n, in this way: (2^2)^n, which is 4^n. One Boolean variable ranges over 2 values so there are 2^m possible configurations:

v is 
num of configurations: c = 2^v


v | c  | f   | arity      |
--|----|-----|------------|----------------------------------------------------
0 | 2  | 2   | nullary    | constants TRUE and FALSE, α -> 𝔹
1 | 2  | 4   | unary      | p: 𝔹 -> 𝔹
2 | 4  | 8   | binary     | ⟨p: 𝔹, q: 𝔹⟩ -> 𝔹
3 | 8  | 64  | ternary    | ⟨p: 𝔹, q: 𝔹, r: 𝔹⟩ -> 𝔹
4 | 16 | 256 | quaternary | ⟨p: 𝔹, q: 𝔹, r: 𝔹, s: 𝔹⟩ -> 𝔹
5 | 25 | 256 | quinary    |                                                
6 |    |     | senary     |                                               
7 |    |     | septenary  |                                                  
8 |    |     | octonary   |                                                 
9 |    |     | novenary   |                                                 
10|    |     | denary     |                                               
11|    |     | undenary   |                                                 
12|    |     | duodenary  |                                                  
12|    |     | tredenary  |                                                  
quaterdenary


An atomic logic variable, e.g. `p`, can have one of 2 possible values: it can either be true (T, 1) of false (F, 0). A truth function is an n-ary function from n variables to a truth value (T or F).

For any number n, there are 2^2^n possible n-ary truth functions.


## One variable

¬ ∧ ∨ → ← ⇔

   p  p   p  ταυ ταυ ταυ
p ¬p p∧p p∨p p→p p←p p⇔p
1  0  1   1   1   1   1
0  1  0   0   1   1   1


## Two variables

← → ≡ ⇔ ⇒ ⊢

       |q←p|p←q|
p q|∧|∨|p→q|q→p|p→(p→q)|p→(q→p)
---|-|-|---|---|-------|-------|----------------------------------------------
1 1|1|1| 1 | 1 |1  1 1 |1  1 1 |                                           .
1 0|0|1| 0 | 1 |1  0 0 |1  0 1 |                                           .
0 1|0|1| 1 | 0 |0  1 1 |0  1 0 |                                           .
0 0|0|0| 1 | 1 |0  1 1 |0  1 1 |                                           .
---|-|-|---|---|-------|-------|----------------------------------------------
c a 8 e  b   d     

1000 8
1010 a
1100 c
1110 e



## Three variables

─┬─┬─┬───┐0123456789abcdef
 │ │ │   ├─────────────────────────────────────────────────────────────────────
n│4│3│ 2 │
─├─┼─┼───┤
x│d│c│a b│F∧             ∨T
─┼─┼─┼───┼────────┬────────────────────────────────────────────────────────────
0│0│0│0 0│00000000│11111111
1│0│0│0 1│00001111│00001111
2│0│0│1 0│00110011│00110011
3│0│0│1 1│01010101│01010101
─┤ │ └───┼────────┴────────────────────────────────────────────────────────────
4│0│1 0 0│
5│0│1 0 1│
6│0│1 1 0│
7│0│1 1 1│
8│1│0 0 0│
─┤ └─────┼─────────────────────────────────────────────────────────────────────
9│1 0 0 1│
a│1 0 1 0│
b│1 0 1 1│
c│1 1 0 0│
d│1 1 0 1│
e│1 1 1 0│
f│1 1 1 1│
─┴───────┴─────────────────────────────────────────────────────────────────────



## Misc ternary formulas


(p -> q -> r) -> (p -> q) -> p -> r


p  ⇒ (q --> r)  ⟾ (p ⟶ q) ⇒ (p ⟶ r)
0     0     0    1                    
0     0     1    1                    
0     1  0  0    1                    
0     1     1    1                    
1     0     0    1    0           0   
1     0     1    1    0               
1  0  1  0  0    1          0     0   
1     1     1    1                   
   ≡             τ          ≡
