# Natural deduction and simply-typed λ-calculus

## ND and STLC

In logic, in natural deduction, we can prove statements about propositions using *proof trees* build according to a set of inference rules. The rules of inference prescribe how the logical connectives (∧, ∨, →, …) are introduced and eliminated. Introduction rules tell us how we prove something, while elimination rules tell us how to use something.

If we make natural deduction *proof relevant*, we get simply-typed λ-calculus. While in natural deduction `P` means that a proposition `P` holds, in STLC we add the witness term `p` - it is the evidence (proof) that a proposition `P` holds, and it is denoted by `p : P`; `p` is a witness (evidence, or even proof itself; semantically it is a term) that `P` holds (that `P` is proven).

`p : P` means that
- term `p` has a type `P`
- `p` is a term of type `P`
- `p` is a proof of `P`
- `P` holds (by `p`)
- `P` is inhabited (by `p`)
- `p` is the evidence that `P` holds
- `p` is a witness term (of `P`) that `P` holds
- `P` is a proposition
- in TT, we have propositions-as-types, so
- `P` is a proposition as a type
- `p` is a term of type `P` (since `P` is a proposition as a type)
- `p` is a term of `P` type/proposition; `p` witnesses (by its very existence) that `P` holds. If a proposition does not hold, it would be uninhabited (an uninhabited type), i.e. a false proposition is an empty type.

propositions-as-types
- `P` is called a proposition or type (propositions-as-types)
- `p` is called a witness, term, proof (of `P`)
- A true proposition is an inhabited (non-empty) type
- A false proposition is an uninhabited (empty) type


In natural deduction, we make assumptions, introduce and eliminate formulas, etc. in order to derive the goal (conclusion) from the initial formula. Typically, we start with assumptions and derive new formulas from the previous ones, while working towards the conclusion. In ND derivations, we manipulate formulas (using inference rules). In STLC, we manipulate proofs in derivations.

The rules of inference of ND are like the rules of STLC but only in terms of types, without terms. To get the rules of STLC, we can enrich the rules of ND by attaching terms to formulas. For example, consider the conjunction introduction rule in ND vs STLC:

```hs
-- in ND:

P   Q
------ ∧I
P ∧ Q

-- in STLC:

p : P   q : Q
-------------- ∧I
(p,q) : P ∧ Q
```

The rules of inference of STLC, and type theory in general, also have introduction and elimination rules like ND, but in addition, there are also rules of formation (how a type is defined; rules for well-formedness of types) and the computation rules (which is where the "action" happens; these are expressed as inference rules or equations, describing type invariants). For example, here are all 4 kinds of rules for conjunction

```hs
-- formation
P type  Q type
--------------- ∧F
(P ∧ Q) type

-- introduction
p : P   q : Q
-------------- ∧I
(p,q) : P ∧ Q

-- elimination
t : P ∧ Q          t : P ∧ Q
---------- ∧E₁    ---------- ∧E₂
π₁ t : P           π₂ t : Q

-- computation

p : P    q : Q
---------------- ∧-computation-β-left
π₁ (p, q) = p


p : P    q : Q
---------------- ∧-computation-β-right
π₂ (p, q) = q


t : P ∧ Q
--------------------------- ∧-computation-η
(π₁ t, π₂ t) = t : P ∧ Q
```

If we consider types as sets and terms as elements, then `∧` behaves like a product.

An instance of the Curry-Howard correspondence is Howard's 1969's proof that the trees of ND are in 1-to-1 correspondence with terms of the STLC.

Under the Curry-Howard isomorphism, `->` corresponds to implication. Under the Lambek isomorphism, `->` corresponds to functions, i.e. internal homsets. Lambek has expanded the CHI to include category theory, so the isomorphism is then called the Curry-Howard-Lambek isomorphism.

We can also view types as specifications. So a type `P -> P` specifies a program that takes input of type `P` and returns output of type `P`. Then terms are programs that meet that specification. So, `idₚ` is a term of the type `P -> P`, i.e. the identity function, `idₚ : P -> P`, implemented as `idₚ x = x`, where `∀x. x : P`. This also falls under the CHI and it makes formalization in Agda possible.

