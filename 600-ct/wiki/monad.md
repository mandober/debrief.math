# Monad

https://en.wikipedia.org/wiki/Monad_(category_theory)

A **monad** is a monoid in the category of endofunctors of some fixed category.

A monad is also called
- triple
- triad
- standard construction
- dual standard construction
- fundamental construction

An endofunctor is a functor mapping a category to itself.

A monad is an endofunctor together with 2 natural transformations required to fulfill certain *coherence conditions*.

Monads are used in the theory of pairs of adjoint functors, and they generalize closure operators on partially ordered sets to arbitrary categories.

Monads are also useful in the theory of datatypes, the denotational semantics of imperative programming languages, and in functional programming languages, allowing languages without mutable state to do things such as simulate for-loops.

## Contents

- 1. Introduction and definition
  - 1.1. Formal definition
  - 1.2. The power set monad
  - 1.3. Remarks
  - 1.4. Comonads
  - 1.5. Terminological history
- 2. Examples
  - 2.1. Identity
  - 2.2. Monads arising from adjunctions
    - 2.2.1. Double dualization
    - 2.2.2. Closure operators on partially ordered sets
    - 2.2.3. Free-forgetful adjunctions
  - 2.3. Codensity monads
  - 2.4. Monads used in denotational semantics
    - 2.4.1. The maybe monad
    - 2.4.2. The state monad
    - 2.4.3. The environment monad
    - 2.4.4. The list and set monads
- 3. Algebras for a monad
  - 3.1. Examples
  - 3.1.1. Algebras over the free group monad
  - 3.1.2. Algebras over the distribution monad
  - 3.1.3. Algebras over the symmetric monad
  - 3.1.4. Commutative algebras in E-infinity ring spectra
- 4. Monads and adjunctions
  - 4.1. Monadic adjunctions
  - 4.2. Beck's monadicity theorem
- 5. Uses
- 6. Generalization


## 1. Introduction and definition

A monad is a certain type of endofunctor.

For example, if `F` and `G` are a pair of *adjoint functors*, with `F` *left adjoint* to `G`, then the composition `G ∘ F` is a monad.

If F and G are inverse functors, the corresponding monad is the *identity functor*.

In general, *adjunctions are not equivalences* - they relate categories of different natures.

The monad theory matters as part of the effort to capture what it is that adjunctions 'preserve'.

The other half of the theory, of what can be learned likewise from consideration of `F ∘ G`, is discussed under the dual theory of *comonads*.

### 1.1. Formal definition



### 1.2. The power set monad

The *power set monad* is a monad `𝒫` on the category `Set`:

For a set `A` let `T(A)` be the power set of `A`, and 
for a function `f : A → B` let `T(f)` be the function 
between the power sets induced by taking direct images under `f`. 

For every set `A`, we have a map `ηₐ : A → T(A)`, 
which assigns to every `a ∈ A` the singleton `{a}`.

The function `μₐ : T(T(A)) → T(A)` takes a set of sets to its union.

These data describe a monad.

### 1.3. Remarks

The axioms of a monad are formally similar to the monoid axioms.

In fact, monads are special cases of monoids, namely they are precisely the monoids among endofunctors `Endo(C)`, which is equipped with the multiplication given by composition of endofunctors.

Composition of monads is not, in general, a monad. For example, the double power set functor `𝒫 ∘ 𝒫` does not admit any monad structure.

### 1.4. Comonads

The categorical dual definition is a formal definition of a comonad (or co-triple); this can be said quickly in the terms that a comonad for a category C is a monad for the opposite category Cᵒᵖ. It is therefore a functor `U` from C to itself, with a set of axioms for co-unit and co-multiplication that come from reversing the arrows everywhere in the definition just given.

>Monads are to monoids as comonads are to comonoids.

Every set is a comonoid in a unique way, so comonoids are less familiar in abstract algebra than monoids; however, comonoids in the category of vector spaces with its usual tensor product are important and widely studied under the name of coalgebras.

### 1.5. Terminological history

The notion of monad was invented by Roger Godement in 1958 under the name "standard construction". Monad has been called "dual standard construction", "triple", "monoid" and "triad". The term "monad" is used at latest 1967, by Jean Bénabou.


## 2. Examples

### 2.1. Identity

### 2.2. Monads arising from adjunctions
#### 2.2.1. Double dualization
#### 2.2.2. Closure operators on partially ordered sets
#### 2.2.3. Free-forgetful adjunctions

### 2.3. Codensity monads

### 2.4. Monads used in denotational semantics
#### 2.4.1. The maybe monad
#### 2.4.2. The state monad
#### 2.4.3. The environment monad
#### 2.4.4. The list and set monads

## 3. Algebras for a monad
### 3.1. Examples
#### 3.1.1. Algebras over the free group monad
#### 3.1.2. Algebras over the distribution monad
#### 3.1.3. Algebras over the symmetric monad
#### 3.1.4. Commutative algebras in E-infinity ring spectra

## 4. Monads and adjunctions
### 4.1. Monadic adjunctions
### 4.2. Beck's monadicity theorem

## 5. Uses

## 6. Generalization
