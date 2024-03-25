# 3. Computability Theory

## 3. Computability Theory

Computability Theory is a subfield of contemporary mathematical logic devoted to the classification of functions and sets of natural numbers in terms of their absolute and relative computability and definability-theoretic properties. This subject is closely related in both origin and content to the study of recursive functions. This is reflected by the fact that computability theory was known as *recursive function theory* (or simply *recursion theory*) from the time of its inception in the 1930s until the late 1990s. It is also reflected in the formulation and proof of the so-called *Recursion Theorem* which provides a fundamental link between recursive definability and the sort of self-referential constructions which are at the core of many methods in computability theory (see [Section 3.4][105]).

For reasons discussed in [Section 1.7][106], contemporary expositions of computability theory are often presented in an abstract manner which seeks to minimize reference to the specific features of a model of computation such as the partial recursive functions. It is thus useful to stress the following modifications to the traditional terminology which has been employed in [Sections 1 and 2][107] and the more contemporary terminology which will be employed in this section:

-   The expressions ***computable function*** and ***partial computable function*** will be used instead of the traditional terms ***recursive function*** and ***partial recursive function*** as defined in [Section 2.2.1][108].
    
-   The expression ***computable set*** will be used instead of the traditional term ***recursive set***. Similarly, ***computably enumerable*** (or c.e.) ***set*** will be used instead of the traditional term ***recursively enumerable*** (or r.e.) ***set*** (see [Section 3.3][109]).
    

The other notational conventions introduced at the beginnings of [Section 2.1][110] and [Section 2.2][111] will be retained in this section.

### 3.1 Indexation, the *s*-*m*-*n* Theorem, and Universality

The first significant result in computability theory was Kleene's (1936a) proof of the Normal Form Theorem which was presented in [Section 2.2.2][112]. As discussed there, the Normal Form Theorem can be understood as illustrating how it is possible to associate each k-ary partial computable function f(→x) with a natural number e known as its *index* such that f(→x)≃μs(Tk(e,→x,s)). Such an e can be thought of as a name for a computer program built up from the basis functions, composition, primitive recursion, and minimization by which the values f(→x) can be computed. This also leads to what is known as an *indexation* of k-ary partial computable functions

ϕk0(→x),ϕk1(→x),ϕk2(→x),…,ϕki(→x),…

where ϕki(→x)≃μsTk(i,→x,s). Such an enumeration provides a uniform means of listing off all partial computable functions in the order of their indices. It should be noted, however, that each partial computable function has infinitely many indices. For instance, given a function f:Nk→N computed by ϕe(→x), it is possible to define infinitely many extensionally coincident functions with distinct indices ϕe′(→x),ϕe″(→x),…-e.g., by "padding" the definition encoded by e with terms that successively add and then subtract m for each m∈N. As this yields a definition of an extensionally equivalent function, it thus follows that infinitely many of the ϕki(→x) will correspond to the same function in extension.

A result closely related to the Normal Form Theorem is the following which is conventionally known as the *s-m-n* Theorem:

**Theorem 3.1:** For all n,m∈N, there is a primitive recursive function smn(i,x0,…,xm−1) such that

ϕnsmn(i,x0,…,xm−1)(y0,…,yn−1)≃ϕn+mi(x0,…,xm−1,y0,…,yn−1)

Here the function smn(i,→x) should be thought of as acting on an index i for an n+m-ary partial computable function together with values →x for the first m of its arguments. This function returns an index for another partial computable function which computes the n-ary function determined by carrying out ϕn+mi with the first m of its arguments →x fixed but retaining the next n variables →y as inputs. Although the formulation of the *s-m-n* Theorem may at first appear technical, its use will be illustrated in the proof of [Rice's Theorem (3.4)][113] and the [Recursion Theorem (3.5)][114] below.

Another consequence of the Normal Form Theorem is the following:

**Theorem 3.2:** For every k∈N, there is a k+1-ary partial computable function υk which is universal in the sense that for all k-ary partial computable functions f(→x), there is an i∈N such that υk(i,→x)≃f(→x).

This follows immediately from [Theorem 2.3][115] by taking υk(i,→x)=u(μsTk(i,→x,s)) where i is such that f(→x)≃ϕki(→x) in the enumeration of k-ary partial computable functions. As υk(i,→x) can be used to compute the values of all k-ary partial computable functions uniformly in their index, it is conventionally referred to as the k-ary *universal partial computable function*.

It is useful to observe that while we have just defined such a function for each k, it is also possible to define a binary function υ(i,x) which treats its second argument as a code for a finite sequence x0,…,xk−1 and then computes in the same manner as the k-ary universal function so that we have υ(i,⟨x0,…,xk−1⟩)≃υk(i,x0,…,kk−1). This provides a means of replacing the prior enumerations of k-ary partial computable functions with a single enumeration of unary functions

ϕ0(x),ϕ1(x),ϕ2(x),…,ϕi(x),…

where ϕi(⟨x0,…,xk−1⟩)≃υ(i,⟨x0,…,xk−1⟩)≃ϕki(x0,…,xk−1).

Together with [Theorem 2.3][116], [Theorem 3.1][117] and [Theorem 3.2][118] codify the basic properties of a model of computation which make it suitable for the development of a general theory of computability. In [Section 2][119] such a model has been defined in the form of the partial recursive functions. But as was discussed briefly at the end of [Section 2.2.2][120], versions of these results may also be obtained for the other models of computation discussed in [Section 1.6][121]. This licenses the freer usage of computer-based analogies and other appeals to Church's Thesis employed in most contemporary treatments of computability theory which will also be judiciously employed in the remainder of this entry.

### 3.2 Non-Computable Functions and Undecidable Problems

Having just seen that there is a universal partial computable function υ(i,x), a natural question is whether this function is also computable (i.e., *total*). A negative answer is provided immediately by observing that by using υ(i,x) we may define another modified diagonal function d(x)=υ(x,x)+1 which is partial computable (since υ(i,x) is). This in turn implies that d(x)≃ϕj(x) for some j. But now note that if υ(i,x) were total, then d(j) would be defined and we would then have

d(j)=ϕj(j)=υ(j,j)+1=ϕj(j)+1,

a contradiction. Comparing this situation with that described at the beginning of [Section 2.2][122] we can see that the partial computable functions differ from the primitive recursive functions in admitting a universal function within the same class but at the same time giving up the requirement that the functions in the class must be total. In other words, while υ(i,x)∈PartREC, the discussion in [Section 2.2.2][123] shows that u1(i,→x)∈REC−PR.

Since it is easy to see how the minimization operation can be used to define partial functions, the foregoing observations is expected. What is more surprising is that there are mathematically well-defined *total* functions which are not computable. Building on the discussion of the *Entscheidungsproblem* in [Section 1.7][124], the most famous example of such a function derives from the so-called [*Halting Problem* (see entry on Turing machines)][125] for the Turing Machine model. This was originally formulated by Turing (1937) as follows:

Given an indexation of T0,T1,… of Turing machines, does machine Ti halt on the input n?

An equivalent question can also be formulated in terms of the partial recursive functions:

Is the partial computable function ϕi(x) defined for input n?

The pairs of natural numbers ⟨i,n⟩ corresponding to positive answers to this question determine a subset of N×N as follows:

HP={⟨i,n⟩:ϕi(n)↓}

A set (or *problem*) is said to be *undecidable* just in case its characteristic function is not computable. For instance let h(x,y)=χHP(x,y) and observe that this, by definition, is a *total function*. The so-called *undecidability of the Halting Problem* may now be formulated as follows:

**Theorem 3.3:** h(x,y) is not a computable function.

*Proof:* Suppose for a contradiction that h(x,y) were computable. Consider the function g(x) defined as

g(x)={0if h(x,x)↓=0↑otherwise

On the assumption that h(x,y) is computable, g(x) is partial computable since, e.g., it may be computed by a program which on input x computes h(x,x) and returns 0 just in case h(x,x)=0 and otherwise goes into an infinite loop. It hence follows that g(x)≃ϕj(x) for some j∈N. But now observe that one of the following two alternatives must hold: i) g(j)↓; or ii) g(j)↑. We may thus reason by cases as follows:

1.  Suppose that g(j)↓. Then h(j,j)=0 by definition of g(x). Since h(i,x) is the characteristic function of HP, this means ϕj(j)↑. But then since g(x)≃ϕj(x), g(j)↑, a contradiction.
    
2.  Suppose that g(j)↑. Then h(j,j)≠0 by definition of g(x). Since h(x,y) is the characteristic function of HP (and hence total), the only other possibility is that h(j,j)=1 which in turn implies that ϕj(j)↓. But then since g(x)≃ϕj(x), g(j)↓, a contradiction. □
    

h(x,y) thus provides an initial example of a mathematically well-defined total function which is not computable. Other non-computable functions can be defined by considering decision problems similar to HP. Some well-known examples are as follows:

K={i:ϕi(i)↓}Z={i:ϕi(n)↓=0 for all n∈N}TOT={i:ϕi(n)↓ for all n∈N}FIN={i:ϕi(n)↓ for at most finitely many distinctn∈N}={i:Wi is finite}

Suppose we let k(x),z(x),tot(x), and fin(x) be the characteristic functions of these sets. By making suitable modifications to the proof of [Theorem 3.3][126] it is possible to directly show the following:

**Proposition 3.1:** None of the functions k(x),z(x),tot(x), and fin(x) are computable.

For instance in the case of k(x), we may argue as follows:

1.  define a function g(x) which returns 0 if k(x)=0 and which is undefined otherwise;
2.  as before, if k(x) is assumed to be computable, then g(x) is partial computable and there is hence an index j such that g(x)≃ϕj(x);
3.  but now observe that k(j)=1 iff g(j)↑ iff ϕj(j)↑ iff k(j)=0.

As this is again a contradictory situation, we may conclude that k(x) is not computable.

