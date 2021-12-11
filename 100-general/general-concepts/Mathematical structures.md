---
downloaded:       2021-12-03
page-url:         https://abstractmath.org/MM/MMMathStructure.htm
page-title:       Mathematical structures
article-title:    Mathematical structures
---
# Mathematical structures

abstractmath.org 2.0
help with abstract math
abstractmath.org 2.0  
help with abstract math  

  

Produced by [Charles Wells][1]   Revised 2017-03-28     
[Introduction to this website][2]   [website TOC][3]   [website index][4]    
[blog][5]   [Back to Understanding Math Chapter head][6]

## Basic idea

A mathematical structure is a [set][7] (or sometimes several sets) with various associated [mathematical objects][8] such as subsets, sets of subsets, [operations][9] and [relations][10], all of which must satisfy various requirements ([axioms][11]). The collection of associated mathematical objects is called the structure and the set is called the underlying set.

#### Warning

This definition of mathematical structure is not a [mathematical definition][12]. The word "structure" is usually used in the definition or discussion of a particular kind of mathematical structure, without any general definition of the phrase "mathematical structure" being given.

In recent times it has become common to define a mathematical structure using either [category theory][13] or [type theory][14]. Math structures in practice are most commonly defined in terms of (mathematical) [spaces][15], and category theory and type theory makes it easier to give definitions directly in terms of spaces rather than sets. For example, there is a category that is the definition of "group", and a certain kind of functor from it to the category of sets gives a discrete group, a functor to the category of topological spaces gives a topological group, and so on. See [Toposes, Triples and Theories][16], page 125. For a general introduction to this idea, see Shulman, [Homotopy type theory: the logic of space][17].

## Examples of mathematical structures

In this article, I give some simple examples in detail. Although they are simple, they all have uses in one or another branch of math. After those examples, I describe (with links) some [mathematical structures of major importance][18] that an undergraduate math student will meet.

N is the set of all positive integers, Z is the set of all integers and R is the set of all real numbers.

### Pointed sets

A [__pointed set__][19] is a set together with a particular element of the set.

#### Examples

-   The set {1,2,3} together with 2 is a pointed set. It would normally be written as ({1,2,3},2).
-   (R,0) is a pointed set.
-   (R,π) is a pointed set. It is not the same pointed set as (R,0).
-   (Z,π) is not a pointed set because π∉Z.

### Relations

A [__relation__][20] is a set S together with a set of [ordered pairs][21] of elements of the set.

I will sometimes denote the set of ordered pairs by a Greek letter, for example α (pronounced "alpha"), so that α must be a subset of S×S. Then, if (s,s′) is an ordered pair in the set α, you could write "sαs′", pronounced "s is related by alpha to s′" or "s alpha s′".

#### Small examples

-   The set
    
    α:={(1,2),(2,3),(1,3)}
    
    is a relation on the set S\={1,2,3}. It is in fact the familiar relation "<" on S, because if m,n are in S, then m<n if and only if (m,n) is one of the pairs (1,2), (2,3), or (1,3).

The concept that "<" is a set of ordered pairs takes a bit of getting used to.

-   The set S:={1,2,3} together with the set of ordered pairs
    
    {(1,1),(1,2),(2,3),(3,1)}
    
    is a relation. It is not a familiar relation. It is an [arbitrary][22] relation. (Click on "[arbitrary][23]". You might learn something.) If you call it "β" (pronounced "bay-ta" in the USA and "bee-ta" in Britain), then "1β2" is true but "1β3" is false.
-   Z together with the set {(m,m)|m\=m} (see [setbuilder notation][24]) is the __equals__ relation on the set of all integers.

There are more examples of relations in the section on [Maps between math structures][25].

### Congruence relations

__Congruence relations__ are defined by requiring that two integers be related if they have the same remainder when divided by a particular integer. A congruence relation is an example of an [equivalence relation][26].

For example, every integer n leaves one of these remainders when divided by 3: 0, 1 or 2. I will use the notation "∼3" for this relation and similarly for integers other than 3. (The standard notation is described in the [Wikipedia article][27].) So 5∼317 is true because both 5 and 17 leave a remainder of 2 when divided by 3, but 5∼310 is false.

