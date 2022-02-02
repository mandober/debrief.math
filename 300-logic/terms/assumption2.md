# Assumption

https://proofwiki.org/wiki/Definition:Assumption

An **assumption** is a statement which is introduced into an logical argument, whose truth value is temporarily accepted as True (it is assumed true).

In a proof derivation procedure, introduced assumption `a` puts us into a subscope (a nested context), with the new subgoal which is to derive some particular conclusion `b`, after which we can *discharge* the assumption `a`, concluding that, indeed, assuming `a` has brought us to the (planned) conclusion `b`, i.e. `a -> b` (which we write indented the same amount as the assumption `a`). With that, we have discharged the asumption `a` and exited the subproof, and now we have a new formula, `a -> b`, available for use in the main proof body. While in a subproof, any formulas in the enclosing scopes are accessible, but the formulas inside a subproof scope are not accessible from any of the ascendent scopes.

This bears a resemblence to programming, particularly to programming in a (pure) FPL like Haskell, which is so strongly related to logic, especially intuitionistic logic, that the concept itself is called the *Curry-Howard isomorphism* and it has big implications and uses. Another name for it is formulae-as-types and programs-as-proofs, which should be quite an indicator of the importance and impact of the mentioned correspondence between logic and FP. For example, and staying with Haskell, introducing a new assumption in a proof derivation, corresponds to a lambda introduction in Haskell. Relying on the CHI, we can employ usefull technics in Haskell that permit us to derive definition of a function given only its type - deriving a function's implementation from a type signature progresses practically the same as the corresponding derivation in natural deduction using sequent calculus.

Given `(((a -> b) -> r) -> r) -> ((a -> r) -> r)`, derive the conclusion `((b -> r) -> r)`.

```js logic
(((a -> b) -> r) -> r) -> ((a -> r) -> r) |- ((b -> r) -> r)

|- (((a -> b) -> r) -> r) -> ((a -> r) -> r) -> ((b -> r) -> r)

01 ...
02 TODO
03
04
..
```

The corresponding derivation in Haskell: deriving the definition of a function, given only its type signature.

On the logic side, the task is presented using the formulae of the *sequent calculus* in the *natural deduction* setting. A sequent has the general form

`a, b |- c, d`

where the comma on the LHS represents conjunction, but it stands for disjunction on the RHS. Therefore, the sequent is understood as

`a ⋀ b |- c ⋁ d`

The turnstile sign may be interpreted as a conditional, i.e. as a kind of implication, known as the *entailment*: if all the premises on the LHS hold, then at least one conclusion on the RHS does. In fact, natural deduction restricts the RHS to contain only a single formula (conclusion). This form permits comfortable work since moving a formula to the other side ("jumping the turnstile") is done merely by negating it (thanks to DeMorgan's laws).

`a |- ¬b ⋁ (c ⋁ d)` ≡ `a |- b -> (c ⋁ d)` ≡ `|- a -> (b -> (c ⋁ d))`



the derivation 

Using 


In programming, unlike in natural deduction, we begin by declaring formal params on the left-hand side of the equation, each to bind the corresponding 


```hs
kap :: (((a -> b) -> r) -> r) -> ((a -> r) -> r) -> ((b -> r) -> r)

{-
argument.

The arguments and their number may be discerned fromth the signature:

(sub)function 



We can loose the redundant, final pair, of parens,
and declare 'g' as a regular formal param on the left-hand side.
It can then bind the function (b -> r)

while that is an option here, it usually isn't because more
often there is a data ctor right in front of it, e.g.
-}
newtype ContT r m a = ContT { runContT :: (a -> m r) -> m r }

-- making the types and the corresponding params more clear
kap :: (((a -> b) -> r) -> r)  -- h
    -> ((a -> r) -> r)         -- k
    -> (b -> r)                -- g
    -> r


kap h k = \g -> h (\f -> k (\a -> g (f a)))

kap f v = ContT $ \ c -> runContT f $ \ g -> runContT v (c . g)
```





In mathematics, the keyword `let` is often the indicator that an assumption is going to be introduced.


https://en.wikipedia.org/wiki/Closed-world_assumption
https://en.wikipedia.org/wiki/Open-world_assumption
https://en.wikipedia.org/wiki/Presupposition
https://en.wikipedia.org/wiki/Unique_name_assumption


## Tacit assumption

https://en.wikipedia.org/wiki/Tacit_assumption

A **tacit assumption** (implicit assumption) is an assumption that underlies a logical argument, course of action, decision, or judgment that is not explicitly voiced nor necessarily understood by the decision maker or judge. These assumptions may be made based on personal life experiences, and are not consciously apparent in the decision making environment. These assumptions can be the source of apparent paradoxes, misunderstandings and resistance to change in human organizational behavior.

In Pyrrhonism, the problem of assumption is one of the five tropes of Agrippa the Skeptic which demonstrate that there is no secure basis for belief.
