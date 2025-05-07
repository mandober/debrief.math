# Fundamentals of ZF Set Theory - Tony Lian, 2011

## Abstract

This paper sets out to explore the basics of Zermelo-Fraenkel (ZF) set theory *without choice*. We will take the axioms as givens to construct and define fundamental concepts in mathematics such as functions, real numbers, and the addition operation. We will then explore countable and uncountable sets and end with the cardinality of the continuum.

## 1. Introduction

Set theory is a branch of mathematics that studies collections of objects. Each collection is called a set and the objects in the collection are called elements of the set.

Modern set theory began in the 1870s with the works of Georg Cantor and Richard Dedekind. Later work over the course of the 19th and 20th centuries revealed many paradoxes in set theory, which prompted the need for an axiomatic system that would escape the paradoxes. Ernst Zermelo proposed the first axiomatic set theory in 1908. Later, Abraham Fraenkel and Thoralf Skolem proposed some revisions including the addition of the Axiom Schema of Replacement. The resulting axiomatic set theory became known as Zermelo-Fraenkel (ZF) set theory. ZF set theory is a highly versatile tool in defining mathematical foundations as well as exploring deeper topics such as infinity.

## 2. The Axioms and Basic Properties of Sets

A *set* is a collection of objects satisfying a set of axioms, called the ZF axioms (stated below). Each object in the set is called an *element* of the set.

The *set membership*, `∈`, is a primitive concept - it is a binary relation.

Since the axioms form the definition of set, we need an axiom to postulate that sets indeed exist; more specifically, that at least one set exists.

### Axiom of the Existence

Axiom of the Empty set (Axiom of Existence): there exists a set which has no elements, denoted by `∅`. As FOL formula, 

`∃x(∀z(z ∉ x)`

Now that we've established that at least one set exists, we need a way to show uniqueness or equality of sets. The equality is another binary relation that we get from FOL, which is used as the language of set theory. Intuitively, a set with no elements should be unique, i.e. there should only be one such set, i.e. any two empty sets should be the same set. This is postulated by the next axiom.

### Axiom of Extensionality

Axiom of Extensionality: if every element of X is an element of Y, and every element of Y is an element of X, then X = Y.

`∀x∀y∀z(z ∈ x ⇔ z ∈ y) ⇔ x = y`

From this axiom we see that X = Y is a property based on the elements contained in X and Y. To generalize, if two sets have the same elements, then they are identical. We can now prove the uniqueness of the empty set.

(Lemma) There exists only one empty set.

Proof.
∀z(z ∈ x ⇒ z ∈ y)
∀z(z ∈ y ⇒ z ∈ x)

Both implications are vacuously true since their antecedents are false.

### Axiom Schema of Comprehension

The Axiom Schema of Comprehension is actually the Axiom Schema of *Restricted* Comprehension, also known as the Axiom Schema of Separation or the Subset Axiom Schema.

Axiom Schema of Restricted Comprehension states that, if `P(x)` is any property, then for any set A, there is a set B (a subset of A) such that x ∈ B iff x ∈ A and P(x) holds.

`∀A∃B∀z(z ∈ B ⇔ (z ∈ A ⋀ P(x)))`

(Lemma) For every set A, there is a unique set B, such that x ∈ B if and only if x ∈ A and P(x) holds.

In other words, all subsets of A, as determined by a property P, are disctinct. (hmmm, this seems fishy. Different properties may select the same subset, no? That is, those subsets may indeed be the same, but the properties that determine them need not).

Proof. Suppose Bʹ is another set such that x ∈ Bʹ iff x ∈ A and P(x). 
If x ∈ B implies x ∈ A and P(x), then x ∈ Bʹ. 
If x ∈ Bʹ implies x ∈ A and P(x), then x ∈ B. 
Thus we have x ∈ B ⇔ x ∈ Bʹ. 
Therefore, B = Bʹ.

### Axiom of Pairing

