# Yoneda lemma

https://www.youtube.com/watch?v=aXS5HZ_1fNQ

## Representable functors

*Representable covariant functor* `F : 𝓒 -> Set` along with this data:
- an object `c` said to represent `F`
- a natural isomorphism `Φ : F ≅ 𝓒(c, -)`
This data together is called the representation of `F`.

*Representable contravariant functor* `F : 𝓒ᵒᵖ -> Set` along with this data:
- an object `c` said to represent `F`
- a natural isomorphism `Φ : F ≅ 𝓒(-, c)`
This data together is called the representation of `F`.

In Haskell, it can be coded as the `Representable` class:

```hs
class Representable f c | f -> c where
  index :: f x -> (c -> x)
  tabulate :: (c -> x) -> f x
```

## Yoneda lemma

Let F : C -> Set be a functor where C is a *locally small category* - i.e. such that every collection of morphisms `C(c,d)` between any two objects in C forms a set; then, `F c` ≅ [C,Set](C(c,-),F).

"...then, `F`, at the representing object `F c`, is isomorphic to the set of natural transformations between reader, `C(c,-)`, and `F`.

This bijection associates a natural transformation `α : C(c,-) ⇒ F` with the element `αᶜ(1ᶜ)` in `F c`.

A great part about this is that natural transformations are completely determined by the identity at `c` object, `1ᶜ`. This means we have a sort of a pseudo-inductive principle here, where the *identity of the representing object* determines the rest of the set associated with that NT.

Furthermore, this correspondence is natural in `c` and in `F`.


## Yoneda in Haskell

Yoneda lemmas (two different ones) in Haskell:
>For covariant functors:     (∀x. (`a` -> x) -> F x)  ≅  F `a`
>For contravariant functors: (∀x. (x -> `b`) -> F x)  ≅  F `b`

Covariant Yoneda facts:
- Lemma:     [C,Set](C(c,-), F)         ≅   F `c`
             [C,Set](∀x. C(c, x), F x)  ≅   F `c`

- Embedding: C(c,-) ≅ C(d,-)            ⇔  c ≅ d

- Code:      (∀x. (`a` -> x) -> F x)    ≅   F `a`


Contravariant Yoneda facts:
- Lemma:     [C,Set](C(-,c), F)         ≅   F `c`
             [C,Set](∀x. C(x,c), F x)   ≅   F `c`

- Embedding: C(-,c) ≅ C(-,d)            ⇔  c ≅ d

- Code:      (∀x. (x -> `b`) -> F x)    ≅   F `b`


## Yoneda parallels

- Covariant     Yoneda Lemma: `[C, Set]( C (c, - ), F)` ≅ `F c`
- Contravariant Yoneda Lemma: `[C, Set]( C (-, c ), F)` ≅ `F c`

- Covariant     Yoneda Embedding: `C (c, -) ≅ C (d, -)` ⇔ `c ≅ d`
- Contravariant Yoneda Embedding: `C (-, c) ≅ C (-, d)` ⇔ `c ≅ d`

- Yoneda for Covariant     functors: `(∀x. (a -> x) -> F x)` ≅ `F a`
- Yoneda for Contravariant functors: `(∀x. (x -> b) -> F x)` ≅ `F b`


## Proof of distribution

>(a + b) ⨯ c ≅ (a ⨯ c) + (b ⨯ c)

```hs
(a + b) ⨯ c ≅ C((a+b)⨯c, x)               -- Yoneda embedding
            ≅ C(a+b, C(c,x))              -- curry
            ≅ C(a, C(c,x)) ⨯ C(b, C(c,x)) -- pairing
            ≅ C(a ⨯ c, x) + C(b ⨯ c, x)   -- uncurry
            ≅  (a ⨯ c)    +  (b ⨯ c)      -- un-Yoneda


-- a -> c, b -> c |- a ∨ b -> c
either :: (a -> c) -> (b -> c) -> (Either a b -> c)
either f _ (Left  x) = f x
either _ g (Right x) = g x

-- a ∨ b -> c |- a -> c ∧ b -> c
pairing :: Either a b -> (a -> c, b -> c) -> c
pairing (Left  x) (f, g) = f x
pairing (Right x) (f, g) = g x
```

