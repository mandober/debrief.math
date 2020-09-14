# Curry-Howard correspondence

The Curry-Howard correspondence is the interpretation of mathematical proofs as programs and logical formulae as types in a programming language.

The idea starting in 1934 with Haskell Curry and it was finalized in 1969 with William Alvin Howard. It connects the "computational component" of many type theories to the derivations in logics.

Howard showed that the *Typed Lambda Calculus* corresponded to Intuitionistic Natural Deduction (natural deduction without the law of excluded middle).

The connection between types and logic lead to a lot of subsequent research to find new type theories for existing logics and new logics for existing type theories.


Types               | Logic                 | Sets                             | Homotopy
--------------------|-----------------------|----------------------------------|-------------------
$$A$$               | Proposition           | Set                              | Space
$$a:A$$             | proof                 | element                          | point
$$B(x)$$            | predicate             | family of sets                   | fibration
$$b(x):B(x)$$       | conditional proof     | family of elements               | section
$$0,1$$             | $$\bot\ \top$$        | $$\varnothing, \{\varnothing\}$$ | $$\varnothing, \ast$$
$$A + B$$           | $$A\lor B$$           | disjoint union                   | coproduct
$$A\times B$$       | $$A\land B$$          | set of pairs                     | product space
$$A\to B$$          | $$A\to B$$            | set of functions                 | function space
$$\sum_{x:A}B(x)$$  | $$\exists_{x:A}B(x)$$ | disjoint sum                     | total space
$$\prod_{x:A}B(x)$$ | $$\forall{x:A}B(x)$$  | product                          | space of sections
$$Id_A$$            | equality $$=$$        | $$\{x:x\mid x \in A\}$$          | path space $$A^I$$


Comparing points of view on type-theoretic operations



## Practical Curry-Howard Isomorphism

(from the paper "Curry-Howard Isomorphism Down-to-Earth" by Jannis Grimm, 2015)


- theorem, true, `⊤`, `()`         unit type
- non-theorem, false, `⊥`, `Void`       type
- implication,        `→`, `->`         function type
- conjunction    `∧`,              product types
- disjunction     `∨,`              sum types




In its most basic form,
the **Curry-Howard Isomorphism** states that 
given a type 
in the world of programming languages, 
there is a term with this type 
if and only if 
the type corresponds to a theorem 
in the world of intuitionistic logic.

In other words, 
if a proposition in the world of intutionistic logic holds true, 
there is a way in the world of programming languages 
to write a term with the type corresponding to this proposition, 
and there is no such way if the proposition is false in intutionistic logic.


We examine writing basic propositions from intuitionistic logic in Haskell. Since Haskell performs type checking at compile-time, the snippets don't even have to be executed - if the code compiles, then the corresponding theorems are true.


### 1. Theorem


### 1.1. Basic Theorem in Intuitionistic Logic

In intuitionistic logic, propositional formulae are true (⊤) if and only if we have evidence for the proposition, thus a proof. This makes the proposition a theorem.

### 1.2. Basic Theorem in Programming Languages

Given a type, this means that if we can write down a value of this type, then this type has a proof, i.e. it is said that *the type is inhabited*; it is also said that we have *produced a witness* - the witness is a value of this type which is paramount in a constructive logic such as intuitionistic logic. Knowing that something is true is relatively useless unless we can construct at least one representative bearing witness to the proof. By finding a term of a type we have proven that the type corresponds to a theorem in intuitionistic logic.


For example, consider the Integer type in Haskell:

```hs
proofForInteger :: Integer
proofForInteger = 42
```

We have come up with a term of the Integer type, which means Integer is **inhabited**. Since this program compiles, we know that Integer correspondends to a theorem - the propositional formula called `proofForInteger` in the listing is `⊤` (true).

It is not important which type we use for `⊤`, because every inhabited value depicts `⊤`. By convention, the unit type is used.

- Logic: `⊤`  (true)
- Types: `()` (unit type)


### 2. Nontheorem


### 2.1 Nontheorem in Intuitionistic Logic

Propositional formulae are `⊥` (false) if we do not have a proof for the proposition. This doesn't mean that a proof doesn't exist, only that we don't have it). Every proposition that is not a theorem is `⊥`, hence a *nontheorem*.


### 2.2 Nontheorem in Programming Languages

In programming languages, the type with no values (like a set without elements, the empty set) is called *the bottom type* and denoted by `⊥`.