Axiom of Pair: For any A and B, there exists C such that `x ∈ C` if and only if `x = A` or `x = B`. In other words, we can put any two sets in a new set (that only contains these two sets).

`∀x∀y∃p∀z(z ∈ p ⇔ (z = x ∨ z = y))`

(Definition) We define an *unordered pair* of A and B as the set having exactly A and B as its elements, and use `{A, B}` to denote it.

### Axiom of Union

Axiom of Union: For any `A`, there exists `P` such that `x ∈ P` if and only if `x ∈ A` for some set `Y ∈ A`.

`∀x∃p∀z(z ∈ p ⇔ ∃Y(z ∈ Y ∧ Y ∈ A))`

(Definition) We call the set `P` the union over `A`, and denote it by `⋃A`.

(Definition) We call `x` a subset of `y` iff every element of `x` belongs to `y`. We denote this by `x ⊆ y`, i.e. `∀x∀y(∀z(z ∈ x ⇒ z ∈ y) ⇔ x ⊆ y)`.

### Axiom of Power Set

Axiom of Power Set: For any S, there exists P such that `X ∈ P` if and only if `X ⊆ S`.

(Definition) We call P the power set of S and denote it by `𝒫(S)`.

### Axiom of Infinity

Axiom of Infinity: states that an inductive set exists.

We revisit the Axiom of Infinity later in more depth, along with the definition of inductive sets which are crucial in defining the set of natural numbers.

An *inductive set* is a set that contains ∅ and is closed under the successor function, S(n) = n ⋃ {n}.

### Axiom Schema of Replacement

Axiom Schema of Replacement: Let `P(x,y)` be a property such that for every `x` there is a unique `y` for which `P(x,y)` holds. For every A there exists B such that for every `x ∈ A` there is `y ∈ B` for which `P(x,y)` holds.

The Axiom Schema of Replacement prevents some situations that would allow paradoxes due to the Axiom Schema of Comprehension. The key difference between the two is that the property `P(x,y)` (in Replacement) depends both on `x` as well as unique `y` for which `P(x,y)` holds, whereas `P(x)` (in Comprehension) only depends on `x`.


### Definitions

(Definition 2.1) A *set* is a collection of objects satisfying this set of axioms. Each object in the set is called an element of the set.

(Remark 2.2) The *membership* property is the most basic set-theoretic property. We denote it by `∈`. We read `X ∈ Y` as X is an element of Y.

(Lemma 2.3) There exists only one set with no elements.

(Definition 2.4) Set without elements is *the empty set* and denoted by `∅`.

(Lemma 2.5) *unique subsets*: For every set A, there is a unique set B, s.t. x ∈ B iff x ∈ A and P(x) holds.

(Definition 2.6) We define an *unordered pair* of A and B as the set having exactly A and B as its elements, and use `{A, B}` to denote it.

(Definition 2.7) *n-ary union* is union over a family of sets, denoted `⋃A`.

(Definition 2.8) We call `x` a *subset* of `y` iff every element of `x` belongs to `y`. We denote this by `x ⊆ y`, i.e. `∀x∀y(∀z(z ∈ x ⇒ z ∈ y) ⇔ x ⊆ y)`.

(Definition 2.9) We call P the *powerset* of S and denote it by `𝒫(S)`.


(Definition 2.10) *Binary union* of A and B is the set of all x which belong in either A, B, or both. We denote it by `A ⋃ B`.

(Remark 2.11): Set `A ⋃ B` exists by this system of Axioms. We first apply the Axiom of Pairing to A and B to get `{A,B}`. Then we apply the Axiom of Union to it to get `⋃{A,B} = A ⋃ B`.


(Definition 2.12) The *intersection* of A and B is the set of all x which belong to both A and B. We denote it by `A ⋂ B`.

(Remark 2.13). Set `A ⋂ B` exists by this system of Axioms. We can apply Axiom Schema of Comprehension to the set A and the property `P(x) := x ∈ B` to get the set `A ⋂ B = {x ∈ A | x ∈ B}`.


