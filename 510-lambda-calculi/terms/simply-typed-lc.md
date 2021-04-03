# Simply typed lambda calculus

https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus


The **Simply Typed Lambda Calculus** (STLC) or **λ→**, is a typed interpretation of the λ-calculus (LC) with a single type constructor - the type constructor for functions, denoted by (->). It is the canonical and simplest example of a typed λ-calculus.

The STLC was originally introduced by Alonzo Church in 1940 as an attempt to avoid paradoxical uses of the untyped lambda calculus, and it exhibits many desirable and interesting properties.

- λ→ is the smallest imaginable statically typed functional language
- Every term is explicitly typed and no type inference is performed
- It has a much simpler structure than the type lambda calculi at the basis of languages such as ML or Haskell that support polymorphic types and type ctors
- In λ→, there are only base types and functions cannot be polymorphic
- Without further additions, λ→ is strongly normalizing: 
  evaluation terminates for any term, independent of the evaluation strategy


The term "simple type" is also used to refer to extensions of the STLC such as
- products, coproducts, natural numbers (System T) 
- full recursion (PCF)
- polymorphic types (System F)
- dependent types (Logical Framework)

In contrast, systems which introduce polymorphic types (like System F) or dependent types (like the Logical Framework) are not considered simply typed. The former, except full recursion, are still considered simple because the Church encodings of such structures can be done using only the type constructor for functions and suitable type variables, while polymorphism and dependency cannot.

Like elephant and tomato, which are both red, except for the elephant, so are all four systems symply typed except the last three.


## Syntax

We use σ and τ to range over types. A function of type `σ -> τ` takes a `σ` and produces a `τ`. The function type constructor associates to the right:    
`σ -> τ -> υ` is the same as `σ -> (τ -> υ)`

To define the types, we begin by fixing a set of **base types**, `B`. These are sometimes called *atomic types* or *type constants*. With this fixed, the syntax of types is: `τ := τ -> τ | T where T ∈ B`.

For example, `B = {a,b}` generates an infinite set of types, including `a`, `b`, `a -> a`, `a -> b`, `b -> a`, `b -> b`, `a -> a -> a`, etc.

We also fix a set of *term constants* (literals?) for the base types. For example, we might assume a base type `Nat`, and the term constants could be the natural numbers.

In the original presentation, Church used only two base types:
* `o` for the type of propositions (no term constants)
* `ι` for the type of individuals (one term constant)

The type `o` has no term constants, whereas `ι` has one term constant. Frequently the calculus with only one base type, usually `o`, is considered.

The syntax of the simply typed lambda calculus is essentially that of the lambda calculus itself. The term syntax in BNF:

```bnf
𝓮 := 𝔁          variable
   | λ𝔁:τ.𝓮     abstraction
   | 𝓮𝓮         application
   | 𝓬          term constant
```

* A variable reference 𝔁 is bound if it is inside of an abstraction binding 𝔁
* A *closed term* has no unbound variables.
* Compared to the syntax of untyped lambda calculus, the difference is that in STLC, param in abstraction must have type annotation, and term constants (literals) are allowed.


## Typing rules

To define the set of well-typed lambda terms of a given type, we will define a typing relation between terms and types.

First, we introduce *typing contexts* or *typing environments* (Γ, Δ, ...) which are sets of typing assumptions.

A *typing assumption* has the form `x:τ`, meaning the term `x` has the type `τ`.

The *typing relation* `Γ |- x:τ` states that `x` is a term of type `τ` in the context `Γ`. In this case, `x` is said to be **well-typed** (having type `τ`).

Instances of the typing relation are called *typing judgements*.

The *validity* of a typing judgement is shown by providing a *typing derivation*, constructed using *typing rules* (premises, above the line, allow deriving of conclusion, below the line).


## Typing rules of STLC

```
    𝔁:σ ∈ Γ
(1) --------
    Γ |- 𝔁:σ


    𝚌𝚘𝚗𝚜𝚝 𝓬:T             (𝓬 is a constant of type T)
(2) ---------
    Γ |- 𝓬:T


    Γ, 𝔁:σ |- 𝓮:τ
(3) --------------------
    Γ |- (λ𝔁:σ.𝓮):σ -> τ


    Γ |- 𝓮₁:σ -> τ   Γ |- 𝓮₂:σ
(4) --------------------------
    Γ |- 𝓮₁𝓮₂:τ
```