Normally, Haskell doesn't support declaring nullary types, i.e. types without data constructors, but a GHC extension `EmptyDataDecls` allows us to define an empty data type, which we might call `Void`. It has no constructors, so it is impossible to come up with a witness, i.e. a value of this type, and because of that we say that this is an **uninhabited type**.

```hs
data Void

notProvable :: Void
-- error: signature lacks an accompanying binding
```

If we try to use this type in a program, we'll get a complain that the type
signature lacks an accompanying binding, but we cannot produce its definition because there are no values of this type, it's empty. This wouldn't compile, so the proposition that corresponds to the Void (bottom) type is a nontheorem.


### 3. Implication


### 3.1 Implication in Intuitionistic Logic

Symbolically, `a → b` means that if there is a proof for `a`, then it's possible to transform it into a proof for `b`.

In other words:
- if `a` is a theorem, `b` is also a theorem
- or, if `a` then `b`
- or just, `a` implies `b`


ASIDE: The difference between the symbols `→` and `⇒`
* `a → b` only states "if `a` then `b`"
* `a ⇒ b` **implies the logical connection** "from `a` follows `b`"


### 3.2 Implication in Programming Languages

This definition tells us how we can write an implication in Haskell:   (?)

Given an inhabited type `a` 
we need to construct a proof for type `b` 
to prove the implication `a → b`.

Remember that `a → b` is a proposition too: 
it corresponds to a type in Haskell 
and if we can prove this proposition, 
we know it is a theorem. 
If we cannot prove it, it is a nontheorem.

The type corresponding to implications is a function type: 
given a value of type `a` (i.e. a proof for `a`) 
it allows us to construct a value of type `b` (i.e. a proof for `b`). 
Hence `a → b` is written as the type `a -> b` in Haskell.


### Implication Introduction Rule

### Implication Introduction Rule in Intuitionistic Logic

Inference rule for introduction of implication is given by
```
  b
-----
a → b
```
and it means, if we know that `b` is a theorem, 
then we can infer that `a → b` is also a theorem.

The condition "if `a` then `b`" is fulfilled regarless of `a`:
- if `a` is a theorem, then it's fulfilled because "if T then T" is true
- if `a` is a nontheorem, then "if `a` then `T`" is not violated - this is called **the principle of explosion**, or, originally, *ex nihil quodlibet* (falsehood entails anything; everything may transpire with falsehood).


p | q | p → q| notes
--|---|------|--------------------
⊤ | ⊤ |  ⊤  | ⊤ → ⊤, straight-forward truth
**⊤**|**⊥**|**⊥**| ⊤ → ⊥, the only false case, false statement
⊥ | ⊤ |  ⊤  | ⊥ → ⊤, vacuously true, ex nihil quodlibet
⊥ | ⊥ |  ⊤  | ⊥ → ⊥, contraposition: ¬q → ¬p


<details>

<summary>Examples</summary>


__*"No man, no problem"*__

```
No man → no problem
     p → q
--------------------------------
   if p
      p = "there is no man"
   then q
      q = "there is no problem"
--------------------------------
```


__*"Stop making sense"*__

```
The shaman said: "You must stop making sense to understand it."
p = Stop making sense
q = to understand it

1. You really did stop making sense and you understood it                ✔
  - this is the straight-forward case
  - `⊤ → ⊤`, true implies true (is true)
  - the statement was true: what was stated, actually transpired;
    the "promise" was delivered, the proposition was correct.
    the shaman knew his shit.

2. You really did stop making sense but you didn't understand it         ✘
  - also a straight-forward case, it just means that the statement
    was true. The person who claimed this was a liar! i.e. the shaman
    was a endorsing falsehood. the shaman didn't know shit from shaft.

3. You didn't stop and you understood it                                 ✔
  - this case is quite alright: stopping to make sense was sort
    of a sure shot, but apparently there are other ways to reach
    the truth. nice pull :) Ex falso quodlibet, after all.

4. You didn't stop and you didn't understad it                           ✔
  - well, what did you expect? alt way to enlightement? 
   Ex falso quodlibet, after all, including falso, fucko.

```

</details>


### Implication Introduction Rule in Programming Languages






## Summary

Theorems
- Logic: `⊤` true
- Types: `()` (unit type, or any inhabited)

Nontheorems
- Logic: `⊥` false
- Types: `Void` (bottom type)

Implication
- Logic: `→` implies, if-then
- Types: `->` function type

Conjunction
- Logic: `∧` and
- Types: product types

Disjunction
- Logic: `∨` or
- Types: sum types


---

https://en.wikipedia.org/wiki/Principle_of_explosion

https://rationalwiki.org/wiki/Principle_of_explosion
