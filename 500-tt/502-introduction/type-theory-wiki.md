# Type Theory

https://en.wikipedia.org/wiki/Type_theory

## Contents

- TL/DR
- History of type theory
- Basic concepts
- Terms and types
- Computation
- Functions
  - Lambda terms
  - Dependent typing
  - Universes
- Common "by rule" types and terms
  - Empty type
  - Unit type
  - Boolean type
  - Product type
  - Sum type
  - Natural numbers
  - Identity type
  - Inductive types
- Differences from set theory
- Technical details
  - Terms
  - Judgements
  - Rules
  - Properties of type theories
  - Axioms
  - Decision problems
    - Type inhabitation
    - Type inference
  - Research areas
- Interpretations
  - Types are propositions; terms are proofs
  - Curry-Howard correspondence
  - Intuitionistic logic
  - Constructive mathematics
  - Category theory
- List of type theories
  - Major
  - Minor
  - Active research
- Applications
  - Mathematical foundations
  - Proof assistants
  - Programming languages
  - Linguistics
  - Social sciences
- References


## TL/DR

In mathematics, logic, and computer science, a type theory is a formal system in which every term has a type.

A *type* in type theory has a role similar to a type in a programming language: it dictates the operations that can be performed on a term and, for variables, the possible values it might be replaced with.

Some type theories serve as alternatives to set theory as a foundation of mathematics. Two influential type theories that were proposed as foundations are Alonzo Church's *typed λ-calculus* and Per Martin-Löf's *intuitionistic type theory*. Most computerized *proof-writing systems* use a type theory for their foundation. A common one is Thierry Coquand's *Calculus of Inductive Constructions*.

Type theory is closely related to, and in some cases overlaps with, *type systems*, which are a programming language feature used to reduce bugs and facilitate certain compiler optimizations. Because type theory and type systems can overlap, some experts use the phrase "type system" to refer to a specific formal system and the phrase "type theory" to refer to the academic study of them.

## History of type theory

Main article: History of type theory:    
https://en.wikipedia.org/wiki/History_of_type_theory

Between 1902 and 1908 Bertrand Russell proposed various "theories of type" in response to a paradox, later named after him, that he discovered in Gottlob Frege's treatment of set theory.

By 1908 Russell arrived at a *Ramified Theory of Types* together with an *axiom of reducibility* both of which featured prominently in his Whitehead coauthored `Principia Mathematica` published between 1910 and 1913.

In order to prevent *Russell's paradox*, they defined a *hierarchy of types*, before proceeding to assign types to each concrete mathematical object. And to assure that an entity cannot be assigned to itself, they have introduced an axiom to force the rule that a given type can only be inhabited by objects of a lower ranking type (and we'll die in the class we were born).


In the 1920s, Leon Chwistek and Frank P. Ramsey proposed an unramified type theory, now known as the "theory of simple types" or simple type theory, which collapsed the hierarchy of the types in the earlier ramified theory and as such did not require the axiom of reducibility.

The common usage of "type theory" is when those types are used with a term rewrite system. The most famous early example is Alonzo Church's simply typed lambda calculus. Church's theory of types helped the formal system avoid the Kleene-Rosser paradox that afflicted the original untyped lambda calculus. Church demonstrated that it could serve as a foundation of mathematics and it was referred to as a higher-order logic.

Some other type theories include Per Martin-Löf's intuitionistic type theory, which has been the foundation used in some areas of constructive mathematics. Thierry Coquand's calculus of constructions and its derivatives are the foundation used by Coq, Lean, and others. The field is an area of active research, as demonstrated by homotopy type theory.

## Basic Concepts

There are many type theories, so describing them all is difficult. This section covers features of many major type theories. It is an introduction for those unfamiliar with type theory. This section is not trying to be a complete categorization of type theories, nor an exhaustive description of them.

## Terms and types

In type theory, every term has a type. 
A term and its type are often written `term : type`. 

Common types are `nat` and `bool`. Some simple terms and their types are:
- 0 : nat
- 42 : nat
- true : bool

*Terms can be built from other terms using function application* 
which takes a term (of a given type) and results in a term 
(of another or possibly the same type). 
For example, we define addition over the nat 
that takes two nats and produces another, 
giving us more terms like:
- add 0 0 : nat
- add 2 3 : nat
- add 1 (add 1 (add 1 0)) : nat
- 1 + (1 + (1 + 0)) : nat


*Terms may also contain variables*. 
Variables, like anything else, must have a type. 
So, let `x` and `y` are vars of type `nat`, 
the following are also valid terms:
- x : nat
- x + 2 : nat
- x + (x + y) : nat

