# Apartness relation in nLab

https://ncatlab.org/nlab/show/apartness+relation

Relations
- [relation][1]
- [internal relation][2]
- [Rel][3]
- [bicategory of relations][4]
- [allegory][5]
- [reflexive][6], [irreflexive][7]
- [symmetric][8], [antisymmetric][9], [asymmetric][10]
- [transitive][11], [comparison][12]
- left and right [euclidean][13]
- [total][14], [connected][15]
- [extensional][16], [well-founded][17] relations
- [functional relations][18]
- [entire relations][19]
- [equivalence relations][20], [congruence][21]
- [apartness relations][22]
- [simple graph][23]
- [2-congruence][24]
- [(n,r)-congruence][25]


## Idea

An *apartness relation* is a [binary relation][26] that, instead of saying when two things are the same (as an [equivalence relation][27]), states when two things are different - an [inequality relation][28].

Apartness relations are most used in [constructive mathematics][29]; in [classical mathematics][30], equivalence relations can take their place (mediated by [negation][31]).

The apartness relations that we discuss here are sometimes called __point-point apartness__, to distinguish this from the related concepts of *set-set* or *point-set* apartness relations; see [proximity space][32] and [apartness space][33] (respectively) for these.


## Definition

### Abstract

A [set][34] SS equipped with an __apartness relation__ is a [groupoid][35] (with SS as the set of [objects][36]) [enriched][37] over the [cartesian monoidal category][38] TV opTV^\\op, that is the [opposite][39] of the [poset][40] of [truth values][41], made into a [monoidal category][42] using [disjunction][43]. By the law of [excluded middle][44] (which says that TVTV is self-dual under [negation][45]), this is equivalent to equipping SS with an [equivalence relation][46] (which makes SS a groupoid [enriched][47] over the cartesian category TVTV *itself*). But in [constructive mathematics][48] (or interpreted [internally][49]), it is a richer concept with a topological flavour, as TV opTV^\\op is a [co-Heyting algebra][50].

### Concrete

Of course, nobody but a category-theorist would use the above as a *definition* of an apartness relation. Normally, one defines an apartness relation on SS as a binary relation #\\# satisfying these three properties:

-   [irreflexivity][51]: for all x:Sx: S, x#xx \\# x is false;
-   [symmetry][52]: for all x,y:Sx, y: S, if y#xy # x, then x#yx # y;
-   [comparison][53]: for all x,y,z:Sx, y, z: S, if x#zx # z, then x#yx # y or y#zy # z.

(Notice that these are dual to the axioms for an [equivalence relation][54]; like those axioms, these correspond to [identity morphisms][55], [inverses][56], and [composition][57] in a groupoid.)

The [negation][58] of an apartness relation is an equivalence relation. (On the other hand, the statement that every equivalence relation is the negation of some apartness relation is equivalent to [excluded middle][59], and the statement that the negation of an equivalence relation is always an apartness relation is equivalent to the nonconstructive [de Morgan law][60].) An apartness relation is __tight__ (see [connected relation][61]) if this equivalence relation is [equality][62]; any apartness relation defines a tight apartness relation on the [quotient set][63]. A tight apartness relation, also called an __inequality__, is often written ≠\\ne instead of #\\#, but keep in mind that ≠\\ne is not the negation of \=\=; rather, \=\= is the negation of ≠\\ne. (So inequality, when it exists, is more basic than equality.)

If SS and TT are both sets equipped with apartness relations, then a [function][64] f:S→Tf\\colon S \\to T is __[strongly extensional][65]__ if x#yx \\# y whenever f(x)#f(y)f(x) \\# f(y); that is, ff reflects apartness. The strongly extensional functions are precisely the [enriched functors][66] between TV opTV^\\op\-enriched groupoids, so they are the correct morphisms. (Note that there is no nontrivial notion of enriched [natural isomorphism][67], at least not when the apartness in TT is tight.)

In [homotopy type theory][68], a __pure tight apartness relation__ on a type AA is a type family[?][69] # A:(A×A)→Type#\_A:(A \\times A) \\rightarrow Type such that ∏ m:A∏ n:A((m# An)→0)\=(m\= An)\\prod\_{m:A} \\prod\_{n:A} ((m #\_A n) \\rightarrow 0) = (m =\_A n), where \= A\=\_A is the [equality type][70] on AA and \=\= is equality between types. A __mere tight apartness relation__ on a type AA is a mere relation # A:(A×A)→Prop#\_A:(A \\times A) \\rightarrow Prop such that |∏ m:A∏ n:A((m# An)→0)|\=|m\= An|\\vert \\prod\_{m:A} \\prod\_{n:A} ((m #\_A n) \\rightarrow 0) \\vert = \\vert m =\_A n\\vert, where |A|\\vert A \\vert is the [propositional truncation][71] of type AA.

