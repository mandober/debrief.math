---
downloaded:       2022-01-15
page-url:         https://plato.stanford.edu/entries/boolalg-math/
page-title:       The Mathematics of Boolean Algebra (Stanford Encyclopedia of Philosophy)
article-title:    The Mathematics of Boolean Algebra
---
# The Mathematics of Boolean Algebra (Stanford Encyclopedia of Philosophy)

Boolean algebra is the algebra of two-valued logic with only sentential connectives, or equivalently of algebras of sets under union and complementation.

The rigorous concept is that of a certain kind of algebra, analogous to the mathematical notion of a group.

This concept has roots and applications in logic (Lindenbaum-Tarski algebras and model theory), set theory (fields of sets), topology (totally disconnected compact Hausdorff spaces), foundations of set theory (Boolean-valued models), measure theory (measure algebras), functional analysis (algebras of projections), and ring theory (Boolean rings).

The study of Boolean algebras has several aspects: structure theory, model theory of Boolean algebras, decidability and undecidability questions for the class of Boolean algebras, and the indicated applications.

In addition, although not explained here, there are connections to other logics, subsumption as a part of special kinds of algebraic logic, finite Boolean algebras and switching circuit theory, and Boolean matrices.

## 1. Definition and simple properties

A Boolean algebra (BA) is a set `A` together with binary operations `+` and `⋅`, and a unary operation `−`, and elements `0` and `1` of `A` such that the following laws hold:
- commutative and associative laws for addition and multiplication
- distributive laws for multiplication over addition
- distributive laws for addition over multiplication
- this special law: `(x + (x⋅y)) = x(x⋅(x + y)) = xx + (−x) = 1x⋅(−x) = 0`

These laws are better understood in terms of the basic example of a BA, consisting of a collection `A` of subsets of a set `X` closed under the operations of 
- union
- intersection
- complementation with respect to `X`

with members `∅` and `X`. 

One can easily derive many elementary laws from these axioms, keeping in mind this example for motivation. Any BA has a natural partial order ≤ defined upon it by saying that x≤y if and only if x+y\=y. This corresponds in our main example to ⊆. Of special importance is the two-element BA, formed by taking the set X to have just one element. The two-element BA shows the direct connection with elementary logic. The two members, 0 and 1, correspond to falsity and truth respectively. The Boolean operations then express the ordinary truth tables for disjunction (with +), conjunction (with ⋅) and negation (with −). An important elementary result is that an equation holds in all BAs if and only if it holds in the two-element BA. Next, we define x⊕y\=(x⋅−y)+(y⋅−x). Then A together with ⊕ and ⋅, along with 0 and 1, forms a ring with identity in which every element is idempotent. Conversely, given such a ring, with addition ⊕ and multiplication, define x+y\=x⊕y⊕(x⋅y) and −x\=1⊕x. This makes the ring into a BA. These two processes are inverses of one another, and show that the theory of Boolean algebras and of rings with identity in which every element is idempotent are definitionally equivalent. This puts the theory of BAs into a standard object of research in algebra. An atom in a BA is a nonzero element a such that there is no element b with 0<b<a. A BA is atomic if every nonzero element of the BA is above an atom. Finite BAs are atomic, but so are many infinite BAs. Under the partial order ≤ above, x+y is the least upper bound of x and y, and x⋅y is the greatest lower bound of x and y. We can generalize this: ΣX is the least upper bound of a set X of elements, and ΠX is the greatest lower bound of a set X of elements. These do not exist for all sets in all Boolean algebras; if they do always exist, the Boolean algebra is said to be complete.

## 2\. The elementary algebraic theory

Several algebraic constructions have obvious definitions and simple properties for BAs: subalgebras, homomorphisms, isomorphisms, and direct products (even of infinitely many algebras). Some other standard algebraic constructions are more peculiar to BAs. An ideal in a BA is a subset I closed under +, with 0 as a member, and such that if a≤b∈I, then also a∈I. Although not immediately obvious, this is the same as the ring-theoretic concept. There is a dual notion of a filter (with no counterpart in rings in general). A filter is a subset F closed under ⋅ , having 1 as a member, and such that if a≥b∈F, then also a∈F. An ultrafilter on A is a filter F with the following properties: 0∉F, and for any a∈A, either a∈F or −a∈F. For any a∈A, let

S(a)\={F:F is an ultrafilter on A and a∈F}.

