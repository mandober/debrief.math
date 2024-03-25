# Church numerals in System F

`Church numerals, twice!`, Ralf Hinze, 2005, Theoretical pearl

## Abstract

This pearl explains Church numerals, twice. The first explanation links Church numerals to Peano numerals via the well-known encoding of data types in the polymorphic λ-calculus. This view suggests that Church numerals are folds in disguise. The second explanation, which is more elaborate, but also more insightful, derives Church numerals from first principles, that is, from an algebraic specification of addition and multiplication. Additionally, we illustrate the use of the parametricity theorem by proving exponentiation as reverse application correct.

## Introduction

Using the compositional, *point-free style*, a first few natural numbers are defined as:

- ⌜0⌝ = λf. I
- ⌜1⌝ = λf. f
- ⌜2⌝ = λf. f ∘ f
- ⌜3⌝ = λf. f ∘ f ∘ f

In general, `⌜n⌝ = λf. fⁿ`   
where   
`fⁿ` is defined as   
`f⁰ = I` and `fⁿᐩ¹ = f ∘ fⁿ`    
and `I` is the identity lambda.

Building upon this, the successor is: 
`succ n := λf. f ∘ n f`

Ops of addition, multiplication and exponentiation are due to Rosser:
- `m + n = λf. m f ∘ n f`
- `m × n = m ∘ n`
- `m ^ n = n m`

Multiplication is implemented by function composition and 
exponentiation by reverse function application. 

It is relatively straightforward to prove the definitions correct (see Barendregt 1992 for an inductive proof):
- succ  ⌜n⌝ = ⌜n + 1⌝
- ⌜m⌝ + ⌜n⌝ = ⌜m + n⌝
- ⌜m⌝ ∙ ⌜n⌝ = ⌜mn⌝
- ⌜m⌝ ^ ⌜n⌝ = ⌜mⁿ⌝


The purpose of this paper is to provide additional background and hopefully additional insights by deriving the Church numeral system in two different ways.

Though Church numerals were devised for the untyped λ-calculus, we will work in a typed setting, in `System F` [^Gir71], aka *the polymorphic or second-order λ-calculus* [^Rey74], augmented by *inductive types* [^Men91] [^Par92].

To avoid clutter, however, we usually omit type abstractions, explicitly written as `ΛA.e`, and type applications, explicitly written as `e[T]`. If feasable, we'll give code in Haskell.



## Church numerals, first approach

The first derivation takes as a starting point the unary representation of the natural numbers, also known as the Peano numeral system.

```hs
data Nat = Z | S Nat
```

Here `n` is represented by `⌜n⌝ = Sⁿ Z`, that is, the successor is applied `n` times to the constant zero.

Arithmetic can be conveniently expressed in terms of the `fold` over `Nat`:

```hs
fold :: forall n
     . (n → n) -- handle unary S ctor
     → n       -- handle nullary Z ctor
     → Nat     -- a Nat number
     → n       -- res
fold hS hZ    Z  = hZ
fold hS hZ (S n) = hS (fold hS hZ n)
```

In essence, `fold hS hZ` replaces `Z` by `hZ` and `S` by `hS`, and evaluates the resulting term.

The recursion scheme captured by `fold` is known as *structural recursion over the natural numbers*, an instance of the more general scheme called *primitive recursion*.

The `fold` operator satisfies the following **universal property**, which provides the central key for reasoning about fold:

```hs
h = fold f a  <=>  h  Z    = a
                   h (S n) = f (h n)
```

The universal property states that `fold f a` is the unique solution of the recursion equations on the right.

A simple consequence of the property is the *reflection law*:

```hs
fold S Z = id

-- such that
f = S
a = Z
h = id
```

`fold S Z` replaces `Z` by `Z` and `S` by `S`, and thus just returns the input, amounting to the same as the `id` function.

Addition, multiplication, and exponentiation are given by

```hs
(+), (∙), (^) : Nat → Nat → Nat
m + n = fold S      n  m
m ∙ n = fold (+ n) ⌜0⌝ m
m ^ n = fold (∙ m) ⌜1⌝ n

-- i.e.
(+), (∙), (^) : Nat → Nat → Nat
m + n = fold S        n  m
m ∙ n = fold (+ n)    Z  m
m ^ n = fold (∙ m) (S Z) n
```


Let's reinvent Church numerals using the Peano numerals as a starting point.

For the sake of argument, assume that there are no data declarations so that we cannot introduce new constants.

In this case, we can only treat `Z` and `S` as variables and λ-abstract over them. Thus, `Sⁿ Z` becomes `λs z. sⁿ z`, which is `λn s z. n s z`.

What is the type of this term? A possible choice is `(Nat → Nat) → Nat → Nat`, but `(Bool → Bool) → Bool → Bool` works as well. In fact, `(N → N) → N → N` is a sensible type, for all `N`. This motivates the following type definition:

```hs
-- in System F
type Church = ∀N. (N → N) → N → N

-- in Haskell
newtype Church = Church { unChurch :: forall n. (n -> n) -> n -> n }
```

The types `Nat` and `Church` are isomorphic to each other since they both represent the same set ℕ. The conversion maps are given by:

```hs
nat :: Church -> Nat
nat c = c S Z

church :: Nat -> Church
church n = \ s z -> fold s z n
```

The proof of `nat ∘ church = id` makes use of the universal property of `fold`

