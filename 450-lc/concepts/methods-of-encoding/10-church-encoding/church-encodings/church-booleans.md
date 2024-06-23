# Church Booleans

Whether the Boolean type is predefined as a language primitive or a common user-definable type, the two terms that inhabit it, 'true' and 'false', are competely dettached from the "holier than though" phylosophical notion of truth, only serving to aid making decisions in programming.

In programming, making decisions means *branching*, or taking one of the two paths depending on the evaluation of a predicate. A *predicate* is an expression (usually a function) that evaluates to a Boolean value, but it may be even one of the Boolean constants (although using a constant to make a decision makes little sense). Normaly, a predicate is an unknown expression, perhaps acquired as user's input, certainly not a static value that is known at the compile time, but more of a dynamically-generated value available only at the runtime. The RT evaluation of the predicate determines which of the two branches (paths) is taken. This implies that the code for both branches must already be in place at that time. However, lazy evaluation (as a general approach it has many other consequences) or short-circuiting technics (as an ad hoc, special case approach) are usually employed to make sure that only the expression making up the branch that is actually taken is evaluated (no need to waste resources evaluating the path not taken).

The most common conditional, `if _¹ then _² else _³`, can also be considered an eliminator of Boolean values. To make it more succinct, it is sometimes also realized as a ternary operator `_¹ ? _² : _³`.

A more general conditional is the `switch` construct (statement or expression) that scrutinizes an expression and depending on the result or merely on the shape of the expression, selects a suitable path out of several alternatives.

More generaly, a conditional is a language construct used to encode a decision making process. It takes a single value, called *scrutinee*, analyzes it (figures out its shape) and/or evaluates it, and depending on the findings or result takes one of the several paths through a part of the program.

*Pattern matching* is the mother conditional construct, the pinnacle of all decision-making technics it is.



The most basic choice is binary: we have to choose one of the two things; that is, exactly one of the two things be chosen, not both, not neither. The "things" that we choose between are actually exectution paths. We set up a binary condition and based on its evaluation the exectution takes one of the two possible paths. And Booleans are made for the role of binary conditions, they can be pretty similar to a coin toss, except here we have the true/false dilemma instead of heads/tail.

So the binary conditional takes 3 things: 1) a boolean to evaluate (because it might not be an immediate value like "true", but an expression that needs evaluation like `x < 5`), 2) instructions for the "true" ("heads") case, and 3) instructions for the "false" ("tails") case.

In FPLs, the "if-then-else" conditional is an expression, it is an ordinary, user-definable, function. It may also come as a primitive, and in most imperative languages, it must be a primitive in order to enjoy the benefits of the short-circuiting operators and conditionals. For example, in JS, the expression `a || b`, returns `a` (and not "true") if the whole expression evaluates to true; however, if `a` evaluates to true, there is no need to evaluate `b` at all. But this simple act of ignoring and evaluating some expression is not natural to imperative languages that tend to fully evaluate all the components (subexpressions) before proceeding to process the bigger parts (main expression). On the other hand, lazy (FP) languages, don't evaluate nothing anyway, thatis, until the very last moment when it is absolutely needed, so users can implement their own conditionals using ordinary functions.

The hart of the matter is selecting one between two possibilities and in LC, with only functions at our disposal, the choice is implemented in the most direct manner: the Boolean values are represented with two binary functions; they both take 2 arguments, but differ in the choice of which argument is returned and which dropped. The function corresponding to the value "true" returns the first arg and dropps the second, while the "false" function drops the first and returns the second.

The two functions correspond to the two Boolean values:
- true  := `λa. λb. a`
- false := `λa. λb. b`

In fact, it's not so much that thay "correspond", rather, they act in the same way; they realize the same decision making machanism.

```js
(λa. λb. a) x y ~~> x
(λa. λb. b) x y ~~> y

// reduction steps
TRUE x y ==
(λa. λb. a) x y ==
  [a:=x](λb. a)
(λb. x) y ==
  [b:=y]x
x

// reduction steps
FALSE x y ==
(λa. λb. b) x y == y
  [a:=x](λb. b)
(λb. b) y ==
  [b:=y]b
y
```



`True` is represented by a binary function which takes two args, it ignores the second and always returns the first arg. Because of this, this lambda abstraction is also called the constant, and its "bird" name is Kestrel. In combinatory logic, this is one of the two operators, viz. K (the other is S).