Then S is an isomorphism onto a BA of subsets of the set X of all ultrafilters on A. This establishes the basic Stone representation theorem, and clarifies the origin of BAs as concrete algebras of sets. Moreover, the sets S(a) can be declared to be a base for a topology on X, and this turns X into a totally disconnected compact Hausdorff space. This establishes a one-one correspondence between the class of BAs and the class of such spaces. As a consequence, used very much in the theory of BAs, many topological theorems and concepts have consequences for BAs. If x is an element of a BA, we let 0x\=−x and 1x\=x. If (x(0), …x(m−1)) is a finite sequence of elements of a BA A, then every element of the subalgebra of A generated by {x(0),…,x(m−1)} can be written as a sum of monomials e(0)x(0)⋅…⋅e(m−1)x(m−1) for e in some set of functions mapping m\={0,…,m−1} into 2\={0,1}. This is an algebraic expression of the disjunctive normal form theorem of sentential logic. A function f from a set X of generators of a BA A into a BA B can be extended to a homomorphism if and only if

e(0)x(0)⋅…⋅e(m−1)x(m−1)\=0

always implies that

e(0)f(x(0))⋅…⋅e(m−1)f(x(m−1))\=0.

This is Sikorski’s extension criterion. Every BA A can be embedded in a complete BA B in such a way that every element of B is the least upper bound of a set of elements of A. B is unique up to A\-isomorphism, and is called the completion of A. If f is a homomorphism from a BA A into a complete BA B, and if A is a subalgebra of C, then f can be extended to a homomorphism of C into B. This is Sikorski’s extension theorem. Another general algebraic notion which applies to Boolean algebras is the notion of a free algebra. This can be concretely constructed for BAs. Namely, the free BA on κ is the BA of closed-open subsets of the two element discrete space raised to the κ power.

## 3\. Special classes of Boolean algebras

There are many special classes of Boolean algebra which are important both for the intrinsic theory of BAs and for applications:

-   Atomic BAs, already mentioned above.
-   Atomless BAs, which are defined to be BAs without any atoms. For example, any infinite free BA is atomless.
-   Complete BAs, defined above. These are specially important in the foundations of set theory.
-   Interval algebras. These are derived from linearly ordered sets (L,<) with a first element as follows. One takes the smallest algebra of subsets of L containing all of the half-open intervals \[a,b) with a in L and b in L or equal to ∞. These BAs are useful in the study of Lindenbaum-Tarski algebras. Every countable BA is isomorphic to an interval algebra, and thus a countable BA can be described by indicating an ordered set such that it is isomorphic to the corresponding interval algebra.
-   Tree algebras. A tree is a partially ordered set (T,<) in which the set of predecessors of any element is well-ordered. Given such a tree, one considers the algebra of subsets of T generated by all sets of the form {b:a≤b} for some a in T.
-   Superatomic BAs. These are BAs which are not only atomic, but are such that each subalgebra and homomorphic image is atomic.

## 4\. Structure theory and cardinal functions on Boolean algebras

Much of the deeper theory of Boolean algebras, telling about their structure and classification, can be formulated in terms of certain functions defined for all Boolean algebras, with infinite cardinals as values. We define some of the more important of these cardinal functions, and state some of the known structural facts, mostly formulated in terms of them

1.  The cellularity c(A) of a BA is the supremum of the cardinalities of sets of pairwise disjoint elements of A.
2.  A subset X of a BA A is independent if X is a set of free generators of the subalgebra that it generates. The independence of A is the supremum of cardinalities of independent subsets of A.
3.  A subset X of a BA A is dense in A if every nonzero element of A is ≥ a nonzero element of X. The π\-weight of A is the smallest cardinality of a dense subset of A.
4.  Two elements x,y of A are incomparable if neither one is ≤ the other. The supremum of cardinalities of subset X of A consisting of pairwise incomparable elements is the incomparability of A.
5.  A subset X of A is irredundant if no element of X is in the subalgebra generated by the others.

An important fact concerning cellularity is the Erdős-Tarski theorem: if the cellularity of a BA is a singular cardinal, then there actually is a set of disjoint elements of that size; for cellularity regular limit (inaccessible), there are counterexamples. Every infinite complete BA has an independent subset of the same size as the algebra. Every infinite BA A has an irredundant incomparable subset whose size is the π\-weight of A. Every interval algebra has countable independence. A superatomic algebra does not even have an infinite independent subset. Every tree algebra can be embedded in an interval algebra. A BA with only the identity automorphism is called rigid. There exist rigid complete BAs, also rigid interval algebras and rigid tree algebras.

