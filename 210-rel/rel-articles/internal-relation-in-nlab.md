---
downloaded:       2021-12-11
page-url:         https://ncatlab.org/nlab/show/internal+relation
page-title:       internal relation in nLab
article-title:    internal relation in nLab
---
# internal relation in nLab

relation, internal relation
Contents

### Context

#### Relations

__[relation][1]__, [internal relation][2]

__[Rel][3]__, [bicategory of relations][4], [allegory][5]

-   [reflexive][6], [irreflexive][7]
    
-   [symmetric][8], [antisymmetric][9] [asymmetric][10]
    
-   [transitive][11], [comparison][12];
    
-   left and right [euclidean][13];
    
-   [total][14], [connected][15]
    
-   [extensional][16], [well-founded][17] relations.
    
-   [functional relations][18],
    
-   [entire relations][19],
    
-   [equivalence relations][20], [congruence][21]
    
-   [apartness relations][22]
    
-   [simple graph][23]
    

-   [2-congruence][24]
    
-   [(n,r)-congruence][25]
    

#### Category theory

## 1\. Idea

The concept of internal relation is an [internalization][26] of the concept of a [relation][27] from [Set][28] to more general [categories][29] and it is often called just a __relation__ in the category CC.

If CC is a [regular category][30], then its category of internal binary relations is an [allegory][31]. The objects of an allegory may, but do not need to be, internal relations in some ambient category.

## 2\. Definitions

Let CC be a category. An __internal binary relation__ from an object XX to an object YY is an object RR and a pair of maps d 0:R→Xd\_0: R \\to X and d 1:R→Yd\_1: R \\to Y that are *jointly monic*, that is such that, given any object GG and morphism e,e′:G→Re, e': G \\to R, if d 0∘e\=d 0∘e′d\_0 \\circ e = d\_0 \\circ e' and d 1∘e\=d 1∘e′d\_1 \\circ e = d\_1 \\circ e', then it must be that e\=e′e = e'.

Now suppose that CC has binary [products][32]. Then we can simplify the definition; an internal binary relation from XX to YY is simply a [subobject][33] r:R↪X×Yr: R\\hookrightarrow X\\times Y. The d 0d\_0 and d 1d\_1 above may be recovered as the [composites][34]

d 0\=p X∘r:R↪X×Y→X,d 1\=p Y∘r:T↪X×Y→Y, d\_0 = p\_X\\circ r : R\\hookrightarrow X\\times Y\\to X,\\quad d\_1 = p\_Y\\circ r : T\\hookrightarrow X\\times Y\\to Y ,

called the *projections* of the relation RR.

A relation from XX to XX is also said to be an __internal binary relation on XX__.

As with [relations][35] in general, we can extend from binary to arbitrary internal relations by generalising from the pair (X,Y)(X,Y) to an arbitrary family of objects. If this family has a [product][36] in CC, then the internal relation is simply a subobject of that product; in general, the internal relation is given by a jointly monic family of morphisms.

## 3\. Kinds of internal relations

The various kinds of relations described at [relation][37] can often be interpreted internally.

For example, an internal relation RR on XX is said to be __[reflexive][38]__ if it contains the [diagonal subobject][39] X↪X×XX\\hookrightarrow X\\times X of XX; this can even be stated if X×XX \\times X does not exist in the category.

An internal [equivalence relation][40] is often called a [congruence][41].

Last revised on May 1, 2015 at 15:13:24. See the [history][42] of this page for a list of all contributions to it.

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
[26]: https://ncatlab.org/nlab/show/internalization
[27]: https://ncatlab.org/nlab/show/relation
[28]: https://ncatlab.org/nlab/show/Set
[29]: https://ncatlab.org/nlab/show/categories
[30]: https://ncatlab.org/nlab/show/regular+category
[31]: https://ncatlab.org/nlab/show/allegory
[32]: https://ncatlab.org/nlab/show/products
[33]: https://ncatlab.org/nlab/show/subobject
[34]: https://ncatlab.org/nlab/show/composites
[35]: https://ncatlab.org/nlab/show/relations
[36]: https://ncatlab.org/nlab/show/product
[37]: https://ncatlab.org/nlab/show/relation
[38]: https://ncatlab.org/nlab/show/reflexive+relation
[39]: https://ncatlab.org/nlab/show/diagonal+subobject
[40]: https://ncatlab.org/nlab/show/equivalence+relation
[41]: https://ncatlab.org/nlab/show/congruence
[42]: https://ncatlab.org/nlab/history/internal%20relation