## 3\. The category of inequality spaces

By an __inequality space__, I mean a set equipped with a tight apartness relation. By a __map__, I mean a strongly extensional function between inequality spaces.

In the category of inequality spaces, [monomorphisms][72] between inequality spaces are strongly extensional functions that preserve tight apartness, or strong [injections][73]. These monomorphisms are [regular monomorphisms][74]. The category of inequality spaces has all (small) [limits][75], [created][76] by the [forgetful functor][77] to [Set][78]. (For example, (a,b)≠(x,y)(a,b) \\ne (x,y) iff a≠xa \\ne x or b≠yb \\ne y.) Similarly, it has all finite [coproducts][79], and it has [quotients][80] of [equivalence relations][81]. In fact, this category is a [complete][82] [pretopos][83]. It is *not*, however, a [Grothendieck topos][84] (or even a [topos][85] at all), because it doesn't have all infinite coproducts. (To be precise, the statement that it has all small coproducts, or even that it has a subobject classifier, seems to be equivalent to excluded middle.)

We can say, however, that it has coproducts indexed by inequality spaces, although to make this precise is a triviality. More interestingly, it has products indexed by inequality spaces; that is, it is (even [locally][86]) a [cartesian closed category][87]. In particular, given inequality spaces XX and YY, the set StrExt(X,Y)\\StrExt(X,Y) of maps from XX to YY becomes an inequality space under the rule that f≠gf \\ne g iff f(x)≠g(x)f(x) \\ne g(x) for some x:Xx\\colon X.

If you generalise from inequality spaces to allow non-tight apartness relations, then you get (at first) a different category. However, now you also have 22\-[morphisms][88] which serve to identify unequal but equivalent (that is, not apart) elements of a space, so the resulting bicategory is [equivalent][89] to the category of inequality spaces.

## 4\. Topological aspects

### The apartness topology

Let SS be a set equipped with an apartness relation ≠\\ne. Using ≠\\ne, many [topological][90] notions may be defined on SS. (Often one assumes that the apartness is tight; this corresponds to the T 0T\_0 [separation axiom][91] in topology.)

If UU is a [subset][92] of SS and xx is an element, then UU is a ≠\\ne\-__[neighbourhood][93]__ (or ≠\\ne\-__neighborhood__) of xx if, given any y:Sy\\colon S, x≠yx \\ne y or y∈Uy \\in U; note that x∈Ux \\in U by irreflexivity. The neighbourhoods of xx form a [filter][94]: a superset of a neighbourhood is a neighbourhood, and the intersection of 00 or 22 (hence of any finite number) of neighbourhoods is a neighbourhood.

A subset GG is ≠\\ne\-__[open][95]__ if it's a neighbourhood of all of its members. The open subsets form a [topology][96] (in the sense of Bourbaki): any union of open subsets is open, and the intersection of 00 or 22 (hence of any finite number) of open subsets is open.

The ≠\\ne\-__complement__ of xx is the subset {y:S|x≠y}\\{y\\colon S \\;|\\; x \\ne y\\}; this is open by comparison. More generally, the ≠\\ne\-__[complement][97]__ of any subset AA is the set A˜\\tilde{A}, defined as:

A˜≔{y|∀x∈A,x≠y}. \\tilde{A} \\coloneqq \\{y \\;|\\; \\forall{x} \\in A,\\; x \\ne y\\} .

This is not in general open, but you would use it where you would classically use the set-theoretic complement. However, if AA is open to begin with, then A˜\\tilde{A} equals the set-theoretic complement.

If x≠yx \\ne y, then x∈y˜x \\in \\tilde{y} and y∈x˜y \\in \\tilde{x}. Thus, if ≠\\ne is tight, then (S,≠)(S, \\ne) satisfies the T 1T\_1 [separation axiom][98]. Symmetry is important here; if we removed symmetry from the axioms of apartness (obtaining a quasi-apartness[?][99]) but retained tightness, then we would still get a T 0T\_0 topology, but it would not be T 1T\_1. This is a version of the fact that failure of T 1T\_1 is given by a [partial order][100] (or a [preorder][101] if T 0T\_0 might also fail).