(Definition 2.14). The *difference* of A and B is the set of all x ∈ A such that x ∉ B. We denote it by `A ∖ B`.

(Remark 2.15). Set `A ∖ B` exists by this system of Axioms. We can apply Axiom Schema of Comprehension to set A and the property `P(x) := x ∉ B` to get the set `A ∖ B = {x ∈ A | x ∉ B}`.


(Remark 2.16). Each of the sets described above is *unique*.

## 3. Relations and Functions

(Definition 3.1) An *ordered pair* `⟨x,y⟩ := {{x},{x,y}}`

Using this system we can further define ordered triples, ordered quadruples, etc., generally ordered n-tuples, using the nested pair construction.
- `(a,b,c) := (a,(b,c))`
- `(a,b,c,d) := (a,(b,(c,d)))`

### Relations

(Definition 3.2) Set `R` is a *binary relation* if all elements of R are ordered pairs, i.e. `∀z(z ∈ R ⇒ ∃x∃y(z = ⟨x,y⟩))`. Denoted `xRy` or (x,y) ∈ R.

(Definition 3.3.1). The *membership relation on `A`* is defined by
`∈ᴀ = { ⟨a,b⟩ | a ∈ A, b ∈ B, a ∈ b }`   (wtf?!)

(Definition 3.3.2) The *identity relation on `A`* is defined by
`Idᴀ = { ⟨a,b⟩ | a ∈ A, b ∈ B, a = b }` i.e. `Idᴀ = { ⟨a,a⟩ | a ∈ A }`

(Definition 3.4) Let A, B be sets. The *Cartesian product* of A and B is defined by `A × B = { ⟨a,b⟩ | a ∈ A, b ∈ B }`

(Remark 3.5) By the axioms, set `A×B` does in fact exist:
- By Axiom of Pair, `A ⋃ B` exists as a unique set
- Thus `𝒫(A ⋃ B)` exists
- Thus `𝒫(𝒫(A ⋃ B))` exists and is unique
  - x ∈ X ⇒ x ∈ X ⋃ Y
  - a ∈ A ⇒ a ∈ A ⋃ B and b ∈ B ⇒ b ∈ A ⋃ B then a,b ∈ A ⋃ B
  - a,b ∈ A ⋃ B
  - x ∈ X ⇒ {x} ∈ 𝒫(X)
  - {a},{a,b} ∈ 𝒫(A ⋃ B)
- ⟨a,b⟩ = {{a},{a,b}}, and `{{a},{a,b}} ∈ 𝒫(𝒫(A ⋃ B))`
- by applying the Axiom of Schema Comprehension, with properties `P(a) = a ∈ A` and `P(b) = b ∈ B`, we can select the sets from `𝒫(𝒫(A ⋃ B))` to finish constructing A × B.

```
a ∈ A ⇒ a ∈ A ⋃ B
b ∈ B ⇒ b ∈ A ⋃ B
a,b ∈ A ⋃ B
a ∈ A ⇒ {a} ∈ 𝒫(A)
{a} ∈ 𝒫(A) ⇒ {a} ∈ 𝒫(A) ⋃ 𝒫(B) ⇒ {a} ∈ 𝒫(A ⋃ B)
𝒫(A ⋃ B) = 𝒫(A) ⋃ 𝒫(B) ?
b ∈ B ⇒ {b} ∈ 𝒫(B)
{a},{b} ∈ 𝒫(A ⋃ B)
a ∈ A ⇒ (a ∈ A ⋃ B) ⇒ {a} ∈ 𝒫(A ⋃ B)
b ∈ B ⇒ (b ∈ A ⋃ B) ⇒ {b} ∈ 𝒫(A ⋃ B)
{a} ∈ 𝒫(A) ∧ {b} ∈ 𝒫(B) ⇒ {{a},{b}} ∈ 𝒫(A ⋃ B)
```