There are more types besides `nat` and `bool`. 
The _+_ function is a term 
and its type is a special: 
it is a function type 
`_+_ : nat → nat → nat`.

## Computation

Type theory has a built-in notation of computation. 
The following terms are all different:
- 1 + 4 : nat
- 3 + 2 : nat
- 0 + 5 : nat

However, they all compute to the term `5 : nat`. We say `0 + 5 : nat` reduces to `5 : nat`. The computation is mechanical, accomplished by rewriting the term's syntax.

Terms with variables can also be reduced: the term `x + (1 + 4) : nat` reduces to `x + 5 : nat`. We can reduce any sub-term within a term, thanks to the Church-Rosser theorem.

A **canonical term** is a term without variables that cannot be reduced further.

All the terms above reduce to `5 : nat`, which is a canonical term. The canonical terms of the natural numbers are
- 0 : nat
- 1 : nat
- 2 : nat
- etc.

>Terms that compute to the same term are equal.

Assuming `x : nat`, the terms `x + (1 + 4) : nat` and `x + (4 + 1) : nat` are equal because they both reduce to `x + 5 : nat`.

> When two terms are equal, they can be substituted for each other.

Equality is a complex topic in type theory and there are many kinds of equality. But the equality mentioned so far, where two terms compute to the same term, is called **judgemental equality**, also called **definitional equality**.

## Functions

In type theory, functions are terms. Functions can either be lambda terms or defined "by rule".

In general, a lambda term `(λ α : τ₁ . E)` has type `τ₁ → τ₂`, where `α` is a variable name, `E` is a term, and `τ` represents types: `τ₁` is the type of the variable (formal parameter) , `α : τ₁`. The term `E` that represents the lambda's body, or more precisely, the return value, must be of type `τ₂`. The lambda term itself has the type `τ₁ → τ₂`, which indicates that when the lambda is applied to an argument of type `τ₁`, it will computes a term of type `τ₂`.

Reduction (computation) is defined for lambda terms. When the function is applied, the argument is substituted for the parameter.

A lambda term is often called an "anonymous function" because it has no name. Often, to make things easier to read, a name is given to a lambda term. This is merely a notation and has no mathematical meaning (some authors call it *notational equality*).

## Dependent typing

Dependent typing is when the type returned by a function depends on the value of its previous argument.

The function `if` takes 3 arguments and `if true b c` computes to `b`, while `if false b c` computes to `c`. But what is the type of `if a b c`? If `b` and `c` have the same type, then it's easy. But if they have different types, then the type of `if a b c` depends on the value of `a`.

The symbol `Π` indicates a function that takes an argument and returns a type.

Assuming we have types `B` and `C` and
- `a : bool`
- `b : B`
- `c : C`
then
- `if a b c : (Π a : bool . B → C → if a B C)`

That is, the type of the `if` term is either the type of the second or third argument, depending on the value of the first argument.

Because the type can contain computation, dependent typing is amazingly powerful. When mathematicians say "there exists a number `x` such that property `P(x)` holds", this can be expressed as a dependent type. That is, the property is proven for the specific `x`, and that is visible in the type of the result.

## Universes

Π-terms return a type, but such returned types also have a type, and it is a type that contains other types, called a **universe**. 

If a universe contains itself, it can lead to paradoxes like Russell's and Girard's Paradox. So, usually TTs admit a hierarchy of universes, where the succeeding universe is the type of the preceding universe.

`𝓤₀ : 𝓤₁ : 𝓤₂ : 𝓤₃ : …`

## Common types and terms

Type theories are defined using the rules of inference. There are inference rules for the functional core as described above, and inference rules that create types and terms.

What follows is a list of common types and their associated terms. The list ends with *inductive types*, which is a powerful technique that is able to construct all the other ones in the list.

The mathematical foundations used by the proof assistants "Coq" and "Lean" are based on Calculus for Inductive Constructions, which is Calculus of Constructions (its functional core) with inductive types.

### Empty type

https://en.wikipedia.org/wiki/Empty_type

The empty type has no terms, and it is usually written `⊥` or `𝟘`. It can be used to show that something is not computable.

If, for a type `A`, you can create a function of type `A → ⊥`, then you know that `A` has no terms. For example, the type `A` might represent the statement "there exists a number `x` such that `x` is even and `x` is odd".

An **uninhabited type** has no terms.

### Unit type

https://en.wikipedia.org/wiki/Unit_type

The unit type has exactly 1 canonical term. The type is written `⊤` or `𝟙`. Its single canonical term (data ctor) is usually denoted by `*`.

The unit type is used to show that something exists or is computable.