The ≠\\ne\-__[closure][102]__ A¯\\bar{A} of a subset AA is the complement of its complement. This closure is a [closure operator][103]: A⊂A¯A \\subset \\bar{A}, A¯¯\=A¯\\overline{\\bar{A}} = \\bar{A} (in fact, A˜¯\=A˜\\overline{\\tilde{A}} = \\tilde{A}), A¯⊂B¯\\bar{A} \\subset \\bar{B} whenever A⊂BA \\subset B, S¯\=S\\overline{S} = S (in fact, ∅¯\=∅\\bar{\\empty} = \\empty too), and A∩B¯\=A¯∩B¯\\overline{A \\cap B} = \\bar{A} \\cap \\bar{B} (but *not* A∪B¯\=A¯∪B¯\\overline{A \\cup B} = \\bar{A} \\cup \\bar{B}).

The __antigraph__ of a function f:S→Tf\\colon S \\to T is

{(x,y)|x:S,y:T|f(x)≠y}. \\{(x,y) \\;|\\; x\\colon S, y\\colon T \\;|\\; f(x) \\ne y\\} .

Recall that in ordinary topology, a function between [Hausdorff spaces][104] is continuous iff its [graph][105] is closed. Similarly, a function f:S→Tf\\colon S \\to T is strongly extensional iff its antigraph is open. (Then the [graph][106] of ff is the complement of the antigraph.)

One important topological concept that doesn't appear classically is locatedness; in an inequality space, a subset AA is __[located][107]__ if, given any point xx and any neighbourhood UU of xx, either U∩AU \\cap A is [inhabited][108] (that is, it has a point) or some neighbourhood of xx (not necessarily UU) is contained in A˜\\tilde A. Note that every point is located. (For an example of a set that need not be located, consider {x:S|p}\\{x\\colon S \\;|\\; p\\}, where pp is an arbitrary [truth value][109]. In an inhabited space, this set is located iff pp is true or false.)

### Relation to metric spaces