```hs
goal:
  nat ∘ church = id

where:
  nat :: Church -> Nat
  nat = λc. c S Z

  church :: Nat -> Church
  church = λn s z. fold s z n

  fold :: forall n. (n → n) → n → Nat → n
  fold hS hZ    Z  = hZ
  fold hS hZ (S n) = hS (fold hS hZ n)

proof:                                  justification:
  nat ∘ church = id                       { goal }
  ⇔ (nat ∘ church) n = id n               { η-expand both sides }
  ⇔ (nat ∘ church) n = n                  { simplify rhs }
  = (nat ∘ church) n                      { focus only on the lhs, rhs = n }
  = nat (church n)                        { definition of ∘ }
  = nat ((λm s z. fold s z m) n)          { definition of 'church' }
  = nat (λs z. fold s z n)                { β-reduction on arg 'n' }
  = (λc. c S Z) (λs z. fold s z n)        { definition of 'nat' }
  = (λs z. fold s z n) S Z                { β-reduction }
  = fold S Z n                            { β-reductions of args S and Z }
  = n                                     { reflection law }
```


The proof for the reverse direction, `church ∘ nat = id`, is more involved.

```hs
goal:
  church ∘ nat = id

where:
  nat :: Church -> Nat
  nat = λc. c S Z

  church :: Nat -> Church
  church = λn s z. fold s z n

  fold :: forall n. (n → n) → n → Nat → n
  fold hS hZ    Z  = hZ
  fold hS hZ (S n) = hS (fold hS hZ n)

proof:                                  justification:
  church ∘ nat = id                       { goal }
= (church ∘ nat) c = id c                 { η-expand both sides }
= (church ∘ nat) c = c                    { simplify rhs }
= church (nat c)                          { focus only on the lhs, rhs = n }
= (λn s z. fold s z n) ((λc. c S Z) c)    { definition of 'church' and 'nat' }
= (λn s z. fold s z n) (c S Z)            { β-reduction on arg 'c' }
= λs z. fold s z (c S Z)                  { β-reduction on arg '(c S Z)' }
… STUCK!!
```

Now we are stuck. The universal property is not applicable since the args of `fold` (namely `s` and `z`) are unknowns.

The way forward is to apply the so-called **parametricity condition** of the type `Church`. Briefly, each polymorphic type gives rise to a general property that each element of the type satisfies (`Theorems for free`, P. Wadler, 1989).

For the `Church` type, we obtain the following theorem-for-free:

if                           
  `xtimes : Church`   and    
  `A,A̅ ∈ Type`        are two arbitrary types    
then                      
  `forall f f̅ h`          
   such that              
  `f : A → A` and         
  `f̅ : A̅ → A̅` and          
  `h : A → A̅`                

we have that                  
  `h ∘ f = f̅ ∘ h`           
 ==>                       
  `h ∘ xtimes [A] f`  =     
   =  `xtimes [A̅] f̅ ∘ h`


Intuitively, the type ensures `xtimes` only composes its arg with itself:    
`xtimes f = f ∘ … ∘ f`

Thus                   
  `h ∘ f = f̅ ∘ h`         
 ==>                         
  `h ∘ (f ∘ … ∘ f)`  =        
   =  `(f̅ ∘ … ∘ f̅) ∘ h`     


Setting        
  `xtimes = c`     
       `f = S`       
       `f̅ = s`        
       `h = fold s z`    
we get      
  `fold s z ∘ c S = c s ∘ fold s z`                (1)       
provided    
  `fold s z ∘   S =   s ∘ fold s z`


This equation, however, follows directly from the definition of `fold`.

Using (1) we can now complete the proof that `church ∘ nat = id`

```hs
goal:
  church ∘ nat = id

where:
  nat :: Church -> Nat
  nat = λc. c S Z

  church :: Nat -> Church
  church = λn s z. fold s z n

  fold :: forall n. (n → n) → n → Nat → n
  fold s z    Z  = z
  fold s z (S n) = s (fold s z n)

proof:                                  justification:
  church ∘ nat = id                       { goal }
= (church ∘ nat) c = id c                 { η-expand both sides }
= (church ∘ nat) c = c                    { simplify rhs }
= church (nat c)                          { focus only on the lhs, rhs = n }
= (λn s z. fold s z n) ((λc. c S Z) c)    { definition of 'church' and 'nat' }
= (λn s z. fold s z n) (c S Z)            { β-reduction on arg 'c' }
= λs z. fold s z (c S Z)                  { β-reduction on arg '(c S Z)' }
-- stuck…
  fold s z ∘ c S  =  c s ∘ fold s z       (1)
-- unstuck!
= λs z. fold s z (c S Z)                  { reiterate last }
= λs z. ( fold s z ∘ c S )  Z             { rewrite as composition }
--        ↓   ↓    ↓   ↓
= λs z. ( c s ∘ fold s z )  Z             { rewrite with lhs of (1) }
```
```hs
= λs z. c s  (fold s z Z)                 { definition of (∘) }
--            ↓
= λs z. c s   z                           { rewrite with fold's first eq }
= c                                       { η-contraction }
```



## Church numerals, second approach




## Exponentiation as reverse application






























[^Men91]: Nax Paul Mendler, 1991, `Inductive types and type constraints in the second-order lambda calculus`.

[^Par92]: Michael Parigot, 1992, `Recursive programming with proofs`.

[^Gir71]: Jean-Yves Girard, 1971, `Une Extension de l'Interpretation de Gödel à l'Analyse, et son Application à l'Élimination des Coupures dans l'Analyse et la Théorie des Types`. https://doi.org/10.1016%2FS0049-237X%2808%2970843-7

[^Rey74]: John Reynolds, 1974, `Towards theory of type structure`. 
http://repository.cmu.edu/cgi/viewcontent.cgi?article=2289&context=compsci