Notice that `a, b ∈ A ⋃ B` and `{a}, {a,b} ∈ 𝒫(A ⋃ B)`. Considering a model of an ordered pair using the Kuratowski's definition, `(a,b) = {{a},{a,b}}`, we get that `{{a},{a,b}} ∈ 𝒫(𝒫(A ⋃ B))`. Thus, the Cartesian product is a set since `A × B ⊆ 𝒫(𝒫(A ⋃B))`.

One may define the Cartesian product of any finite collection of sets recursively, A × B × C = (A × B) × C.

Note that the existence of the Cartesian product can be proved without using the power set axiom, as in the case of the Kripke-Platek set theory.

### Functions

(Definition 3.6) A binary relation `F` is called a *function* if `aFb₁` and `aFb₂` imply `b₁ = b₂` for any a, b₁, b₂.

∃F(∀ab₁b₂(aFb₁ ∧ aFb₂ ⇒ b₁= b₂)) ⇒ F is a function

The unique `b` is the value of `F` at `a`, denoted `F(a) = b` or `Fₐ = b`.

If `dom F = A` and `ran F ⊆ B`, then `F` is denoted by
- F : A → B
- ⟨ F(a) | a ∈ A ⟩
- ⟨ Fₐ | a ∈ A ⟩
- ⟨ F(a) ⟩{a ∈ A}

(Definition 3.7) Let f : A → B be a function

(Definition 3.7.1) *Injection*
f is injective if for a₁ ∈ A and a₂ ∈ A, f(a₁) = f(a₂) if a₁ = a₂
- `∀a₁a₂ ∈ A((f a₁ = f a₂) ⇒ (a₁ = a₂))` ⇒ f is injective

(Definition 3.7.2) *Surjection*
f is surjective if for every b ∈ B, there exists some a ∈ A such that f(a) = b
- `∀b ∈ B(∃a ∈ A(f a = b))` ⇒ f is surjective

(Definition 3.7.3) *Bijection* if f is both injective and surjective.

(Definition 3.8.1) Functions f and g are called *compatible* if `f(x) = g(x)` for all `x ∈ dom(f) ⋂ dom(g)`.

>∀x(x ∈ dom(f) ⋂ dom(g) ⇒ f(x) = g(x)) ==> f and g are compatible

(Definition 3.8.2) A set of functions F is called a *compatible system of functions* if any two functions f and g from F are compatible.

(Theorem 3.9) If F is a compatible system of functions, then `⋃F` is a function with `dom(⋃F)` = `⋃{dom(f) | f ∈ F}`. The function `⋃F` *extends* all `f ∈ F`.

(Proof 3.9) We need to show that
1. `⋃F` is a function (not only a relation)
  - Suppose there exists `(a, b₁) ∈ ⋃F` and `(a, b₂) ∈ ⋃F`
  - then there are functions `f₁,f₂ ∈ F` s.t. `f₁(a) = b₁` and `f₂(a) = b₂`
  - but since `f₁` and `f₂` are compatible functions
  - means `a` must be in `dom(f₁) ⋂ dom(f₂)`
  - and means `f₁(a) = f₂(a)`
  - which implies that `b₁ = b₂`
  - Thus, `⋃F` is a function
2. `dom(⋃F) = ⋃{dom(f) | f ∈ F}`
  - Suppose `x ∈ dom(⋃F)`
  - then    `x ∈ dom(f)` for some `f ∈ F`
  - Suppose `y ∈ dom(f)` for some `f ∈ F`
  - then    `x ∈ dom(⋃F)`
  - Thus, `dom(⋃F) = ⋃{dom(f) | f ∈ F}`

(Definition 3.10) Let A and B be sets. The set of all functions on A into B is denoted `Bᴬ` (we return to this unique set `Bᴬ` later in the proof of the cardinality of the continuum).

## 4. Equivalences and Orderings

(Definition 4.1) refl, sym, asymm, antisym, trans

