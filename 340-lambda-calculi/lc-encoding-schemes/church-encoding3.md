# Lambda Calculus: Church encoding


## deBruijn indices

T     = λ. λ. 2
F     = λ. λ. 1
NOT   = λ. 1 F T
AND   = λ. λ. 2 1 F
OR    = λ. λ. 2 2 T
BEQ   = λ. λ. 2 (1 T F) (1 F T)
PAIR  = λ. λ. λ. 1 3 2
FST   = λ. 1 T
SND   = λ. 1 F
NIL   = λ. T
NULL  = λ. 1 (λ. λ. F)
DATUM = λ. FST 1
LEFT  = λ. FST (SND 1)
RIGHT = λ. SND (SND 1)
TREE  = λ. λ. λ. (PAIR 3) (PAIR 2 1)
ZERO  = λ. λ. 2
SUCC  = λ. λ. λ. 2 (3 2 1)
IS_0  = λ. 1 (λ. F) T
ADD   = λ. λ. 2 SUCC 1
MUL   = λ. λ. 2 (ADD 1) ZERO
POW   = λ. λ. 1 2



## Booleans

### Boolean constants

TRUE  = T := λab. a
FALSE = F := λab. b

### Boolean connectives

NOT :: Bool -> Bool
bcs :: Bool -> Bool -> Bool

NOT := λ p   t f . p f t
NOT  = λp. λt. λf. p f t

-- p and q are Booleans, so they must both be T for AND to be T.
-- t arg repr true arg and f false, so we can explicitly pass them in
-- i.e. t must be (λab.a) and f must be (λab.b) to make sense
-- if p is F the f atg is immediately returned, otherwise first (q t f)
-- that part tests q: if it is T thr t arg is returned else f arg
AND := λ p q t f . p (q t f) f
AND := λ p q     . p  q      F      ≡ λ p q . p q p
-- However, since T always returns 1.arg and F second, we can write it as above

OR  := λ p q t f . p t (q t f)

NOT := λ p   . p F T
OR  := λ p q . p T q                ≡ λ p q . p p q

IMP := λpq. p q T
XOR := λpq. p F q

BEQ :: Bool -> Bool -> Bool
BOOL_EQ = BEQ := λpq. p (qTF) (qFT)

## Conditionals

IF :: Bool -> a -> a -> a
IF := λ b t e . b t e


## Natural numbers

ZERO := λsz.z
SUCC := λnsz.s(nsz)

ONE := λsz.sz       ≡ SUCC ZERO
TWO := λsz.s(sz)    ≡ SUCC (SUCC ZERO)

// We start with zero. If our input is zero, we want to produce `T`. Otherwise, we want to produce `F`. In our function below, if the input is zero, we run the inner function zero times, which means we return the final argument (`T`). However, if the input is any number greater than zero, we run the inner function at least once; that inner function is designed to always produce `F`.

IS_ZERO = 0? := λn. n F (NOT F)

ISZERO := λn. n (λ_. F) T

// With K, we can redefine our isZero function more concisely.

IS_0 := λn. n (K F) T



ADD := λab. a SUCC b
ADD = (+) := λm. λn. λf. λx. m f (n f x)

MULT := λab. a ∘ b = compose = B

B := λgfx. g (f x)

// with B combinator, we can define SUCC without mentioning the final x
SUCC := λnf. f ∘ (n f) ≡ λnf. B f (n f)

POW := λab.ba   (Thrush)





## Pair

PAIR := λabs.sab

FST := λp.p(λab.a)
SND := λp.p(λab.b)


## List

NIL := (PAIR) () ()


## Maybe

A Maybe value has two choices like Booleans, so the Church-encoded *Maybe* values will also be binary functions:

Nothing ::   Maybe a
Just :: a -> Maybe a

NOTHING :=     λn. λj. n
JUST    := λa. λn. λj. j a



## more

true    : (λt. (λf. t))
false   : (λt. (λf. f))
and     : (λa. (λb. ((a b) a)))
or      : (λa. (λb. ((a a) b)))
not     : (λb. ((b false) true))
if      : (λp. (λa. (λb. ((p a) b))))
pair    : (λx. (λy. (λf. ((f x) y))))
cons    : (λx. (λy. (λf. ((f x) y))))
first   : (λp. (p true))
car     : (λp. (p true))
second  : (λp. (p false))
cdr     : (λp. (p false))
nil     : (λx. true)
empty   : (λx. true)
null    : (λp. (p (λx. (λy. false))))
isempty : (λp. (p (λx. (λy. false))))
tree    : (λd. (λl. (λr. ((pair d) ((pair l) r)))))
datum   : (λt. (first t))
left    : (λt. (first (second t)))
right   : (λt. (second (second t)))
incr    : (λn. (λf. (λy. (f ((n f) y)))))
plus    : (λm. (λn. ((m incr) n)))
times   : (λm. (λn. ((m (plus n)) zero)))
iszero  : (λn. ((n (λy. false)) true))
zero    : (λf. (λx. x))