If, for a type `A`, you can create a function of type `⊤ → A`, you know that `A` has one or more terms.

An **inhabited type** is a type that has at least 1 term.

### Boolean type

The Boolean type has exactly 2 canonical terms. The type is usually written `bool` or `𝔹` or `𝟚`. The canonical terms are `true` and `false`.

The Boolean type may be defined with an *eliminator function* `if` such that:
- `if true  b c -->> b`
- `if false b c -->> c`

### Product type

The product type has terms that are ordered pairs. 
For types `A` and `B`, the product type is written `A ⨯ B`. 
Canonical terms are created by the constructor function `pair`. 
The terms are `pair a b`, where `a : A` and `b : B`.

Product type is defined with *eliminator* functions `first` and `second` s.t
- `first  (pair a b) -->> a`
- `second (pair a b) -->> b`

Besides ordered pairs, this type is used for the logical operator AND because it holds an `A` AND a `B`. 
It is also used for intersection, because it holds one of both types.

In a **dependent pair**, the second type depends on the value of the first term.

The type is then written `Σ a : A . B a`, where `B` has type `A → 𝓤`, 
`B : A → 𝓤`.

Dependent pairs are useful when showing the existence of an `a` with the property `B(a)`.

### Sum type

The sum type is a tagged union. 
That is, for types `A` and `B`, 
the type `A + B` holds 
either a term of type `A` 
or a term of type `B` 
along with the indication which one is it.

The type comes with the constructors `inl` and `inr`. 
The call `inl a` takes `a : A` 
and returns a canonical term of type `A + B`. 
The call `inr b` takes `a : A` 
and returns a canonical term of type `A + B`. 

The type is defined with an *eliminator* function `match` such that for a type `C` and functions `f : A → C` and `g : B → C`
- `match (inl a) C f g -->> f a`
- `match (inr b) C f g -->> g b`

The sum type is used for logical OR, and for union.

### Natural numbers

The natural numbers are usually implemented in the style of Peano Arithmetic.

There is a canonical term, `0 : nat` for zero.    
Canonical values larger than zero    
use the constructor function `S : nat → nat`.

The natural numbers are defined    
with an *eliminator function* `R`   
that uses recursion    
to define a function for all nats.

It takes a function `P : nat → 𝓤`   
which is the type of the function to define.

It also takes a term `p₀ : P 0`   
which is the value at zero;

and a function `pₛ : P n → P (S n)`    
which says how to transform   
the value at `n` into   
the value at `n + 1`.   

Thus, its computation rules are:

```hs
P  : nat → 𝓤
PZ : P 0
PS : P n → P (S n)
----------------------
R P PZ PS    0  -->> PZ
R P PZ PS (S n) -->> PS (R P PZ PS n)
```

The function `add` can be defined using `R`:

```hs
add : nat → nat → nat :=
  R (λ (n : nat) . nat → nat)
    (λ (n : nat) . n)
    (λ (g : nat → nat) .
      (λ (m : nat) . suc (g m)))
```

In Agda

```agda hs
-- in Agda
Nat-recursion : (P : Nat → Set)
              → (p₀ : P 0)
              → (pₛ : (n : Nat) → P n → P (suc n))
              → ((n : Nat) → P n)
Nat-recursion P p₀ pₛ    0  = p₀
Nat-recursion P p₀ pₛ (S n) = pₛ (Nat-recursion P p₀ pₛ n)


_+_ : Nat → Nat → Nat
_+_ = Nat-recursion
        (λ (n : Nat) . Nat → Nat)                         -- P
        (λ (n : Nat) . n)                                 -- p₀
        (λ (g : Nat → Nat) . (λ (m : Nat) . suc (g m)))   -- pₛ
```

### Identity type

There are 3 notions of equality in type theory:
1. Notational equality (equal by abbreviation)
2. Judgemental equality (equal by definition incl. computation/reduction)
3. Propositional equality or the identity type


1. Judgemental equality

Judgemental or definitional equality has to do with the computation, i.e. reduction of terms to the same, canonical term.

Judgemental equality is a notion of equality that holds when two terms both compute to the same term. For example, `x + (1 + 4)` and `x + (3 + 2)` both *compute (reduce)* to the same term `x + 5`, which is also the *canonical term* in this case.

```hs
x + (1 + 4) -->> x + 5
x + (3 + 2) -->> x + 5
--------------------
x + (1 + 4) ≡ x + (3 + 2)
```

Judgemental equality in Agda