## Dependent type theory

In ND, there are no terms, just types (propositions), so a type (proposition) can depend on another type (proposition), e.g. `P ∧ Q ⊢ P`.

In STLC, we add terms, so then types can depend on types, and terms can depend on terms, e.g. `a : P ∧ Q ⊢ π₁ a : P`.

Dependent type theory adds another kind of dependence: types can depend on terms.

```hs
n : ℕ ⊢ Vec n type

-- This doesn't specify the type of vector elems, so we better introduce it:
-- it can be any type A, as A : 𝓤, where 𝓤 is a universe of types.
-- Then we say that Vec is a type indexed by Nat and parameterized by A type.
n : ℕ, A : 𝓤 ⊢ Vec n A type

n : ℕ ⊢ IsEven n type
```

If types are interpreted as propositions, then dependent types are predicates. A unary predicate `P` has a hole `P _` where a term goes; a term that is an element of the domain of discourse. It may be a variable, like `x`, that ranges over the domain of discourse `D`, or it may be a constant element `c`. So, then a predicate is expressed as `P(x)`, e.g. `∀x(x ∈ D -> P(x))`. Another example is a statement involving two predicates, `∃x(x ∈ D ∧ P(x) ∧ Q(x))`. Unary predicates are usually called *properties* or *predicates*, but, in general, a predicate may have larger arities, e.g. `L(x,y)` or `B(x,y,z)`, in which case it is usually referred to as a *relation*, even though predicate and relation are synonymous terms.

If types are interpreted as
- propositions, then dependent types are predicates
- sets, then dependent types are families of sets
- programs, then dependent types are specifications with a parameter

The rules of inference are similar to the previous rules for STLC, except that now the formation rules also have contexts (hypothesis); i.e. the formation of a type can have hypothesis on which its formation depends.

```hs
Γ ⊢ P type   Γ ⊢ Q type
------------------------ ∧F
Γ ⊢ P ∧ Q type

-- example: derivation with dependent types

n : ℕ ⊢ Even n     n : ℕ ⊢ Triven n
------------------------------------
n : ℕ ⊢ Even n ∧ Triven n
```

`Even n` is a type (predicate) that depends on term `n` which is a natural number. This type should be inhabited or true when `n` is an even number, and uninhabited or false otherwise. `Triven n` is another predicate, say, that `n` is divisible by 3. We can make a new type (compound predicate) that is the conjunction of these two predicates, `Even n ∧ Triven n`; it is inhabited only if `n` is divisible by 2 and by 3.

## Dependent function types

On the one hand, a regular, non-dependent function, `f : A -> B`, has fixed domain, `A`, and codomain, `B`, types.

On the other hand, a dependent function has a fixed domain type, `A`, but the codomain type depends on the actual value of the argument. The codomain type is not just a simple type `B` anymore, because the codomain type varies with the value of the argument, `a : A`. The notation for dependent function is usually `Π (x:A) B(x)`, or sometimes as `Π (x:A) -> B(x)`.

>Unlike non-dependent functions which have a fixed codomain, the codomain of a dependent function is a moving target depending on the value of the argument (not just the type of the argument).

In fact, dependent function types are more complicated than this as the codomain is a dependent type, and a dependent type may have more than one dependency (previously declared `term : type` dependency).

A dependent (product) type:    
`a₀ : A₀`, `a₁ : A₁(a₀)`, `a₂ : A₁(a₀, a₁)`, …, `aₙ : Aₙ(a₀, a₁, …, aₙ˗₁)`    
This is called a *telescope*.

The signature of a dependent function has domain `A` as the source type, but the signature also records the term (value) `x : A` of the argument, which is then used as a dependency of the codomain, `B(x)`, which is a type that depends on a term. `B(x)` is a type `B` indexed by another type `A`, i.e. it is an instance of that type, a type-term in the indexed family of types indexed by the type `A` and an index-term `x : A`.

A term of a dependent type is a dependent term. That is, there are dependent types which have dependent terms; e.g. `Π (x:A) B(x)` is a dependent type; and a term iof this type may be denoted by e.g. `t(x)`. The term `t(x)` has the type `Π (x:A) B(x)`, i.e. `t(x) : Π (x:A) B(x)`.