The `True` functions, that is, its corresponding lambda abstraction `λab.a` has a dual role as it is both a constant and a function: it acts as the True (logical) constant (Boolean value), and it acts as a selector function that always returns the first arg.

T T F =
T         T         F =
(λa.λb.a) (λa.λb.a) (λa.λb.b) =
(λ .λ .1) (λ .λ .1) (λ .λ .0) =
(λ.λ.1) (λ.λ.1) (λ.λ.0) =

since Tαβ = α, TTF = T

(λa.λb.a) (λa.a) = (λb.a) α = (λa.a)


## Encoded functions

TRUE        := λab.a          aka: True, T, K, Kastrel
FALSE       := λab.b          aka: False, F, KI
NOT         := λp.pFT
AND         := λpq.pqp
OR          := λpq.ppq
IFTHENELSE  := λpab.pab
ISZERO      := λn.n (λx.F) T
LEQ         := λm.λn.ISZERO (SUB m n)
PRED1       := λn.n (λg.λk.ISZERO (g 1) k (PLUS (g k) 1)) (λv.0) 0
SUCC        := λnfx.f(nfx)
PLUS        := λm.λn.λf.λx.m f (n f x)
PLUS'       := λm.λn.m SUCC n
MULT        := λm.λn.λf.m (n f)
MULT'       := λm.λn.m (PLUS n) 0
POW         := λb.λe.e b
PRED2       := λn.λf.λx.n (λg.λh.h (g f)) (λu.x) (λu.u)
SUBSAT      := λm.λn.n PRED m         Therefore, SUB m n = m > n ? m − n : 0
PAIR        := λxyf.fxy
FIRST       := λp.pT
SECOND      := λp.pF
NIL         := λx.T
NULL        := λp.p (λx.λy.F)
Φ           := λx.PAIR (SECOND x) (SUCC (SECOND x))
PRED3       := λn.FIRST (n Φ (PAIR 0 0))


# Lambda Calculus: Church encoding: Booleans

True  = T := λab. a
False = F := λab. b
And  := λp. λq. p q p
Or   := λp. λq. p p q
Not₁ := λp. λa. λb. p b a           -- for applicative order
Not₂ := λp. p F T                   -- for normal order
Xor  := λa. λb. a (Not b) b
If   := λp. λa. λb. p a b

## Predicates
IsZero := λn. n (λx. F) T
Le = λm. λn. IsZero (Minus m n)
Eq = λm. λn. (Le m n) (Le n m)      -- due to: (x = y) ≡ (x <= y ∧ y <= x)



## Exposition

Church's encoding system for λ-calculus.

T := (λab.a)    always return 1st arg
F := (λab.b)    always return 2nd arg

AND := λp.λq.p q p
OR  := λp.λq.p p q
NOT := λp.p F T

IfThenElse := λp. λa. λb . p a b

`IfThenElse := λpab.pab`

A predicate is a function that returns a boolean value. The most fundamental predicate is `ISZERO`, which returns TRUE if its argument is the Church numeral 0, and FALSE if its argument is any other Church numeral:

ISZERO := λn.n (λx.FALSE) TRUE

The following predicate tests whether the first argument is less-than-or-equal-to the second:

LEQ := λm.λn.ISZERO (SUB m n)

and since m = n, if LEQ m n and LEQ n m, it is straightforward to build a predicate for numerical equality.

The availability of predicates and the above definition of TRUE and FALSE make it convenient to write "if-then-else" expressions in lambda calculus. For example, the predecessor function can be defined as:

PRED := λn.n (λg.λk.ISZERO (g 1) k (PLUS (g k) 1)) (λv.0) 0

which can be verified by showing inductively that 

n (λg.λk.ISZERO (g 1) k (PLUS (g k) 1)) (λv.0)

is the (add n − 1) function (for n > 0)


## Pairs

As an example of the use of pairs, the shift-and-increment function that maps (m, n) to (n, n + 1) can be defined as

Φ := λx.PAIR (SECOND x) (SUCC (SECOND x))
which allows us to give perhaps the most transparent version of the predecessor function:

PRED := λn.FIRST (n Φ (PAIR 0 0))

-------------------------------------------------------------------------------

¬p
NOT := λp.pFT = λp.p(λab.b)(λab.a)
NOT T =   TTF = T
NOT F =   TTF = F

Binary operators are permutation of 3 Church Booleans:
- `S` is a Boolean function, fixed as either T or F in each operation
- 2 Boolean function are passed as args into each λ-abstraction, as `p` & `q`