Note that each of the sets I defined in (30) has the following property: if j∈I and ϕj(x)≃ϕk(x), then k∈I as well. Sets with this property are known as *index sets* as they collect together the indices of all partial computable functions which share a common "semantic" property-i.e., one which is completely determined by their graphs such as being coincident with the constant 0 function in the case of Z or being defined on all inputs in the case of TOT. An index set I is called *non-trivial* if I≠∅ or I≠N-i.e., it fails to either include or exclude all indices. It is easy to see that all of the sets defined in (30) are non-trivial index sets. The undecidability of these sets thus follows from the following more general result:

**Theorem 3.4** (Rice 1953): If I is a non-trivial index set, then I is undecidable.

*Proof:* Let I be a non-trivial index set and suppose for a contradiction that χI(x) is computable. Consider the everywhere undefined unary function u(x)-i.e., u(n)↑ for all n∈N. Since u(x) is partial computable, there is an index b such that ϕb(x)≃u(x). We may suppose without loss of generality that b∉I. (If it is the case that b∈I≠N, then we can switch the role of I with its complement ¯I in the following argument and obtain the same result). Since I≠∅, we can also choose an index a∈I and define a function as follows:

f(x,y)={ϕa(y)if k(x)=1   (i.e., if ϕx(x)↓)↑if k(x)=0   (i.e., if ϕx(x)↑)

Note that f(x,y) is partial computable since it is defined by cases in terms of ϕa(x) based on the value of ϕx(x). There is thus an index c such that f(x,y)≃ϕc(x,y). By applying the [*s-m-n* Theorem (3.1)][127], we thus have that ϕc(x,y)≃ϕs21(c,x)(y). But note that we now have the following sequences of implications:

k(x)=1⇒f(x,y)≃ϕa(y)⇒ϕs21(c,x)(y)≃ϕa(y)⇒s21(c,x)∈I

(by our choice of a∈I)

k(x)=0⇒f(x,y)≃ϕb(y)⇒ϕs21(c,x)(y)≃ϕb(y)⇒s21(c,x)∉I

(by our assumptions that b is an index for u(x)-the everywhere undefined function-and that b∉I).

It hence follows that the value of k(x) may be computed by applying the following algorithm:

1.  on input x, calculate the value of s21(c,x) (whose computability follows from the *s-m-n* Theorem);
2.  calculate the value of χI(s21(c,x)) (which may be accomplished since we have assumed that χI(x) is computable).

Either by invoking Church's Thesis or by formalizing the prior algorithm as a partial recursive definition, it follows that k(x) is computable. But this contradicts [Proposition 3.1][128] which shows that k(x) is not computable. □

[Rice's Theorem (3.4)][129] provides a means of showing that many decision problems of practical import are undecidable-e.g., of determining whether a program always returns an output or whether it correctly computes a given function (e.g., addition or multiplication). Its proof also shows that if I is a non-trivial index set, the problem of deciding x∈K can be "reduced" to that of deciding x∈I it the following sense: *if* we could effectively decide the latter, *then* we could also effectively decide the former by first calculating s21(c,x) and then checking if this value is in I. This method of showing undecidability will be formalized by the notion of a *many-one reduction* described in [Section 3.5][130] below.

### 3.3 Computable and Computably Enumerable Sets

A set A⊆N is said to be *computable* (or *recursive* according to the older terminology of [Section 2][131]) just in case its characteristic function is. More generally we have the following:

**Definition 3.1:** A relation R⊆Nk is *computable* just in case χR(→x) is computable.

This definition extends the definition of a primitive recursive relation given in [Section 2.1][132]-e.g., since sets like *PRIMES* and *DIV* are primitive recursive they are *ipso facto* computable. Via Church's Thesis, the notion of a computable set thus also generalizes the accompanying heuristic about effective decidability-i.e., R is computable just in case there is an algorithm for deciding if R(→n) holds which always returns an answer after a finite (although potentially unbounded) number of steps. On the other hand, it follows from the observations recorded in [Section 3.2][133] that none of *HP*, *K*, *Z*, *TOT*, or *FIN* are computable sets.

A related definition is that of a *computably enumerable* (or *c.e.*) *set*-i.e., one whose members can be enumerated by an effective procedure. (In the older terminology of [Section 2][134] such a set is said to be *recursively enumerable* which is traditionally abbreviated *r.e.*) Officially we have the following:

**Definition 3.2:** A⊆N is *computably enumerable* (or c.e.) if A=∅ or A is the range of a computable function-i.e.,

A={m:ϕe(n)↓=m for some n∈N}

for some index e of a total computable function.

This definition can be extended to relations by viewing m as a code for a finite sequence in the obvious way-i.e., R⊆Nk is c.e. just in case there is a computable function ϕe(x) such that R(n0,…,nk) if and only if ϕe(n)=⟨n0,…,nk⟩ for some n∈N.

If A is computably enumerable, its members may thus be listed off as

A={ϕe(0),ϕe(1),ϕe(2),…}

possibly with repetitions-e.g., the constant function const17(x) enumerates the singleton set {17}, which is thereby c.e. It is easy to see that a computable set A is computably enumerable. For if A=∅, then A is c.e. by definition. And if A≠∅, we may choose a∈A and then define

f(x)={xif χA(x)=1aotherwise

In this case f(x) is computable and has A as its range.

In proving facts about computably enumerable sets, it is often convenient to employ one of several equivalent definitions:

**Proposition 3.2:** Suppose A⊆N. Then the following are equivalent:

1.  A is computably enumerable.
    
2.  A=∅ or A is the range of a primitive recursive function.
    
3.  A={n∈N:∃yR(n,y)} for a computable relation R.
    
4.  A is the domain of a partial computable function.
    

The proof of [Proposition 3.2][135] is largely a matter of unpacking definitions. For instance, to see that iv implies i, suppose that A=dom(ϕe)-i.e., A={n∈N:ϕe(n)↓}. If A=∅ it is automatically c.e. Otherwise, there is an element a∈A. We may now define

f(x)={(x)0if T1(e,(x)0,(x)1)aotherwise

f(x) thus treats its input as a pair ⟨n,s⟩ consisting of an input n to ϕe(x) and a computation sequence s as defined in the proof of the Normal Form Theorem ([2.3][136]). As x varies over N, it thus steps through all possible inputs (x)0 to ϕe and also all possible witnesses (x)1 to the fact that the computation of ϕe on (x)0 halts. It then returns (x)0 if (x)1 is such a witness to a halting computation and a otherwise. Thus the range of f(x) will correspond to that of ϕe(x). And as T1(e,x,s) is computable (and in fact primitive recursive) relation, it is easy to see that f(x) is a computable function with range A. This shows that A is c.e. as desired.

Part iv of [Proposition 3.2][137] also provides a convenient uniform notation for computably enumerable sets-i.e., if A=dom(ϕe) we denote A by We={n:ϕe(n)↓}. The sequence W0,W1,W2,… thus provides a uniform enumeration of c.e. sets relative to our prior enumeration of unary partial computable functions. This notation also aids the formulation of the following:

**Proposition 3.3:**

1.  The computably enumerable sets are effectively closed under union, intersection, and cross product-i.e., there are computable functions un(x,y), int(x,y) and cr(x,y) such that if A=Wi and B=Wj then
    
    A∪B=Wun(i,j),A∩B=Wint(i,j)
    
    and
    
    {⟨x,y⟩:x∈A & y∈B}=Wcr(i,j).
2.  The computable sets are additionally closed under complementation and relative complementation-i.e., if A and B are recursive, then so are ¯A and A−B.
    

The proofs of these facts are also straightforward upon appeal to Church's Thesis. For instance, if dom(ϕi)=A and dom(ϕj)=B then un(i,j) can be taken to be an index for a program which simulates the computation of ϕi(n) and ϕj(n) in alternate stages and halts just in case one of these subcomputations halt. Note also that if A=Wi is computable, then χ¯A(x)=1∸χA(x) is also computable, from which it follows that ¯A is computable.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-21" id="ref-21">21</a>]</sup>

A related observation is the following:

**Proposition 3.4** (Post 1944): A is computable if and only if A and ¯A are both computably enumerable.

The left-to-right direction is subsumed under [Proposition 3.3][139]. For the right-to-left direction, suppose that A=dom(ϕi) and ¯A=dom(ϕj). Then to decide n∈A we can perform an unbounded search for a computation sequence s such that either T1(i,n,s) or T1(j,n,s), accepting in the first case and rejecting in the second. Since A∪¯A=N, the search must always terminate and since A∩¯A=∅, the conditions are exclusive. Thus by again appealing to Church's Thesis, A is computable.

We have seen that the computable sets are contained in the computably enumerable sets. Two questions which arise at this stage are as follows:

1.  are there examples of sets which are computably enumerable but not computable?
2.  are there are examples of sets which are not computably enumerable?

A positive answer to both is provided by the following:

**Corollary 3.1:** Recall the set K={i:ϕi(i)↓}-i.e., the so called *Diagonal Halting Problem*. K is computably enumerable but not computable while ¯K is not computably enumerable.

K is clearly c.e. as it is the domain of μsT1(x,x,s). On the other hand, we have seen that the characteristic function of K-i.e., the function χK(x)=k(x) as defined in [Section 3.2][140]-is not computable. Thus K is indeed a computably enumerable set which is not computable. To see that ¯K is not c.e., observe that if it were, then K would be computable by [Proposition 3.4][141]. This in turn suggests a sense in which it is "harder" to decide membership in K than in any computable set. The hierarchies introduced in [Sections 3.5][142] and [Section 3.6][143] will provide a means of making such observations precise.

### 3.4 The Recursion Theorem

The result which is now most often referred to as *Kleene's Recursion Theorem* can be used to unify a number of effective diagonal arguments similar to that underlying [Theorem 3.3][144] and has a wide range of applications both in computability theory and other areas of mathematical logic and computer science.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-22" id="ref-22">22</a>]</sup> Although its statement is straightforward, both its significance and the following proof become clearer upon considering subsequent applications.

**Theorem 3.5** (Kleene 1938): Suppose that f(x) is a total computable function. Then there is a number n∈N such that ϕn(y)≃ϕf(n)(y).

*Proof:* Consider the function g(x,y) defined as follows:

g(x,y)={ϕϕx(x)(y)if ϕx(x)↓↑otherwise

As it is evident that g(x,y) is partial computable, g(x,y)≃ϕe(x,y) for some e. It thus follows by the [*s-m-n* Theorem (3.1)][146] that ϕe(x,y)≃ϕs21(e,x)(y). Let b(x)=s21(e,x) and note that we then have ϕb(x)(y) is the same function as ϕϕx(x)(y) provided that ϕx(x) is defined. Note that b(x) is a total computable function and is defined independently of the given function f(x).

Next let k be an index for the composition of f(x) with b(x)-i.e., ϕk(x)≃f(b(x)). We now claim that n=b(k) is the number called for in the statement of the theorem. For first note that since b(x) and f(x) are both total, ϕk(x) is also total and thus ϕk(k) is defined. From this it follows that ϕb(k)(y)≃ϕϕk(k)(y). We now have the following sequence of functional identities:

ϕn(y)≃ϕb(k)(y)≃ϕϕk(k)(y)≃ϕf(b(k))(y)≃ϕf(n)(y)

□

The Recursion Theorem is sometimes also referred to as the *Fixed Point Theorem*. Note, however, that [Theorem 3.5][147] does not guarantee the existence of an extensional fixed point for the given function f(x)-i.e., a number n such that f(n)=n. (In fact it is evident that there are computable functions for which no such value exists-e.g., f(x)=x+1.) But suppose we view f(x) instead as a mapping on indices to partial computable functions or, more figuratively, as a means of transforming a *program* for computing a partial computable function into another program. On this interpretation, the theorem expresses that for every such computable transformation there is some program n such that the function ϕn(y) which it computes is the same as the function ϕf(n)(y) computed by its image f(n) under the transformation.

As it may at first appear such an n is defined in a circular manner, it is also *prima facie* unclear why such a program must exist. Indeed Soare (2016, 28-29) remarks that the foregoing proof of the Recursion Theorem is "very short but mysterious" and is "best visualized as a diagonal argument that fails". In order to clarify both this comment and the proof, consider the matrix depicted in Figure 1 whose rows Ri enumerate not the values of partial computable functions but rather the functions themselves-i.e., the row Ri will contain the functions ϕϕi(0),ϕϕi(1),… with the understanding that if ϕi(j)↑, then ϕϕi(j) denotes the totally undefined function. (Such a depiction is originally due to Owings 1973.)

ϕϕ0(0)ϕϕ0(1)…ϕϕ0(i)…ϕϕ0(d)…ϕϕ0(hf(i))…ϕϕ1(0)ϕϕ1(1)…ϕϕ1(i)…ϕϕ1(d)…ϕϕ1(hf(i))…⋮⋱⋮ϕϕi(0)……ϕϕi(i)…ϕϕi(d)…ϕϕi(hf(i))…⋮⋱⋮ϕϕd(0)……ϕϕd(i)…ϕϕd(d)…ϕϕd(hf(i))…ϕϕd(hf(d))…⋮⋱↑ϕϕhf(i)(0)……ϕϕhf(i)(i)…ϕϕhf(i)(d)…ϕϕhf(i)(hf(i))…=⋮⋱↓ϕϕhf(d)(0)……ϕϕhf(d)(i)…ϕϕhf(d)(d)…ϕϕhf(d)(hf(i))…ϕϕhf(d)(hf(d))…⋮

Figure 1: The matrix of partial computable functions employed in the proof of the [Recursion Theorem (3.5)][148]

We may think of the function f(x) given in [Theorem 3.5][149] as inducing a transformation on the rows so that Ri is mapped to Rf(i). To this end, let hf(x) be an index to the total computable function which composes f with ϕx so that we have

ϕhf(x)(y)≃f(ϕx(y))

Next consider the diagonal of this matrix-i.e., D=ϕϕ0(0),ϕϕ1(1),… Since the indices to the functions which comprise D are given effectively, it must be the case that D itself corresponds to some row Rd-i.e.,

ϕϕd(i)(y)≃ϕϕi(i)(y) for all i∈N

But now consider the image of Rd under f-i.e., the row Rhf(d)=ϕϕhf(d)(0),ϕϕhf(d)(1),… It follows from (32) that we must have

ϕϕd(hf(d))(y)≃ϕϕhf(d)(hf(d))(y)

But note that by the definition of hf, ϕhf(d)(hf(d))=f(ϕd(hf(d)) and thus also from (33)

ϕϕd(hf(d))(y)≃ϕf(ϕd(hf(d))(y)

But now note that since f,ϕd and hf are all total, the value ϕd(hf(d)) is defined. Thus setting n=ϕd(hf(d)) it follows from (34) that ϕn(y)≃ϕf(n)(y) as desired.

As mentioned above, the Recursion Theorem may often be used to present compact proofs of results which would traditionally be described as involving *self-reference*. For instance, an immediate consequence is that for every f(x) there is an n such that Wn=Wf(n). To see this note that [Theorem 3.5][150] entails the existence of such an n such that ϕn(x)≃ϕf(n) for every computable f(x). But since the domains of the functions must then coincide, it follows that Wn=Wf(n).

It is useful to record the following alternative form of the Recursion Theorem:

**Corollary 3.2:** For every partial computable function f(x,y), there is an index n such that ϕn(y)≃f(n,y).

*Proof:* By the [*s-m-n* Theorem (3.1)][151], f(x,y)≃ϕs21(i,x)(y) for some i. But then the existence of the required n follows by applying [Theorem 3.5][152] to s21(i,x). □

Here are some easy consequences in the spirit described above which make use of this formulation:

1.  There is a number n such that ϕn(x)=x+n. (This follows by taking f(x,y)=x+n in [Corollary 3.2][153]. Analogous observations yield the existence of n such that ϕn(x)=x×n,ϕn(x)=xn, etc.)
    
2.  There is a number n such that Wn={n}. (Take
    
    f(x,y)={0if x=y↑otherwise
    
    in [Corollary 3.2][154].)
    
3.  Consider a term τ corresponding to a "program" which determines the partial computable program with index ⌜τ⌝ (as described in [Section 2.2.2][155]). We say that such a program is *self-reproducing* if for all inputs x, the computation of τ on x outputs ⌜τ⌝. Since in order to construct τ it would seem that we need to know ⌜τ⌝ in advance, it might appear that self-reproducing programs need not exist. Note, however, that transposed back into our official terminology, the existence of such a program is equivalent to the existence of a number n such that ϕn(x)=n. And this is guaranteed by applying [Corollary 3.2][156] to the function f(x,y)=x.
    

For further discussions of the Recursion Theorem in regard to self-reference and more advanced applications in computability theory see, e.g., Cutland (1980, ch. 11), Rogers (1987, ch. 11), Odifreddi (1989, ch. II.2), and Y. Moschovakis (2010).

Before leaving the Recursion Theorem, it will finally be useful to reflect on how it bears on the general concept of recursive definability as discussed in [Sections 1 and 2][157]. Consider, for instance, a simple definition such as

h(0)=kh(y+1)=g(h(y))

In the case that f(y) and g(y) are primitive recursive, we have remarked that it is possible to show that there exists a unique function h(y) satisfying (35) by an external set-theoretic argument. But we may also consider the case in which g(y) is assumed to be computable relative to a model of computation M which differs from the partial recursive functions in that it does not natively support recursion as a mode of computation-e.g., the Turing Machine model T or Unlimited Register Machine model U. If we simply set down (35) as a definition in this case, we would have no *a priori* assurance that h(y) is computable relative to M even if g(x) is.

Upon examination, however, it is clear that the only features of a model of computation on which the proof of [Theorem 3.5][158] relies are the existence of an indexation for which a version of the [*s-m-n* Theorem (3.1)][159] is available. If M satisfies these conditions, the claim that h(y) is computable relative to M is equivalent to h(y)≃ϕn(y) where n is an index drawn from some suitable indexation of the M-computable functions. But since the *s-m-n* Theorem for M allows us to treat an index as a variable, we can also consider the function defined by

f(x,0)=kf(x,y+1)=g(ϕx(y))

Now note that the existence of an n such that f(n,y)≃ϕn(y) is again guaranteed by [Corollary 3.2][160]. This in turn yields

ϕn(0)=kϕn(y+1)=g(ϕn(y))

This illustrates how the existence of a computable function satisfying a recursive definition such as (35) follows from the Recursion Theorem even if we have not started out by characterizing a "computable function" as one defined "recursively" in the informal sense discussed in [Section 1][161]. And this in turn helps to explain why [Theorem 3.5][162] has come to be known as the *Recursion* Theorem.

### 3.5 Reducibilities and Degrees

A central topic in contemporary computability theory is the study of *relative computability*-i.e., if we *assume* that we are able to decide membership in a given set or compute a given function, which other sets or functions would we be able to decide or compute? This question may be studied using the notion of a *reduction* of one set A to another B which was introduced informally by Kolmogorov (1932) as a means of transforming a "solution" of A into a "solution" of B.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-23" id="ref-23">23</a>]</sup> Turing (1939) provided the first formal definition of a computational reduction in his study of ordinal logics. However, it was Post who first proposed to systematically study reducibility notions and their associated degree structures in his highly influential paper "Recursively enumerable sets of positive integers and their decision problems" (1944).

Therein Post explains the basic idea of a reduction and its significance as follows:

> Related to the question of solvability or unsolvability of problems is that of the reducibility or non-reducibility of one problem to another. Thus, if problem P1 has been reduced to problem P2, a solution of P2 immediately yields a solution of P1, while if P1 is proved to be unsolvable, P2 must also be unsolvable. For unsolvable problems the concept of reducibility leads to the concept of degree of unsolvability, two unsolvable problems being of the same *degree of unsolvability* if each is reducible to the other, one of lower degree of unsolvability than another if it is reducible to the other, but that other is not reducible to it, of incomparable degrees of unsolvability if neither is reducible to the other. A primary problem in the theory of recursively enumerable sets is the problem of determining the degrees of unsolvability of the unsolvable decision problems thereof. We shall early see that for such problems there is certainly a highest degree of unsolvability. Our whole development largely centers on the single question of whether there is, among these problems, a lower degree of unsolvability than that, or whether they are all of the same degree of unsolvability. (Post 1944, 289)

In order to appreciate this passage, it is again useful to think of a set A⊆N as being associated with the *problem* of deciding membership in A-e.g., given a natural number n, is n prime? (i.e., n∈PRIMES?) or is the nth partial computable function with input n defined? (i.e., n∈K?). But even given this correspondence, the assertion that a solution to a problem B "immediately yields" a solution to A may still be analyzed in a number of different ways. Two of the most important possibilities are as follows:

1.  Assuming that there is an algorithm for deciding questions of the form n∈B, then it is possible to specify an algorithm for deciding questions of the form n∈A.
    
2.  Assuming that we had access to an "*oracle*" capable of answering arbitrary questions of the form n∈B in a single step, then it is possible to specify an algorithm employing the oracle for deciding n∈A.
    

The formalization of these relations between problems leads to the notions of *many-one reducibility* and *Turing reducibility* which provide distinct but complementary analyses of the notions A *is no harder to solve than* B and also *the degree of unsolvability* (or *difficulty*) *of A is equal to that of B*.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-24" id="ref-24">24</a>]</sup> The latter notion came first historically and was introduced by Turing (1939) and in an equivalent form by Kleene (1943). However it was Post (1944) who both introduced the former notion and also initiated the general study of Turing reducibility. In fact the final sentence of the passage quoted above describes an important technical question about the Turing degrees which would shape the early development of computability theory (i.e., "Post's problem" given as [Question 3.1][165] below).

#### 3.5.1 The many-one degrees

We have already seen an example of many-one reducibility in the proof of [Rice's Theorem (3.4)][166]. In particular, the proof showed that the problem of deciding membership in K can be reduced to that of deciding membership in any non-trivial index set I in the following sense: for all n, if n∈K then s21(c,n)∈I. Thus if there were an algorithm for deciding membership in I, we would be able to decide whether n∈K by using it to test whether s21(c,n)∈I. The function s21(c,x) (whose computability is given by the *s-m-n* Theorem) is thus a so-called *many-one* reduction of K to I.

The formal definition generalizes this example as follows:

**Definition 3.3:** Given sets A,B⊆N, A is said to be *many-one* (or m-one) *reducible* to B if there is a computable function f(x) such that for all n∈N,

n∈A in and only if f(n)∈B

In this case we write A≤mB.

Using this notation, the foregoing example thus shows that K≤mI. These observations can generalized as follows:

**Proposition 3.5:** Suppose that A≤mB.

1.  If B is computable, then so is A.
    
2.  If B is computably enumerable, then so is A.
    

By contraposing [Proposition 3.5][167] it thus follows that in order to show that a set B is non-computable (or non-c.e.) it suffices to show that a known non-computable (or non-c.e.) set can be reduced to it. As an initial example, observe that the Diagonal Halting Problem K={i:ϕi(i)↓} is reducible to the Halting Problem HP={⟨i,n⟩:ϕi(n)↓} by the reduction f(x)=⟨x,x⟩-i.e., the computable pairing function of x with itself is a many-one reduction showing K≤mHP. Thus since HP is known to be non-computable, this gives another proof that K also is not computable.

Reducibility notions also typically come with an associated notion of what it means for a designated set to be *complete* relative to a class of sets-i.e., a set to which every set in the class may be reduced and which is itself a member of the class. As an initial example we have the following:

**Definition 3.4:** A set B is said to be *many-one* (or m-) *complete* for the computably enumerable sets just in case the following conditions hold:

1.  B is computable enumerable;
    
2.  For all computably enumerable sets A, A≤mB.
    

An obvious example of a complete c.e. set is HP. For since HP={⟨i,n⟩:∃sT1(i,n,s)} and T1(x,y,z) is a computable relation, it follows from [Proposition 3.2][168] that HP is c.e. And on the other hand, if A=Wi, then n∈A if and only if ⟨i,n⟩∈HP thus showing that Wi≤mHP.

It is, nonetheless, standard to take K rather than HP as the canonical complete c.e. Although it might at first seem that K contains "less computational information" than HP, it is not hard to see that K is also such that every c.e. set is m-reducible to it. For supposing that A=Wi, we may define a function

f(x,y)={1 if ϕi(x)↓ (i.e., x∈A)↑otherwise

As f(x,y) is clearly partial computable, the [*s-m-n* Theorem (3.1)][169] gives a total recursive function s21(i,x) such that f(x,y)≃ϕs21(i,x)(y). We then have

n∈A ⇔ ϕi(n)↓ ⇔ ϕs21(i,n)(s21(i,n))↓ ⇔ s21(i,n)∈K

These biconditionals hold because ϕi(n)↓ just in case ϕs21(i,n)(y) is const1(x) (i.e., the constant 1-function) as opposed to the everywhere undefined function just in case ϕs21(i,n)(s21(i,n))↓. But as the later condition is equivalent to s21(i,n)∈K, s21(i,x) is a many-one reduction showing A≤mK.

This illustrates a sense in which deciding membership in K can also be understood as universal for computably enumerable sets or, alternatively, that there is no c.e. set which is any "harder" to solve than K. Nonetheless, there are problems that are harder to solve than K in the sense that they could not be solved even if we possessed a decision algorithm for K. For instance, it will follow from results given below that while K is m-reducible to TOT, TOT is not m-reducible to K. This illustrates how m-reducibility can be used to study the *relative difficulty* of solving computational problems.

These considerations lead naturally to the notion of a *degree of difficulty*-another concept which can be made precise with respect to different reducibility notions. The version for many-one reducibility is given by the following definition:

**Definition 3.5:** If A and B are many-one reducible to each other-i.e., A≤mB and B≤mA-then we say that A and B are *many-one equivalent* and we write A≡mB.

It follows immediately from [Definition 3.3][170] that ≤m is reflexive. It is also clearly transitive. (For if f(x) and g(x) are computable functions which respectively serve as many-one reductions showing A≤mB and B≤mC, then their composition f(g(x)) is a many-one reduction showing A≤mC.) As it thus follows that ≡m is an equivalence relation, it also makes sense to define the following:

**Definition 3.6:** degm(A)-the *many-one* (or m-) *degree* of A-is the equivalence class of A with respect to ≡m-i.e., degm(A)={B⊆N:B≡mA}. We call an m-degree *computable* if it contains a computable set and *c.e*. if it contains a computably enumerable set.

The m-degree deg(A) of A collects together all sets which are many-one equivalent to it. It can thus be thought of as an abstract representation of the relative difficulty of deciding membership in A when this latter notion is in turn explicated in terms of m-reducibility. For instance, since our prior observations show that degm(HP)=degm(K), they are thus "equally difficult" c.e. degrees.

It is traditional to use boldface lower case Roman letters a,b,… to denote degrees (although it should be kept in mind that these are *sets of sets of natural numbers*). We next define an ordering on m-degrees as follows:

**Definition 3.7:** Let a and b be m-degrees. We then define

1.  a≤mb just in case there is a set A∈a and a set B∈b such that A≤mB.
    
2.  a<mb just in case a≤mb and a≠b.
    

It is easy to see that <m is a partial order on m-degrees-i.e., irreflexive, antisymmetric, and transitive. We accordingly introduce the structure Dm=⟨{degm(A):A⊆N},<m⟩ which is traditionally known as the *many-one* (or *m*-) *degrees*.

Together with the similar study of the Turing degrees (which will be defined in [Section 3.5.2][171]), investigating the structure of Dm has been a major focus of research in computability theory since the time of Post's (1944) introduction of the many-one degrees. Some properties of this structure are as follows:

**Proposition 3.6:**

1.  The m-degrees are not closed under complementation-i.e., there exist sets A such that A≢m¯A and thus ¯A∉deg(A).
    
2.  0=dfdegm(∅)={∅} and n=dfdegm(N)={N} are distinct m-degrees both of which are (trivially) computable.
    
3.  There is exactly one computable m-degree 0m other than 0 and n-i.e., 0m=deg(A) for any computable set A≠∅,A≠N. Additionally, 0m is minimal in Dm in the sense that 0m≤ma for all degrees a other than 0 and n.
    
4.  If b is a c.e. degree and a≤mb, then a is also a c.e. degree.
    
5.  There is a *maximum* c.e. m-degree-i.e., degm(K)=df0′m-in the sense that a≤0′m for all c.e. degrees a.
    
6.  Any pair of m-degrees a,b have a *least upper bound* c-i.e., a≤mc and b≤mc and c is ≤m-less than any other upper bound of a and b. Since we have seen that ≤m is also a partial order, this implies that Dm is additionally an *upper semi-lattice*.
    
7.  There exists a c.e. degree a properly between 0m and a<0′m-i.e., 0m<a<0′m.
    

Post (1944) demonstrated part vii by showing that there exist so-called *simple sets*-i.e., sets A which are c.e. and such that ¯A is infinite but does not contain an infinite c.e. subset. It is easy to see that a simple set cannot be computable. But on the other hand, Post also showed that a simple set cannot be m-complete. And it thus follows that if A is simple a=dfdegm(A)≠0m but A≢mK and thus a<0′m. Suppose we now understand "degrees of unsolvability" in the passage quoted at the beginning of this section as corresponding to the c.e. m-degrees. It thus follows from part v of [Proposition 3.6][172] that 0′m is indeed a "highest" such degree and also from part vii that there is a lower but still "unsolvable" (i.e., non-computable) degree.

Although the other parts of [Proposition 3.6][173] have straightforward proofs, they provide some insight into the fact that Dm is itself a highly complex structure (see, e.g., Odifreddi 1999b, 1). Nonetheless the first two parts of this theorem are often taken to illustrate awkward features of the many-one degrees as an abstract representation of computational difficulty-i.e., the exceptional behavior of degm(∅) and degm(N) and the fact a set and its complement may inhabit different degrees (as is easy to see is exemplified by K and ¯K). It is partly in light of these features that the Turing degrees DT are the structure which are now most widely studied in computability theory. But as Post also alludes, it is relative to DT for which he was originally unable to demonstrate the existence of a c.e. set of an intermediate degree of unsolvability.

#### 3.5.2 The Turing degrees

The notion of *relative computability* mentioned at the beginning of this section is now standardly analyzed in terms of *computability in a set* A⊆N. Informally, we say that a function f(→x) is computable in A just in case there exists an algorithm which is effective in the traditional sense with the exception of the fact its computation may rely on computing one or more values χA(y). These values are in turn assumed to be available to the algorithm in a single step even though χA(y) may not itself be computable-e.g., if A=K.

This notion was originally introduced by Turing (1939) who described what he referred to as an *oracle* (or *o*-) *machine* variant of the standard Turing Machine model T. An o-machine is otherwise like a normal Turing machine but also possesses a read-only *oracle tape* (and corresponding read-only head) on which the characteristic function of a set A is assumed to be written at the beginning of its computation. The transitions of an o-machine are determined by its internal state together with the currently scanned symbols on both its read-write tape and the oracle tape, thus formalizing the idea that the machine may "consult the oracle" about the characteristic function of A one or more times during the course of its computation.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-25" id="ref-25">25</a>]</sup>

Kleene (1943) described an analogous idea for the *general recursive functions* as follows:

> A function ϕ which can be defined from given functions ψ1,…,ψk by a series of applications of general recursive schemata we call *general recursive in* the given functions; and in particular, a function definable *ab initio* by these means we call *general recursive*. (Kleene 1943: 44)

The former part of this characterization differs from the definition of general recursiveness given in [Section 1.5][175] in allowing that in addition to the initial functions 0 and s(x), the functions ψ1,…,ψk can also enter into systems of equations which define the function ϕ. This corresponds to the assumption that the values of ψ1,…,ψk are available in the course of a computation without the need for further calculation.

It is also possible to modify the definition of the *partial recursive functions* given in [Section 2.2.1][176] to allow such relativization to an additional class of initial functions. Since relativization to a finite set of functions can be accomplished by successive relativization to a single function and the graph of a function can also be coded into a set, this is now standardly achieved as follows:

**Definition 3.8:** Given a set A⊆N, we define the class of A-*partial recursive functions* PartRECA to be the smallest class of partial functions containing the initial functions IA={0,s,πik,χA(x)} and closed under the functionals

OpPartREC={Compij,PrimReck,Mink}.

There are, of course, uncountably many subsets of the natural numbers. But for each such A⊆N, we may still understand χA(x) as a new primitive functional symbol which can be employed in constructing one of countably many A-partial recursive definitions in the manner discussed in [Section 2.1.1][177]. It is thus also possible to list off all of the unary A-partial recursive functions relative to the codes of their definitions to obtain a uniform enumeration

ϕA0(x),ϕA1(x),ϕA2(x),…

and similarly for other arities. It is thus not difficult to see that we can thereby also obtain relativized versions of results like the [*s-m-n* Theorem (3.1)][178] and the Universality Theorem ([3.2][179]) as exemplified by the following:

**Theorem 3.6:** For all A⊆N, there is an A-partial computable function υ which is *universal* in the sense that for all unary A-partial computable functions f(→x), there is an i∈N such that υA(i,x)≃f(x).

These observations in turn license the use of the expression *computable in A* to describe both a function f(→x) which is A-partial recursive and total and also a set B such that χB(x) is computable in A. We also use the expression *computably enumerable* (c.e.) *in A* to describe a set B which is the range of an A-partial recursive function and the notation WAe to denote the domain of ϕAe(x). It is then straightforward to see that many of our prior proofs about *non-computability* also carry over to the relativized setting-e.g., KA={i:ϕAi(i)↓} is an example of a set which is computably enumerable in A but not computable in A.

We may now state the definition of *Turing reducibility* as follows:

**Definition 3.9:** Given sets A,B⊆N, A is said to be *Turing* (or T-) *reducible* to B just in case A is computable in B. In this case we write A≤TB.

It is a consequence of this definition that A≤TB just in case χA(x) coincides with the (total) B-computable function given by ϕBe(x) for some index e. For instance if we adopt Turing's characterization of relative computability, we may think of e as describing a program for a machine which can consult B as an oracle. In this case, A≤TB means that it is possible to decide if n∈A by carrying out the program described by e on the input n which may in turn require performing queries to the oracle B during the course of its computation.

We may also define a notion of completeness with respect to ≤T as follows:

**Definition 3.10:** We say that B is *Turing complete* if B is c.e. and all c.e. sets A are such that A≤TB.

It is easy to see that A≤mB implies A≤TB. (For if f(x) is a m-reduction of A to B, then consider the program which first computes f(n) and then, using B an as oracle, checks if f(n)∈B, outputting 1 if so and 0 if not.) It thus follows that K is also Turing complete-i.e., it embodies the maximum "degree of unsolvability" among the the c.e. sets when this notion is understood in terms of Turing reducibility as well as many-one reducibility.

Such observations can be made precise by first defining the notion of Turing equivalence:

**Definition 3.11:** If A and B are Turing reducible to each other-i.e., A≤TB and B≤TA-then we say that A and B are *Turing equivalent* and we write A≡TB.

As it is again easy to see that ≡T is an equivalence relation, we may also define the notion of *Turing degree* as follows:

**Definition 3.12:** degT(A)-the *Turing degree* of A-is the equivalence class of A with respect to ≡T-i.e., degT(A)={B⊆N:B≡TA}.

We can now define an ordering on Turing degrees as follows:

**Definition 3.13:** Let a and b be Turing degrees. We then define

1.  a≤Tb just in case there is a set A∈a and a set B∈b such that A≤TB.
    
2.  a<Tb just in case a≤Tb and a≠b.
    

As with the m-degrees, we say that a is a *computable Turing degree* if it contains a computable set and a *computably enumerable* (c.e.) *degree* if it contains a c.e. set. If we consider the structure

DT=⟨{degT(A):A⊆N},≤T⟩

-which is known as the *Turing degrees*-it is again easy to see that ≤T is a partial order. Some observations which illustrate the relationship between DT and the many-one degrees Dm are as follows:

**Theorem 3.7:**

1.  There is exactly one computable Turing degree denoted by 0T=degT(∅) (which is often written 0 when there is no possibility of ambiguity with the m-degrees). 0T consists of all of the computable sets and is the unique minimum Turing degree.
    
2.  For all sets A, and A≡T¯A and thus also degT(A)=degT(¯A).
    
3.  degT(K) is the maximum amongst all c.e. Turing degrees.
    
4.  For any sets A,B, degm(A)⊆degT(A) and if
    
    degm(A)≤mdegm(B),
    
    then
    
    degT(A)≤TdegT(B).

Since ∅ and N are both (trivially) computable sets, by part i) we have degT(∅)=degT(N)=0T, unlike the m-degrees. And also unlike the m-degrees we have by part ii that degT(A)=degT(¯A). (For if we can decide B via an algorithm which uses A an as oracle, then we can also decide it using ¯A as an oracle by simply swapping the responses obtained in our former algorithm.)

The structures of both DT and the c.e. degrees

ET=⟨{degT(A):A is c.e.},≤T⟩

have been extensively investigated since the 1950s. One of their most basic properties may be considered by first defining the operation of sets

A⊕B={2n:n∈A}∪{2n+1:n∈B}.

A⊕B is called the *effective join* of A and B as it encodes the "information" contained in A on the even members of A⊕B and that contained B on its odd members. A⊕B is c.e. if both A and B are. Suppose we also define the operation

degT(A)∨degT(B)=dfdeg(A⊕B)

on the degrees a=degT(A) and b=degT(B). Then it is not difficult to see that a∨b is the *least upper bound* of a and b with respect to the structure DT. Like the m-degrees, DT and ET both form an *upper semi-lattice*-i.e., a partial order in which least upper bounds always exist.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-26" id="ref-26">26</a>]</sup>

Given A⊆N, we may also consider KA={n:ϕAn(n)↓}-i.e., the set considered above which corresponds to the Diagonal Halting Problem relativized to the oracle A. KA is referred to as the *jump* of A for which we also write A′. This notation is also used to denote an operation on Turing degrees by setting a′=degT(A′) for some representative A∈a. The following collects together several facts about the jump operation on both sets and degrees:

**Proposition 3.7:** For any set A,B⊆N with degT(A)=a and degT(B)=b:

1.  If A is computable, then KA≡TK.
    
2.  A′ is c.e. in A but not computable in A.
    
3.  If A≤TB, then A′≤TB′ and if A≡TB, then A′≡TB′.
    
4.  a<Ta′
    
5.  If a≤Tb, then a′≤Tb′.
    
6.  0′≤Ta′
    
7.  If B is c.e. in A, then b≤Ta′.
    

Part ii of [Proposition 3.7][181] records the fact that the basic result that K is c.e. but not computable holds for computability relativized to any set A. From this it follows that A<TA′ and thus also that the result of iterating the jump operation on any set A yields a sequence

A(0)=A,A(1)=(A(0))′=A′,A(2)=(A(1))′=A″,⋮A(i+1)=(A(i))′,⋮

for which A(0)<TA(1)<TA(2)<T…. As benchmarks in the Turing degrees we also define the sets

∅0=∅,∅′=K,∅″=K′,⋮∅(i+1)=K(i)′,⋮

and the degrees 0(n)=degT(∅(n)). Note that the latter correspond to a linearly ordered sequence

0<T0′<T0″<T…<T0(n)<T…

As depicted in Figure 2, it is possible to use this sequence to classify many of the problems defined in [Section 3.2][182]:

1.  0=degT(∅)={A:A is computable}
    
2.  0′=degT(K)=degT(HP)
    
3.  0″=degT(TOT)=degT(FIN)
    

Such classifications illustrate how the position of a set within DT can be understood as a measure of how far away it is from being computable-i.e., of its *degree of unsolvability* or *difficulty*. However unlike other conventional measurement scales, the structure of DT is neither simple nor is it always straightforward to discern. Some evidence to this effect was provided by the fact that the answer to the following question was posed but left unanswered by Post (1944):<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-27" id="ref-27">27</a>]</sup>

**Question 3.1** (*Post's Problem*): Is there a c.e. degree a such that 0<Ta<T0′?

Post's problem was eventually answered in the positive independently by Friedberg (1957) and Muchnik (1956) who showed the following:

**Theorem 3.8:** There are c.e. sets A and B such that A≰TB and B≰TA. Thus if a=degT(A) and b=degT(B), then a≰Tb and b≰Ta and hence also 0<Ta<T0′ and 0<Tb<T0′.

The proof of [Friedberg-Muchnik Theorem (3.8)][184] required the development of a new technique known as the *priority method* (or also as the *injury method*) which has become a central tool in the subsequent development of computability theory. The method provides a means of constructing a c.e. set A with a certain property P which may be described as follows:

1.  the desired properties of A are divided into an infinite list of *requirements* R0,R1,R2,… such that if all of the Ri are satisfied, then A will satisfy P;
2.  the requirements are then associated with *priorities* corresponding to an ordering in which their satisfaction is to be preserved by the construction-e.g., R0 might have the highest (or "most important") priority, R1 the second highest priority, …;
3.  A is then constructed in stages A0,A1,A2,…,As,… with each stage s attempting to satisfy the highest priority requirement Rj which is currently unsatisfied, either by adding numbers to the current approximation As of A or by prohibiting other numbers from entering At at a later stage t>s;
4.  it may happen that by satisfying some requirement Ri at stage s the process causes another requirement Rj to become unsatisfied (i.e., stage s *injures* Rj);
5.  in this case, the priority ordering is consulted in order to determine what action to take.

In the case of [Theorem 3.8][185], this technique is used to simultaneously construct the two c.e. sets A and B of degree intermediate between 0 and 0′ by alternating between the requirements R2i which entail that A≠{n:ϕBi(n)↓=1} at even stages to ensure A≰TB and requirements R2i+1 which entail that B≠{n:ϕAi(n)↓=1} at odd stages so as to ensure B≰TA.

Sophisticated application of the priority method have been employed in computability theory from the 1960s onward to investigate the structure of DT and ET.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-28" id="ref-28">28</a>]</sup> Some illustrative results which can be obtained either in this manner or more elementary techniques are as follows:

1.  There are continuum (i.e., 2ℵ0) many distinct Turing degrees. In particular, although for a given degree a the set of b such that b≤Ta is countable, the set of b such that a<Tb is uncountable (Kleene & Post 1954).
    
2.  For every degree a≢T0, there exists a degree b which is *incomparable* to a-i.e., b≰Ta and a≰Tb. Moreover, there is a set of 2ℵ0 pairwise incompatible degrees (Kleene & Post 1954).
    
3.  There are *minimal degrees* m-i.e., degrees for which there is no a such that 0<Ta<Tm (Sacks 1963b). Thus in general <T is *not* a dense order. (But by fact vii below, there are not minimal c.e. degrees.)
    
4.  There are pairs of degrees a and b which do not possess a greatest lower bound. Thus although DT is an upper semi-lattice, it is not a lattice (Kleene & Post 1954). The same is true of ET (Lachlan 1966).
    
5.  Every countable partially ordered set can be embedded into DT (Thomason 1971). However this is *not* true of ET into which there are finite non-distributive lattices which cannot be embedded (Lachlan & Soare 1980).
    
6.  There is a non-c.e. degree a<T0′ (Shoenfield 1960).
    
7.  For any c.e. degrees a<Tb, there is a c.e. degree c such that a<Tc<Tb (Sacks 1964). Thus unlike the Turing degrees in general, the c.e. degrees *are* densely ordered.
    
8.  For any c.e. degree a>T0, there are incomparable c.e. degrees b,c<Ta such that a=b∪c (Sacks 1963b).
    
9.  Let Th(DT) be the first-order theory of the structure DT in the language with the with ≡T and ≤T. Not only is Th(DT) undecidable (Lachlan 1968), it is fact many-one equivalent to *true second-order arithmetic* (Simpson 1977).
    
10.  As is easily shown to be true of the join operation a∨b, the jump operation a′=b is definable in DT in the language with ≡T and ≤T (Shore & Slaman 1999).
    

These properties attest to the complexity of DT as a mathematical structure. A related question is whether DT is *rigid* in the following sense:

**Question 3.2:** Does there exist a *non-trivial automorphism* of DT-i.e., a mapping π:DT→DT which preserves ≤T and is not the identity?

A negative answer to this question would show that the relation of degT(A) to other degrees uniquely determines the degree of unsolvability of A relative to DT. Recent work has pointed in this direction (see, e.g., Slaman 2008). Nonetheless, at the time of the 2020 update to this entry, [Question 3.2][187] remains a significant open problem in computability theory whose origins can be traced back to the original foundational work of Turing, Post, and Kleene surveyed above.

### 3.6 The Arithmetical and Analytical Hierarchies

The many-one degrees Dm and the Turing degrees DT are sometimes referred to as *hierarchies* in the sense that they determine an ordering on P(N)-i.e., the set of subsets of the natural numbers-in terms of relative computability. In a series of papers from the 1940s and 1950s, Kleene (initiating in 1943) and Mostowski (initiating in 1947) realized that it was also possible to impose another sort of ordering on P(N) in terms of the logical complexity of the simplest predicate which defines a set A⊆N in the languages of first- or second-order arithmetic. This idea leads to what are known as the *arithmetical* and *analytical hierarchies*, both of which can be understood as classifying sets in terms of their *definitional* (or *descriptive*) complexity. As we will see, the resulting classifications are related to those determined relative to DT in terms of relative computability. They are also similar in form to other definability hierarchies studied in [computational complexity theory][188] (e.g., the *polynomial hierarchy*) and [descriptive set theory][189] (e.g., the *Borel* and *projective hierarchies*).

#### 3.6.1 The arithmetical hierarchy

Recall that according to the definitions given in [Section 3.3][190], a *relation* R⊆Nk is said to be *computable* just in case its characteristic function χR(→x) is a computable function and *computably enumerable* just in case it is the range of a computable function. In order to introduce the arithmetical hierarchy, it is useful to employ an alternative characterization of computable and computably enumerable relations in the form of a semantic analog to the proof-theoretic notion of *arithmetical representability* discussed in [Section 1.3][191].

Recall that the *language of first-order arithmetic* La contains the primitive symbols {<,′,+,×,0} respectively intended to denote the less than relation, successor, addition, and multiplication functions on the natural numbers as well as the first natural number 0. A *first-order arithmetical formula* is one built up from these expressions using variables, propositional connectives, and the first-order quantifiers ∀x,∃x where the variables are intended to range over the natural numbers N. Recall also that the *standard model of first-order arithmetic* is the structure N=⟨N,0,<,s,+,×⟩ in which the symbols of La receive their intended interpretations. Finally we say that an La-formula φ(→x) *defines* a relation R⊆Nk just in case R={⟨n1,…,nk⟩:N⊨φ(n1,…,nk)}.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-29" id="ref-29">29</a>]</sup> For instance x<y∨x=y defines the less-than-or-equal relation ≤, ∃y(y+y=x) defines the even numbers, and

∀y∀z(y×z=x→y=s(0)∨y=x)

defines the prime numbers.

**Definition 3.14:** A formula φ(→x) of La is said to be in the class Δ00 if it contains only *bounded first-order quantifiers*-i.e., those of the form ∃x(x<t∧…) and ∀x(x<t→…) for t an La-term not containing x. A formula is said to be in the class Σ01 if it is of the form ∃→yφ(→x,→y) for φ(→x,→y)∈Δ00 and to be in the class Π01 if it is of the form ∀→yφ(→x,→y) for φ(→x,→y)∈Δ00. Finally, a formula φ(→x) is said to be in the class Δ01 if it is semantically equivalent to both a Σ01-formula ψ(→x) and a Π01-formula χ(→x)-i.e., N⊨φ(→n) iff N⊨ψ(→n) iff N⊨χ(→n) for all →n∈Nk.

It is standard to extend this syntactic classification of formulas in terms of quantifier complexity to sets and relations on the natural numbers which can be defined by a formula in a given class. Thus, for instance, x<y∨x=y is a Δ00-formula and the relation ≤ on N×N is accordingly said to be Δ00. On the other hand, while ∃y(y+y=x) is a Σ01-formula, the set of even numbers is also defined by ∃y<x(x=0∨y+y=x). Thus this set is also classified as Δ00 in virtue of the existence of this latter definition which is simpler in the sense measured by the arithmetical hierarchy.

The first step in relating such classifications to computability-theoretic notions is provided by the following:

**Proposition 3.8:**

1.  A relation R⊆Nk is computably enumerable if and only if there is a Σ01-formula which defines R(→x).
    
2.  A relation R⊆Nk is computable if and only if there is a Δ01-formula which defines R(→x).
    

[Proposition 3.8][193] may be proved by directly showing that for each partial recursive function ϕe(→x) it is possible to construct a corresponding La-formula φ(→x) whose logical structure mimics the steps in the definition of the former. This can be achieved by formalizing primitive recursion using an arithmetically definable coding of finite sequences and expressing minimization using an unbounded existential quantifier (see, e.g., Kaye 1991, ch. 3). But it is also possible to obtain [Proposition 3.8][194] in a uniform manner by showing that there is a so-called *universal formula* for Σ01. In order specify such a formula, first note that it is possible to effectively enumerate all Δ00-formulas with k+1 free variables as ψk+10(x,→y),ψk+11(x,→y),… and then define a corresponding enumeration of Σ01-formulas as φk0(→y)=∃xψ0(x,→y), φk1(→y)=∃xψ1(x,→y),…. We then have the following:

**Theorem 3.9** (Kleene 1943): For all k, there exists a Σ01-formula σk,1(x,→y) such that for all Σ01-formulas with k-free variables φke(→y), the following biconditional

σk,1(e,→m)↔φke(→m)

holds in the standard model N for all →m∈Nk.

[Theorem 3.9][195] can be demonstrated by first observing that the truth of a Σ01-formula φke(→x) is equivalent to N⊨ψke(n,→m) for some n∈N. Next note that the sequence of observations recorded in [Section 2.1.2][196] suffices to show that all Δ00-definable relations are primitive recursive. We may thus consider an algorithm which on input e,→m uses e to construct ψke(x,→y) and then performs an unbounded search for an n such that ψke(n,→m) holds. By an appeal to Church's Thesis (which can, of course, be replaced by an explicit construction) there is a computable function f(e) for which we have the following:

N⊨φke(→m) if and only if μs(Tk(f(e),→m,s))↓

In order to construct the formula σk,1(e,→y) promised by [Theorem 3.9][197], observe that standard techniques from the arithmetization of syntax allow us to obtain a Δ01-formula τk(x,→y,z) which defines the Kleene T-predicate Tk(x,→y,z) introduced in [Section 2.2.2][198]. We may finally define σk,1(e,→y)=∃zτk(f(e),→y,z). The first part of [Proposition 3.8][199] now follows by letting e be such that dom(ϕke(→x))=R and then taking σk,1(e0,→x)∈Σ01 where e0 is such that f(e0)=e. This is often formulated as what is known as the *Enumeration Theorem* which can be compared to [Theorem 3.2][200]:

**Proposition 3.9:** A relation R⊆Nk is computable enumerable if and only if there is a number e (known as a *c.e. index* for R) such that R is defined by ∃zτk(e,→y,z).

The second part of [Proposition 3.8][201] follows by observing that if R is recursive then both R and ¯R are c.e. Thus if e is a c.e. index for R, then ¯R is defined by ¬∃zτk(e,→x,z) which is equivalent to a Π01-formula since τk(x,→y,z)∈Δ01.

The formula classes Δ01 and Σ01 thus provide an alternative arithmetical characterization of the computable and computably enumerable sets. These classes also define the lowest levels of the *arithmetical hierarchy* which in full generality is defined as follows:

**Definition 3.15:** In order to simplify notation, the classes Σ00 and Π00 are both used as alternative names for the class Δ00. A formula is said to be in the class Σ0n+1 if it is of the form ∃→yφ(→x,→y) for φ(→x,→y)∈Π0n and to be in the class Πn+1 if it is of the form ∀→yφ(→x,→y) for φ(→x,→y)∈Σ0n. A formula φ(→x) is Δ0n+1 if it is semantically equivalent to both a Σ0n+1-formula ψ(→x) and a Π0n+1-formula χ(→x).

It thus follows that a formula is Σ0n just in case it is of the form

∃→x1∀→x2∃→x3…Q→xnφ(→x1,→x2,→x3,…,→xn)

(where there are n alternations of quantifier types and Q is ∀ if n is even and ∃ if n is odd). Similarly a Π0n-formula is of the form

∀→x1∃→x2∀→x3…Q→xnφ(→x1,→x2,→x3,…,→xn).

The notations Σ0n, Π0n, and Δ0n are also standardly used to denote the classes of sets and relations which are definable by a formula in the corresponding syntactic class. For instance it follows from the second part of [Proposition 3.8][202] that PRIMES is Δ01 (since it is computable) and from the first part that HP and K are Σ01 (since they are c.e.). It thus follows that their complements ¯HP and ¯K are both Π01. It is also not hard to see that TOT is Π02 as the fact that ϕx(y) is total may be expressed as ∀y∃zτ1(x,y,z) by using the arithmetized formulation of the T-predicate introduced above. Similarly, FIN is Σ02-definable since the fact that ϕx(y) is defined for only finitely many arguments is expressible as ∃u∀y∀z(u<y→¬τ1(x,y,z)).

It is a consequence of the Prenex Normal Form Theorem for first-order logic that every La-formula φ(→y) is provably equivalent to one of the form Q1x1Q2x2…Qnφ(→x,→y) for Qi≡∃ or ∀ (e.g., Boolos, Jeffrey, & Burgess 2007, ch. 19.1). It thus follows that up to provable equivalence, every such formula is Σ0n or Π0n for some n∈N. Since it is conventional to allow that blocks of quantifiers may be empty in the [Definition 3.15][203], it follows that

Σ0n⊆Δ0n+1⊆Σ0n+1

and

Π0n⊆Δ0n+1⊆Π0n+1.

The fact that these inclusions are strict is a consequence of the so-called *Hierarchy Theorem*, a simple form of which may be stated as follows:

**Theorem 3.10** (Kleene 1943): For all n≥1, there exists a set A⊆N which is Π0n-definable but not Σ0n-definable and hence also neither Σ0m- nor Π0m-definable for any m<n. It thus follows that ¯A is Σ0n-definable but not Π0n-definable and hence also neither Σ0m- nor Π0m-definable for any m<n.

It is again possible to prove [Theorem 3.10][204] by a direct syntactic construction. For instance, building on the definition of the universal Σ01-predicate σk,1(→y), it may be shown that for every level Σ0n of the arithmetical hierarchy, there is a Σ0n-formula σk,n(x,→y) which defines Σ0n-*satisfaction* in the standard model in the sense that

N⊨σk,n(⌜φ(y)⌝,→m)↔φ(→m)

for all φ(→x)∈Σ0n and →m∈Nk (and where we have also defined our Gödel numbering to agree with the indexation of Σ0n-formulas introduced above). Now consider the Π0n-formula λ(x)=¬σ2,n(x,x)∈Π0n and let A be the set defined by λ(x). A standard diagonal argument shows that A cannot be Σ0n-definable and also that if ⌜σ2,n(x,x)⌝=l in the enumeration of Σ0n-formulas then ¬σ2,n(l,l) is a Π0n-formula which cannot be provably equivalent to a Σ0k-formula (see, e.g., Kaye 1991: ch. 9.3). Thus as Kleene (1943, 64) observed, part of the significance of the Hierarchy Theorem is that it illustrates how the [Liar Paradox][205] may be formalized to yield a stratified form of Tarski's Theorem on the undefinability of truth (see the entry on [self-reference][206]).

We may also define a notion of completeness with respect to the levels of the arithmetical hierarchy as follows: A is Σ0n-*complete* if A is Σ0n-definable and for all Σ0n-definable B, we have B≤mA (and similarly for Π0n-*complete*). It is not hard to show that in addition to being many-one complete, K is also Σ01-complete. Similarly ¯K is Π01-complete, INF is Σ02-complete, and TOT is Π02-complete. These observations can be subsumed under a more general result which relates the arithmetical hierarchy to the Turing degrees and from which [Theorem 3.10][207] can also be obtained as a corollary.

**Theorem 3.11** (Post 1944):

1.  A is Σ0n+1-definable iff A is computably enumerable in some Π0n-definable set iff A is computably enumerable in some Σn-definable set.
    
2.  ∅(n) is Σ0n-complete for all n>0.
    
3.  B is Σ0n+1-definable if and only if B is computably enumerable in ∅(n).
    
4.  B is Δ0n+1-definable if and only if B≤T∅(n).
    

The various parts of [Theorem 3.11][208] follow from prior definitions together with Propositions [3.2][209] and [3.7][210]. Note in particular that it follows from parts ii and iv of [Theorem 3.11][211] together with part vii of [Proposition 3.7][212] that ∅(n) is an example of a set in the class Σ0n−Π0n from which it also follows that ¯∅(n)∈Π0n−Σ0n. This observation in turn strengthens the Hierarchy Theorem ([3.10][213]) by showing that Δ0n⊊Σ0n and Δ0n⊊Π0n as depicted in Figure 3.

Part iv of [Theorem 3.11][214] can also be understood as generalizing [Proposition 3.4][215] (i.e., Post's Theorem). In particular, it characterizes the Δ0n+1-definable sets as those sets B such that both B and ¯B are computably enumerable in some Σ0n-complete set such as ∅(n). Restricting to the case n=1, this observation can also be used to provide an independent computational characterization of the Δ02-definable sets, extending those given for the Σ01-definable and Δ01-definable sets by [Proposition 3.8][216].

**Definition 3.16:** A set A is said to be *limit computable* if there is a computable sequence of finite sets {As:s∈N} such that

n∈A if and only if limsAs(n)=1

where limsAs(n)=1 means that limsχAs(n) exists and is equal to 1.

If A is c.e., then it is clear that A is limit computable. For if A is the range of a computable function ϕe(x), then we may take As to be {ϕe(0),…,ϕe(s)} in which case A0⊆A1⊆A2⊆… In the general case of limit computability, the sequence of sets {As:s∈N} may be thought of as an approximation of A which need not grow monotonically in this way but can rather both grow and shrink as long as there is always a stage s such that for all s≤t, n∈At if n∈A and n∉At if n∉A. Following Putnam (1965), a limit computable set can also thus also be described as a so-called *trial-and-error predicate*-i.e., one for which membership can be determined by following a guessing procedure which eventually converges to the correct answer to the questions of the form n∈A?

The following is traditionally referred to as *The Limit Lemma*:

**Theorem 3.12** (Shoenfield 1959): The following are equivalent:

1.  A is limit computable.
    
2.  A≤T∅′
    

We have seen that part iv of [Proposition 3.11][217] characterizes the sets Turing reducible to ∅′ as the Δ02-definable sets. [Theorem 3.12][218] thus extends the characterizations of the computable (i.e., Δ01-definable) and computably enumerable (i.e., Σ01-definable) sets given in [Proposition 3.8][219] by demonstrating the coincidence of the Δ02-definable sets and those which are limit computable.

#### 3.6.2 The analytical hierarchy

Kleene introduced what is now known as the *analytical hierarchy* in a series of papers (1955a,b,c) which built directly on his introduction of the arithmetical hierarchy in (1943). His proximal motivation was to provide a definability-theoretic characterization of the so-called *hyperarithmetical sets*-i.e., those which are computable from transfinite iterates of the Turing jump through the constructive ordinals. On the other hand, Mostowski (1947) had already noticed similarities between the arithmetical hierarchy of sets of natural numbers and results about hierarchies of *point sets* studied in descriptive set theory-i.e., sets of elements of *Polish spaces* (complete, separable metrizable spaces such as the real numbers, Cantor space, or Baire space)-which have their origins in the work of Borel, Lebesgue, Lusin, and Suslin in the early twentieth century. Beginning in his PhD thesis under Kleene, Addison (1954) refined Mostowski's comparisons by showing that Kleene's initial work could also be used to provide effective versions of several classical results in this tradition. We present here the fundamental definitions regarding the analytical hierarchy together with some of some results illustrating how it is connected it to these other developments.

**Definition 3.17:** The *language L2a of second-order arithmetic* extends the language La of first-order arithmetic with the binary relation symbol ∈, together with *set variables* X,Y,Z,… and set quantifiers ∃X and ∀Y. The standard model of L2a is the structure ⟨N,P(N),0,<,s,+,×,∈⟩. The intended range of the set quantifiers is thus P(N) (i.e. the power set of N) while the intended interpretation of x∈X is that the number x∈N is a member of the set X where X∈P(N).

Note that in the general case a formula φ(x1,…,xj,X1,…,Xk) of L2a may have both free number variables x1,…,xj and free set variables X1,…,Xk. If R⊆Nj×P(N)k is defined by such a formula, then it is said to be *analytical*. Kleene (1955a) proved a normal form theorem for analytical relations which shows that if R is analytical then it is definable by an L2a-formula of the form

∀X1∃X2∀X3…QXnψ(X1,X2,X3,…,Xn)

or

∃X1∀X2∃X3…QXnψ(X1,X2,X3,…,Xn)

where ψ(→X) contains only number quantifiers and Q is ∀ or ∃ depending on where n is even or odd. It thus possible to classify both L2a-formulas and the sets they define into classes as follows:

**Definition 3.18:**

We denote by both Σ10 and Π10 the class of L2a-formulas containing no set quantifiers (i.e., a so-called *arithmetical formulas*). An L2a formula is in the class Σ1n+1 if it is of the form ∃Xψ(X) where ψ∈Π1n and a relation is Σ1n+1-*definable* if it is defined by a Σ1n+1-formula. Similarly an L2a-formula is in the class Π1n+1 if it is of the form ∀Xψ(X) where ψ∈Σ1n and a relation is Π1n+1-*definable* if is defined by a Π1n+1-formula. A relation is Δ1n-*definable* just in case it is definable by both a Σ1n- and a Π1n-formula.

It hence follows that, as in the case of the arithmetical hierarchy, we have

Σ1n⊆Δ1n+1⊆Σ1n+1

and

Π1n⊆Δ1n+1⊆Π1n+1.

In addition, a version of the Enumeration Theorem for arithmetical sets can also be proven which can be used to obtain the following generalization of the Hierarchy Theorem:

**Theorem 3.13** (Kleene 1955a): For all n≥1, there exists a set A⊆N which is Π1n-definable but not Σ1n-definable and hence also neither Σ1m- nor Π1m-definable for any m<n. It thus follows that ¯A is Σ1n-definable but not Π1n-definable and also neither Σ1m- nor Π1m-definable for any m<n.

In order to provide some illustrations of the levels of the analytical hierarchy, it is useful to record the following:

**Definition 3.19:** A set A⊆N is *implicitly definable* in L2a just in case there is an arithmetical formula φ(X) with X as its sole free set variable and no free number variables such that A is the unique set satisfying φ(X) in the standard model of L2a.

*True Arithmetic* (TA) corresponds to the set of Gödel numbers of first-order arithmetical sentences true in the standard model of La-i.e., TA={⌜φ⌝:φ∈La ∧ N⊨φ}. Prior to the definition of the analytical hierarchy itself, Hilbert & Bernays had already showed the following:

**Theorem 3.14** (Hilbert and Bernays 1939, §5.2e): TA is implicitly definable in L2a.

It is then not difficult to show the following:

**Proposition 3.10** (Spector 1955): If A is implicitly definable, then A is Δ11-definable in L2a.

It thus follows that TA is Δ11-definable. On the other hand, it follows from Tarski's Theorem on the undefinability of truth that TA is not arithmetically definable- i.e. TA∉Σ0n∪Π0n for any n∈N. This in turn shows that the analytical sets properly extend the arithmetical ones.

The class of Δ11-definable subsets of N is also related to Kleene's original study of the class of hyperarithmetical sets, customarily denoted HYP. The definition of HYP depends on that of a system of constructive ordinal notations known as O=⟨O,<O⟩ which Kleene had introduced in (1938). (It was also in the context of defining O in which he proved the [Recursion Theorem 3.5][220]-see Rogers 1987, ch. 11.7 and Y. Moschovakis 2010.) HYP can be informally characterized as the class of sets of natural numbers A such that A≤T∅(α) where α is an ordinal which receives a notation e∈O-i.e., A∈HYP just in case it is computable from a transfinite iteration the of Turing jump up to the first non-recursive ordinal ωck1.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-30" id="ref-30">30</a>]</sup> Kleene's original result was as follows:<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-31" id="ref-31">31</a>]</sup>

**Theorem 3.15** (Kleene 1955b): A set A⊆N is Δ11-definable if and only if A∈HYP.

The next step up the analytical hierarchy involves the characterization of the Π11-definable sets. S. Kleene (1955a) originally established his normal form theorem for L2a-formulas using a variant of the language of second-order arithmetic which contains *function quantifiers* f,g,h,… which are intended to range over N→N instead of set quantifiers intended to range over P(N) (Rogers 1987, ch. 16.2). In this setting, it is possible to show the following:

**Proposition 3.11:** A∈Π11 if and only if there is a computable (i.e., Δ01-definable) relation R(x,f) such that

x∈A if and only if ∀f∃yR(x,¯f(y))

where ¯f(y) denotes ⟨f(0),…,f(y−1)⟩.

For each such relation, we may also define a computable tree Trx consisting of the finite sequences σ∈N<N such that for all proper initial subsequences τ⊂σ, ¬R(x,τ) holds. A leaf node in this tree thus corresponds to the first place for which R holds. An infinite path in Trx thus corresponds to a function f such that ∀y¬R(x,¯f(y)), which is in turn a witness to x∉A. It thus follows that x∈A if and only if Trx is well-founded. Since it is straightforward to effectively enumerate computable trees, it is also not difficult to show the following:

**Proposition 3.12:** The set T of indices to well-founded computable trees is m-complete for the Π11-definable sets-i.e., T∈Π11 and for all A∈Π11, A≤mT.

Recalling that O denotes the set of natural numbers which are notations for ordinals in Kleene's O, a related result is the following:

**Proposition 3.13:** O is Π11-complete.

It can then be shown using the [Hierarchy Theorem 3.13][223] that neither T nor O is Σ11-definable. These results provide the basis for an inductive analysis of the structure of Δ11- and Π11-definable sets in terms of constructive ordinals which builds on [Theorem 3.15][224] (see Rogers 1987, ch. 16.4).

The foregoing results all pertain to the use of L2a-formulas to describe sets of natural numbers. The initial steps connecting the analytical hierarchy to classical descriptive set theory are mediated by considering formulas φ(X) which define subclasses X⊆P(N). In this case, A∈X may be identified with the graph of its characteristic function χA(x)-i.e., as an infinite sequence whose nth element is 1 if n∈A and 0 if n∉A. In this way a formula ψ(X) with a single free set variable may be understood as defining a subset of the *Cantor space* C=2N consisting of all infinite 0-1 sequences and a formula ψ(→X) with X1,…,Xk free as defining a subclass of 2N×…×2N.

In descriptive set theory, a parallel sequence of topological definitions of subclasses of C is given in the context of defining the Borel sets and projective sets. First recall that one means of defining a topology on C is to take as basic open sets all sets of functions f:N→{0,1} such that ¯f(k)=σ for some σ∈2<N and k∈N. The *boldface Borel Hierarchy* on C is now given by defining Σ01 to be the collection of all open sets of C, Π0n (for n≥1) to be the set of all complements ¯A of sets A∈Σ01, and Σ0n+1 to be the set of all countable unions ⋃i∈NAi where Ai∈Π0n. (Thus Π01 denotes the set of closed sets, Σ02 denotes the so-called Fσ sets, Π02 the Gδ sets, etc.) The union of these classes corresponds to the *boldface Borel sets* B which may also be characterized as the smallest class of sets containing the open sets of C which is closed under countable unions and complementation. The so-called *analytic sets* are defined to be the continuous images of the Borel sets and are denoted by Σ11 while the *co-analytic* sets are defined to be the complements of analytic sets and are denoted by Π11. Finally, Δ11 is used to denote the intersection of the analytic and co-analytic sets.

Addison observed (1958, 1959) that these classical definitions can be effectivized by restricting to computable unions in the definition of the Σ0n sets. This leads to the so-called *lightface* version of the Borel hierarchy-customarily denoted using the same notations Σ0n and Π0n used for the levels of arithmetical hierarchy-and corresponding definitions of Σ11 (i.e., lightface analytic), Π11 (i.e., lightface co-analytic), and Δ11 sets. In particular, this sequence of definitions suggests an analogy between [Theorem 3.15][225] and the following classical result of Suslin:

**Theorem 3.16** (Suslin 1917): The class of Δ11 sets is equal to the class of Borel sets B.

An effective form of [Theorem 3.16][226] relating the Δ11 subsets of C to the lightface Borel sets representable by computable codes can be obtained from Kleene's original proof of [Theorem 3.15][227] (see, e.g., Y. Moschovakis 2009, ch. 7B). Addison also showed that it is similarly possible to obtain an effective version of Lusin's Theorem (1927)-i.e., "any two disjoint analytic sets can be separated by a Borel set"-and Kondô's theorem (1939)-i.e., "every Π11-relation can be uniformized by a Π11-relation". See Y. Moschovakis (2009, ch. 2E,4E) and also Simpson (2009, ch. V.3,VI.2)