Recall that, as [Bill Lawvere][110] taught us, a [metric space][111] is a groupoid (or †\\dagger\-[category][112]) enriched over the category (\[0,∞\[ op,+)(\[0,\\infty\[^\\op,+) of nonnegative [real numbers][113], ordered in reverse, and made monoidal under addition. (Actually, you get a metric only if you impose a tightness condition, although again you can recover this up to equivalence from the 22\-morphisms. Furthermore, Lawvere advocated using \[0,∞\]\[0,\\infty\] instead of \[0,∞\[\[0,\\infty\[, and also dropping the symmetry requirement to get enriched categories instead of groupoids. Thus, he dealt with extended quasipseudometric spaces. These details are not really important here.)

There is a [monoidal functor][114] from (\[0,∞\[ op,+)(\[0,\\infty\[^\\op,+) to TV opTV^\\op that maps a nonnegative real number xx to the truth value of the statement that x\>0x \\gt 0. Accordingly, any (symmetric) metric space becomes an inequality space, and any function satisfying d(f(x),f(y))≤d(x,y)d(f(x),f(y)) \\leq d(x,y)) is strongly extensional.

The topological properties of metric spaces fit well with those of inequality spaces if you always work in this direction. For example, a set which is dd\-open will also be ≠\\ne\-open, but not necessarily the other way around. Similarly, a (merely) [continuous function][115] between metric spaces is (still) strongly extensional.

### Relation to gauge spaces and uniform spaces

In analysis, many spaces are given as [gauge spaces][116], that is by families of pseudometrics; these also become inequality spaces by declaring that x≠yx \\ne y iff d(x,y)\>0d(x,y) \\gt 0 for some pseudometric dd in the family. (This will actually be a *tight* apartness iff the family of pseudometrics is separating.)

Classically, any [uniform space][117] may be given by a family of pseudometrics, but this doesn't hold constructively. In particular, a topological group may not be an inequality group (as in the next section). However, we can generalize a bit beyond gauge spaces: any [uniformly regular uniform space][118] becomes an inequality space by declaring that x≠yx \\ne y iff there is an entourage UU with (x,y)∉U(x,y)\\notin U. (If the uniform space is not uniformly regular, the result is merely an [inequality relation][119], not an apartness.)

### Relation to proximity spaces

The constructive theory of [proximity spaces][120] is based on a generalisation of apartness relations (which here go between *points*) to an apartness relation between *sets*. These are called *[apartness spaces][121]*; just as apartness relations (between points) are classically equivalent to equivalence relations, so apartness spaces are classically equivalent to proximity spaces, with two sets being proximate if and only if they are not apart.

Of course, any apartness space has an apartness relation between points: xx and yy are apart iff {x}\\{x\\} and {y}\\{y\\} are apart.

### Relation to locales

Let XX be a set, regarded as a [discrete locale][122], whose [frame][123] of opens is O(X)\=P(X)O(X) = P(X), the [power set][124] of XX. That is, the opens in the locale XX are precisely the subsets of the set XX. Since discrete locales are [locally compact][125] (every set is the union of its [K-finite][126] subsets), the locale product X×XX\\times X agrees with the spatial product, so that X×XX\\times X is also discrete and every subset of X×XX\\times X is open. Thus, the opens in the locale X×XX\\times X are precisely the subsets of X×XX\\times X. In particular, an [equivalence relation][127] on the set XX can be identified with an *open* equivalence relation (in [Loc][128]) on the discrete locale XX.

Thus, the following theorem gives a different precise sense in which apartness relations are dual to equivalence relations.

Theorem 4.1. An apartness relation on a set XX is the same as a (strongly) [closed][129] equivalence relation on the discrete locale XX. Moreover, the apartness topology defined above is, as a locale, the quotient of this equivalence relation.

Proof. By definition, a (strongly) closed sublocale of a locale YY is one of the form CU\\mathsf{C}U, for some open U∈O(Y)U\\in O(Y). Thus, when XX is a discrete locale, a closed sublocale of X×XX\\times X is of the form CU\\mathsf{C}U for some subset UU of X×XX\\times X. This subset is the extension of the apartness relation, i.e. U\={(x,y)∣x#y}U = \\{ (x,y) \\mid x\\#y \\}.

For the first claim, therefore, it remains to show that the three axioms of an equivalence relation for CU\\mathsf{C}U correspond to the apartness axioms for #\\#. Note that pullback along locale maps respects closed complements, i.e. f \*(CU)\=C(f \*U)f^\*(\\mathsf{C}U) = \\mathsf{C}(f^\*U). Thus, the pullback of CU\\mathsf{C}U along the twist map X×X→X×XX\\times X \\to X\\times X is the closed sublocale corresponding to the twist of UU, i.e. the set {(x,y)∣y#x}\\{ (x,y) \\mid y\\#x \\}. Since C\\mathsf{C} is a contravariant order-isomorphism between the posets of open and closed sublocales, symmetry for CU\\mathsf{C}U is equivalent to symmetry for #\\#. Similarly, pulling CU\\mathsf{C}U back to X×X×XX\\times X\\times X along one of the three canonical projections gives the closed sublocale dual to the corresponding pullback of UU itself, and C\\mathsf{C} transforms unions to intersections; thus transitivity for CU\\mathsf{C}U is equivalent to comparison for #\\#. Finally, the pullback of CU\\mathsf{C}U along the diagonal is the closed sublocale dual to the similar pullback of UU, so to say that the former is all of XX is equivalent to saying that the latter is ∅\\emptyset; thus reflexivity for CU\\mathsf{C}U is equivalent to irreflexivity for #\\#.

Now, the quotient in LocLoc of such an an equivalence relation in particular comes equipped with a surjective locale map from XX. Thus, it is a spatial locale and can be regarded as a topology on the set XX. Moreover, quotients in LocLoc are constructed as [equalizers][130] in FrmFrm, so we have to compute the equalizer of the two maps O(X)\=P(X)→O(CU)O(X) = P(X) \\to O(\\mathsf{C}U), where O(CU)O(\\mathsf{C}U) is the frame of opens of CU\\mathsf{C}U regarded as a locale in its own right. Equivalently, this means the equalizer of the two maps P(X)→π iP(X×X)→j CUP(X×X)P(X) \\xrightarrow{\\pi\_i} P(X\\times X) \\xrightarrow{j\_{\\mathsf{C}U}} P(X\\times X), where j CUj\_{\\mathsf{C}U} is the [nucleus][131] corresponding to CU\\mathsf{C}U.

Now by definition, j CU(V)\=V∪Uj\_{\\mathsf{C}U}(V) = V\\cup U. Thus, the elements of this equalizer - which is to say, the opens in the locale quotient - are subsets VV of XX such that (V×X)∪U\=(X×V)∪U(V\\times X) \\cup U = (X\\times V) \\cup U. Reexpressed in terms of #\\#, that means that for any x,y∈Xx,y\\in X we have (x∈V∨x#y)⇔(y∈V∨x#y)(x\\in V \\vee x\\#y) \\iff (y\\in V \\vee x\\#y). But since #\\# is symmetric, this is equivalent to the unidirectional implication (x∈V∨x#y)→(y∈V∨x#y)(x\\in V \\vee x\\#y) \\to (y\\in V \\vee x\\#y), and since x#yx\\#y always implies itself, this is equivalent to x∈V→(y∈V∨x#y)x\\in V \\to (y\\in V \\vee x\\#y), which is precisely the condition defining the open sets in the apartness topology above. ▮

Recall that the negation of an apartness relation on XX is an equivalence relation on the *set* XX. This is the spatial part of the above closed localic equivalence relation, which in general (constructively) need not be itself spatial. The apartness relation is tight just when this spatial part is the diagonal. (By contrast, to say that the closed localic equivalence relation is *itself* the diagonal is to say that the discrete locale XX is [Hausdorff][132], which is only true if XX has [decidable equality][133].)

Another characterization of the #\\#\-open sets is that UU is #\\#\-open if U×X⊆(X×U)∪W #U\\times X \\subseteq (X\\times U) \\cup W\_\\#, where W #W\_\\# is #\\# regarded as a subset of X×XX\\times X. Rephrased in terms of complementary closed sublocales, this says that CU\\mathsf{C}U is "closed under the equivalence relation" dual to #\\#. Thus, the closed sublocales of XX with its #\\#\-topology (i.e. the formal complements of #\\#\-open sets) correspond precisely to the closed sublocales of XX (the formal complements of arbitrary subsets of XX) that respect this equivalence relation.

As a partial converse to the above theorem, if XX is a [localically strongly Hausdorff][134] topological space, meaning that its diagonal is a strongly closed sublocale, then the pullback of this diagonal to the discrete locale on the set of points of XX is a closed localic equivalence relation, hence an apartness, whose ≠\\ne\-topology refines the given topology. See [this theorem][135]. If we are given an apartness relation ≠\\ne, it is unclear whether the ≠\\ne\-topology is localically strongly Hausdorff; but if it is, then the apartness relation resulting from this topology is stronger than the given ≠\\ne.

## 5\. In algebra

Since inequality spaces have finite limits, the usual constructions of [universal algebra][136] apply; it's straightforward to define inequality [groups][137], inequality [rings][138], and so on.

The various subsets that appear in algebra (such as [subgroups][139], [ideals][140], and [cosets][141]) become less fundamental than certain subsets that are, classically, simply their complements. For example, a left ideal in a ring RR is a subset II such that 0∈I0 \\in I, x+y∈Ix + y \\in I whenever x,y∈Ix, y \\in I, and xy∈Ix y \\in I whenever x∈Ix \\in I. But a left *[antiideal][142]* in an inequality ring RR is an ≠\\ne\-open subset AA such that 0∈A0 \\in A is false, x∈Ax \\in A or y∈Ay \\in A whenever x+y∈Ax + y \\in A, and x∈Ax \\in A whenever xy∈Ax y \\in A. (The ≠\\ne\-openness requirement is automatic if ¬(0∈A)\\neg(0\\in A) is strengthened to p≠0p\\ne 0 for all p∈Ap\\in A, using that the ring operations are strongly extensional.) Note that the complement of an antiideal is an ideal, but not every ideal can be constructively shown to be the complement of an antiideal; so antiideals are more fundamental than ideals, in an inequality ring.

[Prime ideals][143] are even more interesting. A two-sided antiideal AA (so also satisfying that y∈Ay \\in A whenever xy∈Ax y \\in A) is *antiprime* (or simply *prime* if no confusion is expected) if 1∈A1 \\in A and xy∈Ax y \\in A whenever x,y∈Ax, y \\in A. Now the complement of an antiprime antiideal may *not* be a prime ideal (as normally defined). But in fact, it is antiprime antiideals that are more important in constructive algebra. In particular, an [integral domain][144] in constructive algebra is an inequality ring in which the antiideal of nonzero elements is antiprime.

The localic perspective on apartness relations extends naturally to anti-algebra: an antiideal is the same as a *closed* ideal in a discrete localic ring that respects the closed equivalence relation corresponding to ≠\\ne. Equivalently, this is a closed ideal of the ≠\\ne\-topology regarded as a (non-discrete) localic ring. The spatial part of this closed localic ideal is then the ordinary ideal complementary to the antiideal, and so on. Moreover, since unions of closed sublocales correspond to intersections of their open complements, an antiideal AA is antiprime exactly when its corresponding closed localic ideal CA\\mathsf{C}A is "prime" in an appropriate internal sense in [Loc][145], namely that m \*(CA)⊆(CA×R)∪(R×CA)m^\*(\\mathsf{C}A) \\subseteq (\\mathsf{C}A \\times R) \\cup (R\\times \\mathsf{C}A), where m:R×R→Rm:R\\times R\\to R is the multiplication. The fact that the complement of an antiprime antiideal need not be prime in the usual sense corresponds to the fact that taking the spatial part of sublocales doesn't commute with unions.

For more about apartness algebra, see [antisubalgebra][146]
- [inequality relation][147]
  - [denial inequality][148]
- [antisubalgebra][149]




## References

According to [Troelstra and van Dalen][150]:

> Brouwer ([1919][151]) introduced the notion of apartness (örtlich verschieden, Entfernung)…. The axioms of the theory of apartness were formulated by Heyting ([1925][152]).

-   [L.E.J. Brouwer][153], *Begründung der Mengenlehre unabhängig vom logischen Satz vom ausgeschlossenen Dritten II: Theorie der Punktmengen. 1919*
    
-   [Arend Heyting][154], *Intuïtionistische Axiomatiek der Projectieve Meetkunde* (Dutch), Ph.D. Thesis, 1925
    
-   [Errett Bishop][155]'s *Foundations of Constructive Analysis* (1967) uses apartness for the real numbers and more general metric spaces.
    
-   The 1985 edition with Douglas Bridges, *Constructive Analysis*, includes the general definition of apartness relation, there called an "inequality relation" (though in many other sources, as here, an [inequality relation][156] need not satisfy comparison).
    
-   Anne Troelstra's and Dirk van Dalen's *Constructivism in Mathematics* (1988) uses apartness for the reals (volume 1), and general apartness relations in algebra (volume 2, chapter 8). They say "preapartness" and "apartness" instead of "apartness" and "tight apartness" respectively.
    
-   Apartness plays a minimal role in *A Course in Constructive Algebra* (also 1988), by Ray Mines, Fred Richman, and Wim Ruitenburg.
    
-   A great reference for point-set topology in constructive mathematics is the Ph.D. thesis of Frank Waaldijk, *[Modern Intuitionist Topology][157]* (1996).
    

Last revised on May 17, 2021 at 12:40:00. See the [history][158] of this page for a list of all contributions to it.

[1]: https://ncatlab.org/nlab/show/relation
[2]: https://ncatlab.org/nlab/show/internal+relation
[3]: https://ncatlab.org/nlab/show/Rel
[4]: https://ncatlab.org/nlab/show/bicategory+of+relations
[5]: https://ncatlab.org/nlab/show/allegory
[6]: https://ncatlab.org/nlab/show/reflexive+relation
[7]: https://ncatlab.org/nlab/show/irreflexive+relation
[8]: https://ncatlab.org/nlab/show/symmetric+relation
[9]: https://ncatlab.org/nlab/show/antisymmetric+relation
[10]: https://ncatlab.org/nlab/show/asymmetric+relation
[11]: https://ncatlab.org/nlab/show/transitive+relation
[12]: https://ncatlab.org/nlab/show/comparison
[13]: https://ncatlab.org/nlab/show/euclidean+relation
[14]: https://ncatlab.org/nlab/show/total+relation
[15]: https://ncatlab.org/nlab/show/connected+relation
[16]: https://ncatlab.org/nlab/show/extensional+relation
[17]: https://ncatlab.org/nlab/show/well-founded+relation
[18]: https://ncatlab.org/nlab/show/functional+relations
[19]: https://ncatlab.org/nlab/show/entire+relations
[20]: https://ncatlab.org/nlab/show/equivalence+relations
[21]: https://ncatlab.org/nlab/show/congruence
[22]: https://ncatlab.org/nlab/show/apartness+relations
[23]: https://ncatlab.org/nlab/show/simple+graph
[24]: https://ncatlab.org/nlab/show/2-congruence
[25]: https://ncatlab.org/nlab/show/%28n%2Cr%29-congruence
[26]: https://ncatlab.org/nlab/show/binary+relation
[27]: https://ncatlab.org/nlab/show/equivalence+relation
[28]: https://ncatlab.org/nlab/show/inequality+relation
[29]: https://ncatlab.org/nlab/show/constructive+mathematics
[30]: https://ncatlab.org/nlab/show/classical+mathematics
[31]: https://ncatlab.org/nlab/show/negation
[32]: https://ncatlab.org/nlab/show/proximity+space
[33]: https://ncatlab.org/nlab/show/apartness+space
[34]: https://ncatlab.org/nlab/show/set
[35]: https://ncatlab.org/nlab/show/groupoid
[36]: https://ncatlab.org/nlab/show/objects
[37]: https://ncatlab.org/nlab/show/enriched+category
[38]: https://ncatlab.org/nlab/show/cartesian+monoidal+category
[39]: https://ncatlab.org/nlab/show/opposite+category
[40]: https://ncatlab.org/nlab/show/partial+order
[41]: https://ncatlab.org/nlab/show/truth+value
[42]: https://ncatlab.org/nlab/show/monoidal+category
[43]: https://ncatlab.org/nlab/show/disjunction
[44]: https://ncatlab.org/nlab/show/excluded+middle
[45]: https://ncatlab.org/nlab/show/negation
[46]: https://ncatlab.org/nlab/show/equivalence+relation
[47]: https://ncatlab.org/nlab/show/enriched+category
[48]: https://ncatlab.org/nlab/show/constructive+mathematics
[49]: https://ncatlab.org/nlab/show/internalization
[50]: https://ncatlab.org/nlab/show/co-Heyting+algebra
[51]: https://ncatlab.org/nlab/show/irreflexive+relation
[52]: https://ncatlab.org/nlab/show/symmetric+relation
[53]: https://ncatlab.org/nlab/show/comparison
[54]: https://ncatlab.org/nlab/show/equivalence+relation
[55]: https://ncatlab.org/nlab/show/identity+morphisms
[56]: https://ncatlab.org/nlab/show/inverses
[57]: https://ncatlab.org/nlab/show/composition
[58]: https://ncatlab.org/nlab/show/negation
[59]: https://ncatlab.org/nlab/show/excluded+middle
[60]: https://ncatlab.org/nlab/show/de+Morgan+law
[61]: https://ncatlab.org/nlab/show/connected+relation
[62]: https://ncatlab.org/nlab/show/equality
[63]: https://ncatlab.org/nlab/show/quotient+set
[64]: https://ncatlab.org/nlab/show/function
[65]: https://ncatlab.org/nlab/show/strongly+extensional+function
[66]: https://ncatlab.org/nlab/show/enriched+functors
[67]: https://ncatlab.org/nlab/show/natural+isomorphism
[68]: https://ncatlab.org/nlab/show/homotopy+type+theory
[69]: https://ncatlab.org/nlab/new/type+family
[70]: https://ncatlab.org/nlab/show/equality+type
[71]: https://ncatlab.org/nlab/show/propositional+truncation
[72]: https://ncatlab.org/nlab/show/monomorphisms
[73]: https://ncatlab.org/nlab/show/injections
[74]: https://ncatlab.org/nlab/show/regular+monomorphisms
[75]: https://ncatlab.org/nlab/show/limits
[76]: https://ncatlab.org/nlab/show/created+limit
[77]: https://ncatlab.org/nlab/show/forgetful+functor
[78]: https://ncatlab.org/nlab/show/Set
[79]: https://ncatlab.org/nlab/show/coproducts
[80]: https://ncatlab.org/nlab/show/quotient+object
[81]: https://ncatlab.org/nlab/show/equivalence+relations
[82]: https://ncatlab.org/nlab/show/complete+category
[83]: https://ncatlab.org/nlab/show/pretopos
[84]: https://ncatlab.org/nlab/show/Grothendieck+topos
[85]: https://ncatlab.org/nlab/show/topos
[86]: https://ncatlab.org/nlab/show/locally+cartesian+closed+category
[87]: https://ncatlab.org/nlab/show/cartesian+closed+category
[88]: https://ncatlab.org/nlab/show/2-morphism
[89]: https://ncatlab.org/nlab/show/equivalence+of+categories
[90]: https://ncatlab.org/nlab/show/topology
[91]: https://ncatlab.org/nlab/show/separation+axiom
[92]: https://ncatlab.org/nlab/show/subset
[93]: https://ncatlab.org/nlab/show/neighbourhood
[94]: https://ncatlab.org/nlab/show/filter
[95]: https://ncatlab.org/nlab/show/open+subset
[96]: https://ncatlab.org/nlab/show/topological+space
[97]: https://ncatlab.org/nlab/show/complement
[98]: https://ncatlab.org/nlab/show/separation+axiom
[99]: https://ncatlab.org/nlab/new/quasi-apartness
[100]: https://ncatlab.org/nlab/show/partial+order
[101]: https://ncatlab.org/nlab/show/preorder
[102]: https://ncatlab.org/nlab/show/closure
[103]: https://ncatlab.org/nlab/show/closure+operator
[104]: https://ncatlab.org/nlab/show/Hausdorff+spaces
[105]: https://ncatlab.org/nlab/show/graph+of+a+function
[106]: https://ncatlab.org/nlab/show/graph+of+a+function
[107]: https://ncatlab.org/nlab/show/located+subspace
[108]: https://ncatlab.org/nlab/show/inhabited+set
[109]: https://ncatlab.org/nlab/show/truth+value
[110]: https://ncatlab.org/nlab/show/Bill+Lawvere
[111]: https://ncatlab.org/nlab/show/metric+space
[112]: https://ncatlab.org/nlab/show/dagger-category
[113]: https://ncatlab.org/nlab/show/real+numbers
[114]: https://ncatlab.org/nlab/show/monoidal+functor
[115]: https://ncatlab.org/nlab/show/continuous+function
[116]: https://ncatlab.org/nlab/show/gauge+spaces
[117]: https://ncatlab.org/nlab/show/uniform+space
[118]: https://ncatlab.org/nlab/show/uniformly+regular+uniform+space
[119]: https://ncatlab.org/nlab/show/inequality+relation
[120]: https://ncatlab.org/nlab/show/proximity+spaces
[121]: https://ncatlab.org/nlab/show/apartness+space
[122]: https://ncatlab.org/nlab/show/discrete+locale
[123]: https://ncatlab.org/nlab/show/frame
[124]: https://ncatlab.org/nlab/show/power+set
[125]: https://ncatlab.org/nlab/show/locally+compact+locale
[126]: https://ncatlab.org/nlab/show/K-finite+set
[127]: https://ncatlab.org/nlab/show/equivalence+relation
[128]: https://ncatlab.org/nlab/show/Loc
[129]: https://ncatlab.org/nlab/show/closed+subspace
[130]: https://ncatlab.org/nlab/show/equalizers
[131]: https://ncatlab.org/nlab/show/nucleus
[132]: https://ncatlab.org/nlab/show/Hausdorff+space
[133]: https://ncatlab.org/nlab/show/decidable+equality
[134]: https://ncatlab.org/nlab/show/Hausdorff+space
[135]: https://ncatlab.org/nlab/show/Hausdorff+space#Apartness
[136]: https://ncatlab.org/nlab/show/universal+algebra
[137]: https://ncatlab.org/nlab/show/groups
[138]: https://ncatlab.org/nlab/show/rings
[139]: https://ncatlab.org/nlab/show/subgroups
[140]: https://ncatlab.org/nlab/show/ideals
[141]: https://ncatlab.org/nlab/show/cosets
[142]: https://ncatlab.org/nlab/show/antiideal
[143]: https://ncatlab.org/nlab/show/prime+ideal
[144]: https://ncatlab.org/nlab/show/integral+domain
[145]: https://ncatlab.org/nlab/show/Loc
[146]: https://ncatlab.org/nlab/show/antisubalgebra
[147]: https://ncatlab.org/nlab/show/inequality+relation
[148]: https://ncatlab.org/nlab/show/denial+inequality
[149]: https://ncatlab.org/nlab/show/antisubalgebra
[150]: https://ncatlab.org/nlab/show/apartness+relation#TvD
[151]: https://ncatlab.org/nlab/show/apartness+relation#Brouwer1919
[152]: https://ncatlab.org/nlab/show/apartness+relation#Heyting1925
[153]: https://ncatlab.org/nlab/show/L.E.J.+Brouwer
[154]: https://ncatlab.org/nlab/show/Arend+Heyting
[155]: https://ncatlab.org/nlab/show/Errett+Bishop
[156]: https://ncatlab.org/nlab/show/inequality+relation
[157]: http://www.fwaaldijk.nl/modern%20intuitionistic%20topology.pdf
[158]: https://ncatlab.org/nlab/history/apartness%20relation
