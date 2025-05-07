# Set Theory - Math 135

Math 135 - Intro to Set Theory
https://www.youtube.com/playlist?list=PLjJhPCaCziSQyON7NLc8Ac8ibdm6_iDQf

- Introduction to set theory
- ZF set theory
- VonNeumann-Bernays-Gödel (NBG) set theory

## 1. Proofs and formal systems

A **mathematical proof** is an argument that uses logical steps to show that a mathematical statement follows from a certain set of assumptions.

We need a *formal language* in order to precisely define what exactly constitutes a *mathematical statement*.

A proof proceeds in a step by step fashion, from the assumption to the conclusion, follwing a general mode of reasoning, which in mathematics is deductive reasoning. Each step must use valid and sound deductive resoning.

However, to talk about proofs as concrete mathematical objects, to be able to prove things about them, we need to be explicit about which logical steps we are allowed to use. These logical steps are called *inference rules* (or just rules).

Third, when writing a proof, we always start from a set of assumptions. We use previous knowledge which usually comes in the form of theorems or lemmas. But these theorems and lemmas are also defined in terms of previous knowledge, and the terms they use are also defined in terms of previous knowledge, and so on; if we keep on going backwards like that, we eventually reach statements that are sufficiently basic they cannot be proven (without falling into infinite descent), but they are instead just taken for granted. These are called *axioms*. In another view, axioms are just any old set of arbitrary statements, presented without any justification or need to appeal to intuition to illicit how "obviously true" they are. What is crucial, though, is that *should you accept the axioms, you are guaranteed the theory that follows holds true*.

A formal language is *complete* if all mathematical statements can be expressed in the language.

A formal system is *complete* if all true mathematical statements can be proved in the system.

Formal system
- language
  - syntax
    - alphabet
    - symbols
      - logical symbols
        - logical constants (0, 1)
        - logical connectives (∧, ∨, →, ⇔, ∀, ∃)
      - non-logical symbols
        - variables (x, y, z, …)
        - functions
        - predicates (property, relations)
    - formulas (sentences) are all possible sets of strings, many invalid
    - grammar determines which formulas are indeed well-formed formulas
  - grammar
    - terms
      - domain of discourse, 𝔻
      - constant  (a, b, c, …), individuals in 𝔻
      - variables (x, y, z, …), range over 𝔻
    - atomic wffs
      - φ = ψ
      - φ ∈ ψ
    - compound wffs
      - atomic wffs combined with connectives
      - φ ∧ ψ, φ ∨ ψ, φ → ψ, φ ⇔ ψ, ∀x.φx, ∃x.φx
    - n-ary function,  f(t₀, …, tₙ), where tᵢ are terms
    - n-ary predicate, P(t₀, …, tₙ)
    - n-ary formula,   φ(t₀, …, tₙ)
    - well-formed formulas
    - inductively defined set of wffs:
      - φ, ψ are wff
      - φ ∧ ψ, φ ∨ ψ, φ → ψ, φ ⇔ ψ
      - ∀x.φx, ∃x.φx
- inference rules
- axioms

## 2. Basic concepts of set theory

Some basic concepts about sets:
- sets
- empty set
- equality, membership, inclusion
- power set
- atoms
- the universe of sets

### Equality, membership and inclusion

*Set membership* is a primitive binary relation denoted `x ∈ y`.

*Set inclusion* is a binary relation defined in terms of set membership as:
`x ⊆ y ≝ ∀z(z ∈ x ⇒ z ∈ y)` i.e. `x ⊆ y ⇔ ∀z(z ∈ x ⇒ z ∈ y)`

*Set equality* is a primitive relation in many set theories, `x = y`, although it can also be defined in terms of membership (and inclusion).
`x = y ≝ ∀z(z ∈ x ⇔ z ∈ y)`, i.e. 
`x = y ⇔ ∀z(z ∈ x ⇔ z ∈ y)`, or just 
`x ⊆ y ⋀ y ⊆ x ⇒ x = y`

Inclusion (subset) is a transitive relation: `∀xyz(x ⊆ y ⋀ y ⊆ z ⇒ x ⊆ z)`.