For example of dependent functions, consider the compound proposition (type):

`n : ℕ ⊢ DivBy4 n -> Even n`

To show it holds for all `n : ℕ`, we construct a term, `t(n)`:

`n:ℕ ⊢ t(n) : DivBy4 n -> Even n`

The introduction rule for dependent function gives us

`⊢ λ(n:ℕ).t(n) : Π (n:ℕ) DivBy4 n -> Even n`

It says that we can move the assumption (`n:ℕ`) from the external, meta implication (denoted by `⊢`) to the other side, thereby abstracting over that hypothesis with a lambda, `λn.t(n)`, obtaining an internal implication in terms of a dependent function.

Thus, pi-types are often interpreted as being universally quantified, as if the above example said `∀n ∈ ℕ(D(n) -> E(n))`, ie. `∀n(n ∈ ℕ -> D(n) -> E(n))`.

The *non-dependent functions are a special case of pi-types* where the codomain does not depend on the value of the argument (just the type), so we're back to `A -> B`.

`Π (x:A) B` ≡ `A -> B`

If we have the type of Booleans, `𝔹`, (or any type with 2 elements) then a product or `∧` can be expressed in term of pi-types as well. For example, `𝔹 -> Vec` i.e. `Π (b:𝔹) Vec` is the same as `Vec ∧ Vec` or `Vec ⨯ Vec`. Hand at hear, this only allows for products of a type with itself. But with dependent functions we can now also express different kinds of products, e.g. `Π (b:𝔹) Vec(b)` would be the product `Vec T ⨯ Vec F`, or `Vec T ∧ Vec F`, where `𝔹 = {T,F}`.

### Inference rules for pi-types

```hs
Γ, x:A ⊢ B(x) type
---------------------- ΠF
Γ ⊢ Π (x:A) B(x) type


Γ, x:A ⊢ b(x) : B(x)
-------------------------------- ΠI
Γ ⊢ λ(x:A).b(x) : Π (x:A) B(x)


Γ ⊢ f : Π (x:A) B(x)    Γ ⊢ a:A
--------------------------------- ΠE
Γ ⊢ f a : B[x:=a]


Γ, x:A ⊢ b:B    Γ ⊢ a:A
----------------------------------- Π-computation-β
Γ ⊢ (λx.b)(a) ≡ b[x:=a] : B[x:=a]


Γ ⊢ f : Π (x:A) B(x)
---------------------- Π-computation-η
Γ ⊢ λx.f x  ≡  f
```


## FAQ

>What's the difference between formalization of mathematics and foundations of mathematics?
*Formalization of mathematics* is the practice of doing mathematics in a computer proof assistant (such as Agda, Coq, Lean, etc), whereas the *foundations of mathematics* is a field of study, and thus need not involve computers (you can do it in a computer, or you can do it on paper). A lot of times they're related, since the verification software is usually based on the choice of a mathematical foundation, but they don't need to be related a priori.

>What's the difference between the implication arrow and the horizontal deduction bar?
The horizontal deduction bar organizes several judgments (or, judgments in context) into an inference rule. For instance, the rule

```hs
Γ ⊢ p:P    Γ ⊢ q:Q
-------------------- ∧I
Γ ⊢ (p, q) : P ∧ Q
```

asserts that, if `p` is a term of type `P` in the context `Γ`, and `q` is a term of type `Q` in the context `Γ`, then `(p, q)` is a term of type `P ∧ Q` in the context `Γ`. These judgments are statements about the type theory (stating the relation between certain terms and types); a logician would call them judgments in the metatheory.

The horizontal bar expresses a *metatheoretic implication*, that is, an implication between judgments about the type theory.

On the other hand, `→` is a symbol in the theory: if we have types `P` and `Q`, we can insert `→` between them to get another type, `P → Q`. This type may be inhabited (by a function turning proofs of P into proofs of Q), or uninhabited (e.g. if P is a true proposition but Q is a false one). In such case, we say that `→` is a type former, because it combines types to form new ones.

