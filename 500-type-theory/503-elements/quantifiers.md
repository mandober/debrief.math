# Fundamentals :: Quantifiers

https://cstheory.stackexchange.com/questions/32515/universal-and-existential-types?noredirect=1&lq=1

When in type theory, one should move away from set theory and stop looking at the quantifiers `∀` and `∃` as `⋃` and `⋂`.

If you'd still like to look at them as sets, that's ok but then we have to ignore issues of size and pretend that there is a set of all sets (which can be fixed by passing to a different category).

For **universal types**: 

the type `∀x.T` is a *product*

`∀X.T := ∏ {S:Set} T[X⟼S]`

>An element of `∀X.T` is a *function* `f` from sets to sets: 
>>for each set `S` it gives an element `f(S)` of type `T[x⟼S]`.

For instance, an element of `∀X. (X -> X) -> (X -> X)` is a function `f` which takes a set `S` and gives a function of type `(S -> S) -> (S -> S)`. 
Here are some such functions:
- f0(S)(g)(x) := x
- f1(S)(g)(x) := g(x)
- f2(S)(g)(x) := g(g(x))
- f3(S)(g)(x) := g(g(g(x)))

We get one for every natural number, and it's hard to think of more examples (see Church numerals).


For **existential types**: 

the type `∃x.T` is a *coproduct*

`∃X.T := ∐ {S:Set} T[X⟼S]`

>An element of `∃X.T` is a *pair* `(S,a)` 
>> where `S` is a set and `a` is an element of T[X⟼S].

An example would the the type `∃X.(X×X -> X)`, whose elements are pairs `(S,m)` where `S` is a set and `m : S×S → S` is a binary operation on it (eg. magma).


>The encoding of `∃` in terms of `∀` is:

`∃X.T := ∀Y. (∀X. (T -> Y)) -> Y`   (where var `Y` doesn't occur in `T`)


`∃x.T ==> ((∀x. T → U) → U)`   
Proving that, 
  for some `x` (some arbitrary x), 
  if `T(x)` holds then `U` holds, 
is the same as proving that (in fact it's much stronger), 
  for all `x`, 
  if `T(x)` holds than `U` holds.



It is wrong to expect that we will get an equality between 
`∃X.T` 
and 
`∀Y. (∀X. (T → Y)) → Y` 
(NB: `Y` is a fresh var) - 
only set theorists have such expectations. 
We should instead expect the two to be *isomorphic*, 
which means the task is to find a bijection between

`A := ∐ {S:Set} T[X↦S]`

and

`B := ∏ {R:Set} (∏ {S:Set} (T[X↦S] → R)) → R`

(it's an exercise in λ-calculus) 
In one direction we have the map `f : A → B` defined as

`f(S,a)(R)(h) := h(S)(a)`

and in the other a map `g : B → A` defined by

`g(ϕ) := ϕ(A)(λS. λa. (S,a))`

Now we can check whether `f` and `g` are inverses of each other.

One direction is easy:

g(f(S,a)) = f(S,a)(A)(λS′.λa′.(S′,a′)) = (λS′.λa′.(S′,a′)(S)(a) = (S,a)

The other direction looks like this:

f(g(ϕ))(R)(h) = h(π1(g(ϕ))(π2(g(ϕ)))

We could go on a bit more by rewriting `g(ϕ)` to `ϕ(A)(λS.λa.(S,a))`, but then we would get stuck!

It turns out that in set theory the encoding of ∃ in terms of ∀ does not work. 
But it does work in other setups, where types are not sets. 
For instance, you can convince yourself that in logic the statements

`∃x.ϕ(x)`

is equivalent to

`∀P : Prop. (∀x.(ϕ(x) ⇒ P)) ⇒ P`  (where var `P` does not occur in `ϕ`)

where `P` ranges over all propositions 
(truth values, logical statements).



---

A program `P` uses a variable `x` **universal-polymorphically**, provided `P` doesn't do anything with `x` that requires knowledge of `x`'s type.

For example in the λ-calculus the following operations could be polymorphic:
- forwarding,   e.g. `λx.x`
- reordering,   e.g. `λ(x,y,z).(z,x,y)`
- duplicating,  e.g. `λx.(x,x)`
- dropping,     e.g. `λx.y`


Existential-polymophism is the exact dual of universal-polymorphism.

A program `P` uses a variable `x` **existential-polymophially**, if `P` provides `x` only to contexts that don't require knowledge of `x`'s type. 
In other words, `P` provides `x` only to *contexts that use `x` universal-polymorphically*.


## Refs

- existential quantifier
  https://ncatlab.org/nlab/show/existential+quantifier
- Lean: Quantifiers and Equality
  https://leanprover.github.io/theorem_proving_in_lean/quantifiers_and_equality.html
- Intuitionistic Type Theory
  https://plato.stanford.edu/entries/type-theory-intuitionistic/
- https://en.wikipedia.org/wiki/Quantifier_(logic)
- https://en.wikipedia.org/wiki/Dependent_type
- https://cstheory.stackexchange.com/questions/50815/what-are-the-issues-with-a-set-like-interpretation-of-quantifiers-in-type-theory
- https://cstheory.stackexchange.com/questions/32515/universal-and-existential-types


### Martin Berger
- https://martinfriedrichberger.net/
- https://users.sussex.ac.uk/~mfb21/rg.html
- Course: Compilers and Computer Architecture
  https://users.sussex.ac.uk/~mfb21/compilers/short.html
- S-REPLS - South of England Regional Programming Language Seminar Series.
  https://users.sussex.ac.uk/~mfb21/srepls9/index.html



## Parametric quantifiers for dependent type theory
https://dl.acm.org/doi/10.1145/3110276


*Polymorphic type systems* such as System F enjoy the *parametricity property*: polymorphic functions cannot inspect their type argument and will therefore apply the same algorithm to any type they are instantiated on. This idea is formalized mathematically in *Reynolds's theory of relational parametricity*, which allows the metatheoretical derivation of parametricity theorems about all values of a given type.

Although predicative System F embeds into *dependent type systems* such as *Martin-Löf Type Theory (MLTT)*, parametricity does not carry over as easily. The *identity extension lemma*, which is crucial if we want to prove theorems involving equality, has only been shown to hold for small types, excluding the universe.

We attribute this to the fact that MLTT uses a single type former `Π` to generalize both the *parametric quantifier* `∀`, and the type former `→` which is non-parametric in the sense that its elements may use their argument as a value.

We equip MLTT with *parametric quantifiers* `∀` and `∃` alongside the existing `Π` and `Σ`, and provide *relation type formers* for proving parametricity theorems internally.