In general, membership is intransitive: `∀xyz(x ∈ y ⋀ y ∈ z ⇏ x ∈ z)`, although there are situation when membership is transitive, e.g. x={1}, y={0, {1}}, z={{0,{1}}, 2} such that x ∈ y and y ∈ z and x ∈ z. There are even situations when it holds that `x ∈ y ∈ z ∈ x`! e.g. let x = y = z = V.

In general, `∀x∀y(x ∈ y ⇏ x ⊆ y)` and `∀x∀y(x ⊆ y ⇏ x ∈ y)`, but there are situations when this is true, e.g. x = {∅}, y = {∅, {∅}}, so x ∈ y and x ⊆ y.




### Atoms

The Zermelo set theory of 1908 included *urelements*; this version is now called ZFA or ZFCA (ZFA with axiom of choice). It was soon realized, in the context of this and closely related axiomatic set theories, that urelements were not needed because they could be easily modeled (in any theory without urelements). Thus, standard expositions of the *canonical axiomatic set theories* ZF (or ZFC) do not have urelements (for an exception, see Suppes).

Axiomatizations of set theory that do invoke urelements include Kripke-Platek set theory with urelements, and the variant of Von Neumann-Bernays-Gödel set theory described by Mendelson. In type theory, an object of type-0 can be called an urelement or atom.

### Universe of sets

When building a universe of sets `V`, the initial level, `V₀`, is the set of atoms. Atoms are the basic building blocks; e.g. some theories use natural numbers as atoms (!?). Atoms are non-set objects. In set theories that have them, atoms are urelements. In ZFC, there are no atoms, i.e. everything is a set in ZFC.

`V` is the universe of all sets:
```hs
V₀ is the set of atoms
V₁ = 𝒫(V₀) ⋃ V₀
V₂ = 𝒫(V₁) ⋃ V₁
⋯
Vω = V₀ ⋃ V₁ ⋃ V₂ ⋃ ⋯
Vω﹢₁ = 𝒫(Vω) ⋃ Vω
Vω﹢₂ = 𝒫(Vω﹢₁) ⋃ Vω﹢₁
⋯
Vω﹢ω = Vω ⋃ Vω﹢₁ ⋃ Vω﹢₂ ⋃ ⋯
V2ω﹢₁ = 𝒫(Vω﹢ω) ⋃ Vω﹢ω
⋯ϛ
```

In ZFC
- V₀ = `∅`
- V₁ = 𝒫(V₀) ⋃ V₀ = {∅} ⋃ ∅ = `{∅}`
- V₂ = 𝒫(V₁) ⋃ V₁ = 𝒫({∅}) ⋃ {∅} = {∅, {∅}} ⋃ {∅} = `{∅, {∅}}`
- V₃ = {∅, {∅,{∅}}, {∅}, {{∅}}} ⋃ {∅, {∅}}
  V₃ = {∅, {∅,{∅}}, {∅}, {{∅}}  ,  ∅, {∅}}
 V₃ = `{∅, {∅,{∅}}, {∅}, {{∅}}}`

## 3. First five axioms

Language
- vocabulary: ∈
- logical symbols: =, ∧, ∨, ¬, ⇔, ∀, ∃
- variables (variable symbols): x,y,u,v,… range over sets

1. The axiom of extensionality: `∀x∀y∀z(z ∈ x ⇔ z ∈ y) ⇔ x = y`
2. The axiom of the empty set: `∃x∀z(z ∉ x)`
3. The axiom of pairing: `∀x∀y∃p∀z(z ∈ p ⇔ (z = x ⋁ z = y)`
4. The axiom of union (preliminary version): `∀x∀y∃u∀z(z ∈ u ⇔ (z ∈ x ⋁ z ∈ y))`
5. The axiom of powerset:`∀x∃p∀z(z ∈ p ⇔ z ⊆ x)`. 
   Here, `⊆` is defined as: `∀x∀y∀z(z ∈ x ⇒ z ∈ y) ⇔ x ⊆ y`

## 4. The axiom of union

Preliminary version of the union axiom works only for two sets: 
`∀x∀y∃u∀z(z ∈ u ⇔ (z ∈ x ⋁ z ∈ y))`

