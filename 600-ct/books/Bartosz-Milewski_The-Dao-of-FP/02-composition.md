# 2. Composition

Programming is about composition. Paraphrasing Wittgenstein, one could say: "Of that which cannot be decomposed one should not speak". This is not a prohibition, it's a statement of fact. The process of studying, understanding, and describing is the same as the process of decomposing, and our language reflects this. The reason we have built the vocabulary of objects and arrows is precisely to express the idea of composition.

## TOC

- 2. Composition
  - 2.1 Composition
  - 2.2 Function application
  - 2.3 Identity

## 2.1 Composition

Consider an arrow `f : a -> b` that we'll think of as our "central" arrow, which we compose other arrows with.

The `dom(f) = a` and `cod(f) = b`. In order to change domain or codomain, we can pre-compose or post-compose `f`, respectively, with suitable arrows.

- *Pre-composing* `f` with suitable arrows, `(_ ∘ f)`, changes the *codomain*
- *Post-composing* `f` with suitable arrows, `(f ∘ _)`, changes the *domain*

Let `g` and `h` be arrows so that along with `f` we have:
- g : a -> b
- f : b -> c
- h : c -> d


```
a ┈┈┈┈┈┈ᵍ┈┈┈┈┈┈> b
b ======ᶠ======> c
c ╌╌╌╌╌╌ʰ╌╌╌╌╌╌> d


a ┈┈┈┈┈┈ᵍ┈┈┈┈┈┈> b ======ᶠ======> c ╌╌╌╌╌╌ʰ╌╌╌╌╌╌> d


                       g ∘ f
            ╭────────────┴──────────────╮

a ┈┈┈┈ᵍ┈┈┈> b ======ᶠ=====> c ╌╌╌╌ʰ╌╌╌> d

╰───────────┬───────────────╯
          f ∘ h
╰───────────────────┬───────────────────╯
                g ∘ f ∘ h


a
| ⟍
|   ⟍
|     ⟍ ᵍ ⋅ ᶠ
| ᵍ     ⟍
|         ⟍
↓           ↘
b ----------> c
⟍      ᶠ       |
  ⟍            |
    ⟍          |ʰ
ᶠ ⋅ ʰ  ⟍        |
        ⟍      |
          ⟍    |
            ↘  ↓
               d


|
|ᵍ
↓    ᶠ
b ------> c
          |
          |ʰ
          ↓
          d
```

Composition is the source of two mappings of arrows called pre-composition and post-composition.

In **post-composition**, we compose `f` with other arrows, `(f ∘ -)`, which may be expressed as a section `(f .)` in Haskell. Post-composing `f : b -> c` with suitable arrows, e.g. `h : b -> d`, denoted by `(f ∘ h)` changes the *codomain*.

In **pre-composition** with `f`, we compose `f` with other arrows, `(- ∘ f)`, expressed as a section `(. f)` in Haskell. Pre-composing `f : b -> c` with suitable arrows, e.g. `g : a -> b`, denoted by `(g ∘ f)` changes the *domain*.


* When an arrow `f` is *post-composed* with a suitable arrow, like `h`, the result is the arrow denoted by `f ◦ h`. Post-composition by `f` is denoted in category theory as `(f ◦ −)`, where the dash denotes *a hole* left for compatible functions like `h` to fill in.

Categorically, if we have a category `𝓒` with objects `a` and `b` with an arrow `f : a -> b` between them, we say `a,b ∈ Ob(𝓒)` and `f ∈ Ar(𝓒)`, or, more explicitly, `f : a -> b ∈ Ar(𝓒)`, which implies that `a,b ∈ Ob(𝓒)`.

A *hom-set* related to an object `a` in a category `𝓒` is the set of outgoing arrows arrows from `a`, `a -> -`, i.e. we fix the object `a` and collect all the outgoing arrows from `a` in a set.




Thus an arrow `f : a -> b` induces a mapping of arrows `(f ◦ −)` that maps arrows which are probing `a` to arrows which are probing `b`.

```
        (f ∘ -)
│││ - - - - - - -> │││
│││                │││
↓↓↓                ↓↓↓
 a ---------------> b
          f
```








If a middle function is `f : a -> b`

Post-composition of function `g : e -> a` 
as `g . f` 
changes the input type of the original function (`f`) 
from `a` to `e`.    

Pre-composition of function `h : b -> r` 
as `f . h` 
changes the output type of the original function (`f`) 
from `b` to `r`.


```hs

     g            f           h
o---------->o---------->o---------->o
e           a           b           r

    (f) . g       post-composition (before `f`) changes the type of input
h . (f)           pre-composition (after `f`) changes the type of output
h . (f) . g       changes both the input and output type


a     f     b
o----------->o
↑ .        ↗ │
│   .   .    │
│     .      │h
│g  .    .   │
│ .        ↘ ↓
o - - - - -> o
e            r

Post- and pre-composition induce 3 new functions:
    (f)     :: a -> b
    (f) . g :: e -> b     (on the main diagonal, induces by post-composition)
h . (f)     :: a -> r     (on the aux diagonal, induces by pre-composition)
g . (f) . h :: e -> r     (at the bottom)
```


