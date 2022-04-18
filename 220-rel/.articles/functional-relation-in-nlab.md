---
downloaded:       2021-12-11
page-url:         https://ncatlab.org/nlab/show/functional+relation
page-title:       functional relation in nLab
article-title:    functional relation in nLab
---
# functional relation in nLab

Redirected from "functional relations".
Redirected from "functional relations".

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
    

## 1\. Definition

A binary [relation][26] from a [set][27] XX to a set YY is called __functional__ if every element of XX is related to at most one element of YY. Notice that this is the same thing as a [partial function][28], seen from a different point of view. A (total) [function][29] is precisely a relation that is both functional and [entire][30].

## 2\. Properties

Like any relation, a functional relation rr can be viewed as a [span][31]

Δ r ↙ ι r ↘ ϕ r X Y \\array { & & \\Delta\_r \\\\ & \\swarrow\_{\\iota\_r} & & \\searrow^{\\phi\_r} \\\\ X & & & & Y }

Such a span is a relation iff the pairing map from the __domain__ Δ r\\Delta\_r to X×YX \\times Y is an [injection][32], and such a relation is functional iff the __inclusion__ map ι r\\iota\_r is also an injection. Such a relation is entire iff the inclusion map ι r\\iota\_r is a [surjection][33].

(Total) functions are precisely left adjoints in the bicategory of relations, in other words relations r:X→Yr: X \\to Y in RelRel for which there exists s:Y→Xs: Y \\to X satisfying

r∘s≤1 Y;1 X≤s∘r.r \\circ s \\leq 1\_Y; \\qquad 1\_X \\leq s \\circ r.

For if a relation r:X→Yr: X \\to Y is a function, then

1.  rr op≤1 Yr r^{op} \\leq 1\_Y: this just says that if r op(y,x)r^{op}(y, x) and r(x,y′)r(x, y'), then y\=y′y = y'. Equivalently, if r(x,y)r(x, y) and r(x,y′)r(x, y') then y\=y′y = y': this holds precisely because rr is functional or well-defined.
    
2.  1 X≤r opr1\_X \\leq r^{op} r: this says that if x\=x′x = x' in XX, then there exists yy in YY such that r(x,y)r(x, y) and r op(y,x′)r^{op}(y, x'), i.e., there exists yy such that r(x,y)r(x, y) and r(x′,y)r(x', y). This holds precisely because a function is an entire relation.
    

On the other hand, suppose r:X→Yr: X \\to Y is a left adjoint.

1.  From 1 X≤sr1\_X \\leq s r we deduce that if x\=x′x = x' in XX, then there exists yy in YY such that r(x,y)r(x, y) and s(y,x′)s(y, x'); in particular rr is entire.
    
2.  Suppose r(x,y)r(x, y). From x\=xx = x there exists y′y' such that r(x,y′)r(x, y') and s(y′,x)s(y', x). Thus s(y′,x)s(y', x) and r(x,y)r(x, y); from sr≤1 Ys r \\leq 1\_Y we infer y′\=yy' = y. We conclude at most one yy satisfies r(x,y)r(x, y), making rr functional.
    

Since rr is a function, it has a right adjoint rr, and by uniqueness of right adjoints, we may conclude s\=r ops = r^{op}. The [monad][34] t\=r oprt = r^{op} r has a unit 1 X≤t1\_X \\leq t (tt is reflexive) and a multiplication tt≤tt t \\leq t (tt is transitive), and also t op\=(r opr) op\=r opr opop\=r opr\=tt^{op} = (r^{op} r)^{op} = r^{op} r^{op\\; op} = r^{op} r = t (tt is symmetric). So the monad tt is an [equivalence relation][35]. The above reasoning may be internalized to apply to the [bicategory of relations][36] internal to a [regular category][37], in which case this equivalence relation is exactly the [kernel pair][38] of the map rr. The [comonad][39] c\=rr opc = r r^{op} has a counit c≤1 Yc \\leq 1\_Y (cc is coreflexive), and such coreflective relations in SetSet correspond to subsets of YY. More generally, in a regular category, the subobject of YY named by cc is the [image][40] of rr (the [coequalizer][41] of the kernel pair).

Further remarks: surjectivity of a function r:X→Yr: X \\to Y can be expressed as the condition 1 Y≤r∘r op1\_Y \\leq r \\circ r^{op}, and injectivity as r op∘r≤1 Xr^{op} \\circ r \\leq 1\_X.

-   [anafunction][42]

## 4\. References

-   [Peter Freyd][43] and André Scedrov, *[Categories, Allegories][44]*, Mathematical Library Vol. 39, North-Holland (1990).
    
-   [Robin Houston][45], *Fun with Rel*, blog post at Bosker Blog (June 14, 2006). ([link][46])
    

Last revised on November 21, 2017 at 02:34:19. See the [history][47] of this page for a list of all contributions to it.

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
[26]: https://ncatlab.org/nlab/show/relation
[27]: https://ncatlab.org/nlab/show/set
[28]: https://ncatlab.org/nlab/show/partial+function
[29]: https://ncatlab.org/nlab/show/function
[30]: https://ncatlab.org/nlab/show/entire+relation
[31]: https://ncatlab.org/nlab/show/span
[32]: https://ncatlab.org/nlab/show/injection
[33]: https://ncatlab.org/nlab/show/surjection
[34]: https://ncatlab.org/nlab/show/monad
[35]: https://ncatlab.org/nlab/show/equivalence+relation
[36]: https://ncatlab.org/nlab/show/bicategory+of+relations
[37]: https://ncatlab.org/nlab/show/regular+category
[38]: https://ncatlab.org/nlab/show/kernel+pair
[39]: https://ncatlab.org/nlab/show/comonad
[40]: https://ncatlab.org/nlab/show/image
[41]: https://ncatlab.org/nlab/show/coequalizer
[42]: https://ncatlab.org/nlab/show/anafunction
[43]: https://ncatlab.org/nlab/show/Peter+Freyd
[44]: https://ncatlab.org/nlab/show/Categories%2C+Allegories
[45]: https://ncatlab.org/nlab/show/Robin+Houston
[46]: https://bosker.wordpress.com/2006/06/14/fun-with-rel/
[47]: https://ncatlab.org/nlab/history/functional%20relation