(Definition 4.2) 
- R is an *equivalence* on A if it is reflexive, symmetric, and transitive in A.
- R is a *partial order* (≤) of A if it is reflexive, antisymmetric and transitive in A. The pair (A; R) is called an ordered set.
- R is a *strict order* (<) of A if it is asymmetric and transitive in A

(Remark 4.3) Now that we have established the definition of orderings and strict orderings, we can use `≤` and `⪯` to denote orderings and `<` and `≺` to denote strict orderings. Thus `(A, ≤)` is an ordered pair consisting of a set A and an ordering `≤`, and `(B, ≺)` is a strictly ordered pair consisting of a set B and a strict ordering `≺`.

There is a close relationship between partial order and strict order as we will see in the next theorem.

(Theorem 4.4)
- Let __R__ be an *partial order* of A. 
  Then the relation S in A defined by 
  `aSb` iff and only if `aRb` and `a≠b` 
  (`aSb ⇔ aRb ∧ a≠b`) 
  is a strict ordering of A.
- Let __S__ be a *strict order* of A. 
  Then the relation R in A defined by 
  `aRb` iff `aSb` or `a=b` 
  (`aPb ⇔ aSb ∨ a≠b`) 
  is an ordering of A.

(Definition 4.5) An ordering `<` of A is called **linear or total order** if any two elements of A are comparable in the ordering `<` (i.e. for any a,b ∈ A, either a < b, a > b or a = b). The pair `(A, <)` is called a **linearly ordered set**.

(Intuitively, we see that the `≤` and `<` relations in ℝ satisfy the definition of linear orderings, but we can't view these relations in that light yet because we haven't yet defined numbers.)

## 5. Natural Numbers

(Definition 5.1) **Cardinality** is the measure of the number of elements in a set. Sets A and B have the same cardinality if there is a bijection from A to B, in which case A and B are called **equipotent (equinumerous) sets**.

This definition tells us that we do not necessarily need to know how many objects each set contains to know if they are equinumerous. A bijection ensures that each element in set A is paired with a unique element in set B, and conversely each element in B is paired with a unique element in A.

(Definition 5.3) The **successor** of a set `x` is the set `S(x) := x ⋃ {x}`.

(Definition 5.4) A set `I` is called **inductive** if
- `∅ ∈ I`
- `n ∈ I ⇒ S(n) ∈ I` where S is successor

An inductive set contains 0 (∅) and with it, each successor. 
So any inductive set should contain the natural numbers. 
To define a set that contains only the natural numbers, we arrive at the following definition:

(Definition 5.5) The set of all natural numbers is defined by 
`ℕ = { n | n ∈ I for every inductive set I }`

The elements of ℕ are called the **natural numbers**.

A possible concern is whether we can even define such a set from ZF axioms. Certainly, the property `P(n) = n ∈ I` for every inductive set `I` is a valid property of `n`. But unless there exists an inductive set, this property will always create the empty set under the Axiom Schema of Comprehension. The Axiom of Infinity allows us to move past this obstacle.

Now that we have natural numbers at our disposal, we will explore a few properties of natural numbers.

(Definition 5.7) The relation
- `<` on ℕ  ≝  `∀m,n ∈ ℕ. m < n ⇔ m ∈ n`
- `≤` on ℕ  ≝  `∀m,n ∈ ℕ. m ≤ n ⇔ m ∈ n ∨ m = n`

(Theorem 5.8) `(ℕ, <)` is a *linearly ordered set*.

(Definition 5.9) A linear ordering `≺` of a set `A` is a **well-ordering** if every nonempty subset of `A` has a `≺`-least element. The structure `(A, ≺)` is called a **well-ordered set**.

(Theorem 5.10) `(ℕ, <)` is a *well-ordered set*.

## 6. Recursion and the Addition Operation

We now define basic operations on the natural numbers. Though ZF set theory is an adequate tool for rigorously defining all 4 basic operations of natural numbers (addition, subtraction, multiplication, and division), we only define addition here.