Notice that for integers m and n, m∼2n is true if and only if m and n are both even or both odd.

### Partitions

A [partition][28] is a set together with a set of subsets (called "blocks") with the property that every element of the set is in exactly one block.

The number of partitions of a finite set is given by the [Bell Numbers][29].

#### Small examples

-   The set {1,2,3} together with the set of subsets {{1,2},{3}} is a partition. Note that 1∈{1,2} and not in {3}, similarly for 2, and 3∈{3} and not in {1,2}, so this structure fits the definition of "partition".
-   The set {1,2,3,4,5,6,7} together with the set of subsets
    
    {{1,4,7},{2,5},{3,6}}
    
    is a partition. It groups numbers together that have the same remainder when divided by 3. It can be visualized like this:

![](https://abstractmath.org/MM/Mathematica/Structures/partition1.png)

-   The set {1,2,3} together with the set of subsets {{1,2},{1,3}} is not a partition because 1 is in two different blocks.
-   The set {1,2,3,4} together with the set of subsets {{2,4},{1}} is not a partition because 3 is not in any block.

#### Partition induced by a congruence relation

-   You can group the set N of positive integers into three blocks depending on what their remainder when divided by 3 is. This produces three infinite blocks: {1,4,7,10,13,…}, {2,5,8,11,14,…} and {3,6,9,12,15,…}.
-   If you do this for 2 instead of 3 you get two blocks: the set of even positive integers and the set of odd positive integers.
-   There is a similar partition of N induced by any positive integer n, giving n blocks according to remainders.

### Binary operations

#### Cartesian product

If S and T are sets, then the cartesian product "S×T" is set of all ordered pairs whose first entry is in S and whose second entry is in T. In this section we only consider cartesian products with S\=T.

For example, if S\={2,5,7}, then

S×S\={(2,2),(2,5),(2,7),(5,2),(5,5),(5,7),(7,2),(7,5),(7,7)}

A __[binary operation][30]__ on a set S is a function b:S×S→S.

#### Examples

-   The operation of adding two [real numbers][31] is a binary operation +:R→R.
-   Like many common binary operations, it is written *between* the two numbers; you write "2+5" instead of "+(2,5)". See [infix notation][32].
-   Other familiar binary operations on the real numbers are multiplication and subtraction.
-   Many more examples of binary operations are given in the chapter on [Examples of Functions][33].

### Monoids

A __monoid__ is a binary operation Δ:S×S→S for some set S with two properties given below, using [infix notation][34].

The usual notation for a monoid Δ:S×S→S is "(S,Δ)". S is called the __underlying set__ of the monoid (S,Δ).

It would be perfectly OK to say simply that Δ is a monoid, not mentioning S. That's because Δ is a [function][35], and by [definition][36] it has to have a [domain][37] of the form S×S for some set S. The notation "(S,Δ)" is useful because it gives a name for the underlying set.

#### Axioms for monoids

-   __Axiom 1: Associativity__ For all elements r, s and t of S,
    
    (rΔs)Δt\=rΔ(sΔt)
    
-   __Axiom 2: Identity__ There is an element e∈S with the property that for all s∈S,
    
    eΔs\=sΔe\=s
    

#### Remarks

-   If several monoids are being considered, you can use eS for the identity of (S,Δ), eT for the identity of (T,∇), and so on. But many authors simply use "e" (or "1") for the identity of any monoid. See [overloaded notation][38].
-   It is customary in math to use [juxtaposition][39] for the binary operation of a monoid, so that the requirement for associativity is that (rs)t\=r(st) and for the identity element that es\=se\=s. However, I will use Δ here except in examples where some other notation is customary (usually the plus sign, the multiplication sign, or juxtaposition).
-   The concept of __monoid__ is a particularly simple example of an [algebraic structure][40]. The most important algebraic structures include [groups][41], [rings][42], [fields][43] and [vector spaces][44]. All of them involve one or two binary operations that are monoids, mostly with additional properties.

#### Examples of monoids

-   Addition on the [nonnegative integers][45] is a monoid; in other words, (N∪{0},+) is a monoid. Addition is associative, and the number 0 is the identity element.
-   (Z,+), (Q,+), and (R,+) are also monoids, and so are the sets of nonnegative rational numbers and nonnegative real numbers with addition as operation.
-   Multiplication on the positive integers is a monoid; in other words, (N,×) is a monoid. The identity is the number 1.
-   Let S be a set. The set of all functions from S to S is denoted by S→S (this is one of several common notations). (S→S,∘) is a monoid, where "∘" denotes [functional composition][46]. The identity function is the identity of the monoid, and functional composition is always associative.
-   Let S be a set. P(S) is the set of all subsets of S (that is fairly common notation). Then (P(S),∪) is a poset: Union is associative and the empty set is the identity.

Much more detail for monoids is given in the Wikipedia [article on monoids][47]. It includes many more examples besides the ones given here.

## Some mathematical structures of major importance in math

A math major in a college in the USA is likely to meet with all three of these examples.

### Group

A [group][48] is an abstraction of symmetry in all of its meanings. The definition of a group says it is a monoid in which every element has an inverse, but the *importance* of groups comes from their association with symmetry. Most math majors in the USA learn about groups from some course or other.

The Wikipedia articles on [groups][49], [symmetries][50], [symmetry groups][51] and [group actions][52] include many examples and theorems concerning groups of symmetries.

### Vector space

A __vector space__ is a set, whose elements are called __vectors__, with an operation of addition on the vectors and an operation called __scalar multiplication__ allowing a vector to be multiplied by a number (or more generally by an element of a particular [field][53]).

When you first meet with vectors as a student, typically (in the USA) in second or third semester calculus, they are drawn as arrows; the idea is that a vector is determined by a direction and a length. In that guise they have a basic role to play in physics. In fact, there are vector spaces whose elements are functions; then they are called [function spaces][54] and are a major tool in analysis.

The [Wikipedia article on vector spaces][55] describes the definition and uses of vector spaces in considerable detail. It is one of the better written math articles in Wikipedia.

### Metric space

A __metric space__ is a set S together with a function d:S×S→R that satisfies a list of axioms that are all true for the distance function on the real line. So a metric space is an abstraction of the behavior of the distance function on the reals. In particular, in a metric space, you can define convergence to a limit.

A metric space is an example of a [topological space][56], although topological spaces are a more general concept.

The [Wikipedia article on metric spaces][57] defines metric spaces and gives many examples of them.

## Maps between math structures

Structures of a given type may have maps between them that __preserve the structure__. Such maps are often called [__morphisms__][58], but particular types of structures may have their own names for structure-preserving functions. I give some examples here. More examples of structure-preserving maps are given in the article [Functions: Images and Metaphors][59].

### Morphisms of pointed sets

If (S,s) and (T,t) are [pointed sets][60], then a function m:S→T is a __morphism of pointed sets__ if and only if m(s)\=t.

#### Examples

-   (Z,42) and (R,π) are [pointed sets][61]. The function f defined by f(n):=(n−41)π is a morphism of pointed sets, because f(42)\=π.
-   The [constant function][62] that takes *every* integer in Z to π is also a morphism from (Z,42) to (R,π).
-   The [inclusion function][63] inc:Z→R defined by inc(n)\=n is *not* a morphism from (Z,42) to (R,π) because inc(42)≠π.

### Morphisms of relations

Suppose α is a relation on S and β is a relation on T. Then a __morphism of relations__ from α to β is a function f:S→T satisfying the following requirement

If sαs′ then f(s)βtf(s′).

#### Increasing function

[Earlier][64] I mentioned the relation

α:={(1,2),(2,3),(1,3)}

on the set S\={1,2,3}, which is the "less-than" relation "<" on S. Now let T:={1,2,3,4}. Then "<" is also a relation on T, namely the relation

β:={(1,2),(1,3),(1,4),(2,3),(2,4),(3,4)}

Then the function f:S→T defined by f(1)\=1, f(2)\=2 and f(3)\=4 is a morphism of relations from (S,α) to (T,β). The easiest way to check this is by drawing a picture:

![](https://abstractmath.org/MM/Mathematica/Structures/Increasing%20Function.png)

In this picture, the less-than relation in each of the sets is simply "above", and you can see that if one number is above another number on the left, then the numbers that the arrows take them to have the same relationship.

A function that preserves the "less-than" relation is called a __strictly increasing function__. The function that takes 1→1, 2→4, 3→4 does not preserve "<" since 2<3 but 4 is not less than 4. However, that function *does* preserve the "≤" relation, since 4≤4. As you might guess, such a function is called an __increasing function__ but not a strictly increasing function.

#### Maps between congruence relations

Let's look at the __doubling function__ d:N→N defined by d(n)\=2n.

The function d is a morphism of relations from ∼3 to ∼2. To prove this requires showing that if m∼3n, then 2m∼22n. Now, by definition, for any integers r and s, r∼2s means that r and s are both even or both odd. But for any integer r, 2r is always even! So the statement "If m∼3n, then 2m∼22n" is true because "2m∼22n" is always true!

If you are not sure you understand this, read about the [truth table for conditional assertions][65]: If Q is true, then "If P then Q" is always true.

On the other hand, d is not a morphism of relations from ∼2 to ∼3. This is false by [counterexample][66]: 4∼28 because they are both even, but 8∼316 is false, because when 8 is divided by 3 the remainder is 2, whereas when 16 is divided by 3 the remainder is 1.

### Morphisms of partitions

Let S and T be sets and PS be a partition of S and PT a partition of T. A function f:S→T is a __morphism of partitions__ if f takes every element of a block of PS into one particular block of PT.

#### Example

We looked [previously][67] at these two partitions:

-   The partition P:={{1,2},{3}} of the set {1,2,3}.
-   The partition Q:={{1,4,7},{2,5},{3,6}} of the set {1,2,3,4,5,6,7}.

#### Examples

Any constant function is a morphism of partitions from P to Q, for example this one:

![](https://abstractmath.org/MM/Mathematica/Structures/Constant.png)

These are also morphisms of partitions:

![](https://abstractmath.org/MM/Mathematica/Structures/Morphism1.png)

![](https://abstractmath.org/MM/Mathematica/Structures/Morphism2.png)

The inclusion function is not a morphism of partitions (in this case!).

![](https://abstractmath.org/MM/Mathematica/Structures/Inclusion.png)

This function is also not a morphism:

![](https://abstractmath.org/MM/Mathematica/Structures/Nonmorphism1.png)

### Morphisms of binary operations

Suppose ∗ is a binary operation on a set S and # is a binary operation on a set T. Then a function f:S→T is a __morphism of binary operations__ if for all s,s′∈S, f(s∗s′)\=f(s)#f(s′). The customary way of saying this is: "f:(S,∗)→(T,#) is a __homomorphism__ from (S,∗) to (T,#)".

Many examples of morphisms of binary operations are described in the abstractmath.org article [Functions: Images and Metaphors][68]. I will give one example here.

#### Exponentiation

Both addition and multiplication are binary operations on the set R of real numbers. Let E:R→R be the function defined by E(r):=2r. Then E:(R,+)→(R,×) is a homomorphism.

This follows from the law of exponents:

E(r+s)\=2r+s\=2r×2s\=E(r)×E(s)

### Morphisms of monoids

Suppose (S,Δ) and (T,∇) are monoids with identities eS and eT. Then a function h:S→T is a __homomorphism__ if

(ME)h(eS)\=eT

and for all elements s,s′ of S,

(MM)h(sΔs′)\=h(s)∇h(s′)

This is described by saying "h preserves the identity and the binary operation."

#### Examples

-   (Z,+) is a monoid (0 is the identity). Let h:Z→Z be multiplication by 42. Then h is a homomorphism from (Z,+) to (Z,+).
    -   h preserves the identity:
        
        h(0)\=42×0\=0
        
    -   h preserves addition:
        
        h(m+n)\=42(m+n)\=42m+42n\=h(m)+h(n)
        
-   (R,+) and (R,×) are not only binary operations, they are monoids: Both "+" and "×" are associative, and the identities are 0 and 1 respectively. We saw [previously][69] that the exponential map is a morphism of the binary operations, but it also preserves the identities, since 20\=1. So exponentiation from (R,+) to (R,×) is a homomorphism of monoids.

## How to think about mathematical structures

### Many structures on one set

The same set can have many different structures on it. For example, a two-element set has two different partition structures on it and sixteen different binary operations on it.

### Canonical structures

Widely-used mathematical objects generally have "canonical structures" (or "standard" structures) of various types on them. For example, the set of integers can be ordered in many ways, but it has a *particular* [ordering][70] (the familiar one) that is referred to as "__the__ ordering of the integers". This is the ordering that begins 1<2<3<4…

In the same way, the set of real numbers has a canonical ordering (r<s means that there is a positive real number t for which r+t\=s), a canonical [algebraic structure][71], a canonical [metric space structure][72] and a [canonical topology][73].

### Minimality

Presenting a complex mathematical idea as a mathematical structure involves finding a minimal or nearly minimal set of associated objects (a structure) and a minimal or nearly minimal set of conditions on those objects from which the theorems about the structure follow. The ingredients of the structure are kept (nearly) non-redundant so that it is easier to verify that some object is an example of that kind of structure. This is essentially the main use of the [axiomatic method][74]

This small set of objects and conditions may not be the most important aspects of the structure for applications or for one's [mental representation][75] of the structure.

All this is discussed in more detail in the article on [Definition][76].

### Different definitions for the same structure

The same kind of structure can often be defined by two or more very *different* kinds of minimal ingredients. A mathematical structure of a given type has lots of structure implied by the minimal definition, and when you think of a structure it is best to think of it as containing *all* that information, not just the stuff in the definition.

#### Example

"Equivalence relation" and "partition" are two different ways of defining exactly the same structure on a set. This is explained in the Wikipedia article on [The Fundamental Theorem of Equivalence Relations][77].

![Creative Commons License](https://abstractmath.org/MM/CreativeCommons.gif)

This work is licensed under a [Creative Commons Attribution-ShareAlike 2.5 License][78].

  

[1]: http://www.cwru.edu/artsci/math/wells/home.html
[2]: https://abstractmath.org/MM/MMIntro.htm
[3]: https://abstractmath.org/MM/MMTOC.htm
[4]: https://abstractmath.org/MM/MMIndex.htm
[5]: https://abstractmath.org/Word%20Press/
[6]: https://abstractmath.org/MM/MMUnderstandingMath.htm
[7]: https://abstractmath.org/MM/MMSets.htm
[8]: https://abstractmath.org/MM/MMMathObj.htm
[9]: https://abstractmath.org/MM/MMFuncExamples.htm#binaryoperation
[10]: https://en.wikipedia.org/wiki/Binary_relation
[11]: https://abstractmath.org/MM/MMOtherAspectsUnderstanding.htm#axiomaticmethod
[12]: https://abstractmath.org/MM/MMDefs.htm
[13]: https://en.wikipedia.org/wiki/Category_theory
[14]: https://en.wikipedia.org/wiki/Type_theory
[15]: https://en.wikipedia.org/wiki/Space_(mathematics)
[16]: http://www.tac.mta.ca/tac/reprints/articles/12/tr12.pdf
[17]: https://arxiv.org/abs/1703.03007
[18]: https://abstractmath.org/MM/MMMathStructure.htm#majorimportance
[19]: https://en.wikipedia.org/wiki/Pointed_set
[20]: https://en.wikipedia.org/wiki/Binary_relation
[21]: https://en.wikipedia.org/wiki/Ordered_pair
[22]: https://abstractmath.org/MM/MMGlossary.htm#arbitrary
[23]: https://abstractmath.org/MM/MMGlossary.htm#arbitrary
[24]: https://abstractmath.org/MM/MMSetNotation.htm#setbuildernotation
[25]: https://abstractmath.org/MM/MMMathStructure.htm#morphisms
[26]: https://en.wikipedia.org/wiki/Equivalence_relation
[27]: https://en.wikipedia.org/wiki/Modular_arithmetic
[28]: https://en.wikipedia.org/wiki/Partition_of_a_set
[29]: https://en.wikipedia.org/wiki/Bell_number
[30]: https://en.wikipedia.org/wiki/Binary_operation
[31]: https://abstractmath.org/MM/MMRealNumbers.htm
[32]: https://abstractmath.org/MM/MMFuncNotation.htm#infixnotation
[33]: https://abstractmath.org/MM/MMFuncExamples.htm#binaryoperations
[34]: https://abstractmath.org/MM/MMFuncNotation.htm#infixnotation
[35]: https://abstractmath.org/MM/MMFuncSpec.htm
[36]: https://abstractmath.org/MM/MMDefs.htm
[37]: https://abstractmath.org/MM/MMFuncSpec.htm#domain
[38]: https://abstractmath.org/MM/MMMoreLanguage.htm#overloadednotation
[39]: https://abstractmath.org/MM/MMFuncNotation.htm#juxtaposition
[40]: https://en.wikipedia.org/wiki/Algebraic_structure
[41]: https://abstractmath.org/MM/MMMathStructure.htm#group
[42]: https://en.wikipedia.org/wiki/Ring_(mathematics)
[43]: https://en.wikipedia.org/wiki/Field_(mathematics)
[44]: https://en.wikipedia.org/wiki/Vector_space
[45]: https://abstractmath.org/MM/MMNaturalNumbers.htm
[46]: https://en.wikipedia.org/wiki/Function_composition
[47]: https://en.wikipedia.org/wiki/Monoid
[48]: https://en.wikipedia.org/wiki/Group_%28mathematics%29
[49]: https://en.wikipedia.org/wiki/Group_%28mathematics%29
[50]: https://en.wikipedia.org/wiki/Symmetry_in_mathematics
[51]: https://en.wikipedia.org/wiki/Symmetry_group
[52]: https://en.wikipedia.org/wiki/Symmetry_group
[53]: https://en.wikipedia.org/wiki/Field_%28mathematics%29
[54]: https://en.wikipedia.org/wiki/Function_spaces
[55]: https://en.wikipedia.org/wiki/Vector_space#Function_spaces
[56]: https://en.wikipedia.org/wiki/Topological_space
[57]: https://en.wikipedia.org/wiki/Metric_space
[58]: https://en.wikipedia.org/wiki/Morphism
[59]: https://abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#structurepreservingfunction
[60]: https://abstractmath.org/MM/MMMathStructure.htm#pointedset
[61]: https://abstractmath.org/MM/MMMathStructure.htm#pointedset
[62]: https://abstractmath.org/MM/MMFuncExamples.htm#constantfunction
[63]: https://abstractmath.org/MM/MMFuncExamples.htm#inclusionfunction
[64]: https://abstractmath.org/MM/MMMathStructure.htm#lessthan
[65]: https://abstractmath.org/MM/MMConditional.htm
[66]: https://abstractmath.org/MM/MMUnivTrue.htm#counterexample
[67]: https://abstractmath.org/MM/MMMathStructure.htm#previouspartition
[68]: https://abstractmath.org/MM/MMPatternRecognition.htm
[69]: https://abstractmath.org/MM/MMMathStructure.htm#exponentiation
[70]: https://en.wikipedia.org/wiki/Total_order
[71]: https://en.wikipedia.org/wiki/Field_(mathematics)#Reals.2C_complex_numbers.2C_and_p-adic_numbers
[72]: https://en.wikipedia.org/wiki/Metric_space#Examples_of_metric_spaces
[73]: https://en.wikipedia.org/wiki/Real_line#As_a_topological_space
[74]: https://abstractmath.org/MM/MMOtherAspectsUnderstanding.htm#axiomaticmethod
[75]: https://abstractmath.org/MM/MMImagesMetaphors.htm
[76]: https://abstractmath.org/MM/MMDefs.htm#minimal
[77]: https://en.wikipedia.org/wiki/Equivalence_relation#Fundamental_theorem_of_equivalence_relations
[78]: https://creativecommons.org/licenses/by-sa/2.5/