Inference rules can be interpreted as operations in a programming language, or as logical proofs. This is a running theme in TT. We've taken the step from natural deduction to simply typed lambda calculus as a foundation for building up more complex type systems. We build up to eventually introduce types that can depend on terms.

>What is symbol `≐`?
We use the symbol `≐` for judgmental equality. If `A` and `A′` are types, then the judgment `A ≐ A′` asserts that `A` and `A′` are judgmentally equal, i.e. they are equal by definition. *Judgmentally equal types* are interchangeable in type theory.
We also have *judgmental equality of terms*, e.g. if `t : T` and `t′ : T`, then `t ≐ t′ : T` is a judgment that `t` and `t′` are judgmentally equal terms.
Later, we'll contrast judgmental equality with a different notion of equality, viz. *propositional equality*.

>What is metalogic
The metalogic allows us to check whether or not proof trees are well formed (to ask, e.g. "did I apply that rule correctly?"); whereas, if we can agree that we can correctly apply rules, then the language itself lets us write down the proofs. There are several implications: meta (external) implication is expressed by the inference (deductive) line and by the `⊢`, while the internal implication by `->`. We can turn internal implication into external implication and vice versa, but we cannot get rid of any of them, we need them to study our system. We want to use the external logic to study the internal one as a mathematical object, so usually we will need external implication in order to study the internal one (e.g. in order to define it).

>Do we have to require that `f` doesn't contain `f` as free variable?
Correct. We always assume that every new variable we introduce is fresh. Generally, we hand-wave this away, citing the use of the *Barendregt convention* under which all variable names are distinct.

>Under the Lambek interpretation, should we interpret `P → Q` as literally a function (i.e. morphism) `P → Q` or as a set (i.e. internal homset) `Qᴾ`?
The function connective will correspond to internal homsets: what corresponds to morphisms are the deductions, i.e. the turnstiles! So if you have `Γ ⊢ x:T` in your logic, that means that you have some morphism (the interpretation of `x`) from (the interpretation of) `Γ` to (the interpretation of) `T`.

>Is there equality of types?
Actually there are two notions: there's *judgmental equality* mentioned above, which is a judgment asserting two types are equal "by definition". Later, we'll cover *propositional equality*, which is a way of expressing things (types or terms) are equal to each other as a type in the theory. How propositional equality of types works is the subject of the famous *Univalence Axiom*, one of the central ideas of HoTT.

>What does "indexed" mean in "indexed families of sets"?
In classical set theory, an indexed family of sets is given by a set `I`, called the index set, and a set `Uᵢ` for each `i ∈ I`. The corresponding notion in type theory is a type family `a:A ⊢ B type` because for each term `t:A`, there is a type `B(t)`, also expressed as `B[t/a]`.

>Would isEven(3) be equal to isEven(5)?
They would not be judgmentally equal types, since 3 and 5 are distinct terms of type ℕ. However, they are *logically equivalent*, which we'll have a special way of expressing in HoTT (later).

>What's the difference between `Π` here and `forall` in Haskell? I know Haskell's forall quantification is not the same as pi-types, but I thought that it also corresponded to the idea of universal quantification in logic.
Haskell's `forall` is telling us that some polymorphic function works for all types. `Π` quantifies over all terms of a given type, not over all types. Once we introduce universe types we'll see how to simulate Haskell's `forall` using a pi-type over the universe. `Π` is more general than Haskell's `forall`.

>Does `x:P ⊢ Q(x)` type mean that from any `x` in `P` we have a proof that `Q(x)` is a type?
Close; it isn't exactly a proof (in the sense we used 'proof' in lecture, i.e. we deemed proofs as terms) that `Q` is a type, but it is the *judgment* that `Q(x)` is a type, assuming a variable `x:P`. In other words, it means that, if we have a term `x : P` in context, then we're able to form a type `Q(x)`, which might depend on the value of `x`. Our main example was `n:ℕ ⊢ Vec n` type: for each natural number `n`, there is a type `Vec n A` of vectors (of some type `A`) of length `n`.


>If a program doesn't halt for some input term, does it output a term? or no term? or can there be a term that means "undefined"?
Not in typed lambda calculus! You can't write any non-terminating programs; this is called a *normalization theorem*.