1. If `x` has type `σ` in the context, we know that `x` has type `σ`.
2. Term constants have the appropriate base types.
3. If, in a certain context with `x` having type `σ`, `e` has type `τ`, then, 
   in the same context (without `x`), `λ𝔁:σ.𝓮` has type `σ -> τ`.
   (maybe better said:)    
   If `e` has the type `τ` in the context `Γ`, and,
   if we extend the context `Γ` with the assumption (judgement?) 
   that `x` has the type `σ`, 
   then (we can conclude that) the lambda abstractiion 
   `λx.e` has the type `σ -> τ`.

4. If, in the context (env) `Γ`,    
   `e₁` has the type `σ -> τ` (obviously a function)     
   and `e₂` has the type `σ` (ideal term for the function's arg)    
   then applying (the function) `e₁` to (the arg) `e₂` 
   produces a term of type `τ`.

        Γ |-  f  : σ -> τ       f :: σ -> τ     x :: σ      z :: τ
        Γ |-  x  : σ            f = \x -> e     x = z       z = f x
        -----------------       
        Γ |- f x :      τ       



Examples of *closed terms*, i.e. terms typable in the empty context, are:
* I-combinator: ∀τ.   (λx:τ. x): τ -> τ
* K-combinator: ∀στ.  (λx:σ. λy:τ. x): σ -> τ -> σ
* S-combinator: ∀στω. (λf:σ -> ω -> τ. λg: σ -> ω. λx:σ. fx(gx)
                      :  (σ -> ω -> τ) -> (σ -> ω) -> σ -> τ

Type theory, and many PLs as well, cramp everything together - terms and type signatures - achieving only a lot of noise and hard-to-discern formulae. Therefore, the type theory dev commitee should immediately accept the patch that aligns the notation with sanity and Haskell.

```
S-combinator in relieved notation
s :: (α -> β -> γ) -> (α -> β) -> α -> γ
s = λf. λg. λx. f x (g x)

S-combinator in strict (traditional) notation
λz:σ -> ω -> τ.λy:σ -> ω.λx:σ.zx(yx):(σ -> ω -> τ) -> (σ -> ω) -> σ -> τ
```

## Type Order

Each type `τ` is assigned an order, a number `𝓞(τ)`
- for base types, 𝓞(τ) = 0
- for function types, 𝓞(σ -> τ) = max(𝓞(σ)+1, 𝓞(τ))

**The order of a type** measures the depth of the most left-nested arrow.

* 𝓞(σ -> σ -> σ)   = 1 = 𝓞(σ -> (σ -> σ))
* 𝓞((σ -> σ) -> σ) = 2


## Abstract syntax

The type language of λ→ consists of just two constructs:
- there is a set of base types α
- compound types τ → τ 0 correspond to functions from τ to τ'

τ := α          base type
   | τ → τ'     function type


There are 4 kinds of terms:
- terms with an explicit type annotation
- variables
- applications
- lambda abstractions

e := e : τ      annotated term
   | x          variable
   | e e'       application
   | λx → e     lambda abstraction


Terms can be evaluated to values. A value is either
- a neutral term (i.e. a var applied to a, possibly empty, sequence of values)
- a lambda abstraction

v := n          neutral term
   | λx → v     lambda abstraction

n := x          variable
   | n v        application


## Evaluation

The (big-step) evaluation rules of λ→

```

  e ⇓ v
---------     -----
e : τ ⇓ v     x ⇓ x


e ⇓ λx -> v    v [ x ⟼ e' ] ⇓ e'
---------------------------------
           e e' ⇓ v'


e ⇓ n    e' ⇓ v'              e ⇓ v
----------------        -----------------
   e e' ⇓ n v'          λx -> e ⇓ λx -> v

```

- notation `e ⇓ v` means that the result of completely evaluating `e` is `v`
- in a strongly normalizing language, the evaluation strategy is irrelevant
- we evaluate everything as far as possible, and even evaluate under lambda
- type annotations are ignored during evaluation
- variables evaluate to themselves
