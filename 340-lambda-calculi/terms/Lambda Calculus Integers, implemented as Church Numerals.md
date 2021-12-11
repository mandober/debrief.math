---
created: 2021-08-30T01:53:52 (UTC +02:00)
tags: [Integers in Lambda Calculus Numerals Ints Arithmetic Operators Operations Plus Minus Monus Definition Examples Programs Functional Programming Language FP Alonzo Church Lazy Evaluation Call by Need Example Source Code]
source: https://users.monash.edu/~lloyd/tildeFP/Lambda/Examples/const-int/
author: 
---

# Lambda Calculus Integers, implemented as Church Numerals

> ## Excerpt
> Lambda Calculus Integers, Church Numerals

---
The integers (and other constants) can be defined in the Lambda Calculus; it is not necessary to provide them as "built in". However this "implementation" of integers is very inefficient and so they invariably are built into programming languages based on the Lambda Calculus.

Here is a Lambda Calculus definition of non-negative integers and some operators on them:-

let rec
  ZERO = lambda s. lambda z. z,
  ONE  = lambda s. lambda z. s(z),
  TWO  = lambda s. lambda z. s(s(z)),
  THREE= lambda s. lambda z. s(s(s(z))),{etc.}

  PLUS = lambda x. lambda y.
    lambda s. lambda z. x s (y s z),
  {traditional defn of + }

  SUCC = lambda x. lambda s. lambda z. s(x s z),
  {successor function}

  PLUSb = lambda x. x SUCC,
  {a nicer alternative defn of +, PLUS}

  TIMES = lambda x. lambda y. x (PLUS y) ZERO,

  PRED = lambda n. lambda s. lambda z.
    {NB. PRED ZERO = ZERO}
    let s2 = lambda n. lambda f. f(n s),
        z2 = lambda f. z
    in n s2 z2 (lambda x.x),

  ISZERO = lambda n. n (lambda x. false) true,

  LE =  lambda x. lambda y. ISZERO (MONUS x y),
  { ? x <= y ? }

  MONUS = lambda a. lambda b. b PRED a,
  {NB. assumes a >= b >= 0}

  DIVMOD = lambda x. lambda y.
    let rec dm = lambda q. lambda x.
      if LE y x then {y <= x}
        dm (SUCC q) (MONUS x y)
      else pair q x
    in dm ZERO x,

  DIV = lambda x. lambda y. DIVMOD x y fst,
  MOD = lambda x. lambda y. DIVMOD x y snd,

  pair = lambda fst. lambda snd. lambda sel. sel fst snd,
  fst  = lambda x. lambda y. x, {see}
  snd  = lambda x. lambda y. y, {Bool}

  PRINT = lambda n. n (lambda m. 'I'::m) '.'

in let rec {e.g.}
  four  = MONUS (TIMES THREE TWO) (PLUS ONE ONE),
  eight = PLUSb four four
in
PRINT (DIV eight THREE)

{ **Define (non -ve) Int From Scratch.** }

For example:

 PLUS ONE TWO

= (λ x. λ y. λ s. λ z. x s (y s z))
   (λ s. λ z. s(z))
    (λ s. λ z. s(s(z)))

= (λ y. λ s. λ z.
     ((λ s'. λ z'. s'(z')) s (y s z)))
    (λ s. λ z. s(s(z)))

= (λ y. λ s. λ z. (s(y s z)))
    (λ s. λ z. s(s(z)))

= λ s. λ z.
   s( (λ s". λ z". s"(s"(z"))) s z)

= λ s. λ z. s(s(s(z)))

= THREE 

Integers are PRINTed in unary notation. (Well, _you_ try defining a binary or decimal print routine this way!-).

Also see \[[Boolean][1]\] and \[[Lists][2]\].

Thanks to Joel R. for DIVMOD, TIMES and LE, the latter nicely making the point that "you cannot do something less than 0 times."

  
  

λ ...  

::

list cons

nil

the \[ \] list

null 

predicate

hd

head (1st)

tl

tail (rest)

[1]: https://users.monash.edu/~lloyd/tildeFP/Lambda/Examples/const-bool/
[2]: https://users.monash.edu/~lloyd/tildeFP/Lambda/Examples/const-list/
