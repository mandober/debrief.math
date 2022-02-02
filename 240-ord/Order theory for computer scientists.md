---
downloaded:       2021-11-05
author:           
page-url:         https://matt.might.net/articles/partial-orders/
page-title:       Order theory for computer scientists
article-title:    Order theory for computer scientists
article-length:   13341
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Order theory for computer scientists

Partial order theory is widely employed in
computer science, particularly in 
logic,
formal methods,
programming languages
and 
static analysis.
Partial order theory is widely employed in computer science, particularly in logic, formal methods, programming languages and static analysis.

But, because partial order theory is intertwined with other fields (like topology) there is a zoo of definitions and concepts attached to the area.

Not all of it is commonly used for computer science.

In this article, I've summarized the fragment of partial order theory most commonly used in computer science, and in particular, in my home fragment of static analysis.

Topics covered include preorders, equivalence relations, total orders, partial orders, semilattices, lattices, bounded lattices and complete lattices, Scott-continuity, monotonicity, fixed points and Kleene's fixed point theorem.

At the end, you'll find natural liftings for partial orders and lattices across power sets, Cartesian products, sequences and function spaces.

Where applicable, formal definitions are transliterated into Haskell.

\[If you're interested in partial order theory for static analysis, you should check out the appendix in [Principles of Program Analysis][1]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=3642084745):

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&Format=_SL160_&ASIN=3642084745&MarketPlace=US&ID=AsinImage&WS=1&tag=mmamzn06-20&ServiceVersion=20070822)][2]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=3642084745)

It's comprehensive.\]

## Haskell code

The header for the Haskell code in this file is:

import Data.Map as Map hiding (map)
import Data.Set as Set hiding (map)

type ℙ a = Set.Set a

type k :-> v = Map.Map k v

And, the ghc extensions used are:

 -XTypeOperators -XTypeSynonymInstances \\
 -XParallelListComp -XFlexibleInstances

## Preorders

A binary relation ⊑ on a set X is a __preorder__ iff the relation ⊑ is both reflexive and transitive.

A binary relation R is __reflexive__ if xRx for any x.

A binary relation R is __transitive__ if aRb and bRc implies aRc.

## Equivalence relations

An __equivalence relation__ ≡ is a preorder that is also symmetric.

A binary relation R is __symmetric__ if aRb implies bRa.

An equivalence relation ≡ divides a set S into equivalence classes.

The __equivalence class__ of the element x is \[x\]≡:

\[x\]≡\={y|x≡y}.

The set of all equivalence classes on X under the relation ≡ is the set X/≡.

### Equivalence relations from preorders

Every preorder ⊑ induces a natural equivalence relation ≡⊑:

a≡⊑b iff a⊑b and b⊑a.

## Partial orders

A __partial order__ is a preorder that is antisymmetric.

A __partially ordered set__ or __poset__ is a set X equipped with a partial order ⊑, often described as the pair (X,⊑).

A binary relation R is __antisymmetric__ if aRb and bRa implies a\=b.

In Haskell, we can define a partial order through type classes:

class PartialOrder t where
 (⊑) :: t -> t -> Bool

## Total orders

A __total order__ ≤ is a binary relation that is total, transitive and antisymmetric.

A binary relation R is __total__ if for any two values a and b, aRb or bRa.

Totality implies reflexivity, which means that every total order is also a partial order.

## Meet semilattices

A __meet semilattice__ is a poset for which any two elements a and b have a greatest lower bound, denoted a⊓b.

The greatest lower bound of a and b is the largest element that is still less than both of them.

In a lattice, the greatest lower bound must be unique.

The greatest lower bound of a and b is also called the *meet* or *infimum* of a and b.

The __greatest lower bound__ has the following properties:

-   (a⊓b)⊑a.
-   (a⊓b)⊑b.
-   c⊑a and c⊑b implies c⊑(a⊓b).

## Join semilattices

A __join semilattice__ is a poset for which any two elements a and b have a least upper bound, denoted a⊔b.

The least upper bound of a and b is the smallest element that is still greater than both.

In a lattice, the least upper bound must be unique.

The least upper bound of a and b is also called the *join* or *supremum* of a and b.

The __least upper bound__ has the following properties:

-   a⊑(a⊔b).
-   b⊑(a⊔b).
-   a⊑c and b⊑c implies (a⊔b)⊑c.

## Lattices

If a poset is both a meet semilattice and a join semilattice, then the poset is also a __lattice__.

