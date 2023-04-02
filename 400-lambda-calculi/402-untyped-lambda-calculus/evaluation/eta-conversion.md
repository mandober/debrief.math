# Eta conversion

The *η-conversion* refers to two related process:
* *η-reduction* reduces a lambda expr by applying an abstraction to an arg.
* *η-abstraction* is the reverse process where a free variable is enclosed in a binding abstraction.

For example, the 2 following lambda terms are equivalent under η-conversion:

```js
               η-reduction ->
(λx. x) a <-----------------> a
          <- η-abstraction
```

* Converting the first to the second form would constitute an eta reduction, while the reverse would be an eta abstraction.

* The most general way to denote a lambda application is using an expression schema (not a concrete syntax) that can refer to meta-variables. The meta-vars are usually denoted with a single capital letter, like `M` and `N`, which makes them visually distinct from the lower-cased names of variables (the actual concrete syntax). A meta-var represents an arbitrary lambda term (var/abs/app). We use the meta-var `B` to represent the body of an abs, and an argument to an abs is denoted with the meta-var `A` (a formal param must be a variable, so it has no need for a representing meta-var; it comes as it is, as it were, as it wants it to be, as an old me…mor…y).

* There are some redex shapes that always reduce to the same term:

```js
(λp. B) A      // abstract form of application
(λp. p) A == A // (1)
(λp. B) A == B // (2)    if p ∉ FV(B)


// examples of the form (2) expressions:

// 2.1. [ p := x, B := y, A := x ]
(λx. y) x == y // ok


// 2.2-ERR [ p := x, B := (x x y), A := (λx. x y) ]
(λx. x x y) (λx. x y)

    [x ⟼ (λx. x y)](x x y)

== (λx. x y) (λx. x y) y

    [x ⟼ (λx. x y)]y

== (λx. x y) y y

    [x ⟼ y](x y)

== y y y
// which is completely __WRONG__ due to name-capture!

// do it right:

// 2.2-OK [ p := x, B := (x x y), A := (λx. x y) ]
(λx. x x y) (λx. x y)

    // before doing this β-reduction
    [x ⟼ (λx. x y)](x x y)
    // we need to do an α-conversion
    // since x is in FV(B)
    // that is, if param x ∈ FV(x x y)
    // then we rename the arg? or param?

    // α-conversion


```

1. The application of an abstraction of the form `(λp. p)`, i.e. an abstraction whose body (`B`) is the same as its parameter `p` (both are a variable `p`), for any arguments `A` will reduce to `A`.

2. In case an abstraction's formal param is not referenced in its body (so the arg `A` gets dropped), then such an application always reduces to the term `B`, provided that `p ∉ FV(B)`.




* Extensive use of η-reduction leads to *point-free* style of programming.

* The term `(λp. p) A` always β-reduces to the argument term `A`. So, if you have just an `A`, then you can assume that this β-reduction took place a moment ago. The lamba term `A` stands in for any arbitrary lambda term; however, it hardly makes sense for it to be a variable, i.e. the final overall result can't be a variable because it would be an unbound variable (Where did it come from? Where was it bound? What does it suppose to represent?!). The overall, topmost lambda expression only makes sense if it lacks free variables.

* However, inside the overall expression, while we focus on some part of it, we can see that a standalone variable has no meaning. We can introduce a binder for it: if there's a free var `k` in some subexpression, `… (k) …`, we can introduce an abstraction to bind it; but not like this `… (λk. k) …`! Working backwards from having just the var `k`, the binder must be an identity abstraction, `(λa. a)`






https://wiki.haskell.org/Pointfree
https://wiki.haskell.org/Chaitin%27s_construction
https://wiki.haskell.org/Chaitin%27s_construction/Combinatory_logic


## Motivation for eta rules

[Haskell-cafe] What's the motivation for η rules? (2010)
* https://mail.haskell.org/pipermail/haskell-cafe/2010-December/087782.html
* https://mail.haskell.org/pipermail/haskell-cafe/2010-December/087850.html
https://mail.haskell.org/pipermail/haskell-cafe/2010-December/087784.html


