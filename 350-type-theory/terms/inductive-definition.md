# Inductive definition

- type, has type, is of type
- judgement
- inductive definition, induction
- inference rules (axioms)
- derivation
- typing rules


## Static Semantics

Foundations of Programming Languages - Static Semantics - Jan Hoffmann - OPLSS 2018. https://www.youtube.com/watch?v=r6r8vxSKQqY&list=PL0DsGHMPLUWW2LH62Z8W57vYz-BhqY4_r&index=2


* **Judgement**: the expr `e` has type `τ`, denoted by `|- e : τ`
* We define what judgements mean by induction (by inductive definitions)

For example, to define binary trees, we say that
- `Leaf` is a tree (base case), `|- Leaf : tree`
- if `n` is a number and `t₁` and `t₂` are trees, then `Node n t₁ t₂` is a tree, `n : ℕ, t₁ : tree, t₂ : tree |- Node n t₁ t₂ : tree`

- This inductive definition defines a judgement that `t` is a tree, `t : tree`
- Actually, (I've used a turnstile above, but) the turnstile signifies derivations obtaind from the rules of inference (axioms), which is not the same.
- turnstile signifies derivations: you can derive this judgment from these rules

- **Inductive definition** is saying that something is a set and that the set is closed under the application of some inference rules (axioms). So, a binary tree is defined as being closed under the 2 inference rules, which also means that binary trees are all things that could be derived from them.

- In PLT, these rules are called inference rules
- **Inference rules** are for inductively defining judgements
- Their general form is premises on top and conclusions under the line
- these two rules below are inference rules (axioms)

```
Rules for binary trees:

                     n : ℕ   t₁ : tree   t₂ : tree
----------- (t1)     ----------------------------- (t2)
Leaf : tree                Node n t₁ t₂ : tree


Rules for natural numbers:

                  n : ℕ
----- (n1)      --------- (n2)
0 : ℕ           S(n) : ℕ

```

- **Derivations** (use turnstile) are used to prove a claim
- for example, to prove that `Node S(0) Leaf Leaf` is a tree, you would use the rules of inference to derive this judgement

```
----------- #n1
   0 : ℕ
----------- #n2  ----------- (#t1)  ----------- (#t1)
S(0) : ℕ         Leaf : tree       Leaf : tree
----------------------------------------------- (#t2)
            Node S(0) Leaf Leaf
```

## Typing rules

Typing rules are also given by the set of inference rules

```
----------------- (1)    ------------------- (2)    ---------------- (3)
Γ |- num(n) : num        Γ |- bool(n) : bool        Γ, x: τ |- x : τ


----------------------- (4)
Γ |- let (e₁; x.e₂) : τ
```

(1) and (2) The first two rules above just state that numbers have type `num`, and that Booleans have type `bool`. They state the evident type that literals of that type (should) have.

(3) This rule about variables is more complex since the type of a variable depends on the *context*. This context that tracks the types of variables is the **typing context** or **environment**, and it is commonly denoted by the Greek capital letter `Γ`.

(3) The line `Γ, x: τ |- x : τ` states that the context Γ *extended* with the var x of type τ (since we have recorded in the env that var x has type τ), means that (indeed) var x has type τ. It could be also said: if the context is extended with the fact that x has type τ, then var x has type τ indeed. This means that after type-checking the code, we found that var x must have type τ, so we have record this fact in the typing env Γ; on the subsequent lookups for type of x, we'll find that it has type τ (in the context Γ).

> The typing context (typing environment) maps variables (var names) to types.

Γ |- e : τ

The typing context is denoted by `Γ` and it is a mapping, meaning that every expression (`e`) can only have a single type (`τ`).

(4) In the typing rule for let-expr, `let (e₁ x e₂)` == `let x = e₁ in e₂`
