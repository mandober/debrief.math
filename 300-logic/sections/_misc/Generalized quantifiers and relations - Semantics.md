---
downloaded:       2022-01-15
page-url:         https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/gqsrelations/
page-title:       Generalized quantifiers and relations - Semantics
article-title:    Generalized quantifiers and relations - Semantics
---
# Generalized quantifiers and relations - Semantics

Up until now, we have been restricting our attention to a simplified
syntax for predicates, whereby they are uniformly boolean compounds of
atomic one-place predicates - in plain English, we have been
restricting our attention to intransitive verbs.
Up until now, we have been restricting our attention to a simplified syntax for predicates, whereby they are uniformly boolean compounds of atomic one-place predicates - in plain English, we have been restricting our attention to intransitive verbs.

A rationale for doing this is that very many interesting aspects of language can be studied with this restriction in place: we have discovered boolean algebras lurking everywhere language, allowing us to interpret boolean words uniformly across different denotational spaces; we have discovered universal properties of determiner denotations, and further sub-classified the space of determiners, observing that certain syntactic constructions seem to make reference to properly semantic properties of expressions; and we have seen that complicated inference patterns can be derived from monotonicity properties of lexical items.

There are however a rich array of inferences that involve multiple NPs, that we are in a position to straightforwardly account for.

We can interpret a transitive verb as a function of type E→E→Bool, mapping two individuals to **True** or **False**, depending on whether the first individual was the object, and the second the subject, of the verb. Just as functions of type E→Bool and subsets of E correspond to one another, so too do functions of type E→E→Bool and subsets of E×E. Here, E×E:={⟨a,b⟩:a,b∈E} is the crossproduct of E with itself - the set of all pairs of elements over E. A subset R⊆E×E is a binary relation over E, and we will write aRb when ⟨a,b⟩∈R. Here, b is the object, and a the subject of the relation, and so aRb is true whenever (viewing R now as a function) R(b)(a)\=True.

A DP is semantically interpreted as a generalized quantifier (GQ) - a function mapping subsets of E to truth values, or equivalently functions in E→Bool to truth values. At any rate, GQs do not combine directly with transitive verb denotations, which are subsets of E×E (or equivalently functions in E→E→Bool).

One common solution to this ‘type mismatch’ is to change the structure - the object DP denotation is combined with the following semantic object: λx.S(R(x)). This sort of semantic object is what is constructed when a quantified object noun phrase is ‘moved at LF.’ This kind of denotation is needed at any rate to account for the ‘inverse scope’ reading of a transitive sentence:

-   at least three students criticized at most four professors.
    -   **inverse scope:** O(λx.S(R(x))))
        
        there are at most four professors, say John, Mary, Susan, and Bill, each of whom was criticized at least three students. Each professor might have been criticized by different students.
        
    -   **surface scope:** S(λy.O(λx.R(x)(y)))
        
        there are at least three students, say John, Mary, and Susan, each of whom criticized no more than four professors. The students might have criticized different professors.
        

To account for the surface scope reading under this method, we need to (using the movement metaphor) first move the object, and then move the subject above the new position of the object. While this is certainly possible, it is *a priori* conceptually awkward that the scope order which is empirically unmarked (both within English and cross-linguistically) is formally more complex.

At any rate, it is useful to be able to think of different ways for combining verbs and their arguments semantically - many sayings lament that lack of perspective is artificially limiting:

> if all you have is a hammer, everything looks like a nail

To understand how GQs can combine directly with binary relations, let us look at the (artificially) simplified case where the subject denotes an element of E. (This reflects [our perspective of subjects][1] before we began to appreciate the wide world of determiners.) Consider the sentence “John praised most students,” which we want to interpret as MOST(STUDENT)(λx.PRAISE(x)(J)). We see here that the GQs are combining with the function λx.PRAISE(x)(J), which, from a set perspective, is the set of individuals that John praised: {x:⟨J,x⟩∈PRAISE}. Lut us now return to our more sophisticated treatment of individual denoting expressions, where JOHN\=λP.P(J) is a generalized quantifier. In set terms, JOHN maps a set to **True** just in case J is an element of that set.

Then

1.  JOHN(MOST(STUDENT)(PRAISE)) is **True** iff
2.  J∈MOST(STUDENT)(PRAISE) iff
3.  MOST(STUDENT)({x:⟨J,x⟩∈PRAISE}) is **True**

based on the form of 2, we know that MOST(STUDENT)(PRAISE) must denote a set of individuals. Because we want to move from 2 to 3, we know that this must be the set of individuals y, such that y praised most students:

MOST(STUDENT)(PRAISE):={y:MOST(STUDENT)({x:⟨y,x⟩∈PRAISE})}

Generalizing this from the specific GQ MOST(STUDENT) to any GQ, we have that:

> For any generalized quantifier Q, and binary relation R,
> 
> Q(R)\={y:Q({x:⟨y,x⟩∈R})}
> 
> equivalently
> 
> Q(R)\=λy.Q(λx.R(x)(y))

We can generalize this to relations of any arity:

> For any generalized quantifier Q, and n\-ary relation Rn,
> 
> Q(Rn)\={⟨y1,…,yn−1⟩:Q({x:⟨y1,…,yn−1,x⟩∈R})}
> 
> equivalently
> 
> Q(R)\=λy1,…,yn−1.Q(λx.R(x)(y1)…(yn−1))

The utility of this somewhat abrupt seeming generalization is that we can see that GQs uniformly *reduce the arity* of the relations they combine with:

> A generalized quantifier maps an n+1\-ary relation to a n\-ary relation

Thinking of n\-ary relations as functions from n entities to truth values, a 0-ary relation is just a truth value, a 1-ary relation is a one-place predicate, … Then we see that a GQ in subject position maps a 1-ary relation (a predicate) to a 0-ary relation (a truth value), a GQ in object position maps a 2-ary relation to a 1-ary relation, a GQ in an indirect object position maps a 3-ary relation to a 2-ary one, and so on.

## Complements, post-complements, and duals

There are a number of pairs of sentences that mutually entail one another, despite differing in various ways. In this first group, the verbs are identical, but the subject and object determiners differ.

Group 1

1.  1.  At least two thirds of the students answered no question at all
    2.  At most a third of the students answered at least one question
2.  1.  Every student but John read at least as many comics as books
    2.  No student but John read fewer comics than books

In this second group, the subjects of each pair are identical, but the intransitive verbs are negated.

Group 2

1.  1.  Between a third and two thirds of the students passed
    2.  Between a third and two thirds of the students
2.  1.  Between a third and three quarters of the students passed
    2.  Between a third and three quarters of the students didn’t pass

In this third group we now have three arguments.

Group 3

1.  1.  Each student told both John and Mary at least three lies
    2.  No student told either John or Mary fewer than three lies
2.  1.  All but one student told more than half the professors at least one lie
    2.  Just one student told at least half the professors no lie at all

Finally, in the last group, the middle GQ is identical, in contrast to the previous group. But only the first sentence pair is equivalent.

Group 4

1.  1.  Both professors gave John at least three pieces of advice
    2.  Neither professor gave John fewer than three pieces of advice
2.  1.  Both professors gave every student at least three pieces of advice
    2.  ≢ Neither professor gave every student fewer than three pieces of advice

Note that these equivalencies (or non-equivalences, in the last case) hold irrespective of the content words - we may change the nouns and verbs without affecting the equivalencies. We would like to understand why these hold, and be able to predict when others like them should hold!

We begin with some observations about how some natural language DPs are semantically related.

For a DP *dp*, its semantic complement is often expressible by means of DP negation, *not dp*. This is the case for *every student* - *not every student*, *more than ten students* - *not more than ten students*, *both John and Mary* - *not both John and Mary* and so on. There are, however, certain pairs of DPs which denote each others complement, despite not being morpho-syntactically related:

X

¬X

More than ten boys

At most ten boys

At least half the boys

Less than half the boys

Either John or Mary

Neither John nor Mary

Some student

No student

At least ten students

Fewer than ten students

For example, the following sentences are contradictory:

-   More than ten boys laughed
-   At most ten boys laughed

Note that, since ¬¬X\=X, we can read the table above as saying that the left hand entries are the complements of the right hand entries.

There is another semantic relation between DPs that we can see illustrated in the (equivalent) pair of sentences below:

-   Every student passed
-   No student didn’t pass

Here we see that EVERY(STUDENT)(P)≡NO(STUDENT)(¬P). More generally, that we have a pair of GQs F and G such that F(P)≡G(¬P). Let us define an operation which will allow us to talk about the relation between such GQs. Given a GQ F, we write F¬ for the GQ such that (F¬)(P)\=F(¬P). We call F¬ the *post-complement* of F. The example above shows that *no student* is the post-complement of *every student*, or in symbols that EVERY(STUDENT)¬\=NO(STUDENT). I do not want to claim that *no student* is somehow syntactically derived from *every student*, only that their denotations are in the post-complement relation to one another. In contrast to the case of complements, where we *do* want to say that (at least sometimes) the complement GQ is in fact syntactically derived (using *not*), there (appears to be) no language in which the post-complement relation is expressed via some lexical item.