## 3-place permutations

* the set permutations:
  - Boolean set, `B = {T,F}`
  - Boolean vars `p` and `q`, p,q ∈ B
  - Selector Boolean function, `s` ranges over the `S = {T,F,p,q}`, s ∈ S
  - S = {p,q,s}
  - S   = {  p:{T,F} , q:{T,F} , s:{T,F,p,q} }
  - |S| = 2 2 4
  - example combo (1/96): TFT (pqp)

2 2 4
_ _ _



3-place permutations for vars:
p q S =
- - -
p q S
p S q
q p S
q S p
S p q
S q p
- - -
p q S ~>
p * q * S ~>
2 * 2 * 4 = 16 compounds in each row
16 * 6 rows =
96 combos total




- (S,p,q) permutations: (Spq, pSq, pqS, qSp, qpS, Sqp)
  - each one of (S,p,q) are Booleans vars that range over {T,F}
- (B,p,q) permutations: (Bpq, pBq, pqB, qBp, qpB, Bqp)
  - where B is {p,q}
    - (Bpq,      pBq,      pqB)
    = (ppq, qpq, ppq, pqq, pqp, pqq)

    - (qBp,      qpB,      Bqp)
    = (qpp, qqq, qpp, qpq, pqp, qpq)

    - qqq



p | q | Tpq  | Fpq  | pTq  | pFq  | pqT  | pqF
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | T | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  p   |  q   | p ∨ q|¬(p←q)| p → q| p ∧ q


p | q | Tqp  | Fqp  | qTp  | qFp  | qpT  | qpF
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | T | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  q   |  p   | p ∨ q|¬(p→q)| p ← q| p ∧ q


(ppq, qpq, ppq, pqq, pqp, pqq)

p | q | ppq  | qpq  | ppq  | pqq  | pqp  | pqq
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | T | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  p   |  q   | p ∨ q|¬(p←q)| p → q| p ∧ q


(qpp, qqq, qpp, qpq, pqp, qpq)

p | q | qpp  | pqqp  | qTp  | qFp  | qpT  | qpF
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | T | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  q   |  p   | p ∨ q|¬(p→q)| p ← q| p ∧ q








```
Spq:
Tpq = p
Fpq = q

pSq:
pTq = p ∨ q         pTq ≡ qTp = OR
pFq = ¬(p ← q)

pqS:
pqT = p → q
pqF = p ∧ q         pqF ≡ qpF = AND

Sqp:
Tqp = q
Fqp = p

qSp:
qTp = p ∨ q         qTp ≡ pTq = OR
qFp = ¬(p → q)

qpS:
qpT = p ← q
qpF = p ∧ q         qpF ≡ pqF = AND
```




p ∨ q
OR := λpq.pTq
OR T T  = TTT = T
OR T F  = TTF = T
OR F T  = FTT = T
OR F F  = FTF = F

p ∧ q
AND := λpq.pqF
AND T T  = TTF = T
AND T F  = TFF = F
AND F T  = FTF = F
AND F F  = FFF = F

p -> q
IMPL := λpq.pqT
IMPL T T  = TTT = T
IMPL T F  = TFT = F
IMPL F T  = FTT = T
IMPL F F  = FFT = T

¬(p <- q)
O1 := λp.λq. pFq
O1     T  T= TFT = F
O1     T  F= TFF = F
O1     F  T= FFT = T
O1     F  F= FFF = F

p
P := λpq.Tpq
P T T  = TTT = T
P T F  = TTF = T
P F T  = TFT = F
P F F  = TFF = F

q
Q := λpq.Fpq
Q T T  = FTT = T
Q T F  = FTF = F
Q F T  = FFT = T
Q F F  = FFF = F


λ p q  . qTp ≡ OR
S T T  = TTT = T
S T F  = FTT = T
S F T  = TTF = T
S F F  = FTF = F

λ p q  . qFp =  ≡ ¬(p -> q)
S T T  = TFT = F
S T F  = FFT = T
S F T  = TFF = F
S F F  = FFF = F


λ p q  . qpT ≡ (q <- p)
S T T  = TTT = T
S T F  = FTT = T
S F T  = TFT = F
S F F  = FFT = T

λ p q  . qpF ≡ AND
S T T  = TTF = T
S T F  = FTF = F
S F T  = TFF = F
S F F  = FFF = F