In Haskell, a lattice is a partial order with meet and join defined:

class PartialOrder t => Lattice t where
 (⊔) :: t -> t -> t
 (⊓) :: t -> t -> t

## Bounded lattices

A lattice (L,⊑) is __bounded__ if there exists a maximum element (top or ⊤) and a minimum element (bottom or ⊥) in the set L.

For any element x in the lattice, it must be the case that:

-   x⊑⊤ and
-   ⊥⊑x.

In Haskell, the type class for a bounded lattice defines a top and a bottom:

class Lattice t => BoundedLattice t where
 bot :: t
 top :: t

## Complete lattices

A lattice (L,⊑) is a __complete lattice__ if every (possibly infinite) subset S of L has both a least upper bound (sup(S)) and a greatest lower bound (inf(S)).

Every complete lattice (L,⊑) is a bounded lattice:

-   ⊥\=inf(L).
-   ⊤\=sup(L).

## Monotonic functions

Given posets (X,⊑X) and (Y,⊑Y), a function f:X→Y is __monotonic__ or __order-preserving__ if x⊑Xx′ implies f(x)⊑Yf(x′).

## Continuous functions

To define continuous function, we first need to define member-wise function application across sets.

Given a function f:X→Y, if S⊆X, then f.S\={f(x)|x∈S}.

Alternately, f.{x1,…,xn}\={f(x1),…,f(xn)}.

(In some texts, member-wise function application is not notationally distinguished from ordinary function application.)

Given lattices (X,⊑X) and (Y,⊑Y), a function f:X→Y is __Scott-continuous__ if S⊆X implies f(sup(S))\=sup(f.S).

Scott-continuous functions are also monotonic.

## Fixed points

Given a function f:X→X, x is a __fixed point__ of f if x\=f(x).

### Regions

With respect to a monotonic function f:X→X on a complete lattice (X,⊑), we can divide the set X into regions:

-   Fix(f)\={x|x\=f(x)} is the fixed-point region.
-   Asc(f)\={x|x⊑f(x)} is the ascending region.
-   Desc(f)\={x|x⊒f(x)} is the descending region.

It is useful to distinguish the least and greatest fixed points:

-   lfp(f)\=inf(Fix(f)).
-   gfp(f)\=sup(Fix(f)).

The following properties hold for these regions:

-   Fix(f)\=Asc(f)∩Desc(f).
-   If x∈Asc(f), then f(x)∈Asc(f).
-   If x∈Desc(f), then f(x)∈Desc(f).
-   ⊥∈Asc(f).
-   ⊤∈Desc(f).

I recommend proving these properties as short exercises.

### Kleene chain

Given a monotonic function f:L→L on a lattice (L,⊑), the __Kleene chain__ starting at the point x∈L is the set K(x):

K(x)\={fi(x)|i≥0}

The fi notation means iterated function composition:

f0(x)\=x and fi(x)\=fi−1(f(x)).

If x∈Asc(f), then there will be an ascending order to the chain K(x), since fi(x′)⊑fi+1(x′) for any x′∈Asc(f).

In Haskell, an infinite list represents the Kleene chain starting at bottom:

kleene :: (BoundedLattice t) => (t -> t) -> \[t\]
kleene f = bot:(map f (kleene f))

### Kleene's fixed point theorem

On lattices, Kleene's fixed point theorem says:

If (L,⊑) is a complete lattice  
and the function f:L→L is continuous,  
then lfp(f)\=sup(K(⊥)).

Moreover, for a lattice of finite height, there exists a natural n such that:

lfp(f)\=fn(⊥).

This fact leads to a simple algorithm for computing fixed points.

The `stable` function looks for the first element in a sequence to repeat its neighbor:

stable :: Eq a => \[a\] -> a
stable (x:fx:tl) | x == fx   = x
                 | otherwise = stable (fx:tl)

So, the least fixed point function looks for a stable point in the Kleene sequence:

lfp :: (BoundedLattice t, Eq t) => (t -> t) -> t
lfp f = stable (kleene f)

## Natural lifts for lattices

There are several natural liftings for posets and lattices across the foundational discrete data structures: flat sets, power sets, Cartesian products, sums, sequences and functions.

### Pointed sets

Given a set S, the pointed poset S⊥ contains a bottom:

S⊥\=S+⊥.

And, the pointed poset S⊤ contains a top:

S⊤\=S+⊤.

If (S,⊑) is a poset, then the order is extended under pointing, so that for the lattice (S⊤⊥,⊑′):