This, general, version of the union axiom works for any number of sets (which are all elements of a set). So, it is the union over a set family: 
- `∀A ∃B ∀x(x ∈ B ⇔ ∃a(x ∈ a ⋀ a ∈ A)`
- `∀A ∃B ∀x(x ∈ B ⇔ ∃a(a ∈ A ⋀ x ∈ a)` (flipped conjuncts)

`A` is a family of sets, the members of which are sets existentially quantified using the variable `a`. The variable `x` represents the elements of the union `B`. So `x` is in union `B` iff there is a set `a` such that `a` is in the family `A` and `x` is in `a`. So `a`'s are sets - members of the family `A`; the elements of `a`'s will end up in the union `B`.


```hs
A₀ = {1,2}                -- member of the family of sets
A₁ = {1,3}                -- the var 'a' takes on these members
A₂ = {3,5}
A = {A₀,A₁,A₂}            -- family of sets
A = {{1,2},{1,3},{3,5}}
B = ⋃A                    -- B is the union over a family
B = ⋃{A₀,A₁,A₂}
B = ⋃{{1,2},{1,3},{3,5}}
B = {1,2} ⋃ {1,3} ⋃ {3,5}
B = {1,2,3,5}
```

The union over a family of sets, `B = ⋃A`, consists of elements which are themselves elements of the sets comprising the family `A`.

Note that the union axiom uses the existential quantifier, `∃B`, which means it asserts that the union set exists. Also, the existential quantifier is used in a subformula, `∃a`, which means that the family of sets `A` has at least one member.

__Q__: How does this then allows for `⋃∅ = ∅`? …since there must be at least one set-member of the family?


The definition of the *intersection* uses almost identical formula except the variable `a` is quantified universally, `∀a`; this, in turn, requires the use of implication instead of conjunction in the subformula: 
`∀A ∃B ∀x(x ∈ B ⇔ ∀a(a ∈ A ⇒ x ∈ a)`

__Q__: Does intersection set exists?
__A__: While the union set is asserted to exists by the use of ∃, the intersection set is not immediately implied to exist since it uses ∀. However, with the help of the axiom of replacement (substitution) we can prove that it does.



The use of the universal quantifier allows for `⋂∅ = ∅`.

```hs
-- FOL fomulas
∀A ∃B ∀x(x ∈ B ⇔ ∃a(x ∈ a ⋀ a ∈ A) -- union
∀A ∃B ∀x(x ∈ B ⇔ ∃a(a ∈ A ⋀ x ∈ a) -- union (flipped conjuncts)
∀A ∃B ∀x(x ∈ B ⇔ ∀a(a ∈ A ⇒ x ∈ a) -- intersection

-- set-builder notation
A ⋃ B ≝ { x | x ∈ A ⋁ x ∈ B}        -- union
A ⋂ B ≝ { x | x ∈ A ⋀ x ∈ B}        -- intersection
```



## 5. The subset axiom schema

`∀x ∃m ∀z(z ∈ m ⇔ z ∈ x ∧ φ(z))`

- The axiom schema of separation
- The axiom schema of specification
- The subset axiom schema

### Formal definition

`∀A ∃B ∀x(x ∈ B ⇔ (x ∈ A ∧ φ(x)))`

<!-- #region QUERY -->
__Q__: Why not use `⇒` rather than `∧`? `∀A ∃B ∀x(x ∈ B ⇔ (x ∈ A ⇒ φ(x)))`. 

__A__: Using `⇒` means if `x` is in `A` then x satisfies the formula, which is not what we want. We want `x` to be in `A` *and* `x` to satisfy the formula.
<!-- #endregion -->

For any set `A` there is a subset `B ⊆ A` whose elems are elems of `A` that satisfy a given condition. The condition is expressed as a predicate, or, more generally, as a formula, `φ`, in which variable `x` is free.

In the set-builder notation, this is expressed as

`B = { x ∈ A | φ(x) }`

Note that there is always some pre-existing set `A` (constructed under the ZFC axioms) from which we pick elements for the new set `B` (and thus `B` is necessarily a subset of `A`).

B = { x ∈ *___* | φ(x) }

For example,
- `ℙ = { x ∈ ℕ | P(x) }` where P(x) means that x is a prime
- `𝔼 = { x ∈ ℕ | E(x) }` where E(x) means that x is even
- `A ⋂ B = { x ∈ A | x ∈ B }`
- `A ∖ B = { x ∈ A | x ∉ B }`