### Post-composition

When an arrow `f` is *post-composed* with an arrow `h`, we have `f ∘ h`.

**Post-composition** by `f` is written as `(f ∘ -)`, leaving a hole for `h`.

```hs
(.) :: (x -> a) -> (a -> b) -> (x -> b)
g . f = \a -> g (f a)

f :: a -> b
f = …

(f .) :: (x -> a) -> (x -> b)
(f .) g = \a -> g (f a)
```

>Thus an arrow `f : a -> b` induces a mapping of arrows `(f ∘ -)` which maps arrows that probe `a` to arrows that probe `b`.

```
        (f ∘ -)
│││ - - - - - - -> │││
│││                │││
↓↓↓                ↓↓↓
 a ---------------> b
          f
```

Since objects have no internal structure, when we say that `f` transforms `a` to `b`, this is exactly what we mean.

>Post-composition lets us shift focus from one object to another.

```
f : a -> b
g : x -> a
f ∘ g : x -> b

x ----g---> a
            a ----f---> b
x --------f ∘ g-------> b
```


### Pre-composition

Dually, we can *pre-compose* `f`, or apply `(- ∘ f)` to arrows that originate in `b` and map them to arrows that originate in `a`.

```
          f
 a ---------------> b
│││                │││
│││ <- - - - - - - │││
↓↓↓                ↓↓↓
        (- ∘ f)
```

Note that the outgoing arrows are all mapped in the direction opposite to the arrow `f`.


```hs
(.) :: (b -> c) -> (a -> b) -> (a -> c)
g . f = \a -> g (f a)

f :: a -> b
f = …

(. f) :: (b -> c) -> (a -> c)
(. f) g = \a -> g (f a)
```

>Pre-composition let us shift the perspective from one observer to another.


---

Pre-composition and post-composition are mappings of arrows. Since arrows form sets, these are functions between sets.

Another way of looking at pre-composition and post-composition is that they are the result of partial application of the two-hole composition operator (- ∘ -), in which we pre-fill one hole or the other with an arrow.

>In programming, an *outgoing arrow* is interpreted as a **consumer** (extracts data from the source). An *incoming arrow* is interpreted as a **producer** (produces data of the target type).

In FP, outgoing arrows define the interface, 
incoming arrows define the data constructors.


## 2.2 Function application

An arrow from the terminal object `1` to `a` is an element of `a` (it picks an element `x` of `a`), _x : 1 -> a_.

If we have an arrow _f : a -> b_, we can compose these two - their composition `f ∘ x`, is the arrow `y` from `1` to `b`, _y : 1 -> b_. In other words, `y` is an element of `b` (it picks an element `y` of `b`).

We used `f` to map an element of `a` into an element of `b`. We denote this application of a function `f` to `x` as `f x`.

>So, `y = f ∘ x` is the same as `y = f x` (!) when `x` function repr an element.

In Haskell, this translates to `x :: a`, an element `x` of type `a`, which we treat like the categorical shorthand for `x :: () -> a`.

We declare a function `f` as an element of the **object of arrows** from `a` to `b`, _f :: a -> b_ with the understanding (which will be elaborated upon later) that it corresponds to an arrow from `a` to `b`. The result is an element of `b`, i.e. `y :: b`, defined as `y = f x`.

>We call this the application of a function to an argument, but we were able to express it purely in terms of function composition (sure, but only in CT).

## 2.3 Identity

You may think of arrows as representing change: object `a` becomes object `b`. An arrow that loops back represents a change in an object itself. But change has its dual: lack of change, inaction or *the identity arrow*.

Every object has a special arrow called the identity, which leaves the object unchanged. It means that, when you compose this arrow with any other arrow, either incoming or outgoing, you get that arrow back. Identity arrow does nothing to an arrow.

An identity arrow of the object `a` is _1ᵃ : a -> a_. We can pre-compose it with the arrow _f : a -> b_, `f ∘ 1ᵃ`, to get back `f`, called the **right identity of composition**.

An identity arrow of the object `b` is _1ᵇ : b -> b_. We can post-compose it with the arrow _f : a -> b_, `1ᵇ ∘ f`, to get back `f`, called the **left identity of composition**.

The right and left identity, `1ᵇ ∘ f = f = f ∘ 1ᵃ`, imply **total identity**.

We've seen before that both the initial object and the terminal object have unique arrows circling back to them. Now we are saying that every object has an identity arrow circling back to it. Remember what we said about uniqueness: If you can find two of those, then they must be equal. We must conclude that these unique looping arrows must be the identity arrows.

In logic, identity arrow translates to a tautology. It is a trivial proof that, "if `a is true` then `a is true`". It is called *the identity law*.


If identity does nothing then why do we care about it? Imagine going on a trip, composing a few arrows, and finding yourself back at the starting point. The question is: Have you done anything, or have you wasted your time? The only way to answer this question is to *compare your path with the identity arrow*. Some round trips bring change, others don't.
