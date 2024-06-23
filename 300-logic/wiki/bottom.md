# Bottom

## In logic

In logic, *bottom*, `⊥`, represents falsity or contradiction. In a sense, it is a complete opposite of *top*, `⊤`, which represents truth or tautology.

EFQ (ex falsum quidlibet) or the principle of explosion states that anything follows from falsity (contradiction). During a course of a proof, if we derive a contradiction, then we can concude anything. Less dramatically, deriving a contradiction means that some of our assumptions were incorrect. So, assuming `A`, and then deriving a contradiction (⊥) imples we had `¬A` all along, so we can conclude it.

```
 [A]                  A                A  
  ⁝                    ⁝                 ⁝ 
  ⊥                  ¬A               ¬A  
----- ¬I            ----- EFQ        ----- RAA
 ¬A                   ⊥                B  
```

RAA vs EFQ vs ¬I (negation introduction)

Reductio ad absurdum is the form of argument that attempts to establish a claim by showing that the opposite scenario would lead to absurdity or contradiction.

Formally, the proof technique is captured by an axiom for "Reductio ad Absurdum" (RAA), which is expressible in propositional logic. This axiom is the *introduction rule for negation*, and it is sometimes named to make this connection clear. It is a consequence of the related mathematical proof technique called proof by contradiction, aka indirect proof.

## In type theory

- if bottom is true then every proposition is true
- if bottom is inhabited then every proposition is inhabited

```hs
bottom :: ∀ (α : Type). α
bottom :: forall α. α
bottom :: Π (α : ⋆). α

-- construct a function mapping every proposition to (one of) its inhabitant
⨍   : Π (α : ⋆). α     ↯
⨍ τ : [α:=τ]α ≡ τ   ⭍

⊥ = Π (α : ⋆). α

⨍ () = ()
⨍ Bool = False
⨍ Int = 0
⨍ Double = 0
⨍ Char = ' '
⨍ String = ""
```

i.e. the only inhabitant of the type `∀(α : Type).α` is `⊥`. That is, the only value any and all types have in common is bottom. Or, the intersection of all types is bottom because `⊥` inhabits each type (at least in Haskell).

`⋂(∀a.a) = ⊥`, i.e. Char ⋂ Int ⋂ Set a ⋂ [a] ⋂ Map k v ⋂ … ⋂ Bool = {⊥}

Lifted type τ, `τ̝ := τ ⋃ {⊥}`, e.g. lifted naturals, `ℕ̝ := ℕ ⋃ {⊥}`

Int8 ⋂ Word8 = {-128..127} ⋂ {0..255} = {0..127}


```hs
Logic            Lambda Calculus

  ⊥
- - - - EFQ      ⊥ ≡ Π (α : ⋆). α
  A

¬A = A ⇒ ⊥     A → ⊥ ≡ λ(x : A). Π (α : ⋆). α

A ∧ B          Π (C : ⋆). (A → B → C) → C
               Λ (C : ⋆). λ(s : A → B → C). s a b : Π (C : ⋆). (A → B → C) → C

A ∨ B          Π (C : ⋆). (A → C) → (B → C) → C
```

For *Church pair*, the `cpair` function takes 3 args, `x : A` and `y : B`, and the third arg is a *selector function* which selects and returns either `x` or `y`. So the return type of the selector function, as well as the overall return type, is logically `A ∨ B`, but since we cannot express that (or can't we? perhaps `Either a b`, or some dependently-typed shenanigans), we express the return type as an existential type `C`. So, for all types `A` and `B`, there exists a type `C`, such that…

```hs
-- Church pair in λ²ω
-- Π (C : ⋆). (A → B → C) → C

-- Church Product datatype
data CPair a b = CPair (forall c. (a -> b -> c) -> c)
-- Church Pair as a function
cpair :: a -> b -> forall c. (a -> b -> c) -> c
cpair = \ x y s -> s x y

-- sum type ???
data COr ab = COr (forall c. (a -> c) -> (b -> c) -> c) -- ???
-- sum type as function ???
cOr :: ab -> forall c. (a -> c) -> (b -> c) -> c
cOr = \ ab f g -> ???
-- `ab` must be more complicated exp to express disjunction (sum type)

data Bool = T | F
data CBool a b = CBool ((a -> b -> a) -> (a -> b -> b))


disj :: Either a b -> forall c. (a -> c) -> (b -> c) -> c
disj e f g = case e of
  Left  a -> f a
  Right b -> g b
```


## In lambda calculus

In LC, we can represent bottom using the Ω combinator, or any other diverging expression.

```
⊥ := Ω
Ω := ωω
ω := λf.ff
```

Little omega represents self-application and it is not a diverging term, per se. It diverges when applied to itself, which the big omega combinator represents, Ω := ωω = (λf.ff)(λf.ff). The Ω combinator is an application of two lambda exps (unlike ω, which is lambda abstraction), so evaluating it under any evaluation model diverges.


## In propositions-as-types

Propositions-as-types as a relation between constructive logic, typed lambda calculus, and mathematical proofs (programs-as-proofs).

In the propositions-as-types paradigm
- if bottom is true then every proposition is true
- if bottom is inhabited then every proposition is inhabited
- negation is defined as `¬P := P → ⊥`


## In language design

- A language is *strict* if `f ⊥ = ⊥`.
- A language is *non-strict* if `f ⊥ ≠ ⊥`.

The only way a function `f` can elide bottoming out is if the employed evaluation strategy is call-by-name or call-by-need. These strategies do not necessarily evaluate the arguments before applying a function. The function is applied to the unevaluated arg, and the argument thus passed into the lambda's body is evaluated only when (if) there is a demand for its value.

For example, if `f` was the K combinator, then the exp `K x ⊥` wouldn't diverge but result in `x` (but only under call-by-name/need evaluation).

```hs
I := λx.x
K := λxy.x
K̅ := λxy.y
ω := λf.ff
Ω := ωω = (λf.ff)(λf.ff) = (λf.ff)(λf.ff) = …

  K̅ ⊥ 2
= K̅ Ω 2
= (λx.λy.y) Ω 2 -- call-by-value would diverge here
= (λy.y) 2
= y
```

```hs
fst (1, ⊥) == 1
snd (⊥, 2) == 2
head [1, ⊥, ⊥] == 1
foldr (\x z -> x) ⊥ [1, ⊥, ⊥]
```

Under the call-by-value, the exp `K x ⊥` would indeed diverge (bottom out), `K x ⊥ = ⊥`; call-by-value always evaluates the arguments before applying the lambda. Thus, `K x ω` also diverges; in fact, the `ω` combinator can be used to represent `⊥`.
