# Simply typed lambda calculus

https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus

**Simply Typed Lambda Calculus** (STLC, `λ→`) is a typed interpretation of the λ-calculus with a single type constructor for functions, denoted by `->`.

* STLC typing rules

```js
(x : τ) ∈ Γ
------------- VAR
Γ |- x : τ


    Γ, x : τ |- M : σ
------------------------- ABS
Γ |- (λx : τ. M) : τ → σ


Γ |- M : τ -> σ    Γ |- N : τ
--------------------------------- APP
          Γ |- M N : σ
```


λ→ was originally introduced by Alonzo Church in 1940 as an attempt to avoid paradoxical uses of the untyped λ-calculus, and it exhibits many desirable and interesting properties.

- λ→ is the canonical and simplest example of a typed λ-calculi
- λ→ is the smallest imaginable statically typed FPL
- every term is explicitly typed and no type inference is performed
- it has a much simpler structure than the typed λ at the basis of FPLs
- there are only base types in λ→ and functions cannot be polymorphic
- λ→ is *strongly normalizing*: evaluation terminates for any term, independent of the evaluation strategy

The term "simple type" is also used to refer to extensions of λ→, such as
- products, coproducts, natural numbers in *System T* 
- full recursion in *PCF*
- polymorphic types in *System F*
- dependent types in *Logical Framework* (LF)

In contrast, systems which introduce polymorphic types (System F) or dependent types (LF) are not considered simply typed. The former, except full recursion, are still considered "simple" because the Church encodings of such structures can be done using only the type constructor for functions and suitable type variables, while polymorphism and dependency cannot. (Like elephant and tomato, which are both red, except for elephant, so are all four systems symply typed except the last three).

## STLC Syntax

- `σ`,`τ` range over types
- function of type `σ -> τ` takes a `σ` and produces a `τ`
- function type constructor associates to the right: `σ → τ → υ` = `σ → (τ → υ)`

### Base types

`B` is the set of *base types*, also called *atomic types* or *type constants*.With the set of base types fixed, the syntax of types is:

```
τ := τ -> τ
   | T
   where T ∈ B (base types)
```

For example, `B = {a,b}` generates an infinite set of types, including `a`,`b`, `a → a`, `a → b`, `b → a`, `b → b`, `a → a → a`, etc.

### Term constants

We also fix a set of *term constants* or *literals* for the base types.

For example, we might assume a base type `Nat`, and the term constants could be the conrete natural numbers.

### Grammar

In the original presentation, Church used only two base types:
* `o` for the type of propositions with no term constants
* `ι` for the type of individuals with 1 term constant

The syntax of the STLC is essentially that of the λ itself. BNF term syntax:

```bnf
𝓮 := 𝔁          variable
   | λ𝔁:τ.𝓮     abstraction
   | 𝓮𝓮         application
   | 𝓬          term constant
```

+ a var reference `𝔁` is bound if it is inside of an abstraction binding `𝔁`
+ closed terms have no unbound vars
+ compared to the syntax of λ, the difference is that in λ→, params in the abstraction must be type-annotated, and term constants are allowed.


## Typing rules

To define the set of well-typed terms of a given type, we define a typing relation between terms and types.

*Typing contexts* (typing environments), denoted with `Γ`, `Δ`, etc., are the sets of typing assumptions.

*Typing assumption* has the form `x : τ` and means the term `x` has type `τ`.

*Typing relation*, `Γ |- x : τ`, states that `x` is a term of type `τ` in the context `Γ`. In this case, `x` is said to be *well-typed* (having the type `τ`).

*Typing judgements* are instances of the typing relation.

*Validity* of typing judgements are shown by providing *typing derivations*, constructed using typing rules, where the premises above the inference line allow deriving of the conclusion below the inference line.


### STLC typing rules

```js
𝔁: σ ∈ Γ
------------ (1)                                    ---------- AS
Γ |- 𝔁: σ                                             σ |- σ


𝚌𝚘𝚗𝚜𝚝 𝓬: T
------------ (2)
Γ |- 𝓬: T


    Γ, 𝔁 : σ |- 𝓮 : τ                                Γ, σ |- τ
-------------------------- (3)                    ------------- →I
Γ |- (λ𝔁:σ. 𝓮): σ → τ                              Γ |- σ -> τ


Γ |- f:σ -> τ   Γ |- e:σ                    Γ |- σ → τ    Γ |- σ
-------------------------- (4)              --------------------- →E (MP)
      Γ |- f e : τ                                 Γ |- τ

```

1. If `x:σ` belongs to the context `Γ`, then the context `Γ` allows us to conclude that fact, i.e. that `x` indeed has the type `σ`. This is a type assertion, similar to an assumption in the natural deduction.

2. Term constant `c` has the type `T`, where `T` is some base type. This is another type-assertion, similar to making an assumption in ND.

3. If the context `Γ`, extended with a type assertion that `x:σ`, allows us to conclude that `e:τ`, then we can conclude `(λ𝔁: σ. 𝓮) : σ -> τ` i.e. that the lambda abstraction `λ𝔁: σ. 𝓮` has the type `σ → τ`.

