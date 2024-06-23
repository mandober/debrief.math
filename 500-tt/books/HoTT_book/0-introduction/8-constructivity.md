# Constructivity

HoTT Book > Introduction > Constructivity

## Constructivity

One of the most striking differences between classical foundations and type theory is the idea of **proof relevance**, according to which mathematical statements, and even their proofs, become first-class mathematical objects.

In type theory, we represent mathematical statements by types, which can be regarded simultaneously as both mathematical constructions and mathematical assertions, a conception also known as *propositions-as-types*.

Accordingly, we can regard a term `a : A` as both an element of the type `A`, and at the same time, a proof of the proposition `A`.

For example, suppose we have sets `A` and `B` (discrete spaces), and consider the statement _"A is isomorphic to B"_. In tt, this can be rendered as:

```
Iso A B :≡ ∑ (f : A → B)
           ∑ (g : B → A)
           ( (∏ (x : A) g (f x) = x)
           × (∏ (y : B) f (g y) = y) )
```

Reading the type ctors
- `Σ` as there exists
- `Π` as for all
- `×` as AND

yields the usual formulation of "A and B are isomorphic"; on the other hand, reading them as sums and products yields the *type of all isomorphisms* between A and B.

To prove that A and B are isomorphic, one constructs a proof `p : Iso(A, B)`, which is therefore the same as constructing an isomorphism between A and B, i.e. exhibiting a pair of functions `f, g` together with proofs that their composites are the respective identity maps. The latter proofs, in turn, are nothing but homotopies of the appropriate sorts.

>In this way, proving a proposition is the same as constructing an element of some particular type.

In particular, to prove a statement of the form "A and B" is just to prove A and to prove B, i.e. to give an element of the type A × B.

And to prove that A implies B is just to find an element of A → B, i.e. a function from A to B (determining a mapping of proofs of A to proofs of B).

The logic of propositions-as-types is flexible and supports many variations, such as using only a subclass of types to represent propositions.

In homotopy type theory, there are natural such subclasses arising from the fact that the system of all types, just like spaces in classical homotopy theory, is "stratified" according to the dimensions in which their higher homotopy structure exists or collapses. 

In particular, Voevodsky has found a purely type-theoretic definition of homotopy n-types, corresponding to spaces with no nontrivial homotopy information above dimension n; the 0-types are the "sets" mentioned previously as satisfying Lawvere's axioms.

Moreover, with higher inductive types, we can universally "truncate" a type into an n-type; in classical homotopy theory this would be its n-th Postnikov section. 
1
Particularly important for logic is the case of homotopy `(−1)-types`, which we call *mere propositions*.

Classically, every `(−1)-type` is *empty* or *contractible*; we interpret these possibilities as the truth values "false" and "true" respectively.

Using all types as propositions yields a very "constructive" conception of logic; for more on this, see [TvD88a, TvD88b].

[TvD88a]: Anne Sjerp Troelstra and Dirk van Dalen. Constructivism in mathematics. Vol. I, volume 121 of Studies in Logic and the Foundations of Mathematics. 1988

[TvD88b]: Anne Sjerp Troelstra and Dirk van Dalen. Constructivism in mathematics. Vol. II, volume 123 of Studies in Logic and the Foundations of Mathematics. 1988

>For instance, every proof that something exists carries with it enough information to actually find such an object; and every proof that "A or B" holds is either a proof that A holds or a proof that B holds.

~~What use does constructive OR has when we already know which disjunct holds?~~

Thus, from every proof we can automatically extract an algorithm; this can be very useful in applications to computer programming.

On the other hand, however, this logic does diverge from the traditional understanding of existence proofs in mathematics. In particular, it does not faithfully represent certain important classical principles of reasoning, such as the *axiom of choice* and the *law of excluded middle*.

For these we need to use the *(−1)-truncated logic*, in which only the *homotopy (−1)-types* represent propositions.

More specifically, consider on one hand the axiom of choice:

  If for every `x : A` there exists a `y : B` such that `R(x, y)`, there is a function `f : A → B` such that for all `x : A` we have `R(x, f x)`.

The pure propositions-as-types notion of "there exists" is strong enough to make this statement simply provable - yet it does not have all the consequences of the usual axiom of choice. 

However, in (−1)-truncated logic, this statement is not automatically true, but is a strong assumption with the same sorts of consequences as its counterpart in classical set theory.

On the other hand, consider the law of excluded middle:

  For all `A`, either `A` or `¬A`.

Interpreting this in the pure propositions-as-types logic yields a statement that is inconsistent with the univalence axiom. 

For since proving `A` means exhibiting an element of it, this assumption would give a uniform way of selecting an element from every nonempty type - a sort of Hilbertian choice operator. 

Univalence implies that the element of A selected by such a choice operator must be invariant under all self-equivalences of A, since these are identified with self-identities and every operation must respect identity; but clearly some types have automorphisms with no fixed points, e.g. we can swap the elements of a two-element type. However, the "(−1)-truncated law of excluded middle", though also not automatically true, may consistently be assumed with most of the same consequences as in classical mathematics.

In other words, while the pure propositions-as-types logic is "constructive" in the strong algorithmic sense mentioned above, the default (−1)-truncated logic is "constructive" in a different sense (namely, that of the logic formalized by Heyting under the name "intuitionistic"); and to the latter we may freely add the axioms of choice and excluded middle to obtain a logic that may be called "classical".