More recently, many cardinal functions of min-max type have been studied. For example, small independence is the smallest size of an infinite maximal independent set; and small cellularity is the smallest size of an infinite partition of unity.

## 5\. Decidability and undecidability questions

A basic result of Tarski is that the elementary theory of Boolean algebras is decidable. Even the theory of Boolean algebras with a distinguished ideal is decidable. On the other hand, the theory of a Boolean algebra with a distinguished subalgebra is undecidable. Both the decidability results and undecidablity results extend in various ways to Boolean algebras in extensions of first-order logic.

## 6\. Lindenbaum-Tarski algebras

A very important construction, which carries over to many logics and many algebras other than Boolean algebras, is the construction of a Boolean algebra associated with the sentences in some logic. The simplest case is sentential logic. Here there are sentence symbols, and common connectives building up longer sentences from them: disjunction, conjunction, and negation. Given a set A of sentences in this language, two sentences s and t are equivalent modulo A if and only if the biconditional between them is a logical consequence of A. The equivalence classes can be made into a BA such that + corresponds to disjunction, ⋅ to conjunction, and − to negation. Any BA is isomorphic to one of this form. One can do something similar for a first-order theory. Let T be a first-order theory in a first-order language L. We call formulas ϕ and ψ equivalent provided that T⊢ϕ↔ψ. The equivalence class of a sentence ϕ is denoted by \[ϕ\]. Let A be the collection of all equivalence classes under this equivalence relation. We can make A into a BA by the following definitions, which are easily justified:

\[ϕ\]+\[ψ\]\=\[ϕ∨ψ\]\[ϕ\]⋅\[ψ\]\=\[ϕ∧ψ\]−\[ϕ\]\=\[¬ϕ\]0\=\[F\]1\=\[T\]

Every BA is isomorphic to a Lindenbaum-Tarski algebra. However, one of the most important uses of these classical Lindenbaum-Tarski algebras is to describe them for important theories (usually decidable theories). For countable languages this can be done by describing their isomorphic interval algebras. Generally this gives a thorough knowledge of the theory. Some examples are:

**Theory**

**Isomorphic to interval algebra on**

(1)

essentially undecidable theory

Q, the rationals

(2)

BAs

N×N, square of the positive integers, ordered lexicographically

(3)

linear orders

A×Q ordered antilexicographically, where A is NN in its usual order

(4)

abelian groups

(Q+A)×Q

## 7\. Boolean-valued models

In model theory, one can take values in any complete BA rather than the two-element BA. This Boolean-valued model theory was developed around 1950–1970, but has not been worked on much since. But a special case, Boolean-valued models for set theory, is very much at the forefront of current research in set theory. It actually forms an equivalent way of looking at the forcing construction of Cohen, and has some technical advantages and disadvantages. Philosophically it seems more satisfactory than the forcing concept. We describe this set theory case here; it will then become evident why only complete BAs are considered. Let B be a complete BA. First we define the Boolean valued universe V(B). The ordinary set-theoretic universe can be identified with V(2), where 2 is the 2-element BA. The definition is by transfinite recursion, where α,β are ordinals and λ is a limit ordinal:

V(B,0)\=∅V(B,α+1)\={f:dom(f)⊂V(B,α) and range(f)⊂B}V(B,λ)\=⋃β<λV(B,β).

where dom(f) is the domain of function f and range(f) is the range of function f. The B\-valued universe is the proper class V(B) which is the union of all of these Vs. Next, one defines by a rather complicated transfinite recursion over well-founded sets the value of a set-theoretic formula with elements of the Boolean valued universe assigned to its free variables:

‖x∈y‖\=∑t∈dom(y)‖x\=t‖⋅y(t)‖x⊆y‖\=∏t∈dom(x)−x(t)+‖t∈y‖‖x\=y‖\=‖x⊆y‖⋅‖y⊆x‖‖¬ϕ‖\=−‖ϕ‖‖ϕ∨ψ‖\=‖ϕ‖+‖ψ‖‖∃xϕ(x)‖\=∑a∈V(B)‖ϕ(a)‖.