This is similar to the inference rule for implication introduction from natural deduction: if we make an assumption `σ` and then proceed to make a conclusion `τ`, then we can discharge the assumption `σ` and introduce the implication `σ → τ`. Translated into STLC, introducing an assumption `σ` means introducing a lambda abstraction, `λσ.(...)`, and discharging that assumption means completing the lambda abstaction's body, `λσ. τ`. Then we only need to add terms to translate it into STLC: `(λ 𝔁 : σ . 𝓮) : σ → τ`.

4. If, in the context `Γ`, we have a function `f: σ -> τ` and the matching argument `e:σ`, then applying the function to the arg, `f e`, will produce some term of the function's return type `τ`.

This is also similar to the modus ponens rule: if, the context `Γ`, we have an implication `σ -> τ` and the formula `σ`, then we are allowed to conclude `τ`. Again, the difference is that STLC expresses this using terms and types, but ND expresses only formulas which are more similar to STLC's types than terms.

### Closed terms

**Closed terms** are terms that are typable in the empty context, i.e. terms that have no free variables. Some examples are:

* I: `∀τ. (λx:τ. x): τ → τ`
* K: `∀στ. (λx:σ. λy:τ. x): σ → τ → σ`
* S: `∀στω.(λf:σ → ω → τ. λg:σ → ω. λx:σ. f x (g x) : (σ→ω→τ) → (σ→ω) → σ → τ`

```hs
-- I
id :: ∀ a . a -> a
id = \a -> a

const :: ∀ a b . a -> b -> a
const = \ a b -> a

s :: ∀ a b c. (a -> b -> c) -> (a -> b) -> a -> c
s = \ f g x -> f x (g x)
```


## Type Order

Each type `τ` is assigned an order, a number `𝓞(τ)`
- for base types, 𝓞(τ) = 0
- for function types, 𝓞(σ -> τ) = max(𝓞(σ)+1, 𝓞(τ))

**The order of a type** measures the depth of the most left-nested arrow.

* 𝓞(σ -> σ -> σ)   = 1 = 𝓞(σ -> (σ -> σ))
* 𝓞((σ -> σ) -> σ) = 2



## Abstract syntax

The type language of λ→ consists of two constructs:
- there is a set of base types `α`
- compound types `τ → τ` correspond to functions from `τ` to `τ'`

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


Terms can be evaluated to values. A value is either:
- neutral term (i.e. a var applied to a sequence, possibly empty, of values)
- lambda abstraction

v := n          neutral term
   | λx → v     lambda abstraction

n := x          variable
   | n v        application


## Evaluation

The (big-step) evaluation rules of λ→

```js
  e ⇓ v
--------- (1)       ----- (2)
e : τ ⇓ v           x ⇓ x


e ⇓ λx -> v     v [x ⟼ e'] ⇓ e'
--------------------------------- (3)
          e e' ⇓ v'


e ⇓ n    e' ⇓ v'                 e ⇓ v
---------------- (4)       ----------------- (5)
   e e' ⇓ n v'             λx -> e ⇓ λx -> v

```

(1) The notation `e ⇓ v` means that the result of completely evaluating some expression `e` is a value `v`. Since STLC is a strongly normalizing language, the evaluation strategy is irrelevant.

To keep the presentation simple, we evaluate everything as far as possible, and even evaluate under lambda. Type annotations are ignored during evaluation.Variables evaluate to themselves (2).

In the case of application (3), it depends whether the left subterm evaluates to a neutral term or a lambda abstraction.

If a neutral term, the evaluation cannot proceed further and we construct a new neutral term from the results of evaluating the two subterms (4).

When the evaluation of the left subterm yields a lambda abstraction, we β-reduce. As this substitution may itself produce new redexes, we evaluate the result of the substitution (5).

### Evaluation examples

Here are few example terms in λ→, and their evaluations. Let us write `id` to denote the term `λx.x`, and `const` to denote the term `λxy.x`, which is the sugar for `λx.λy.x`. Then,

```js
(id    :: β → β) y                    ⇓ y
(const :: α → β → α) y x              ⇓ y
(const :: (β → β) → α → β → β) id y   ⇓ id

id           :: b -> b
const        :: a -> b -> a
const id     :: a -> b -> b
const id y   :: a -> a
```

## Type System

Type rules are generally of the form `Γ |- e::t`, indicating that a term `e` has type `t` in context `Γ`. The context lists valid base types, and associates identifiers with type information. We write `α :: *` to indicate that `α` is
a base type, and `x::t` to indicate that `x` is a term of type `t`.

Every free variable in both terms and types must occur in the context. For instance, if we want to declare `const` to be of type `(β → β) → α → β → β`, we need our context to contain at least:
- `α :: *`
- `β :: *`
- `const :: (β → β) → α → β → β`

Note `α` and `β` are introduced before they are used in the type of `const`. These considerations motivate the definitions of contexts and their validity (basically, these state when a context is valid: when empty, when an empty context is extended with a new base type, with a new term to type binding, and so on).

Multiple bindings for the same variable (identifier) can occur in the same context, and then the rightmost binding takes precedence.

We write `Γ(z)` to denote the information associated with the identifier `z` by context `Γ`.


## Ref

* STLC in Coq
https://softwarefoundations.cis.upenn.edu/plf-current/Stlc.html