Eta conversion corresponds to extensionality - there is nothing more to a function than what it does to its argument. Suppose `f x = g x` for all `x`. Then using eta conversion:

f x == g x
f   == g

f = (\x -> f x) ==
g = (\x -> g x)

Without eta this is not possible to prove. It would be possible for two functions to be distinct (well, not provably so) even if they do the same thing to every arg - say if they had different performance characteristics. Eta is a "controversial" rule of lambda calculus - sometimes it is omitted, for example, Coq does not use it. It tends to make things more difficult for the compiler.

```hs
kmap :: (a -> b) -> ((a -> r) -> r) -> ((b -> r) -> r)
kmap f k g = k (\a -> g (f a))
-- we can eta-reduce it into:
kmap f k g = k (g . f)
```

---

The motivation for various conversion rules depends quite a lot on one's
circumstances. If the primary concern is run-time computation, then
beta-rules (elimination construct consumes constructor) and definitional
expansion (sometimes "delta"), if you have definition, should do all the
work you need. I'm just wondering how to describe such a need. How about
this property (reminiscent of some results by Herman Geuvers).

Let = be the conversion relation, with whatever rules you've chucked in,
and let --> be beta+delta reduction, with -->* its reflexive-transitive
closure. Suppose some closed term inhabiting a datatype is convertible
with a constructor form

   t = C s1 .. sn

then we should hope that

   t -->* C r1 .. rn   with  ri = si, for i in 1..n

That is: you shouldn't need to do anything clever (computing backwards,
eta-conversion) to get a head-normal form from a term which is kind
enough to have one. If this property holds, then the compiler need only
deliver the beta-delta behaviour of your code. Hurrah!

So why would we ever want eta-rules? Adding eta to an *evaluator* is
tedious, expensive, and usually not needed in order to deliver values.
However, we might want to reason about programs, perhaps for purposes
of optimization. Dependent type theories have programs in types, and
so require some notion of when it is safe to consider open terms equal
in order to say when types match: it's interesting to see how far one
can chuck eta into equality without losing decidability of conversion,
messing up the "Geuvers property", or breaking type-preservation.

It's a minefield, so tread carefully. There are all sorts of bad
interactions, e.g. with subtyping (if -> subtyping is too weak,
(\x -> f x) can have more types than f), with strictness (if
p = (fst p, snd p), then (case p of (x, y) -> True) = True, which
breaks the Geuvers property on open terms), with reduction (there
is no good way to orientate the unit type eta-rule, u = (), in a
system of untyped reduction rules).

But the news is not all bad. It is possible to add some eta-rules
without breaking the Geuvers property (for functions it's ok; for
pairs and unit it's ok if you make their patterns irrefutable). You
can then decide the beta-eta theory by postprocessing beta-normal
forms with type-directed eta-expansion (or some equivalent
type-directed trick). Epigram 2 has eta for functions, pairs,
and logical propositions (seen as types with proofs as their
indistinguishable inhabitants). I've spent a lot of time banging my
head off these issues: my head has a lot of dents, but so have the
issues.

So, indeed, eta-rules make conversion more extensional, which is
unimportant for closed computation, but useful for reasoning and for
comparing open terms. It's a fascinating, maddening game trying to
add extensionality to conversion while keeping it decidable and
ensuring that open computation is not too strict to deliver values.

Hoping this is useful, suspecting that it's TMI
Conor

---

One way to look at it is that β rules are the application of an
eliminator (e.g. function application) to its corresponding constructor
(the lambda expression), whereas η rules correspond to the application
of a constructor to its corresponding eliminator.

E.g.

   λ y . (x y)                =>  x
   if x then True else False  =>  x
   (π₁ x, π₂ x)               =>  x

IOW there's no need for a motivation: those rules just appear naturally.