## Yoneda lemma in Haskell

```hs
to :: Functor f =>    (forall x. (a -> x) -> f x)  ->  f a
to f = f id

from :: Functor f =>  f a  ->  (forall x. (a -> x) -> f x)
from fa = \f -> fmap f fa
```

## Examples of the use of Yoneda

### Example 1: Using Yoneda to calculate type inhabitants

>How many inhabitants does this type have: `forall a. a -> a`?

It has only one inhabitant - here is the proof:

```hs
forall a. a -> a
≅ forall a. (𝟙 -> a) -> a
≅ forall a. (𝟙 -> a) -> Identity a
≅ Identity 𝟙
≅ 𝟙
```

Since `𝟙`, aka `()`, has one inhabitant, we conclude that the type `forall a. a -> a` does as well.

Due to Contravariant Yoneda, `(∀x. (x -> a) -> F x) ≅ F a`, and here we have

```hs
(∀x. (x  -> a) -> F         x) ≅ F a        -- x = ()
(    (() -> a) -> F        ()) ≅ F ()       -- F = Identity
(    (() -> a) -> Identity ()) ≅ Identity a
```

### Example 2: Using Yoneda to show isomorphism

```hs
  ∀ a x. (a, x) -> a            -- uncurry
≅ ∀ a x. a -> x -> a            -- flip
≅ ∀ a x. x -> a -> a            -- 𝟙 -> x ≅ x
≅ ∀ a x. (𝟙 -> x) -> a -> a     -- Yoneda with: type F a x = a -> a
≅ ∀ a. F a 𝟙                    -- expanding type `F a ()` into `a -> a`
≅ ∀ a. a -> a                   -- reusing the proof from prev example
≅ 𝟙

type F a x  = a -> a
type F a () = a -> a
```

### Example 3

```hs
  ∀a. (a, a) -> a
≅ ∀a. (𝟙 -> a, 𝟙 -> a) -> a    -- unpair
≅ ∀a. ((𝟙 + 𝟙) -> a) -> a      -- type arithmetic
≅ ∀a. (𝟚 -> a) -> a            -- Yoneda with: type F x = x
≅ 𝟚

Bool ≅ forall a. (Bool -> a) -> a
```

So the type `forall a. (a, a) -> a` is isomorphic to `Bool`.

How come there are only 2 inhabitants, aren't all these members of this type:
- (a, a) -> a             ∈ ∀a. (a, a) -> a
- (Int, Int) -> Int       ∈ ∀a. (a, a) -> a
- (Float, Float) -> Float ∈ ∀a. (a, a) -> a
- (Bool, Bool) -> Bool    ∈ ∀a. (a, a) -> a

Inhabitants should be distinct values (i.e. distinct functions in this case), and there are a lot more of them then just 2! Wrong! That would be the case if we ignore the `forall` quantification in there. The `forall` constraints the possible types, so, the 2 inhabitants they had in mind are probably only the functions `fst` and `snd`.

### Example 4

```hs
  ∀ a b c. (a -> c) -> b -> a -> c  -- type F a b x = b -> a -> x
≅ ∀ a b. F a b a                    -- expanding
≅ ∀ a b. b -> a -> a                -- reusing proof from prev exmaple
≅ 𝟙

type F a b x = b -> a -> x
```

