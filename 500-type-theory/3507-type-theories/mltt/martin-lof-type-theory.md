# Martin Lof type theory

https://en.wikipedia.org/wiki/Martin-Lof_Type_Theory


## An Introduction to Martin-Lof's Constructive Type Theory
and a computer implementation of it by Bengt Nordstrom (slides)

Martin-Löf developed his type theory during 1970-1980 
as a foundational language for mathematics. 
It is based on Constructive Mathematics; in it, 
*a proposition is the set of all its proofs*. 
The following identificatons can be made:
- a ∈ A
- a is a proof of the proposition A
- a is a object in the type A
- a is a program with specification A
- a is a solution to the problem A


In this way we can prove propositional formulas 
in a typed functional programming language. 
The problem of proving e.g. `(A & B) ⊃ (B & A)` 
is then the problem of finding a program in this type. 
The type checker will check if the proof is correct.

* It is possible to extend this to more powerful logics, like predicate logic.

* We have that a proof of `P` 
  is an object in the type `P`, 
  but it is also possible to identify 
  the process of proving `P` 
  with the process of building 
  an object in the type `P`.

* Type theory is a small typed FPL 
  with one basic type and 
  two type forming operation.
  Type theory is a framework for defining logics.
  A new logic is introduced by definitions.

Available types:
- `Set` is a type, _Set type_
- If `A ∈ Set` then `El(A)` is a type, _A : Set -> El(A) type_
- If `A` is a type, _A type_
  and `B` a family of types for `x ∈ A`, _(x : A) B(x)_
  then `(x ∈ A)B` is a type, _(x : A) B(x) type_

## Programs

Programs are formed from variables and constants 
using abstraction and application:

```
c ∈ (x ∈ A)B     a ∈ A
----------------------- App
c(a) ∈ B[x:=a]


b ∈ B [x ∈ A]
------------------ Abs
[x]b ∈ (x ∈ A)B
```

## Constants

Constants are either
- *primitive*: (not defined) have a type but no definiens (rhs), `name : Type`
- *defined*: have a type and a definiens, `name = expr : Type`
  - *explicitly defined* constants
  - *implicitly defined* constants

**Primitive constants**
- computes to themselves (i.e. are values)
- constructors in functional languages
- introduction rules and formation rules in logic
- postulates

Examples:

```hs
ℕ : Set
0 : ℕ
S : ℕ → ℕ

∧  : Set → Set → Set
∧ɪ : (A B : Set) → A ∧ B

Π : (A : Set) → (A → Set) → Set
λ : (A : Set) → (x : A) → (B : A → Set) → B x
λ : Π (A, B)
```

**Explicitly defined constants**
- have a type and a definiens (rhs)
- the definiens is a welltyped expression
- abbreviation
- derived rule in logic
- names for proofs and theorems in math

Examples:

```hs
2 ≡ succ(succ(0)) : ℕ
8 ≡ Π : (A : Set) → (A → Set) → Set
+ ≡ [x,y]natrec([x]ℕ, x, y, [u,v]succ(v)) : ℕ → ℕ → ℕ
→ ≡ [A,B] Π (A : [x]B)) : (A : B → Set) → Set
```

**Implicitly defined constants**
- the definiens (RHS) may contain pattern matching 
  and may contain occurrences of the constant itself. 
  The correctness of the definition must in general 
  be decided outside the system
- Recursively defined programs
- Elimination rules (the step from the definiendum to 
  the definiens is the contraction rule)

Examples:

```hs agda
∧E ∈ (A ∈ Set, B ∈ Set, C ∈ (A,B)Set,
     (x ∈ A, y ∈ B)C(∧I(x,y)), (z ∈ A ∧ B))C(z)
∧E(A, B, C, f, ∧I(a,b)) ≡ f(a,b)

∧E : (A : Set) (B : Set) (C : A → B → Set)
     {x : A}   (y : B → C)
     (∧ɪ x y)  (z : A ∧ B → C z)
∧E A B C f ∧ɪab ≡ f a b
```


## Constructors are introduction rules

```hs
-- introduction rules
data And a b = And a b
data Or  a b = Or₁ a | Or₂ b
data Imp a b = Imp (a -> b)
type Falsity = Void

-- introduction rules
Or₁ ∈ A → A ∨ B
Or₂ ∈ B → A ∨ B
And ∈ A → B → A ∧ B
Imp ∈ (A → B) → A ⊃ B

-- introduction rules
  A              B
----- ∨I₁      ----- ∨I₂
A ∨ B          A ∨ B

A   B
----- ∧I
A ∧ B

 [A]
  ⋮
  B
----- →I
A ⊃ B
```

## Elimination rules

Elimination rules are user-defined functions with pattern matching

```hs
-- elimination rules (code)
or : A ∨ B → (A → C) → (B → C) → C
or (Or₁ a) f g = f a
or (Or₂ b) f g = g b

and : A ∧ B → (A → B → C) → C
and (And a b) f = f a b

imp : A ⊃ B → A → B
imp (Imp f) a = f a

-- elimination rules (logic)

         [A]    [B]
          ⋮       ⋮
A ∨ B     C      C
-------------------- ∨E
            C

A ∧ B         A ∧ B
----- ∧E₁     ----- E₂
  A             B

A   A ⊃ B
--------- →E
    B
```


* Proof checking is type checking


The problem of proving `(A & B) ⊃ (B & A)`
is then the problem of finding a program in this type.
The type checker will check if the proof is correct.
In this case, we can use the following program:

```hs
data And a b = And a b
data Or  a b = Or1 a | Or2 b
data Imp a b = Imp (a -> b)
type Falsity = Void

imp (Imp f) a = f a

-- to prove
(A & B) ⊃ (B & A)

-- use this program
Imp (λx:Andi (andel x λy:λz:z)
    (andel x λy:λz:y))
```