The intersection over a family of sets
- ⋂A ≝ { x | ∀a(a ∈ A ⇒ x ∈ a) } or
- ⋂A ≝ { x | ∀a ∈ A. x ∈ a }

…is not correct since we didn't "anchor" the elements `x` to an existing set!

⋂A ≝ { x ∈ *___* | ∀a(a ∈ A ⇒ x ∈ a) }

So what is this set from which we pick elements, `x`, to place in the intersection? It is the union over `A`, by exploting the fact that `⋂A ⊆ ⋃A`.

`⋂A ≝ { x ∈ ⋃A | ∀a ∈ A, x ∈ a }`

### About conditions

So, the Subset Axiom Schema states that 
For any set `A` there is a subset `B ⊆ A` whose elems are elems of `A` that satisfy a given *condition*.

The condition can be expressed as a *predicate*, or, more generally, as a *formula*, `φ`, in which variable `x` is *free* (`x` ranges over all sets and it is associated with the formula in that an element has to satisfy it in order to become a member of the resulting set).

That is, the condition cannot be anything at all, as naively assumed, because we'd run into the **Richard's paradox** if we let any statement in a *natural language* define the condition. For example, `A = { x ∈ ℕ | P(x) }` where `P` is the condition "`x` cannot be defined in 20 words or less". Then, we let `n` be the least element of `A`. Thus, `n` is the least natural number that cannot be defined in twenty words or less. We count the number of words in the previous sentence (excluding "Thus,") and see it took 15 words to describe the number `n`. But this contradicts with the definition of elements of set `A`, so `n ∉ A`. But we explicitly let `n` be in set `A`! All in all, `n ∈ A ⇔ n ∉ A`.

The Richard's paradox stems from mixing metalanguage (English) and object language (FOL). Therefore, we cannot state conditions using any sort of statement, but it has to be defined using a mathematical statement expressed in first-order logic, more precisely, using a formula of FOL, `φ`, with variable `x` ocurring free in it, `φ(x)`.

>Conditions must be defined using formal statements i.e. FOL formulas over the vocabulary of ZF set theory (which contains `=` and `∈` as primitive relations).

There is one axiom for each (instantiation of the) formula φ, and this is the reason it is called an axiom schema - we have an infinite number of instantiated axiom that follow this template. As far as FOL is concerned, it must be a schema - it would be a plain axiom in HOL since variables there can range over predicates, and so practically over formulas. Strictly speaking, *metavariables range over formulas* (over parts of the object language).




## 6. FOL formal language

FOL formulas are strings of symbols built according to the rules of the grammar.




## 7. Ordered pairs

## 8. Relations

Relation, `R ⊆ A⨯B`, `R = { ⟨a,b⟩ ∈ … | a ∈ A ∧ b ∈ B }`

However, if we are only given a relation `R`, without knowing the sets `A` and `B`, and thus `A⨯B` of which it is a subset, we can define the domain of the relation and the codomain of the relation as:

- dom(R) = { a ∈ … | ∃b.⟨a,b⟩ ∈ R }
- cod(R) = { b ∈ … | ∃a.⟨a,b⟩ ∈ R }
                 ↑
               ⋃ ⋃ R ≡ fld(R)

…but above we need to specify which set `a` and `b` come from! It is what the axiom of separation requires. So what is this set from which we pick elements `a` and `b`? Answer: `a` and `b` come from `field(R)`.

- *Domain* of relation R,
  `dom(R) = { a ∈ fld(R) | ∃b.⟨a,b⟩ ∈ R }`, i.e. `{ a ∈ ⋃ ⋃ R | ∃b.⟨a,b⟩ ∈ R }`
- *Codomain* of relation R,
  `cod(R) = { b ∈ fld(R) | ∃a.⟨a,b⟩ ∈ R }`, i.e. `{ b ∈ ⋃ ⋃ R | ∃a.⟨a,b⟩ ∈ R }`
- *Field* of relation R,
  `fld(R) = dom(R) ⋃ cod(R)`, i.e. `fld(R) = ⋃ ⋃ R`

>Lemma: `fld(R) = ⋃ ⋃ R`