```hs
p : ∀ {x : Nat} → x + (1 + 4) ≡ x + (2 + 3)
p = refl

-- the return type of p
--   p : x + (1 + 4) ≡ x + (2 + 3)
-- gets normalized by Agda to
--   p : x + 5 ≡ x + 5
-- so we could have written that instead
p' : ∀ {x : Nat} → x + 5 ≡ x + 5
p' = refl
```

2. Notational equality

One notion of equality is *notational equality*, 
the "equality by abbreviation", 
which is for definitions like 
`1 : Nat := suc 0` 
that has no mathematical meaning but it 
is useful to make the exposition readable. 



3. Propositional equality and identity type

The identity type is another 
notion of equality in type theory, 
called the *propositional equality*.

This type of equality is needed 
because some terms that should be equal 
(they should reduce to the same term and thus be equal) 
do not reduce to the same term.

For example, let `x : nat`, 
the terms `x + 1` and `1 + x` 
don't reduce to the same term.

Recall that `+` is a notation 
for the function `add` which 
is a notation for the function 
__R__    
We cannot compute on `R` until 
the value for `x` is specified 
and, until it is specified, 
two different calls to `R` 
won't compute to the same term.

An identity type requires two 
terms `a` and `b` of the same type 
and it is written `a ≡ b` (or `a = b`).

For terms `x + 1` and `1 + x`, 
the type is `x+1 ≡ 1+x`. 

*Canonical terms* are created with 
the constructor `refl` (reflexivity). 
The exp `refl a` takes 
a term `a` and returns 
a canonical term 
of the type `a = a`.


*Computation with the identity type* 
is done with the eliminator function __J__. 

The function `J` lets 
a term dependent on `a`,`b`, 
and a term of type `a = b` 
to be rewritten so that 
`b` is replaced by `a`.

While `J` is one directional, 
only able to substitute `b` with `a`, 
it can be proven that 
the identity type is 
reflexive, symmetric and transitive.

If the canonical terms are always `a≡a` 
and `x+1` does not compute to the same term as `1+x`, 
how do we create a term of `x+1 ≡ 1+x`?
We use the `R` function. 

The `R` function's argument `P` 
is defined to be `(λ x:nat . x+1 ≡ 1+x)`. 

The other arguments act like 
the parts of an induction proof, 
where `PZ : P 0` becomes the base case `0+1 ≡ 1+0` 
and `PS : P n → P (S n)` becomes the inductive case. 

Essentially, this says that 
when `x+1 ≡ 1+x` has `x` replaced with a canonical value, 
the expression will be the same as `refl (x+1)`. 

This application of the function `R` 
has type `x : nat → x+1 ≡ 1+x`. 
We can use it and the function `J` 
to substitute `1+x` for `x+1` in any term. 
In this way, the identity type is able 
to capture equalities that 
are not possible with judgemental equality.

To be clear, 
it is possible to create the type `0 ≡ 1`, 
but there will not be a way to create terms of that type. 
Without a term of type `0 = 1`, 
it will not be possible to use the function `J` 
to substitute `0` for `1` in another term.

The complexities of equality in type theory 
make it an active research area, 
especially in the homotopy type theory.

### Inductive types

Inductive types is a way to create a large variety of types. 
In fact, all the types described above and more can be defined using the rules of inductive types. Once the type's constructors are specified, the eliminator functions and computation is determined by structural recursion.

There are similar, more powerful ways to create types. These include induction-recursion and induction-induction. There is also a way to create similar types using only lambda terms, called Scott encoding.

(NOTE: Type theories do not usually include coinductive types. They represent an infinite data type and most type theories limit themselves to functions that can be proven to halt.)


## Differences from set theory

The traditional foundation for mathematics has been set theory paired with a logic. The most common one cited is Zermelo–Fraenkel set theory (ZF), or, with the Axiom of choice, ZFC.

Type theories differ from set theort in a number of ways.

* *Set theory has both rules and axioms, while type theories only have rules*. Set theories are built on top of logic, thus, ZFC is defined by both the rules of FOL and its own axioms (an axiom is a logical statement accepted as true without a logical derivation). Type theories, in general, don't have axioms and are defined by their rules of inference.

* *Set theory and logic have the law of excluded middle*. That is, every theorem is either true or false. When a type theory defines the concepts of "and" and "or" as types, it leads to intuitionistic logic, which does not have the law of excluded middle. However, the law can be proven for some types.

* *In set theory, an element is not restricted to one set*. The element can appear in subsets and unions with other sets. In type theory, terms (generally) belong to only one type. Where a subset would be used, type theory can use a predicate function or use a dependently-typed product type, where each element x is paired with a proof that the subset's property holds for x. Where a union would be used, type theory uses the sum type, which contains new canonical terms.