-   ⊥⊑′x for any x.
-   x⊑′⊤ for any x.
-   x⊑′x′ iff x⊑x′ for any x,x′∈S.

In Haskell:

data Pointed a = PTop
               | PBot
               | PEl a 

instance PartialOrder a => PartialOrder (Pointed a) where 
 PBot ⊑ x = True
 x ⊑ PTop = True
 (PEl a) ⊑ (PEl b) = a ⊑ b

### Flat lattices

Given a set S, we can lift S into a __flat lattice__ (L,⊑):

L\=S⊤⊥\=S+⊥+⊤.

where x⊑y iff:

-   x\=⊥ or
-   y\=⊤ or
-   x\=y.

In Haskell:

data Flat a = Top 
            | Bot
            | El a

instance (Eq a) => PartialOrder (Flat a) where
 Bot ⊑ x = True
 x ⊑ Top = True
 (El a) ⊑ (El b) = a == b

instance (Eq a) => Lattice (Flat a) where
 Bot ⊔ x = x
 x ⊔ Bot = x

 Top ⊔ x = Top
 x ⊔ Top = Top

 (El a) ⊔ (El b) | a == b    = El a
                 | otherwise = Top

 Bot ⊓ x = Bot
 x ⊓ Bot = Bot

 Top ⊓ x = x
 x ⊓ Top = x

 (El a) ⊓ (El b) | a == b    = El a
                 | otherwise = Bot

instance (Eq a) => BoundedLattice (Flat a) where
 bot = Bot
 top = Top

### Partial orders over sums

Given a collection of posets (X1,⊑1),…,(Xn,⊑n) we can naturally lift the partial order into the poset (X1+⋯+Xn,⊑):

x⊑x′ iff x⊑ix′ for some i.

If the posets are lattices, then the resulting poset is *not* a lattice by default.

To make it into a lattice, it must pointed.

### Lattices over Cartesian products

Given lattices (L1,⊑1) and (L2,⊑2), the natural component-wise Cartesian product lattice is (L1×L2,⊑):

(a,b)⊑(a′,b′) iff a⊑1a′ and b⊑2b′.

so that:

-   (a,b)⊔(a′,b′)\=(a⊔a′,b⊔b′); and
-   (a,b)⊓(a′,b′)\=(a⊓a′,b⊓b′); and
-   ⊥\=(⊥L1,⊥L2); and
-   ⊤\=(⊤L1,⊤L2).

In Haskell:

instance (PartialOrder a, PartialOrder b) => PartialOrder (a,b) where
 (x,y) ⊑ (x',y') = x ⊑ x' && y ⊑ y'

instance (Lattice a, Lattice b) => Lattice (a,b) where
 (x,y) ⊔ (x',y') = (x ⊔ x', y ⊔ y')
 (x,y) ⊓ (x',y') = (x ⊓ x', y ⊓ y')

instance (BoundedLattice a, BoundedLattice b) => 
         BoundedLattice (a,b) where
 bot = (bot,bot)
 top = (top,top)

### Partial orders over sequences

Given a poset (L,⊑) the natural sequence poset is (L∗,⊑∗):

⟨x1,…,xn⟩⊑∗⟨x′1,…,x′n⟩ iff xi⊑x′i for all i such that 0≤i≤n.

As with sums, sequences must be pointed to become lattices. That is, there is no sequence which is greater (or lesser) than all other sequences because sequences of different lengths are always incomparable.

In Haskell:

instance (PartialOrder a) => PartialOrder \[a\] where
 \[\]     ⊑ \[\]       = True
 (x:xl) ⊑ (x':xl') = (x ⊑ x') && (xl ⊑ xl')
 \_      ⊑ \_        = False -- different lengths

instance (Lattice a) => Lattice (Pointed \[a\]) where
 PBot ⊔ x = x
 x ⊔ PBot = x

 PTop ⊔ x = PTop
 x ⊔ PTop = PTop 

 (PEl v) ⊔ (PEl v') = PEl \[ x ⊔ x' | x <- v | x' <- v' \]

 PBot ⊓ x = PBot
 x ⊓ PBot = PBot

 PTop ⊓ x = x
 x ⊓ PTop = x

 (PEl v) ⊓ (PEl v') = PEl \[ x ⊓ x' | x <- v | x' <- v' \]

instance (Lattice a) => BoundedLattice (Pointed \[a\]) where 
 bot = PBot
 top = PTop

### Inclusion lattices