X

X¬

every student

no student

both John and Mary

neither John nor Mary

every student but John

no student but John

at most a quarter of the students

at least three quarters of the students

both professors

neither professor

exactly half the students

exactly half the students

The last line of the table shows us that, in contrast to complements, *some DPs are their own post-complement*!

Finally, some DPs are related to others in a combination of both of complement and post-complement! Consider the relation between *every student* and *some student*, as exemplified by the equivalent sentence pair below:

-   Every student passed
-   It is not the case that some student didn’t pass

The form of this latter sentence is ¬(F(¬P)), which we can re-write by the definition of post-complement as ¬((F¬)(P)), and then again by the pointwise definition of boolean complement as (¬F¬)(P). A GQ of the form ¬F¬ is called the *dual* of F. We see that *every student* is the dual of *some student*. Some more pairs of GQs and their duals are in the table below:

X

¬X¬

every student

some student

both John and Mary

either John or Mary

all but at most two students

more than two students

less than one student in three

at most two out of three students

both students

at least one of the two students

not both students

neither student

John

John

Observe that proper names are self-dual!

-   John laughed
-   It is not the case that John didn’t laugh

With these observations in hand, we can return to the groups of sentences we started with. The sentence pairs of the first group all have a common pattern: the subjects of the two sentences are in the post-complement relation to one another, and the objects are in the complement relation! That they are equivalent can be expressed as the observation that F(G(R))≡(F¬)((¬G)(R)). We can see that this is in fact true:

-   (F¬)((¬G)(R))≡F(¬((¬G)(R))) by definition of post-complement
-   F(¬((¬G)(R)))≡F(¬(¬(G(R)))) by definition of complement
-   F(¬(¬(G(R))))≡F(G(R)) double negation elimination

We might ask whether there are any other quadruples F,F′,G,G′ of generalized quantifiers such that F(G(R))≡F′(G′(R)) for any relation R. [As it turns out][2], the answer is no[1][3]

Turning now to the sentences of the second group, we see that the subjects of each sentence pair are their own post complements! That they are equivalent boils down to the claim that F(P)≡(F¬)(¬P). This is also true:

-   (F¬)(¬P)≡F(¬(¬P)) by definition of post-complement
-   F(¬(¬P))≡F(P) double negation elimination

Turning now to the third group of sentences, we see that the subjects are in the post-complement, the direct objects are in the complement, and the indirect (middle) objects are in the dual relation to one another. Their equivalence is expressed as the claim that F(G(H(R)))≡(F¬)((¬G¬)((¬H)(R))). Unfolding definitions and judicious double negation eliminations reveal that this too is the case:

-   (F¬)((¬G¬)((¬H)(R)))≡F(¬(¬G¬)((¬H)(R))) by definition of post-complement
-   F(¬(¬G¬)((¬H)(R)))≡F(¬(¬(G¬)((¬H)(R)))) by definition of complement
-   F(¬(¬(G¬)((¬H)(R))))≡F((G¬)((¬H)(R))) double negation elimination
-   F((G¬)((¬H)(R)))≡F(G(¬((¬H)(R)))) by definition of post-complement
-   F(G(¬((¬H)(R))))≡F(G(¬(¬(H(R))))) by definition of complement
-   F(G(¬(¬(H(R)))))≡F(G(H(R))) double negation elimination

The sentences in the fourth and final group have identical middle (i.e. indirect object) generalized quantifiers, yet only the first pair is equivalent. We see that the first pair is indeed of the same logical form as the sentences in group 3 - *John* is its own dual! The final pair is not equivalent because *every student* is **not** self-dual.

## TL/DR

-   we have seen that we can interpret GQs generally as *arity reducers*. This is not in opposition to a QR perspective, just a different way of looking at things.
-   we have seen that syntactically unrelated GQs can stand in semantically meaningful relations to one another. These relations are a source of semantic entailments.

---

1.  Well, almost. Of course, if F\=F′ and G\=G′ this is also going to be true. And if F and F′ map every property to **True**, then it doesn’t matter what G and G′ are. But these are not very interesting exceptions! [↩︎][4]
    

[1]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/subjectsandpredicates/
[2]: https://linguistics.ucla.edu/people/keenan/Papers/sortal%20reducibility%20theorem.pdf
[3]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/gqsrelations/#fn:1
[4]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/gqsrelations/#fnref:1