Since elements of R are ordered pairs `⟨a,b⟩ ≡ {{a}, {a,b}}` we need to do a union over the elements (ordered pairs) twice.

```hs
R = { (1,2), (1,3), (2,3) }
R = { {{1}, {1,2}}   -- (1,2)
    , {{1}, {1,3}}   -- (1,3)
    , {{2}, {2,3}}   -- (2,3)
    }

⋃ R = ⋃ ( {{1}, {1,2}}
       , {{1}, {1,3}}
       , {{2}, {2,3}}
       )
   =   {{1}, {1,2}}
     ⋃ {{1}, {1,3}}
     ⋃ {{2}, {2,3}}
   = {{1}, {1,2}} ⋃ {{1}, {1,3}} ⋃ {{2}, {2,3}}
   = {{1}, {1,2} } ⋃ { {1}, {1,3} } ⋃ { {2}, {2,3}}
   = {{1}, {1,2} , {1}, {1,3} , {2}, {2,3}}
   = {{1}, {1,2}, {1,3}, {2}, {2,3}}
   = {{1}, {2}, {1,2}, {1,3}, {2,3}}

⋃ ⋃ R = ⋃ {{1}, {2}, {1,2}, {1,3}, {2,3}}
     = {1} ⋃ {2} ⋃ {1,2} ⋃ {1,3} ⋃ {2,3}
     = {1 , 2 , 1,2 ,1,3 , 2,3}
     = {1, 2, 1, 2, 1, 3, 2, 3}
     = {1, 2, 2, 3, 2, 3}
     = {1, 2, 3}

⋃ ⋃ R = {1, 2, 3} -- field(R)
```

An **n-ary relation** is a set of n-tuples.

An **n-tuple** is a (left- or right-associative) nesting of ordered pairs:
- (a,b,c)     ≡   ((a,b),c)       or (a,(b,c))
- (a,b,c,d)   ≡  (((a,b),c),d)    or (a,(b,(c,d)))
- (a,b,c,d,e) ≡ ((((a,b),c),d),e) or (a,(b,(c,(d,e))))

Left-associative tuple seem easier to build:
```hs
  ((a,b),c)        -- prev tuple becomes the 1st component
  ↓   ↓   ↓     ↙  -- new elem becomes the 2nd component
( ((a,b),c) ,d)    -- new 4-tuple = ⟨3-tuple, new-elem⟩
```

i.e. to build a *left-associative `n`-tuple*, put `n-1`-tuple as the first component and put new element as the second component of a new ordered pair. 
To extend a 3-tuple into 4-tuple, adding a new element `d`:   
`4-tuple = ⟨3-tuple, new-elem⟩`

## 9. Functions

## 10. Equivalence Relations

## 11. Infinite Cartesian Products

## 12. The Model Of Hereditarily Finite Sets

We see how `Vω` is a model of the axioms we have so far, and now we need more axioms to escape the finite.

`Vω` conforms to all the axioms so far: extension, (empty set), pairing, union, powerset, separation, choice.

Construction of `Vω` start with

```hs
V₀ = ∅
V₁ = 𝒫(V₀) = 𝒫(∅) = { ∅ }
V₂ = 𝒫(V₁) = 𝒫𝒫(∅) = { ∅, {∅} }
V₃ = 𝒫(V₂) = 𝒫𝒫𝒫(∅) = { ∅, {∅}, {{∅}}, {∅,{∅}} }
V₄ = 𝒫(V₃) = 𝒫𝒫𝒫𝒫(∅) = 𝒫⁴(∅)
V₅ = 𝒫⁵(∅)
Vₙ = 𝒫ⁿ(∅)
…
Vω = V₀ ⋃ V₁ ⋃ V₂ ⋃ V₃ ⋃ V₄ ⋃ …
```

>`Vω` comprises all sets that can be build using braces, comma and ∅.
(not just those sets above)

Still, `Vω` will only contain finite sets.