Given a set S, the subsets of S form a lattice under inclusion: (P(S),⊆).

### Preorder over partially ordered sets

Given a partial order (X,⊑), we can define the preordered set (P(X),⊑′):

S⊑′S′ iff for each x∈S, there exists x′∈S′ such that x⊑x′.

Why is this not a partial order itself?

Consider sets over the natural numbers with the natural total order. Under this regime, {1,2,3}⊑′{3} and {3}⊑′{1,2,3}, yet {1,2,3}≠{3}, which violates antisymmetry.

Of course, it is possible to lift a preorder into a partial order over equivalences classes.

Alternatively, sets can be canonicalized, so that only that each equivalence class is represented by a single distinguished member.

### Partial orders from preorders

If a preorder is not also a partial order, it is possible to lift a partial order to equivalence classes of the preorder.

Given a preordered set (X,≤), the natural partial order over equivalence classes is the poset (X/≡,⊑), where a≡b iff a≤b and b≤a:

\[x\]≡⊑\[y\]≡ iff x≤y.

### Lattices over functions

Given a lattice (Y,⊑) and a set X, the natural point-wise lattice is the lattice (X→Y,⊑′):

f⊑′g iff f(x)⊑g(x) for every x∈dom(f),

so that:

(f⊔g)(x)\=f(x)⊔g(x),

and:

(f⊓g)(x)\=f(x)⊓g(x).

In Haskell:

instance (Ord k, PartialOrder v) => PartialOrder (k :-> v) where
 f ⊑ g = isSubmapOfBy (⊑) f g

instance (Ord k, Lattice v) => Lattice (k :-> v) where
 f ⊔ g = unionWith (⊔) f g
 f ⊓ g = unionWith (⊓) f g

instance (Ord k, BoundedLattice v) => BoundedLattice (k :-> v) where
 bot = Map.empty
 top = error "top map: not finitely representable" 

## What's next?

This post scratches the surface of order theory, and it leaves out even some applications in computer science.

The two biggest omissions are reserved for future posts: the ordinals and the Scott domain theory.

The ordinals extend the natural numbers into a transfinite arithmetic and provide a powerful structure for well-ordering.

That well-ordered structure is a powerful mechanism for reasoning about program termination.

Scott domain theory gives a meaningful interpretation to the infinitely recursive domain equations that arise in denotational semantics.

If you'd like to learn Haskell, I recommend [Learn You a Haskell for Great Good!: A Beginner's Guide][3]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=1593272839):

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&Format=_SL160_&ASIN=1593272839&MarketPlace=US&ID=AsinImage&WS=1&tag=mmamzn06-20&ServiceVersion=20070822)][4]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=1593272839)

And, for using Haskell, I recommend [Real World Haskell][5]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=0596514980):

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&Format=_SL160_&ASIN=0596514980&MarketPlace=US&ID=AsinImage&WS=1&tag=mmamzn06-20&ServiceVersion=20070822)][6]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=0596514980)

## Related posts

-   [Counting hash collisions with the birthday paradox][7]
-   [HOWTO: Translate math into code][8]
-   [Logical literacy][9]
-   [Fermat and Solovay-Strassen primality tests in Scheme][10]
-   [An implementation of RSA in Scheme][11]
-   [Why guaranteed file compression is impossible][12]

---

[1]: http://www.amazon.com/gp/product/3642084745/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=3642084745
[2]: http://www.amazon.com/gp/product/3642084745/ref=as_li_ss_il?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=3642084745
[3]: http://www.amazon.com/gp/product/1593272839/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=1593272839
[4]: http://www.amazon.com/gp/product/1593272839/ref=as_li_ss_il?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=1593272839
[5]: http://www.amazon.com/gp/product/0596514980/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0596514980
[6]: http://www.amazon.com/gp/product/0596514980/ref=as_li_ss_il?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0596514980
[7]: http://matt.might.net/articles/counting-hash-collisions/
[8]: http://matt.might.net/articles/discrete-math-and-code/
[9]: http://matt.might.net/articles/logical-literacy/
[10]: http://matt.might.net/articles/implementation-of-fermat-and-solovay-strassen-primality-tests-for-rsa-key-generation-in-scheme-dialect-of-lisp/
[11]: http://matt.might.net/articles/implementation-of-rsa-public-key-cryptography-algorithm-in-scheme-dialect-of-lisp/
[12]: http://matt.might.net/articles/why-infinite-or-guaranteed-file-compression-is-impossible/