A slightly more complex functor `∀ a b c. (a -> c) -> b -> a -> c`. We note that `b -> a -> x` is actually just a composition of readers, and this is a functor. This is isomorphic to reader from `a` to `b` to `a`, which is exactly `flip const`. And `flip const` is exactly isomorphic to `𝟙` because there is one inhabitant in "constant modulo flip" (we didn't prove `const`, left as an exercise to the reader). `flip` is a nice morphism in this case, right?

### Example 5

We can also show that composition can only be done in one way when working with polymorphic types. So, `forall a b c`, composition (modulo some clever use of the new/type) has exactly one way that you can compose it.

```hs
  ∀ a b c. (a -> b) -> (b -> c) -> (a -> c)  -- (.)
≅ ∀ a b c. (b -> c) -> (a -> b) -> (a -> c)  -- flip (.)
≅ ∀ a b. F a b b                             -- type F a b x = (a → b) → a → x
≅ ∀ a b. (a -> b) -> a -> b                  -- type G a x = a -> x
≅ ∀ a b. G a a                               -- expand
≅ ∀ a b. a -> a                              -- reuse proof above
≅ 𝟙

type F a b x = (a -> b) -> a -> x

type G a x = a -> x
-- G is Reader
type Reader a x = a -> x
type Reader r a = r -> a
```

That sole inhabitant is `(.)`.

### Example 6

```hs
  ∀a. (a -> 𝟘, a -> 𝟘) -> a -> 𝟘  -- flip
≅ ∀a. a -> (a -> 𝟘, a -> 𝟘) -> 𝟘  -- 0ᵃ = 0
≅ ∀a. (𝟙 -> 𝟘, 𝟙 -> 𝟘) -> 𝟘
≅ (𝟘, 𝟘) -> 𝟘                     -- this is like (a, a) -> a
≅ 𝟘 -> 𝟘                          -- ... which reduced to 𝟚
≅ 𝟙                                -- so 𝟘 plays sig. role to be 𝟙 after all
```

A counterintuitive example: a pair of functions `a -> 𝟘`, which are in fact uninhabited, is actually inhabited when you consider a morphism from a pair of `a -> 𝟘` to `a -> 𝟘`. It just reduces to the `id` function, i.e. `𝟘 -> 𝟘`.

My derivation:

```hs
  ∀a. (a -> 𝟘, a -> 𝟘) -> a -> 𝟘  -- flip
≅ ∀a. a -> (a -> 𝟘, a -> 𝟘) -> 𝟘  -- 0ᵃ = 0 (unless a = 0)
≅ ∀a. a -> (𝟘, 𝟘) -> 𝟘            -- 0×0 = 0
≅ ∀a. a -> 𝟘 -> 𝟘                 -- 0⁰ = 1
≅ ∀a. a -> 𝟙                       -- 1ᵃ = 1
≅ 𝟙
```

## Propositional equality

"Yoneda" Propositional equality:

>`f a  ≅  (∀x. (a = x) -> f x)` (with no restrictions on `f`!)

```hs
  ∀ f z. f z -> f z                    -- unit
≅ ∀ f z. (𝟙 -> f z) -> f z             -- type F z x = (x ≡ x)
≅ ∀ f z. (∀x. F z x -> f z) -> f z     -- Yoneda
≅ ∀ z. F z z                           -- replace
≅ ∀ z. z = z                           -- expand
≅ 𝟙
```

Leibnitz equality
+ ∀P. P a = P b ==> a = b    ✔   identity of indescernables
+ ∀P. P a = P b <== a = b   (?)  indescernability of identicals
+ ∀P. P a = P b <=> a = b   (?)  both

* ∀f. f a = f b ==> a = b    ✔
* ∀f. f a = f b <== a = b   (?)
* ∀f. f a = f b <=> a = b   (?)

- ∀f g. f a = g a  ==>  f = g
-       f a = g b  ==>  a = b
-       f a = g a  ==>  f = g
-       f a = g b  ==>  f = g           (?)
-       f a = g b  ==>  a = b ∧ f = g
-       f a = g a  <=>  f = g           (?)


Notes form comments:   
Interestingly, Leibniz's law (presented @22:17) originally only goes in one direction - it's the law of *identity of indiscernibles*, meaning the direction of implication is from having all the same properties to identity, but not the other way around. The idea of *indiscernibility of identicals* constitutes the other direction of implication - and in logic/analytical metaphysics, there are experts arguing that one may be true, but not the other.

A small gripe: The biconditional on the slide "Proposition (Equality Preservation)" (@22:15) doesn't seem to make sense. As stated, it says that if we pick any two random (not necessarily distinct) elements of A and any two random (not necessarily distinct) elements of B, then whenever the elements of A are identical, the elements of B will also be identical and vice versa. First, there is no mention of a mapping and second - this is just obviously not true. Say A is the set {a, b, c} and B is {1, 2, 3} - I can pick (a, a) from A and (1, 2) from B (or (b, c) from A and {2, 2} from B) - and naturally neither direction of implication holds.

It should read: Let f denote an isomorphism between A and B and f⁻¹ denote the inverse of f. Then a1 = a2 <=> f(a1) = f(a2) and b1 = b2 <=> f⁻¹(b1) = f⁻¹(b2). Set-theoretically, this can be easily proven, knowing that every function is a left-total and univalent (deterministic) relation and that an isomorphism must be both injective and surjective (meaning it has an inverse which is also both injective and surjective). The left-to right direction of both sides of the conjunction is guaranteed by the univalence criterion, while the right-to-left direction is guaranteed by f (and f⁻¹) being injective.



## Recusrive polymorphic functions

```hs
  ∀a. (a -> a) -> a -> a     -- (a -> a, a) ≅ (𝟙 + a) -> a
≅ ∀a. ((𝟙 + a) -> a) -> a    -- define f x = 𝟙 + x
≅ ∀a. (f a -> a) -> a
≅ μ x. f x
≅ μ x. 𝟙 + x
```

This is like Church encoding of Peano arithemtic in structured sets.

## Functors as data containers

Functors of the shape `f x ≅ Σᵢ kᵢ -> x` are containers. Almost all type ctors with a Functor instance are containers:
- Maybe x       ≅ (𝟘 -> x) + (𝟙 -> x)
- (Bool, x)     ≅ (𝟙 -> x) + (𝟙 -> x)
- Const Bool x  ≅ (𝟘 -> x) + (𝟘 -> x)
- Either Bool x ≅ (𝟘 -> x) + (𝟘 -> x) + (𝟙 -> x)
- [x]           ≅ (𝟘 -> x) + (𝟙 -> x) + (𝟚 -> x) + …  ≅  `Σᵢ xⁱ`

The only exceptions are probably `(x -> 𝟘) -> 𝟘` and similar constructions.

## Finite sets

```hs
  ∀ a b. (a -> b) -> [a] -> [b]   -- f x = [a] -> [x]
≅ ∀ a. [a] -> [a]                 -- using container formula
≅ ∀ a. Σᵢ aⁱ -> [a]               -- jumping the gun
≅ Πᵢ [i]                          -- exp it with dep types, renaming i to n
≅ (n :: Nat) -> [Fin n]
```

It is exactly the same thing as expressing a dependent function from a certain size and of type `Nat` to a list of finite sets, `Fin`, of that size.

>∀ a b. (a -> b) -> [a] -> [b] ≅ (n :: Nat) -> [Fin n]

Idris does this.

## Refs

* Emily Pillmore: Type Arithmetic and the Yoneda Lemma
https://www.youtube.com/watch?v=aXS5HZ_1fNQ

* Isomorphic Reasoning: Counting Polymorphic Type Inhabitants - slides
https://github.com/cohomolo-gy/Isomorphic-Reasoning/blob/master/main.pdf

* github repo with papers and slides
https://github.com/cohomolo-gy

* alexknvl.com blog
https://web.archive.org/web/20211207114014/https://alexknvl.com/

* Recursion: schemes, algebras, finally tagless, data types
https://web.archive.org/web/20211205051521/https://slides.com/alexanderkonovalov-1/recursion-1/#/0/1

* Counting type inhabitants. - April 20, 2019
https://web.archive.org/web/20211021212648/https://alexknvl.com/posts/counting-type-inhabitants.html

* Why identity of indiscernibles?
https://web.archive.org/web/20201130044525/https://alexknvl.com/posts/why-identity-of-indiscernibles.html

* Equality
https://web.archive.org/web/20210411204416/https://alexknvl.com/posts/eq.html

* Any is a final object.
https://web.archive.org/web/20210430151653/https://alexknvl.com/posts/any-is-final-object.html

* Free theorems
https://web.archive.org/web/20210411211715/https://alexknvl.com/posts/free-theorems.html