`Vω` is still quite rich because we have all finite sets of finite set of finite sets … In fact, it only contains finite sets. And the empty set. We can also build unions, pairs, powersets, subsets. We can also pick one element from each set to build a new set. So, `Vω` satisfies all the axioms so far. However, working within this context is not so bad since we can actually develop all the theorems about natural numbers within the framework of Peano arithmetic. We can prove most theorems from number theory about natural numbers in this setting. If we are working only with finite objects, and staying within combinatorics or number theory (although sometimes number theory goes beyond), we can prove most theorems about natural numbers. But to consider infinite sets, like ℕ and ℝ, we need to go beyond this setting, beyond these axioms.

## 13. Naturals

Naturals are defined using the standard, von Neumann definition.

>A set is **inductive** if it contains ∅ and is closed under successor.

>DEF: `n` is a natural number if it belongs to all inductive sets.

>DEF: Let `ω` be the intersection of all inductive sets.

Fix an inductive set `I`, then   
`ω = { x ∈ I | ∀B ⊆ I, B is inductive ⇒ x ∈ B }`

The definition of `ω` does not depend on the inductive set we choose.

The *axiom of infinity* states that an inductive set exists, namely there is a set that contains ∅ and for all `n`, it contains `n ⋃ {n}` (i.e. it is closed under successor).

`∃P ∀x(x ≠ ∅ ⇒ (x ∈ P ⋀ x ⋃ {x} ∈ P))`


Here, the conslusion is that `ω = ℕ`, but somewhere else it says that while this is true, `ω` may be "bigger" (include more stuf or have some additional features or properties).


## 14. Induction on ℕ

`ω` is the smallest inductive set; ω is the inductive set (the only inductive set).

Induction principle: if `A ⊆ ω` is inductive, then `A = ω`.

- 0 = ∅ ∈ A
- n ∈ A ⇒ nᐩ ∈ A
- so, ∀n(n ∈ A)

A = { n ∈ ω | n satisfies some property }, i.e. `A = { n ∈ ω | φ(n) }`


## 15. Transitive sets

Prove that the function `a ⟼ aᐩ` is 1-to-1 (injective) on `ω`.

If all elements of each member of a set S also belong to a set S, then set S is a *transitive set*; i.e. if `x ∈ a ∈ A`, then `x ∈ A`.

Generally, membership relation, unlike inclusion, is not transitive. 
Inclusion relation is transitive: `x ⊆ y ∧ y ⊆ z ⇒ x ⊆ z`, (i.e. `x ⊆ y ⊆ z`). 
Membership relation is not transitive: `x ∈ y ∧ y ∈ z ⇏ x ∈ z`. 
However, in transitive sets, membership is transitive: 
`x ∈ y ∧ y ∈ z ⇒ x ∈ z` (i.e. `x ∈ y ∈ z`).

>DEF: A set is transitive if any of these equivalent conditions holds:
- x ∈ y ∧ y ∈ z ⇒ x ∈ z
- ⋃A ⊆ A
- a ∈ A ⇒ a ⊆ A
- A ⊆ 𝒫(A)

__Theorem__: every natural number is transitive.



## 16. Recursion and arithmetics
## 17. Integers
## 18. Rationals
## 19. Reals
## 19. Equinumerosity
## 20. Cantors diagonal argument
## 21. Finite Sets
## 22. Cardinality
## 23. Cardinal arithmetic
## 24. Ordering cardinals
## 25. Infinite sets dominate omega
## 26. The Shroder-Bernstein Theorem
## 27. Comparability of Cardinals
## 29. Determinacy of infinite games
## 30. Version of the Axiom Of Choice
## 31. Every Vector Space has a basis using AC
## 32. There is no measure on all sets of reals
## 32. Comparing cardinals via onto functions
## 33. Countable Sets
## 34. Absorption law of cardinal arithmetic
## 35. Multiplication of infinite cardinals
## 36. The continuum hypothesis
## 37. Well orderings
## 38. Transfinite Induction
## 39. Transfinite Recursion
## 40. Replacement Axiom
## 41. Set theory. A proof of Transfinite Recursion
## 42. Epsilon Images
## 43. Ordinals
## 44. Comparability of Ordinals
## 45. The Burali-Forti paradox
## 46. Hartog's Theorem
## 47. A Proof of Zorn's Lemma
## 48. Finishing the proof of equivalent versions of the Axiom of Choice
## 49. The V hierarchy
## 50. Regularity Axiom
## 51. Cardinals As Ordinals
## 52. Alephs