Thus, homotopy type theory is compatible with both constructive and classical conceptions of logic, and many more besides. 

Indeed, the homotopical perspective reveals that classical and constructive logic can coexist, as endpoints of a spectrum of different systems, with an infinite number of possibilities in between (the homotopy n-types for −1 < n < ∞). 

We may speak of `LEMₙ` and `ACₙ`, with `AC∞` being provable and `LEM∞` inconsistent with univalence, while `AC˗₁` and `LEM˗₁` are the versions familiar to classical mathematicians (hence in most cases it is appropriate to assume the subscript (−1) when none is given). 

Indeed, one can even have useful systems in which only certain types satisfy such further "classical" principles, while types in general remain "constructive".

It is worth emphasizing that univalent foundations does not require the use of constructive or intuitionistic logic. 

Most of classical mathematics which depends on LEM and AC can be performed in univalent foundations, simply by assuming that these two principles hold (in their proper, (−1)-truncated, form). 

However, type theory does encourage avoiding these principles when they are unnecessary, for several reasons.

* First of all, every mathematician knows that a theorem is more powerful when proven using fewer assumptions, since it applies to more examples. The situation with AC and LEM is no different: type theory admits many interesting "nonstandard" models, such as in sheaf toposes, where classicality principles such as AC and LEM tend to fail. Homotopy type theory admits similar models in higher toposes, such as are studied in [TV02, Rez05, Lur09]. Thus, if we avoid using these principles, the theorems we prove will be valid internally to all such models. 

* Secondly, one of the additional virtues of type theory is its computable character. In addition to being a foundation for mathematics, type theory is a formal theory of computation, and can be treated as a powerful programming language. From this perspective, the rules of the system cannot be chosen arbitrarily the way set-theoretic axioms can: there must be a harmony between them which allows all proofs to be "executed" as programs. We do not yet fully understand the new principles introduced by homotopy type theory, such as univalence and higher inductive types, from this point of view, but the basic outlines are emerging; see, for example, [LH12].

* It has been known for a long time, however, that principles such as AC and LEM are fundamentally antithetical to computability, since they assert baldly that certain things exist without giving any way to compute them. Thus, avoiding them is necessary to maintain the character of type theory as a theory of computation.

Fortunately, constructive reasoning is not as hard as it may seem. In some cases, simply by rephrasing some definitions, a theorem can be made constructive and its proof more elegant. 

Moreover, in univalent foundations this seems to happen more often. 
For instance:

- (i) In set-theoretic foundations, at various points in homotopy theory and category theory one needs AC to perform transfinite constructions. But with higher inductive types, we can encode these constructions directly and constructively. In particular, none of the "synthetic" homotopy theory in Chapter 8 requires LEM or AC.

- (ii) In set-theoretic foundations, the statement "every fully faithful and essentially surjective functor is an equivalence of categories" is equivalent to AC. But with the univalence axiom, it is just true; see Chapter 9.

- (iii) In set theory, various circumlocutions are required to obtain notions of "cardinal number" and "ordinal number" which canonically represent isomorphism classes of sets and well-ordered sets, respectively - possibly involving AC or the axiom of foundation. But with univalence and higher inductive types, we can obtain such representatives directly by truncating the universe; see Chapter 10.

- (iv) In set-theoretic foundations, the definition of the real numbers as equivalence classes of Cauchy sequences requires either LEM or the axiom of (countable) choice to be well-behaved. But with higher inductive types, we can give a version of this definition which is well-behaved and avoids any choice principles; see Chapter 11.

Of course, these simplifications could as well be taken as evidence that the new methods will not, ultimately, prove to be really constructive. However, we emphasize again that the reader does not have to care, or worry, about constructivity in order to read this book. 

The point is that in all of the above examples, the version of the theory we give has independent advantages, whether or not LEM and AC are assumed to be available. Constructivity, if attained, will be an added bonus.

Given this discussion of adding new principles such as univalence, higher inductive types, AC, and LEM, one may wonder whether the resulting system remains consistent. (One of the original virtues of type theory, relative to set theory, was that it can be seen to be consistent by proof-theoretic means).

As with any foundational system, consistency is a relative question: 
*Consistent with respect to what?*

The short answer is that all of the constructions and axioms considered in this book have a model in the category of Kan complexes, due to Voevodsky [KLV12] (see [LS17] for higher inductive types). Thus, they are known to be consistent relative to ZFC (with as many inaccessible cardinals as we need nested univalent universes).

Giving a more traditionally type-theoretic account of this consistency is work in progress (see, e.g. [LH12, BCH13]).

We summarize the different points of view of the type-theoretic operations in the table below.

Types       | Logic             | Sets               | Homotopy
------------|-------------------|--------------------|-----------------
A           | proposition       | set                | space
a : A       | proof             | element            | point
B(x)        | predicate         | family of sets     | fibration
b(x) : B(x) | conditional proof | family of elements | section
0, 1        | ⊥, ⊤              | ∅, {∅}             | ∅, ∗
A + B       | A ∨ B             | disjoint union     | coproduct
A × B       | A ∧ B             | set of pairs       | product space
A → B       | A => B            | set of functions   | function space
∑(x:A) B(x) | ∃(x.A) B x        | disjoint           | sum total space
∏(x:A) B(x) | ∀(x.A) B x        | product            | space of sections
Idᴀ         | equality (=)      | { (x,x) | x ∈ A }  | path space Aᶦ