(Definition 6.1) A **sequence** is a function whose domain is a natural number `n` or the set of the natural numbers, `ℕ`. A sequence whose domain is some natural number `n ∈ ℕ` is called a **finite sequence of length `n`** and is denoted `⟨aᵢ | i < n⟩` or `⟨aᵢ | i = 0,1,…,n−1⟩` or `a₀, a₁, …, aₙ˗₁`.

The unique characteristic of a sequence is that we can order the elements. Since the domain is composed of natural numbers, and the set of natural numbers is linearly ordered, we can order the elements in a sequence by the natural number each element corresponds to. This is essential for recursion.

For example, let's consider two infinite sequences:
- The sequence f : ℕ → ℕ defined by S(0) = 1, Sn+1 = 2n
- The sequence g : ℕ → ℕ defined by F(0) = 0, Fn+1 = Fn × (n + 1)

The key distinction between these functions is their parameters for defining the `n+1` term. `S` is formulated by a property `P(x,y) := sₓ = y`. We can immediately conclude from our axioms that `S = {(x,y) ∈ ℕ×ℕ | P(x,y)}` exists and is unique.

Examining `F` , we see that each `Fn+1` depends on the previous term `Fn`. It is not yet apparent how we can formulate a property `P(x,y)` to prove the existence and uniqueness of `F` as we can of `S`. `Fn+1` can be computed provided that `Fn` is computed, which brings us to the definition of a *computation*.

(Definition 6.3) A function `t : (m+1) → A` is called an **m-step computation based on `a` and `g`** if `t₀ = a`, and for all `k` such that `0 ≤ k < m`, we have `tₖ﹢₁ = g(tₖ, k)`.

So F can be restated as: `F₀ = 0`, `Fₘ = 0 × 1 × … × m` showing that F is the result of an m-step computation. Our next theorem will show that such a recursive function exists and is unique.

(Theorem 6.4) **The Recursion Theorem**. 
For any set A, any a ∈ A, and any function `g : A×ℕ → A`, there exists a unique sequence `f : ℕ → A` such that
-         f(0)    = a
- ∀n ∈ ℕ. f(S(n)) = g(f(n), n)

(Theorem 6.5) **The Parametric Recursion Theorem**. 
Let `a : P → A` and `g : P×A×ℕ → A` be functions. 
There exists a unique function `f : P×ℕ → A` such that
- ∀p ∈ P.         `f(p, 0)    = a(p)`
- ∀n ∈ ℕ, ∀p ∈ P. `f(p, S(n)) = g(p, f(p, n), n)`

(Theorem 6.6) **Addition Operation of Natural Numbers**. 
There is a unique binary operation `+ : ℕ×ℕ → ℕ` such that
- ∀m ∈ ℕ.   +(m, 0)    = m
- ∀m,n ∈ ℕ. +(m, S(n)) = S(+(m, n))
or, putting `+` in the infix position:
- ∀m ∈ ℕ.   `m + 0    = m`
- ∀m,n ∈ ℕ. `m + S(n) = S(m + n)`


As mentioned at the beginning of the chapter, ZF set theory is an adequate tool to define all arithmetic operations of the natural (and real) numbers. We will simply take them as givens from here on out (cheat!).

## 7. Integers, Rationals and Reals

Definitions of
- Integers, ℤ, by equivalence relation on ℕ
- Rationals, ℚ, by equivalence relation on ℤ
- dense set
- cut
- complete
- Reals, ℝ

A linearly ordered set `(P, <)` is called a **dense set** if `∀a,b ∈ P` such that `a < b`, there exists `z ∈ P` such that `a < z < b`.

`∀a∀b ∈ P(a < b ⇒ z ∈ P(a < z < b))`

(Lemma 7.4) `(Q, <)` is dense.