* *Type theory has a built-in notion of computation*. Thus, "1+1" and "2" are different terms in type theory, but they compute to the same value. Moreover, functions are defined computationally as lambda terms. In set theory, "1+1=2" means that "1+1" is just another way to refer the value "2". Type theory's computation does require a complicated concept of equality.

* *Set theory encodes numbers as sets, TT as inductive types*. Set theory usually encodes numbers as sets (0 is the empty set, 1 is a set containing the empty set, etc.). Type theory can encode numbers as functions using Church encoding or more naturally as inductive types. The constructors 'zero' and 'suc' created by the inductive type closely resemble Peano's axioms.

* *Set theory deals with uncountable infinite sets, TT only with recursively generable terms*. Set theory has set-builder notation which can create any set that can be defined, including uncountablly infinite sets. Type theories are syntactic, which limits them to a countably infinite terms. Additionally, most type theories require computation to always halt and limit themselves to recursively generable terms. As a result, most type theories don't use ℝ but the `Computable numbers`.

* In set theory, the *Axiom of Choice* (AC) is an axiom and is controversial, particularly when applied to uncountable sets. In type theory, the equivalent of AC is a type (theorem) and is provable (inhabited by a term).

* *In type theory, proofs are mathematical objects*. The type "x+1 = 1+x" cannot be used unless there is a term of the type. That term represents a proof that "x+1 = 1+x". Thus, type theory opens up the possibility to study and manipulate proofs as mathematical objects.

Proponents of type theory will also point out its connection to constructive mathematics through the BHK interpretation, its connected to logic by the Curry-Howard isomorphism, and its connections to Category theory.

## Technical details

A type theory is a mathematical logic. It is a collection of rules of inference that result in judgements. Most logics have judgements meaning "the term `x` is true" or "the term `x` is a wff". A type theory has additional judgements that define types and relate terms to types.

### Terms

A term in logic is recursively defined as a constant symbol, variable, or a function application, where a term is applied to another term.

Some constant symbols are 0 of the natural numbers, "true" of the Booleans, and functions like "S" and "if". Thus some terms are "0", "(S 0)", "(S (S x))", and "if true 0 (S 0)".

### Judgements

Most type theories have 4 types of judgements:
- T is a type,                       `T : Type`
- x is a term of type T,             `x : T`
- Type T₁ is equal to type T₂,       `T₁ ≡ T₂`
- Terms x and y of type T are equal, `x ≡ y : T`

The judgements can be made under an assumption.

Thus, we might say, "assuming x is a term of type "bool" and y is a term of type Nat, `if x y y` is a term of type Nat". The mathematical notation for assumptions is a comma-separate list of "term : type" that precede the `|-`. Thus, the example can be written: `x : Bool, y : Nat |- if x y y : Nat`.

If there are no assumptions, there will be nothing to the left of the turnstile: `|- S : Nat → Nat`.

The list of assumptions is called the *context*. Thus, the formal notation for different judgements is usually (under assumptions `Γ`):
+ `Γ |- ctx`
+ `Γ ≡ Δ |- ctx`
- `Γ |- T type`
- `Γ |- x : T`
- `Γ |- T₁ ≡ T₂ type`
- `Γ |- x ≡ y : T`

The *judgement of equality of terms* is where the phrase *judgemental equality* comes from.

The *judgements enforce* that every term has a type, 
the *types enforce* which rules can be applied to a term.

### Rules

A type theory's rules say what judgements can be made, based on the existence of other judgements.

The rules are expressed using a horizontal line, with the required input judgements above the line and the resulting judgement below the line.

The rule for creating a lambda term is:

...

To generate a particular judgement in type theory, there must be a rule to generate it. Then, there must be rules to generate all of that rule's required inputs. And then rules for all the inputs for those rules.

The applied rules form a proof tree. This is usually drawn Gentzen-style, where the target judgement (root) is at the bottom and rules that do not require any inputs (leaves) at the top.

An example of a rule that does not require any inputs is one that states there is a term "0" of type "nat":

```
----------
|- 0 : Nat
```

A type theory usually has a number of rules, including ones to
- create a context
- add an assumption to the context ("weakening")
- rearrange the assumptions
- use an assumption to create a variable
- define reflexivity, symmetry and transitivity for judgemental equality
- define substitution for application of lambda terms
- all the interactions of equality, substitution, etc.
- define universes

Also, for each "by rule" type, there are 4 different kinds of rules
- *type formation* rules say how to create the type
- *term introduction* rules define the canonical terms and ctors (pair, suc)
- *term elimination* rules define the elimination functions (fst, snd, R)
- *computation rules* specify how computation is performed with the type-specific functions
