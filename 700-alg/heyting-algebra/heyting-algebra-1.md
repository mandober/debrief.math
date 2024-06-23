# Heyting algebra

https://math.stackexchange.com/questions/3933554/how-do-heyting-algebras-relate-to-logic

https://qchu.wordpress.com/2013/12/10/how-to-invent-intuitionistic-logic/

Heyting algebra (HA) is a generalization of how Boolean algebras relate to logic.

A Boolean algebra `B` is a set equipped with two elements `⊥`, `⊤` and ops `∧`, `∨`, `¬`, satisfying the axioms of propositional logic; the intended interpretation is that `B` is a collection of propositions:
- ⊥ is "false"
- ⊤ is "true"
- ∧ is "and"
- ∨ is "or"
- ¬ is "not"

In every Boolean algebra the law of excluded middle, `b ∨ ¬b = 1`, is satisfied.

>Heyting algebras are, most concretely, a generalization of Boolean algebras in which the law of excluded middle is dropped, and hence, they model intuitionist propositional logic (IPL).

The definition of a Heyting algebra can be stated and motivated categorically, as done e.g. in my blog post 'How to invent intuitionistic logic'.


We start by taking the point of view that *the most fundamental concept when it comes to propositions is implication*.

We *axiomatize implication* as defining a partial order `p ≤ q` on the set of propositions.

    p → q := p ≤ q

In particular, *transitivity corresponds to biconditional introduction*: 
the rule of inference that `p ≤ q` and `q ≤ r` implies `p ≤ r`.

    (p ≤ q) ∧ (q ≤ r) ⇔ (p ≤ r)

    ((p → q) ∧ (q → r)) → (p → r)


Remarkably, every other logical operation now corresponds to requiring that *certain universal operations exist with respect to this partial order*.

In particular, in this framework their properties such as commutativity and associativity are theorems, not axioms:

__⊥__ is the *initial object*: 
this says that `⊥` is characterized 
by the property that `⊥ ≤ p` 
(false implies everything).

__⊤__ is the *terminal object*: 
this says that `⊤` is characterized 
by the property that `p ≤ ⊤` 
(everything implies true).

__p ∧ q__ is the *product or meet*: 
this says that `p ∧ q` is characterized 
by being universal wrt the property 
that `p ∧ q ≤ p` and `p ∧ q ≤ q`.

__p ∨ q__ is the *coproduct or join*: 
this says that `p∨q` is characterized 
by being universal wrt the property 
that `p ≤ (p ∨ q)` and `q ≤ (p ∨ q)`.

__¬p__ is the *pseudocomplement*: 
this says that `¬p` is characterized 
by being universal wrt the property 
that `p ∧ (¬p) = ⊥` 
(the principle of explosion).


In particular, every Boolean algebra 
is *partially ordered by implication*: 
explicitly, `(p ≤ q) ⇔ (¬p ∨ q = ⊤)`, 
i.e. either `p` is false or `q` is true.

We can check that all of the above operations exist and 
have the stated universal properties in a Boolean algebra.

>So, the implication partial order recovers all the
>other operations, along with all of their properties.

We can generalize `¬` 
by asking that there exists 
an object `p ⇒ q` 
which is universal 
with respect to the property 
that `p ∧ (p ⇒ q) ≤ q`; 
this is (internal) implication, 
or "relative pseudocomplement", 
and it recovers negation via taking `¬p = (p ⇒ ⊥)`.

It can be described in a nice categorical way as follows: 
asking that `⊥, ⊤, ∧, ∨` exist 
means asking that *propositions form a poset* 
which has all finite limits (products, meets) 
and colimits (coproducts, joins). 
These are the *(bounded) lattices*.

To get a *Heyting algebra* we ask, in addition, 
that all implications `p ⇒ q` exist, 
which is equivalent to asking for all exponential objects.

This means that, categorically:
>A Heyting algebra is a bicartesian closed poset.

In any Heyting algebra we always have `p ≤ ¬¬p`, 
and we generally do not have equality; 
if we do, the Heyting algebra must be a Boolean algebra.


You can write down lots of interesting examples of Heyting algebras which are not Boolean algebras using the open subsets of most topologies. For more on this, see "Topology via Logic" by Vickers.