(Definition 7.5) Let `(P, <)` be a linearly ordered set.
* `(A, B)` is a pair of sets called a **cut** if
  - A and B are nonempty disjoint subsets of P and `A ⋃ B = P`
  - `a ∈ A ∧ b ∈ B ⇒ a < b`
* `(A, B)` is called a **Dedekind cut** if additionally
  - A does not have a greatest element
* `(A, B)` is called a **gap** if additionally
  - B does not have a least element

We have two kinds of Dedekind cuts
1. ones where `B = { x ∈ P | ∃p ∈ P(x ≥ p) }`
2. *gaps*
This distinction will be needed later in the proof of completion.

We see even though rational numbers are dense, they clearly have gaps. 
Take for example the two sets:
- A = {x ∈ ℚ | x > 0 and x² > 2}
- B = {x ∈ ℚ | x ∉ A}

Clearly `(A, B)` is a gap in ℚ. 

Intuitively, we know that the real numbers cannot have gaps, and so our next step is to explore how to close gaps. We notice that the existence of gaps is closely related to the existence of suprema of bounded sets.

(Definition 7.7) Let `(P, <)` be a dense linearly ordered set. 
P is **complete** if every nonempty S ⊆ P bounded above has a supremum, 
i.e. `(P, <)` does not have any gaps.

(Theorem 7.8) Let `(P, <)` be a *dense linearly ordered set without endpoints*. Then there exists a complete linearly ordered set `(C, ≺)` such that
- P ⊆ C
- If p,q ∈ P, then p < q iff p ≺ q
- P is dense in C
- C does not have endpoints

Furthermore, `(C, ≺)` is unique up to an isomorphism over P. The linearly ordered set `(C, ≺)` is called the **completion** of `(P, <)`.

(Definition 7.9) The **set of all real numbers** is the *completion* of `(Q, <)` and is denoted by `(ℝ, <)`.

## 8. Cardinality of Sets

(Theorem 8.5) **Cantor-Bernstein Theorem** 
>If |X| ≤ |Y| and |Y| ≤ |X|, then |X| = |Y|

- A set S is *countable* if |S| = |ℕ|.
- A set S is *at most countable* if |S| ≤ |ℕ|.
- A set S is *countable* if there is a bijection between ℕ and S.

Countability is an essential concept of mathematics when working with infinite values. It distinguishes some infinities from others, giving us a basis for study. We will now show some properties of countability and countable sets.

- An infinite subset of a countable set is countable.
- The union of two countable sets is a countable set.
- The union of a finite system of countable sets is countable.
- If A and B are countable, then `A×B` is also countable.
- The cartesian product of a finite number of countable sets is countable, i.e. `Nᵐ` is countable for every `m ∈ N`.
- The set of all integers is countable.
- An equivalence relation on at most countable sets has at most countably many equivalence classes.
- The set of all rational numbers is countable.
- `ℵ₀ = |A|` for all countable sets `A`.
- From the above, we can see that `ℵ₀ = |ℕ| = |ℤ| = |ℚ|`
- ∀n ∈ ℕ. n + ℵ₀ = ℵ₀ + ℵ₀ = ℵ₀
- ∀n ∈ ℕᐩ. n ⨯ ℵ₀ = ℵ₀ ⨯ ℵ₀ = ℵ₀
- ∀n ∈ ℕᐩ. ℵ₀ⁿ = ℵ₀

## 9. Uncountable Sets

Intuitively, we know uncountable sets exist because the set of real numbers is uncountable. What is not apparent is the size of the real numbers. To find that, we first begin by proving uncountable sets exist.

(Theorem 9.1) **Cantor's Theorem**. Uncountable sets exist. Namely, the power set of the natural numbers, 𝒫(N), is uncountable.

(Theorem 9.2) `|𝒫(N)| = |2ᴺ|` where 2ᴺ denotes the set of all functions ℕ → 2.

Corollary, `|𝒫(X)| = |2ˣ|` for any set X.

(Theorem 9.4) **The cardinality of the continuum** is `𝔠` = 2^ℵ₀
