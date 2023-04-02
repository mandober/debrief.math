---
downloaded:       2022-11-14
page-url:         https://plato.stanford.edu/entries/recursive-functions/
article-title:    Recursive Functions
---
# Recursive Functions (Stanford Encyclopedia of Philosophy)
## 1. Historical Background

NB: This section assumes familiarity with some of the terminology introduced in [Section 2][1] and [Section 3][2]. Readers looking for a technical overview of recursive functions or computability theory are advised to start there.

### 1.1 The Early History of Recursive Definitions

Examples of recursive definitions can be found intermittently in the history of ancient and medieval mathematics. A familiar illustration is the sequence Fi$F_i$ of *Fibonacci numbers* 1,1,2,3,5,8,13,…$1,1,2,3,5,8,13, \ldots$ given by the recurrence F0=1,F1=1$F_0 = 1, F_1 =
1$ and Fn=Fn−1+Fn−2$F_{n} = F_{n-1} + F_{n-2}$ (see [Section 2.1.3][3]). The definition of this sequence has traditionally been attributed to the thirteenth century Italian mathematician Leonardo of Pisa (also known as Fibonacci) who introduced it in his *Liber Abaci* in the context of an example involving population genetics (see Fibonacci 1202 [2003, 404–405]). But descriptions of similar sequences can also be found in Greek, Egyptian, and Sanskrit sources dating as early as 700 BCE (see, e.g., Singh 1985).

General interest in recursion as a mode of function definition originated in the mid-nineteenth century as part of the broader program of arithmetizing analysis and the ensuing discussions of the foundations of arithmetic itself. In this context, the formulation of recursive definitions for number theoretic functions was closely tied to the isolation of mathematical induction as a mode of reasoning about the natural numbers. It was in this setting in which Grassmann (1861) and Peirce (1881) first gave the familiar recursive definitions of addition and multiplication:<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-1" id="ref-1">1</a>]</sup>

i.x+0=xii.x+(y+1)=(x+y)+1

$$
\begin{align} \label{defnadd}
\text{i.}\quad &&  x + 0 & = x \\ \nonumber
\text{ii.}\quad &&  x + (y+1) & = (x+y)+1
\end{align}
$$

i.x×0=0ii.x×(y+1)=(x×y)+x

$$
\begin{align} \label{defnmult}
\text{i.}\quad &&  x \times 0 & = 0 \\ \nonumber
\text{ii.}\quad &&  x \times (y+1) & = (x\times y) + x
\end{align}
$$

They then used these definition to prove the associative, commutative, and distributive laws for these operations.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-2" id="ref-2">2</a>]</sup>

The first person to employ the expression “definition by recursion” appears to have been Dedekind in his essay *Was sind und was sollen die Zahlen* (1888). This work presents a set theoretic foundation for arithmetic wherein Dedekind demonstrated that it was possible to state and prove the existence and uniqueness of functions defined by primitive recursion as mathematical theorems (§125–126). He formulated recursive definitions of addition (§135), multiplication (§147), and exponentiation (§155) and then also formally proved by induction that the functions so defined satisfy the expected algebraic identities. The first two of these definitions would later be adopted by Peano (1889) as defining the symbols +$+$ and ×$\times$ in the direct axiomatization of arithmetic he based on Dedekind’s monograph.

### 1.2 The Origins of Primitive Recursion

The first work devoted exclusively to recursive definability was Skolem’s (1923) paper

> The foundations of elementary arithmetic established by the recursive mode of thought, without the use of apparent variables ranging over infinite domains.

This work is significant with respect to the subsequent development of computability theory for at least three reasons. First, it contains a informal description of what we now call the *primitive recursive functions*. Second, it can be regarded as the first place where recursive definability is linked to effective computability (see also Skolem 1946). And third, it demonstrates that a wide range of functions and relations are primitive recursive in a manner which anticipates Gödel’s (1931) use of primitive recursion for the arithmetization of syntax.

One of Skolem’s stated goals was to present a logical foundation for number theory which avoids the use of unrestricted quantifiers. He was inspired in this regard by the observation that it is possible to develop much of elementary arithmetic without the use of the expressions “always” (i.e. *for all*) and “sometimes” (i.e. *there exists*) which figure in the formalization of number theory given by Russell and Whitehead in *Principia Mathematica* (1910–1913). This was to be accomplished by formulating arithmetical theorems as what he referred to as *functional assertions*. These took the form of identities between terms defined by primitive recursive operations which Skolem referred to as *descriptive functions*. For instance, the commutativity of addition is expressed in this form by an equation with free variables

x+y=y+x

$$
\begin{equation}\label{funassert}
x + y = y + x
\end{equation}
$$

In cases where such statements are provable in the system Skolem describes, the intended interpretation is that the claim holds universally for all natural numbers—e.g., ∀x∀y(x+y=y+x)$\forall x \forall y
(x + y = y + x)$. But in Skolem’s system there is no means of negating such a statement to express a bare existential assertion without producing a witness.

Statements like (5$\ref{funassert}$) would later be referred to by Hilbert & Bernays (1934) (who provided the first textbook treatment of recursion) as *verifiable* in the sense that their individual instances can be verified computationally by replacing variables with concrete numerals. This is accomplished by what Skolem referred to as the “recursive mode of thought”. The sense of this phrase is clarified by the following properties of the system he describes:

1.  the natural numbers are taken as basic objects together with the successor function x+1$x + 1$;
2.  it is assumed that descriptive functions proven to be equal may be substituted for one another in other expressions;
3.  all definitions of functions and relations on natural numbers are given by recursion;
4.  functional assertions such as (5$\ref{funassert}$) must be proven by induction.

Taking these principles as a foundation, Skolem showed how to obtain recursive definitions of the *predecessor* and *subtraction* functions, the *less than*, *divisibility*, and *primality* relations, *greatest common divisors*, *least common multiples*, and *bounded sums and products* which are similar to those given in [Section 2.1.2][8] below.

Overall Skolem considered instances of what we would now refer to as primitive recursion, course of values recursion, double recursion, and recursion on functions of type N→N$\mathbb{N}
\rightarrow \mathbb{N}$. He did not, however, introduce general schemas so as to systematically distinguish these modes of definition. Nonetheless, properties i–iv of Skolem’s treatment provide a means of assimilating calculations like (2$\ref{factcalc}$) to derivations in quantifier-free first-order logic. It is thus not difficult to discern in (Skolem 1923) the kernel of the system we now know as *Primitive Recursive Arithmetic* (as later formally introduced by Hilbert & Bernays 1934, ch. 7).

The next important steps in the development of a general theory of recursive function arose as a consequence of the interaction between [Hilbert’s Program][10] and Gödel’s (1931) proof of the Incompleteness Theorems. Hilbert (1900) had announced the goal of proving the consistency of arithmetic—and ultimately also analysis and set theory— in the face of the set theoretic paradoxes. His initial plans for carrying out such a proof are described in a series of lectures and addresses in the 1910s–1920s which provide a description of what would come to be called the *finitary standpoint*—i.e., the fragment of mathematical reasoning pertaining to finite combinatorial objects which was intended to serve as the secure basis for a consistency proof. The proof itself was to be carried out using the methods of what Hilbert referred to as *metamathematics*—i.e., the formal study of axioms and derivations which would grow into the subject now known as [*proof theory*][11].

In one of his initial descriptions of this program Hilbert (1905) sketched the basic form which a metamathematical proof of consistency might take. Suppose, for instance, that T$\mathsf{T}$ is a mathematical theory about which it is possible to prove the following conditional:

1.  If n$n$ applications of rules of inference applied to the axioms of a system T$\mathsf{T}$ do not lead to a contradiction, then n+1$n+1$ applications also do not lead to a contradiction.

Were it possible to provide a mathematical demonstration of i), it might seem possible to conclude

2.  T$\mathsf{T}$ is consistent.

However Poincaré (1906) observed that Hilbert’s approach relies on mathematical induction in inferring ii from i. He objected on this basis that this renders Hilbert’s proposed method circular in the case that the system T$\mathsf{T}$ in question itself subsumes principles intended to formalize induction.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-3" id="ref-3">3</a>]</sup>

Together with his collaborators Ackermann and Bernays, Hilbert developed metamathematics considerably during the 1910–1920s. This served as the basis of Hilbert’s (1922) lecture wherein he replied to Poincaré by making a systematic distinction between “formal“ occurrences of mathematical induction in the object language and the metatheoretic use of induction as a “contentual“ [*inhaltliche*] principle used in order to reason about proofs as finite combinatorial objects. It was also in this context in which Hilbert connected the latter form of induction to the “construction and deconstruction of number signs” (1922, 1123).

As is made clear in subsequent presentations, Hilbert understood “number signs” to be unary numerals written in stroke notation of the form

|,||,|||,…

$$
\nonumber
|, ||, |||, \ldots
$$

Such expressions can be operated on concretely by adjoining or removing strokes in a manner which mirrors the arithmetical operations of successor and predecessor which figure in Skolem’s “recursive mode of thought“. This observation in turn informed Hilbert’s explanation of the meaning of functional assertions like (5$\ref{funassert}$) in terms of their logical derivability from recursive definitions which also serve as procedures for computing the values of functions they define (Hilbert 1920, 54–57).

Hilbert first described a logical calculus for finitary number theory including “recursion and intuitive induction for finite totalities” in (1923, 1139).<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-4" id="ref-4">4</a>]</sup> Although this presentation also included a discussion of definition by simultaneous recursion, a more extensive treatment of what we would now recognize as *recursion schemes* is given in his well known paper “On the infinite” (1926). This includes a discussion of what Hilbert calls *ordinary recursion* (which is similar to Skolem’s description of primitive recursion), transfinite recursion, as well as recursion at higher types. This treatment makes clear that Hilbert and his collaborators had taken substantial steps towards developing a general theory of recursive definability. Ultimately, however, the influence of Hilbert’s presentations was diminished in light of the more precise formulation of primitive recursion which Gödel would soon provide.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-5" id="ref-5">5</a>]</sup>

Gödel’s (1931, 157–159) definition was as follows:

> A number-theoretic function ϕ(x1,…,xn)$\phi(x_1,\ldots,x_n)$ is said to be *recursively defined in terms of* the number-theoretic functions ψ(x1,x2,…,xn−1)$\psi(x_1,x_2,\ldots,x_{n-1})$ and μ(x1,x2,…,xn+1)$\mu(x_1,x_2,\ldots,
> x_{n+1})$ if
> 
> i.ϕ(0,x2,…,xn)=ψ(x2,…,xn)ii.ϕ(k+1,x2,…,xn)=μ(k,ϕ(k,x2,…,xn),x2,…,xn)
> 
> $$
> \begin{align} \label{gprimrec}
> \text{i.}\quad & \phi(0,x_2,\ldots,x_n)  =  \psi(x_2,\ldots,x_n) \\ \nonumber
> \text{ii.}\quad & \phi(k+1,x_2,\ldots,x_n)  =  \mu(k,\phi(k,x_2,\ldots,x_n),x_2,\ldots,x_n)
> \end{align}
> $$
> 
> holds for all x2,…,xn,k$x_2,\ldots,x_n,k$.
> 
> A number-theoretic function ϕ$\phi$ is said to be *recursive* if there is a finite sequence of number-theoretic functions ϕ1,ϕ2,…ϕn$\phi_1 ,
> \phi_2 , \ldots \phi_n$ that ends with ϕ$\phi$ and has the property that every function ϕk$\phi_k$ of the sequence is recursively defined in terms of two of the preceding functions, or results from any of the preceding functions by substitution, or, finally, is a constant or the successor function x+1$x + 1$…. A relation R(x1,…,xn)$R(x_1, \ldots ,
> x_n)$ between natural numbers is said to be *recursive* if there is a recursive function ϕ(x1…,xn)$\phi(x_1 \ldots , x_n)$ such that, for all x1,x2,…,xn$x_1, x_2, \ldots, x_n$
> 
> R(x1,…,xn)↔ϕ(x1,…,xn)=0
> 
> $$
> \begin{equation}\label{prch}
> R(x_1,\ldots,x_n) \leftrightarrow \phi(x_1,\ldots,x_n) = 0
> \end{equation}
> $$

Putting aside Gödel’s use of the term “recursive” rather than “primitive recursive” (which will be explained below), this exposition comes close to coinciding with the contemporary definition of the primitive recursive functions given in [Section 2.1][16].<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-6" id="ref-6">6</a>]</sup> Gödel’s definition also improved upon those of his predecessors by clearly defining the class of initial functions which are allowed in primitive recursive definitions and by stating that each primitive recursive function possesses a definition in terms of a sequence of functions showing how it is built up from initial functions. This makes clear that the primitive recursive functions constitute a mathematically well-defined class of functions on the natural numbers (which will be denoted here as PR$\mathbf{PR}$). Gödel additionally proved that the primitive recursive relations—defined as characteristic functions via (7$\ref{prch}$)—are closed under propositional operations and quantification bounded by a primitive recursive function (see [Section 2.1.2][19]).

### 1.3 Arithmetical Representability and Gödel’s First Incompleteness Theorem

The foregoing definition appears in Gödel’s well-known (1931) paper “On formally undecidable propositions of *Principia mathematica* and related systems I”. As he observes immediately before presenting it, the definition of primitive recursion is in fact a digression from the main focus of the paper—i.e., proving the incompleteness of the axiomatic system of arithmetic he calls P$\mathsf{P}$. In order to understand Gödel’s contribution to the initial development of recursive function theory, it will be useful to attend both to some features of this system and also to his proof of the First Incompleteness Theorem itself. (Additional details and context are provided in the entry on [Gödel’s incompleteness theorems][20].)

System P$\mathsf{P}$ is obtained from that of Whitehead and Russell’s *Principia Mathematica* (1910–1913) by omitting the ramification of types, taking the natural numbers as the lowest type, and adding for them the second-order Peano axioms. It is hence a fixed formal system with finitely many non-logical axioms sufficient for the development of elementary number theory.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-7" id="ref-7">7</a>]</sup> Recall also that an arithmetical system is said to be ω$\omega$-*consistent* if it does not prove both ∃xφ(x)$\exists x \varphi(x)$ and ¬φ(¯n)$\neg \varphi(\overline{n})$ for each natural number n∈N$n \in \mathbb{N}$ (where ¯n=dfs(s(…s(0)))$\overline{n} =_{\mathrm{df}} s(s(\ldots s(0)))$ n-times) and that ω-consistency implies *simple consistency* (i.e., the non-derivability of a formula and its negation).

The incompleteness theorem which Gödel proved states that if P is ω-consistent, then there exists a formula GP which is *undecidable in* P—i.e., neither provable nor refutable from its axioms. In order to obtain such a formula, Gödel first demonstrated how it is possible to express various syntactic and metatheoretic properties of P-formulas and proofs as primitive recursive relations via a technique which has come to be known as the *arithmetization of syntax* (see the entry on [Gödel’s incompleteness theorems][22]). Second, he showed that for every primitive recursive relation R(x1,…,xk) there exists a “class sign” (i.e., formula) φR(x1,…,xn) of P such that the fact that R(x1,…,xn) holds of (or does not hold of) a given tuple of numbers n1,…,nk is mirrored by the provability (or refutability) in P of the corresponding instance of φR(x1,…,xn) when the formal numeral ¯n=s(s(…s(0))) (n-times) is substituted for xi—i.e.,

i.if R(n1,…,nk), then P⊢φR(¯n1,…,¯nk)ii.if ¬R(n1,…,nk), then P⊢¬φR(¯n1,…,¯nk)

According to the terminology Gödel would later introduce in (1934), in such a case φR(x1,…,xn) *represents* R(x1,…,xn). In this presentation, he also generalized his prior definition to say that a function f(x1,…,xn) is representable in P just in case there exists a formula φf(x1,…,xk,y) such that for all n1,…,xk,m∈N,

f(n1,…,nk)=m if and only if P⊢φf(¯n1,…,¯nk,¯m)

Gödel’s arithmetization of syntax provides a means of assigning to each primitive symbol, term, formula, and proof α of P a unique *Gödel number* ⌜α⌝∈N according to its syntactic structure. This technique takes advantage of the familiar observation that a finite sequence of numbers n1,…,nk can be encoded as a product of prime powers 2n1⋅3n2⋅…pnkk so that various correlative operations on sequences can be shown to be primitive recursive—e.g., the operation which takes two numbers x and y encoding sequences and returns the code x∗y of the result of concatenating x followed by y. Gödel proceeded on this basis to show that a sequence of notions about the syntax and proof theory of P are primitive recursive—e.g., the function Neg(x) which returns the Gödel number of the negation of the formula coded by x can be defined as ⌜¬⌝∗x. The availability of the relevant recursive definitions thus falls out naturally since the inductive definitions of syntactic notions like *well-formed formula* generalize the “construction and deconstruction of number signs” in the sense described by Hilbert.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-8" id="ref-8">8</a>]</sup>

The penultimate definition in Gödel’s list is the relation ProofP(x,y) which holds between the Gödel number of a P-formula φ and the Gödel number of a finite sequence of P-formulas ψ1,…,ψn just in case the latter is a correctly formed derivation of the former from the axioms of P—i.e.,

ProofP(⌜ψ1,…,ψn⌝,⌜φ⌝)) iff P⊢φ via a derivation ψ1,…,ψn in which each ψi is either an axiom of P or follows from prior formulas via its rules of inference.

From (8) it follows that there exists a formula ProofP(x,y) of P which represents ProofP(x,y) and thus also a formula

ProvP(y)=df∃xProofP(x,y).

Gödel famously named the latter formula BEW(x) (for *beweisbar*) as it can be understood to express that there exists a proof from the axioms of P of the formula with Gödel number y. But unlike the other formulas representing primitive recursive relations which figure in its definition, ProvP(x) contains an unbounded existential quantifier. And thus as Gödel is careful to observe, there is no reason to expect that it defines a primitive recursive relation.

It is, nonetheless, this formula which Gödel uses to construct a sentence which is undecidable in P. This can be accomplished by the application of the so-called *Diagonal Lemma* (see [Gödel’s incompleteness theorems][24]) which states that for every formula φ(x) of P, there exists a sentence ψφ such that

P⊢ψφ↔φ(¯⌜ψφ⌝)

When applied to the formula ¬ProvP(x), the Diagonal Lemma yields a sentence GP—i.e., the so-called *Gödel sentence for P*—such that P⊢GP↔¬ProvP(⌜GP⌝). GP is thus interpretable as “saying of itself” that it is unprovable in P. Gödel showed that this formula has the following properties:

1.  if P is consistent, then P⊬GP;
2.  if P is ω-consistent, then P⊬¬GP.

This constitutes what is now known as Gödel’s First Incompleteness Theorem.

The proof of this fact relies explicitly on the representability of the relation ProofP(x,y) in P which in turn derives from its primitive recursiveness. But the techniques on which Gödel’s proof relies also contributed to the subsequent development of computability theory in several additional ways. First, it follows from the possibility of Gödel numbering the formulas of P that we may also effectively enumerate them as φ0(x),φ1(x),φ2(x),…—e.g., in increasing order of ⌜φi⌝. This provides a mechanism for referring to formulas via their indices which in turn served as an important precedent for Kleene’s (1936a) use of a similar indexation of general recursive definitions in his proof of the Normal Form Theorem (see [Section 2.2.2][25]). Second, the proof of the Diagonal Lemma also demonstrates how it is possible to formalize the substitution of terms for free variables in a manner which may be understood to yield an effective form of Cantor’s diagonal argument (see the entry on [self-reference][26]). This technique served as an important precedent for the use of diagonalization in results such as the undecidability of the Halting Problem (Turing 1937, see [Section 3.2][27]), the Recursion Theorem (Kleene 1938, see [Section 3.4][28]), and the Hierarchy Theorem (Kleene 1943, see [Section 3.6][29]).

Another significant contribution of Gödel’s paper derives from the fact that after proving the incompleteness of P, he took several steps towards isolating features of axiomatic theories which are sufficient to ensure that they satisfy analogous undecidability results. In addition to being sufficiently strong to satisfy (8), the other requirement which he identifies is that “the class of axioms and the rules of inference … are recursively definable” (1931, 181). As he notes, these features hold both of Zermelo-Fraenkel set theory [ZF] and a first-order arithmetical system similar to what we now call first-order Peano arithmetic [PA], relative to an appropriate Gödel numbering of their axioms. In particular, while neither of these systems is *finitely axiomatizable*, they may be axiomatized by a finite number of schemes (e.g., of induction or comprehension) such that the relation *⌜φ⌝ is the Gödel number of an axiom of T* is primitive recursive.

This observation set the stage for Gödel’s subsequent revisiting of the incompleteness theorems in the lectures (1934) wherein he suggests a significant generalization of his original (1931) definition of recursiveness. Gödel starts out by providing the following informal characterization of the requirements of the theories just described:

> We require that the rules of inference, and the definitions of meaningful formulas and axioms, be constructive; that is, for each rule of inference there shall be a finite procedure for determining whether a given formula B is an immediate consequence (by that rule) of given formulas A1,…,An and there shall be a finite procedure for determining whether a given formula A is a meaningful formula or an axiom. (Gödel 1934, 346)

He also makes clear that what he calls “recursiveness” is to be initially regarded as an *informal* notion which he is attempting to make precise:

> Recursive functions have the important property that, for each given set of values of the arguments, the value of the function can be computed by a finite procedure. Similarly, recursive relations (classes) are decidable in the sense that, for each given n-tuple of natural numbers, it can be determined by a finite procedure whether the relation holds or does not hold (the number belongs to the class or not), since the representing function is computable. (Gödel 1934, 348)

One of Gödel’s goals was thus to provide a mathematical definition of the term “recursive” which generalizes prior examples of recursive definability in a manner but also captures to as great an extent as possible the class of functions computable by a finite procedure. This led him to define the so-called *general recursive functions* (see [Section 1.5][30]) whose isolation in turn played an important role in the formulation of *Church’s Thesis* (see [Section 1.6][31]). However Gödel’s definition also took place against the backdrop of other work which had been inspired by Hilbert’s original consideration of different forms of recursive definitions. It will now be useful to examine these developments.

### 1.4 The Ackermann-Péter Function

Already at the time of (1926), Hilbert had anticipated that it would be possible to formulate definitions of functions whose values could be computed in a recursive manner but which are not themselves primitive recursive. In order to illustrate how such a definition might be obtained, he presented a heuristic argument involving the following sequence of functions:

α0(x,y)=x+1(successor)α1(x,y)=x+y(addition)α2(x,y)=x×y(multiplication)α3(x,y)=xy(exponentiation)α4(x,y)=xx⋰x⏟y times(super-exponentiation)⋮

The functions in this sequence are defined so that αi+1(x,y+1) is obtained by primitive recursion as αi(αi+1(x,y),x), together with an appropriate base case. It thus makes sense mathematically to consider the function

α(i,x,y)=αi(x,y)

wherein the first argument i represents the position of the function αi(x,y) in the prior list. For fixed i,n,m∈N it is thus possible to effectively compute the value of α(i,n,m) by first constructing the definition of αi(x,y) and then evaluating it at n,m. But it is also easy to see that αi+1(x,x) will eventually dominate αi(x,x) for sufficiently large x. This in turn suggests that α(i,x,y) cannot be defined by a finite number of applications of the primitive recursion scheme and is thus not itself primitive recursive.

The specification of α(i,x,y) just given does not itself have the form of a recursive definition. But it is possible to define similar functions in a manner which generalizes the format of the scheme (6). One means of doing so is to first use recursion on the type N→N—a simple form of recursion at higher types as envisioned by Skolem and Hilbert—to define an *iteration functional* as follows:

Iter(ϕ,0)=ϕIter(ϕ,x+1)=ϕ(Iter(ϕ,x))

Iter takes as arguments a function ϕ:N→N as well as a number x∈N and is defined so that Iter(ϕ,n)=ϕn+1(x)—i.e., the function which is the nth iterate of ϕ. We may now define a function β of type N→(N→N) as follows:

β(0)=x+1 (i.e., the successor function)β(x+1)=Iter(β,x)

It can then be verified that

β(0)=x+1,β(1)=2+(x+3)−3=x+2,β(2)=2×x−3,β(3)=2x+3−3,β(4)=22⋰2⏟x times−3,⋮

On this basis, we may now define a variant of the so-called *Ackermann-Péter function* as π(i,x)=β(i)(x)—i.e., the result of applying the function β(i) to the argument x. π(i,x) has the same order of growth as αi(x,x) and it is possible to prove via the argument sketched above that π(i,x) is not primitive recursive (see, e.g., Péter 1967, ch. 9). Based on earlier work of Ackermann (1928), Péter (1935) also showed that π(i,x) may also be defined by a so-called *doubly recursive* definition of the following form which takes only natural numbers as arguments:<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-9" id="ref-9">9</a>]</sup>

π(0,x)=x+1π(i+1,0)=π(i,1)π(i+1,x+1)=π(i,π(i+1,x))

The third clause in this definition defines the value of π(i,x) in terms of the value π(i,x−1) rather than π(i−1,x−1) in analogy with the scheme (6). It may thus not be immediately obvious that the definition (11) describes an algorithm for computing the values of π(i,x) which always terminates in the manner illustrated by the calculation (2). Note, however, with each recursive application either i decreases, or i remains the same and x decreases. It thus follows that each time x reaches 0, i will start to decrease so that the base case is eventually reached. Thus although the value of π(i,x) grows very rapidly—e.g., π(4,3)=2265536−3—it is still reasonable to regard (11) as satisfying Gödel’s requirement that a recursively defined function is computable by a finite procedure.

Systematic consideration of such alternative recursion schemes exemplified by (11) was initiated by Péter (1932). It was also she who introduced the term “primitive recursive” to describe the class of functions given by Gödel’s scheme (6), a choice which would become standard after its adoption by Kleene (1936a). Péter additionally showed that Hilbert’s (1926) formulation of “ordinary recursion” is equivalent to primitive recursion, and that the primitive recursive functions are closed under course of values recursion, as well as so-called *nested recursions* of one variable. Such studies led to her book (Péter 1967), whose original German edition *Rekursive Funktionen* (1951) was the first monograph devoted to recursive functions. Together with the later work of Grzegorczyk (1953), these developments also inspired the investigation of various subrecursive hierarchies which would later play a role in proof theory and computer science.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-10" id="ref-10">10</a>]</sup>

### 1.5 The General Recursive Functions

The immediate source for Gödel’s discussion of recursion in 1934 was not Ackermann or Péter’s work but rather a private communication with Herbrand, who in two previous papers (1930, 1932) had proposed a related means of generalizing recursive definitions. Gödel’s informal description of Herbrand’s suggestion was as follows:<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-11" id="ref-11">11</a>]</sup>

> If ϕ denotes an unknown function, and ψ1,…,ψk are known functions, and if the ψ’s and ϕ are substituted in one another in the most general fashions and certain pairs of the resulting expressions are equated, then, if the resulting set of functional equations has one and only one solution for ϕ, ϕ is a recursive function. (Gödel 1934, 308)

As an illustration, consider the following set of equations:

ϕ(0)=0ψ(x)=ϕ(x)+1ϕ(x+1)=ψ(x)+1

In this case, the “unknown” function denoted by ϕ(x) is specified in terms of the auxiliary function ψ(x) in such a way that ϕ(x) appears only once on the lefthand side of the equations (other than the base case). Nonetheless, such a system of equations is unlike a primitive recursive definition in that it does not specify a unique means for computing the values of ϕ(n) by “deconstructing” n in the deterministic manner illustrated by calculations such as (2).

In the general case there is indeed no guarantee that there will exist a unique extensional function satisfying such a definition. But in the case of this example it can be shown that 2×x is the unique function of type N→N satisfying ϕ(x) in the system of equations (12). This may be illustrated by considering the following calculation of ϕ(2):

i.ϕ(2)=ψ(1)+1ii.ψ(1)=ϕ(1)+1iii.ϕ(1)=ψ(0)+1iv.ψ(0)=ϕ(0)+1v.ϕ(0)=0vi.ψ(0)=0+1vii.ϕ(1)=(0+1)+1viii.ψ(1)=((0+1)+1)+1ix.ϕ(2)=(((0+1)+1)+1)+1 (=4)

As Gödel notes, such a calculation may be understood as a derivation in quantifier-free first-order logic wherein the only rules which are allowed are the substitution of numerals for variables and the replacement of a term on the righthand side of an equation by a numeral for which the corresponding identity has already been derived.

Gödel introduced the term *general recursive* to describe a function defined in this manner. Following the modernized presentation of Odifreddi (1989, ch. I.2) this class may be specified on the basis of the following initial definitions:<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-12" id="ref-12">12</a>]</sup>

**Definition 1.1**

1.  The class of *numerals* is the smallest set containing 0 and closed under the successor function x↦s(x). We write ¯n for the numeral s(s(…s(0))) n-times.
    
2.  The class of *terms* is the smallest set containing the numerals, *variables* x0,x1,… and closed under the operations t↦s(t) and t1,…,tn↦ψni(t1,…,tn) where t,t1,…,tn are terms and ψni is a primitive n-ary functional symbol.
    
3.  If t and u are terms and t is of the form ψni(t1,…,tn) where t1,…,tn do not contain any functional symbols other than s, then t=u is an *equation*.
    
4.  A *system of equations* is a finite set of equations. E(ψ1,…,ψn,→x) will be used to denote a system of equations containing primitive functional symbols ψ1,…,ψn and variables among →x=x1,…,xk.
    

Herbrand (1932) gave a semantic characterization of what it means for a number theoretic function f to be defined by a system of equations E(ψ1,…,ψn,→x) by requiring both that there is a solution to the system and that f coincides with the function determined as ψ1 for every solution. He also suggested that this fact should be proved intuitionistically, which might in turn be thought to yield an effective procedure for computing the values of f.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-13" id="ref-13">13</a>]</sup> He did not, however, specify a formal system in which such a proof should be carried out. And thus Gödel suggested (essentially) the following syntactic replacement for Herbrand’s definition:

**Definition 1.2:** A function f:Nk→N is *general recursive* if there is a system of equations E(ψ1,…,ψn,→x) such that if ψki is the leftmost functional symbol in the last equation of E then for all n1,…,nk,m∈N

f(n1,…,nk)=m

if and only if the equation

ψki(¯n1,…,¯nk)=¯m

is derivable from the equations comprising E via the following two rules:

R1:

Substitution of a numeral for every occurrence of a particular variable in an equation.

R2:

If ψjl(¯n1,…,¯nj)=¯q has already been derived, then ψjl(¯n1,…,¯nj) may be replaced with the numeral ¯q on the righthand side of an equation.

In such a case we say that E *defines* f with respect to ψki.

It can be verified that the system of equations (12) and the derivation (13) exhibited above satisfy the foregoing requirements, thus illustrating how it is possible to mechanically calculate using a system of general recursive equations. However certain systems—e.g., {ϕ(x)=0,ϕ(x)=s(0)}—are inconsistent in the sense of not being satisfied by any function on the natural numbers, while others—e.g., {ϕ(x)=ϕ(x)}—are not satisfied uniquely. One evident drawback of Gödel’s definition of general recursiveness is thus that there is no apparent means of establishing whether a given system of equations E determines a unique function (even if only partially defined). This is one of the reasons why Gödel’s characterization has been replaced by other extensionally equivalent definitions such as Kleene’s partial recursive functions (see [Section 2.2][37]) in the subsequent development of computability theory.

### 1.6 Church’s Thesis

By formalizing his informal characterization of recursiveness via [Definition 1.2][38], Gödel succeeded in formulating a definition which subsumes the primitive recursion scheme (6), the definition of the Ackermann-Péter function, as well as several other schemes considered by Hilbert. Gödel’s definition of general recursiveness thus also defined a class GR of functions of type Nk→N which properly subsumes the primitive recursive functions PR. Moreover, we now know that the class of functions representable in P (and in fact in far weaker arithmetical systems) corresponds not to the primitive recursive functions, but rather to the general recursive functions. Weakening the hypothesis that the set of (Gödel numbers) of the axioms of a formal system to the requirement that they be general recursive rather than primitive recursive thus indeed provides a generalization of the First Incompleteness Theorem the manner in which Gödel envisioned.

The definition of GR is also of historical importance because it was the first among several equivalent (and nearly contemporaneous) definitions of what were originally called the *recursive functions* but are now often referred to as the *computable functions* (see [Section 2.2][39]). These developments also contributed to one of the two final chapters in the study of recursive definability prior to the initiation of computability theory as an independent subject—i.e., the isolation and eventual adoption of what is now known as *Church’s Thesis*.

Church’s Thesis corresponds to the claim that the class of functions which are computable by a finite mechanical procedure—or, as it is traditionally said, are *effectively computable*—coincides with the class of general recursive functions—i.e.,

(CT)

f:Nk→N is effectively computable if and only if f∈GR.

It may appear that Gödel already proposed a version of Church’s Thesis in 1934. However, he did not immediately endorse it upon its first explicit articulation by Church.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-14" id="ref-14">14</a>]</sup> And since the surrounding history is complex it will be useful to record the following observations as a prelude to [Sections 2 and 3][41].<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-15" id="ref-15">15</a>]</sup> (See also the entries on [Church’s Thesis][43] and [computational complexity theory][44].)

Gödel delivered the lectures (Gödel 1934) while he was visiting Princeton in the spring of 1934. Already at that time Church, together with his students Kleene and Rosser, had made substantial progress in developing the formal system of function application and abstraction now known as the *untyped lambda calculus*. This system also provides a means of representing natural numbers as formal terms—i.e., as so-called *Church numerals*. This leads to a notion of a function being *lambda-definable* which is similar in form to (9). Church’s definition thus also characterize a class L of lambda-definable functions which is similar in form to that of GR. During this period, Kleene demonstrated that a wide range of number theoretic functions were included in L, in part by showing how it is possible to implement primitive recursion in the lambda calculus. This ultimately led Church to propose in early 1934 that the lambda-definable functions coincide with those possessing the property which he called “effective calculability”.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-16" id="ref-16">16</a>]</sup>

A natural conjecture was thus that lambda-definability coincided extensionally with general recursiveness. Unlike (CT)—which equates an informally characterized class of functions with one possessing a precise mathematical definition—the statement GR=L potentially admits to formal demonstration. Such a demonstration was given by Church (1936b; and in greater detail by Kleene 1936b) providing the first of several extensional equivalence results which Kleene (1952, sec. 62) would eventually cite as evidence of what he proposed to call “Church’s Thesis”.

Church’s Thesis underlies contemporary computability theory in the sense that it justifies the assumption that by studying computability relative to a *single* formalism (such as GR or L) we are thereby providing a *general* account of which functions can and cannot be effectively computed in principle by an algorithm. In light of this, it will be useful to catalog some additional evidence for Church’s Thesis in the form of the equivalence of GR with several other computational formalisms presented in the Stanford Encyclopedia:

1.  Let T be a consistent, computably axiomatizable theory extending Q (i.e., Robinson arithmetic). Then the class of functions FT which is representable in T in the sense of (9) above (with T replacing P) is such that FT=GR. (See [representability in the entry on Gödel’s incompleteness theorems][46] and Odifreddi (1989, ch. I.3).)
    
2.  The class REC consisting of the total functions which are members of the class of *partial recursive functions* (formed by closing the class PR under the unbounded minimization operation) is such that REC=GR. (See [Section 2.2.1][47] and Odifreddi (1989, ch. I.2).)
    
3.  The class CL of functions representable in [*Combinatory Logic*][48] (a formal system related to the lambda calculus) is such that CL=GR. (See [computable functions and arithmetic in the entry on combinatory logic][49] and Bimbó (2012, ch. 5.3).)
    
4.  The class T of functions computable by a [*Turing machine*][50] (under several variants of its definition) is such that T=GR. (See [alternative historical models of computability in the entry on Turing machines][51] and Odifreddi (1989, ch. I.4).)
    
5.  The class U of functions computable by *Unlimited Register Machines* introduced by Shepherdson & Sturgis (1963) is such that U=GR. (See Cutland (1980, ch. 1–3) and Cooper (2004, ch. 2).)
    

Equivalence results of these forms testify to the mathematical robustness of the class GR and thereby also to that of the informal notion of effective computability itself. As we have seen, Gödel was originally led to the formulation of general recursiveness by attempting to analyze the background notion of recursive definition as a model of effective computation as inspired by the foundational developments of the late nineteenth and early twentieth centuries.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-17" id="ref-17">17</a>]</sup> Further discussion of how the work of Church, Turing, and Post can be seen as providing independently motivated analyses of computability which also support Church’s Thesis can be found in Gandy (1980) and Sieg (1994, 1997, 2009).

### 1.7 The *Entscheidungsproblem* and Undecidability

In addition to the goal of widening the scope of Gödel’s Incompleteness Theorems, another motivation for work on recursive functions during the 1930s was the study of so-called *undecidable* (or *unsolvable*) *problems*. The original example of such a problem was that of determining whether a given formula φ of first-order logic is *valid*—i.e., true in all of its models. This was first described as the *Entscheidungsproblem* (or *decision problem*) for first-order logic by Hilbert & Ackermann in their textbook *Grundzüge der theoretischen Logik* (1928):<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-18" id="ref-18">18</a>]</sup>

> The *Entscheidungsproblem* is solved if one knows a procedure, which permits the decision of the universality [i.e., validity] or satisfiability of a given logical expression by finitely many operations. The solution of the problem of decision is of fundamental importance to the theory of all domains whose propositions can be logically described using finitely many axioms. (Hilbert & Ackermann 1928, 73)<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-19" id="ref-19">19</a>]</sup>

This passage illustrates another sense in which the question of the decidability of logical derivability is connected to the concerns which had initiated Hilbert’s study of metamathematics. For note that if Γ is a *finite* set of axioms {γ1,…,γk}, then the question of whether ψ is a logical consequence of Γ is equivalent to whether the sentence φ=df(γ1∧…∧γk)→ψ is logically valid. By [Gödel’s Completeness Theorem (see the entry on Gödel)][55] for first-order logic, this is equivalent to the derivability of φ from Hilbert & Ackermann’s axiomatization of first-order logic. A positive answer to the *Entscheidungsproblem* could thus be interpreted as showing that it is possible to mechanize the search for proofs in mathematics in the sense of allowing us to algorithmically determine if a formula expressing an open question (e.g. the Riemann Hypothesis) is a logical consequence of a suitably powerful finitely axiomatized theory (e.g., Gödel-Bernays set theory).

In addition to analyzing the notion of effective computability itself, the mathematical goal of both Turing (1937) and Church (1936a,b) was to provide a mathematically precise *negative* answer to the *Entscheidungsproblem*. The answers which they provided can be understood as proceeding in three phases:

1.  Via the method of the *arithmetization of syntax* described in [Section 1.3][56] Turing and Church showed how the *Entscheidungsproblem* could be associated with a set of natural numbers V.
2.  They then showed mathematically that V is not *decidable*—i.e., its characteristic function is not computable in the formal sense, respectively relative to the models T or L.
3.  They finally offered further arguments to the effect that these models subsume all effective computable functions thus suggesting the function is not computable in the informal sense either.

The first of these steps can be undertaken by defining

V={⌜φ⌝:φ is logically valid}={⌜φ⌝:M⊨φ for all Lφ-models M}

where ⌜⋅⌝ is a Gödel numbering of the language of φ as described in [Section 1.3][57]. The second step of Turing and Church’s negative answer to the *Entscheidungsproblem* relied on their prior specification of similar decision problems for the models T, L, and GR. Together with Kleene (1936a), they showed the following:

**Proposition 1.1:** The characteristic functions of the following sets are not computable with respect to the relevant model:

1.  HPT={⟨i,n⟩:the Turing machine Ti halts on input n}
    
2.  HPL={⌜M⌝:the untyped λ-term M has a normal form}
    
3.  HPGR={⌜E⌝: the system of equations E-term determines a general recursive function}
    

For instance, Part i of [Proposition 1.1][58] shows that there is no Turing machine which outputs 1 if Ti halts on n and 0 otherwise. This is thus a formulation of Turing’s well-known [*unsolvability of the Halting Problem* (see the entry on Turing machines)][59]. Part ii and iii would also now be described as expressing that the sets HPT, HPL, and HPGR are all *undecidable*. By taking into account the equivalence results summarized in [Section 1.6][60], [Proposition 1.1][61] thus shows that membership in these sets cannot be decided relative to *any* of the models in question.

On this basis, Turing (for T) and Church (for L and GR) then proved the following:

**Proposition 1.2:** If V were decidable (with respect to any of the models in question), then HPT,HPL, and HPGR would be as well.

The proofs which Turing and Church gave of these facts are constructive in the sense that they show how to effectively transform an individual instance of one of the models into a first-order formula such that the formula is valid if and only if the instance possesses the property in question—e.g., given a Turing machine Ti and input n∈N, we construct a formula φi,n such that the computation Ti(n) halts if and only if φi,n is valid. This method thus anticipates the definition of *many-one reducibility* given in [Section 3.5.1][62] below.

In conjunction with the other arguments which Church and Turing had already offered in favor of Church’s Thesis (see [Section 1.6][63]), Propositions [1.1][64] and [1.2][65] can thus be taken to show that the *Entscheidungsproblem* is indeed not decidable in the informal sense described by Hilbert & Ackermann (1928)—i.e., not decidable by a “mechanical procedure using finitely many operations”. As we will see in [Section 3][66], the desire to develop a general theory of such undecidability results and the relations which they bear to one another was an important motivation for the further development of computability theory starting in the 1940s.

### 1.8 The Origins of Recursive Function Theory and Computability Theory

The developments just described form part of the prehistory of the subfield of contemporary mathematical logic which was originally known as *recursive function theory* (or more simply as *recursion theory*). This subject was initiated in earnest by Kleene, Turing, and Post starting in the late 1930s, directly on the basis of the papers containing the equivalence and undecidability results summarized in [Section 1.6][67] and [Section 1.7][68]. Of particular importance are the papers (1936a, 1938, 1943, 1955a,b,c) of Kleene. These respectively contain the definition of the partial recursive functions, the proof of their equivalence to GR, the Normal Form Theorem, the Recursion Theorem, and the definitions of the arithmetical and analytical hierarchies. Of equal importance are the papers (1937, 1939) of Turing (which respectively contain the undecidability of the Halting Problem and the definition of Turing reducibility) and the paper (1944) of Post (which introduced many-one and one-one reducibility and formulated what would come to be known as *Post’s Problem*).

These developments will be surveyed in [Section 3][69]. As we will see there, an important theme in the early stages of computability theory was the characterization of a notion of effective computability which is capable of supporting rigorous proofs grounded in intuitions about algorithmic calculability but which abstracts away from the details of the models mentioned in [Section 1.6][70]. To this end, Gödel’s original definition of the general recursive equations was replaced in early textbook treatments (e.g., Shoenfield 1967, Rogers 1987) by Kleene’s definition of the partial recursive functions in terms of the unbounded minimization operator introduced in [Section 2.2][71]. This characterization has in turn been replaced by machine-based characterizations such as those of Turing (1937) or Shepherdson & Sturgis (1963) in later textbooks (e.g., Soare 1987, Cutland 1980) which are closer in form to informally described computer programs.

What is retained in these treatments is an understanding of computation as a means of operating in an effective manner on finite combinatorial objects which can still be understood to fall under the “recursive mode of thought” as understood by early theorists such as Skolem, Hilbert, Gödel, and Péter. But at the same time, many of the basic definitions and results in recursive function theory are only indirectly related to recursive definability in the informal sense described in this section. In light of this, Soare (1996) proposed that recursive function theory should be renamed *computability theory* and that we should accordingly refer to what were traditionally known as the *recursive functions* as the *computable functions*.

Such a change in terminology has been largely adopted in contemporary practice and is reflected in recent textbooks such as Cooper (2004) and Soare (2016). Nonetheless, both sets of terminology are still widely in use, particularly in philosophical and historical sources. Readers are thus advised to keep in mind the terminological discussion at the beginning of [Section 3][72].

## 2. Forms of Recursion

NB: Readers looking for a mathematical overview of recursive functions are advised to start here. Discussion of the historical context for the major definitions and results of this section can be found in [Section 1][73].

This section presents definitions of the major classes of recursively defined functions studied in computability theory. Of these the *primitive recursive functions* PR and the *partial recursive functions* PartREC are the most fundamental. The former are based on a formalization of the process of recursion described in the introduction to this entry and include virtually all number theoretic functions studied in ordinary mathematics. The partial recursive functions are formed by closing the primitive recursive functions under the operation of *unbounded minimization*—i.e., that of searching for the smallest witness to a decidable predicate. The class of *recursive functions* REC—i.e., the partial recursive functions which are defined on all inputs—has traditionally been taken to correspond via Church’s Thesis ([Section 1.6][74]) to those which can be effectively computed by an algorithm.

The following notional conventions will be employed in the remainder of this entry:

-   N={0,1,2,…} denotes the set of natural numbers, Nk denotes the cross product N×…×N k-times, and →n denotes a vector of fixed numbers n0,…,nk−1 (when the arity is clear from context).
    
-   Lowercase Roman letters f,g,h,… denote functions of type Nk→N (for some k)—i.e., the class of functions with domain Nk and range N. For a fixed j, f:Nj→N expresses that f is a j-*ary* function (or has *arity* j)—i.e., f has domain Nj and range N.
    
-   x0,x1,x2,… are used as formal variables over N for the purpose of indicating the argument of functions. x,y,z,… will also be used informally for arbitrary variables from this list. →x will be used to abbreviate a vector of variables x0,…,xk−1 (when the arity is clear from context).
    
-   Boldface letters X,Y,Z,… (or abbreviations like PR) will be used to denote classes of functions which are subsets of ⋃k∈N(Nk→N).
    
-   Calligraphic letters F,G,H,… (or abbreviations like Compjk) will be used to denote *functionals* on Nk→N—i.e., operations which map one or more functions of type Nk→N (possibly of different arities) to other functions.
    
-   Uppercase letters R,S,T,… will be used to denote *relations*—i.e., subsets of Nk—with the range A,B,C,… reserved to denote unary relations—i.e., subsets of N.
    
-   The *characteristic function* of a relation R⊆Nk is denoted by χR(x0,…,xk−1)—i.e.,
    
    χR(x0,…,xk−1)={1 if R(x0,…,xk−1)0 if ¬R(x0,…,xk−1)

### 2.1 The Primitive Recursive Functions (**PR**)

#### 2.1.1 Definitions

A class X of recursively defined functions may be specified by giving a class of initial functions IX which is then closed under one or more functionals from a class OpX. It is in general possible to define a class in this manner on an arbitrary set of initial functions. However, all of the function classes considered in this entry will determine functions of type Nk→N—i.e., they will take k-tuples of natural numbers as inputs and (if defined) return a single natural number as output.

In the case of the primitive recursive functions PR, the initial functions include the nullary *zero function* 0 which returns the value 0 for all inputs (and can thus be treated as a constant symbol), s(x) denotes the unary *successor function* x↦x+1, and πki denotes the k-ary *projection function* on to the ith argument (where 0≤i<k)—i.e.,

πki(x0,…,xi,…xk−1)=xi

This class of functions will be denoted by IPR={0,s,πki}. Note that since πki is a distinct function for each i,k∈N, IPR already contains infinitely many functions.

The functionals of PR are those of *composition* and *primitive recursion*. Composition takes j functions g0,…,gj−1 of arity k and a single function f of arity j and returns their *composition*—i.e., the function

h(x0,…,xk−1)=f(g0(x0,…,xk−1),…,gj−1(x0,…,xk−1))

of type Nk→N. As an example, suppose that f is the multiplication function mult(x,y), g0 is the constant 3 function (which we may think of as implicitly taking a single argument), and g1(x) is the successor function s(x). Then the composition of f with g0 and g1 is the unary function h(x)=f(g0(x),g1(x))=mult(3,s(x)) which we would conventionally denote by 3×(x+1).

The operation of composition may be understood as a class of functionals which for each j,k∈N takes as inputs j functions g0,…,gj−1 of arity k and a single function f of arity j and returns as output the k-ary function h which composes these functions in the manner just illustrated. This is described by the following scheme:

**Definition 2.1:** Suppose that f:Nj→N and g0,…,gj−1:Nk→N. Then the term Compjk[f,g0,…,gj−1] denotes the function

f(g0(x0,…,xk−1),…,gj−1(x0,…,xk−1))

of type Nk→N.

Primitive recursion is also a functional operation. In the simplest case, it operates by taking a single unary function g(x) and a natural number n∈N and returns the unary function defined by

h(0)=nh(x+1)=g(h(x))

In such a definition, the first clause (known as the *base case*) determines the value of h at 0, while the second clause determines how its value at x+1 depends on its value at x. In this case it is easy to see that the value of x determines how many times the function g is *iterated* (i.e., applied to itself) in determining the value of h. For instance, if n=3 and g(x)=mult(x,x), then h(x)=3x+1—i.e., the x+1st iterate of the map x↦3×x.

The full primitive recursion scheme generalizes (14) in two ways. First, it allows the value of the function h at x+1 to depend not just on its own value at x, but also on the value of the variable x itself. This leads to the scheme

h(0)=nh(x+1)=g(x,h(x))

For instance, the definition of the factorial function fact(x) defined in the introduction to this entry can be obtained via (15) with n=1 and g(x0,x0)=times(s(x0),x0).

A second possible generalization to (14) results from allowing the value of h to depend on a finite sequence of auxiliary variables known as *parameters* which may also be arguments to the base case. In the case of a single parameter x, this leads to the scheme

h(x,0)=f(x)h(x,y+1)=g(x,h(x,y))

The addition function add(x,y) may, for instance, be defined in this way by taking f(x0)=x0 and g(x0,x1)=s(x1). This definition can also be thought of as specifying that the sum x+y is the value obtained by iterating the application of the successor function y times starting from the initial value x in the manner of (14). Similarly, mult(x,y) may be defined by taking f(x0)=0 and g(x0,x1)=add(x0,x1). This defines the product x×y as the value obtained by iterating the function which adds x to its argument y times starting from the initial value 0.

Such definitions may thus be understood to provide algorithms for computing the values of the functions so defined.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-20" id="ref-20">20</a>]</sup> For observe that each natural number n is either equal to 0 or is of the form m+1 for some m∈N. If we now introduce the abbreviation ¯n=s(s(s…(s(0)))) n-times, the result of applying the successor function s to a number denoted by ¯n thus yields the number denoted by ¯n+1. We may thus compute the value of x+y using the prior recursive definition of addition as follows:

add(¯2,¯3)=s(add(¯2,¯2))=s(s(add(¯2,¯1)))=s(s(s(add(¯2,¯0))))=s(s(s(¯2)))=s(s(s(s(s(0)))))=¯5

The full definition of the primitive recursion operation combines both generalizations of (14) into a single scheme which takes as arguments a k-ary function f, a k+2-ary function g, and returns a k+1-ary function h defined as follows

h(x0,…,xk−1,0)=f(x0,…,xk−1)h(x0,…,xk−1,y+1)=g(x0,…,xk−1,y,h(x0,…,xk−1,y))

Here the first k arguments x0,…,xk−1 to g are the parameters, the k+1st argument y is the *recursion variable*, and the k+2nd argument h(x0,…,xk−1,y) gives the prior value of h. An elementary set theoretic argument shows that for each k∈N, if f is k-ary and g is k+2-ary, then a there is a unique k+1-ary function h satisfying (18)—see, e.g., (Moschovakis 1994, ch. 5).

It will again be useful to introduce a formal scheme for referring to functions defined in this manner:

**Definition 2.2:** Suppose that f:Nk→N and g:Nk+2→N. Then the term PrimReck[f,g] denotes the unique function of type Nk+1→N satisfying (18).

We may now formally define the class PR of primitive recursive functions as follows:

**Definition 2.3:** The class of *primitive recursive functions* PR is the smallest class of functions containing the initial functions IPR={0,s,πki} and closed under the functionals

OpPR={Compij,PrimReck}.

With the definition of PR in place, we may also define what it means for a relation R⊆Nk to be primitive recursive:

**Definition 2.4:** R⊆Nk is a *primitive recursive relation* just in case its characteristic function

χR(x0,…,xk−1)={1 if R(x0,…,xk−1)0 if ¬R(x0,…,xk−1)

is a primitive recursive function.

[Definition 2.4][76] thus conventionalizes the characterization of a primitive recursive relation R⊆Nk as one for which there exists an algorithm similar to that illustrated above which returns the output 1 on input →n if R holds of →n and the output 0 if R does not hold of →n. As will become clear below, most sets and relations on the natural numbers which are considered in everyday mathematics—e.g., the set *PRIMES* of prime numbers or the relation DIV={⟨n,m⟩:n divides m without remainder}

—are primitive recursive.

The foregoing definition specifies PR as the *minimal closure* of IPR under the functions in OpPR. In other words, PR may be equivalently defined as the subclass of ⋃k∈N(Nk→N) satisfying the following properties:

i.

IPR⊆PR

ii.

For all j,k∈N and f,g0,…,gk−1∈PR, if f is j-ary and gi is k-ary (for 1≤i≤n) then Compjk[f,g0,…,gj−1]∈PR.

iii.

For all k∈N and f,g∈PR, if f is k-ary and g is k+2-ary then PrimReck[f,g]∈PR.

iv.

No functions are members of PR unless they can be defined by i–iii.

Another consequence of [Definition 2.3][77] is thus that each function f∈PR possesses a specification which shows how it may be defined from the initial functions IPR in terms of a finite number of applications of composition and primitive recursion. This process may be illustrated by further considering the definitions of the functions add(x,y) and mult(x,y) given above.

Note first that although the familiar recursive definitions of addition (3) and multiplication (4) fit the format of (16), they do not fit the format of (18) which in this case requires that the argument g to the primitive recursion scheme be a 3-ary function. It is, however, possible to provide a definition of add(x,y) in the official form by taking f(x0)=π10(x0)—i.e., the identity function—and g(x0,x1,x2)=Comp13[s,π31]—i.e., the function which results from composing the successor function with the 3-ary projection function on to its second argument. The expression PrimRec1[π10,Comp13[s,π31]] may then be understood as a term which encodes the definition we have provided for addition. Multiplication can then be defined via (18) with f=0 and g(x0,x1,x2)=Comp23[add,π30,π32]. Thus PrimRec1[0,Comp23[add,π30,π32]]

—or in explicit form PrimRec1[0,Comp23[PrimRec1[π10,Comp13[s,π31]],π30,π32]]

—can be taken as a similar term encoding the definition of multiplication we have abbreviated by mult(x,y).

These examples illustrate that the simpler recursion schemes which are employed in many informal recursive definitions may be assimilated to [Definition 2.3][78]—e.g., the function h(x,y) defined in (16) maybe obtained as PrimRec1[f,Comp23[g,π31,π32]]. Repeated use of this and similar observations will be made (generally without comment) in the examples provided in [Section 2.1.2][79].

Another consequence of the fact that *every* f∈PR is defined by a term given in this manner by (19) is the following:

**Proposition 2.1:** The class of functions PR is countable.

This can be demonstrated by showing that it is possible to enumerate PR as f0,f1,f2,… by introducing a Gödel numbering of terms formed from the expressions 0,s,πki,Compjk and PrimReck in the manner described in [Section 1.3][80]. Since there are uncountably many functions of type Nk→N for all k>0, this observation also provides a non-constructive demonstration that there exist number theoretic functions which are not primitive recursive.

#### 2.1.2 Examples

Almost all number theoretic functions and relations encountered in ordinary mathematics can be shown to be primitive recursive. In order to illustrate the extent of this class, we will present here a standard sequence of definitions which can be traced historically to Skolem (1923). This can be used to show that the sequence coding ⟨…⟩ and decoding (⋅)i operations defined below are primitive recursive. This is in turn required for Gödel’s arithmetization of syntax (see [Section 1.3][81]) as well as results like the Normal Form Theorem ([2.3][82]) which will be discussed below.

##### Constant functions

For each k∈N the constant k-function defined as constk(x)=k is primitive recursive. This is because we can inductively define

const0(x)=0 and constk+1(x)=Comp11[s,constk]=s(s(s…(s(0))))=df¯k+1

##### Exponentiation, super-exponentiation, …

We have already seen that the addition function add(x,y) can be defined by primitive recursion in terms of repeated application of successor and that the multiplication function mult(x,y) can be defined by primitive recursion in terms of repeated application of addition. We can continue this sequence by observing that the exponentiation function xy can be defined by primitive recursion in terms of repeated multiplication as follows:

exp(x,0)=¯1exp(x+1,y)=mult(x,exp(x,y))

The super-exponentiation function

x↑y=xx⋰x⏟y times

can be defined by primitive recursion in terms of repeated exponentiation as as follows:

supexp(x,0)=¯1supexp(x+1,y)=exp(x,supexp(x,y))

The sequence of functions

α0(x,y)=x+y,α1(x,y)=x×y,α2(x,y)=xy,α3(x,y)=x↑y,⋮

whose i+1st member is defined in terms of primitive recursion of the ith member form a hierarchy of functions whose values grow increasingly quickly in proportion to their inputs. While each function in this sequence is primitive recursive, we can also consider the function α(x,y) defined as αx(y,y)—a version of the so-called *Ackermann-Péter function* defined in [Section 1.4][83]—whose values are not bounded by any fixed function αi. As it can be shown that the values of α(x,y) are not bounded by any of the functions αi(x,y), this shows that α(x,y) cannot be defined by any finite number of applications of the scheme PrimRec1. This provides a constructive proof that there exist functions of type N2→N which are not primitive recursive.

##### Predecessor and proper subtraction

The *proper predecessor* function is given by

pred(y)={0 if y=0y−1otherwise

This function is primitive recursive since it may be defined as

pred(y)=0pred(y+1)=y

Note that the second clause of (22) does not depend on the prior value of pred(y). But this definition can still be conformed to the scheme (18) by taking f(x0)=0 and g(x0,x1,x2)=π31.

The *proper subtraction* function is given by

x∸y={x−y if y≤x0otherwise

This function is also primitive recursive since it may be defined as

x∸0=xx∸(y+1)=pred(x∸y)

##### Absolute difference, signum, minimum, and maximum

The absolute difference function is defined as

|x−y|={x−y if y≤xy−xotherwise

|x−y| may be defined by composition as (x∸y)+(y∸x) and is hence primitive recursive since ∸ is.

The *signum* function is defined as

sg(x)={1 if x≠00otherwise

This function may be defined by composition as sg(x)=1∸(1∸x) and is hence primitive recursive as is the *inverted signum* function defined by ¯sg(x)=1∸sg(y) which returns 1 if x=0 and 1 otherwise.

The minimum and maximum functions may be similarly defined by composition from functions previously seen to be primitive recursive as follows:

min(x,y)=¯sg(x∸y)×x+¯sg(y∸x)×ymax(x,y)=sg(x∸y)×x+sg(y∸x)×y

##### Order and identity

The characteristic functions of the *less than* relation (<) and *equality* relation (=) on the natural numbers are definable as follows:

χ<(x,y)=sg(y∸x)χ=(x,y)=1∸(sg(x∸y)+sg(y∸x))

These relations are hence primitive recursive.

As the *less than or equal to* relation (≤) is logically equivalent to x<y∨x=y it will follow from the next set of observations that this relation is also primitive recursive. The is additionally true of x>y, x≥y and x≠y.

##### Closure under propositional operations

The set of primitive recursive relations is *closed under boolean operations*. In other words, if P(→x) and Q(→x) are primitive recursive, then so are ¬P(→x), P(→x)∧Q(→x), P(→x)∨Q(→x), P(→x)→Q(→x), and P(→x)↔Q(→x).

Given the interdefinability of the classical connectives, this follows upon noting the following:

χ¬P(→x)=1∸χP(→x)χP∧Q(→x)=χP(→x)×χQ(→x)

##### Bounded sums and products

Suppose that f(→x,z) is primitive recursive. Then the *bounded sum* g(→x,y)=Σyi=0f(→x,i) and the *bounded product* h(→x,y)=Πyi=0f(→x,i) are both primitive recursive as they may be respectively defined as follows:

g(→x,0)=f(→x,0)g(→x,y+1)=g(→x,y)+f(→x,y+1)h(→x,0)=f(→x,0)h(→x,y+1)=g(→x,y)×f(→x,y+1)

##### Closure under bounded quantification

The set of primitive recursive relations is also closed under *bounded quantification*—i.e., if R(→x,z) is a primitive recursive relation, then so are the relations ∀z≤yR(→x,z) and ∃z≤yR(→x,z). These may be respectively defined as follows as follows:

uR(→x,y)=dfχ∀z≤yR(→x,z)(→x)=Πyi=0χR(→x,i)eR(→x,y)=dfχ∃z≤R(→x,z)(→x)=sg(Σyi=0χR(→x,i))

##### Closure under bounded minimization

The set of primitive recursive relations is also closed under *bounded minimization*. This is to say that if R(→x,z) is a primitive recursive relation, then so is the function mR(→x,y) which returns the least z less than or equal to y such that R(→x,z) holds if such a z exists and y+1 otherwise—i.e.,

mR(→x,y)={the least z≤y such that R(→x,z) if such a z existsy+1 otherwise

To see this, observe that if R(→x,z) is primitive recursive, then so is ∀z≤y¬R(→x,z). It is then not difficult to verify that

mR(→x,y)=Σyi=0χ∀z≤y¬R(→x,z)(→x,i).

##### Divisibility and primality

A natural number y is said to be *divisible* by x just in case there exists a z such that x×z=y—i.e., x divides y without remainder. In this case we write x∣y. Note that if x∣y holds, then this must be witnessed by a divisor z≤y such that x×z=y. We may thus define x∣y in the following manner which shows that it is primitive recursive:

x∣y⟺∃z≤y(x×z=y)

We may also define the *non-divisibility* relations x∤y as ¬(x∣y) which shows that it too is primitive recursive.

Next recall that a natural number x is *prime* just in case it is greater than 1 and is divisible by only 1 and itself. We may thus define the relation Prime(x) in the following manner which shows that it is primitive recursive:

Prime(x)⟺¯1<x∧∀z≤x(z∣x→(z=¯1∨z=x))

The primes form a familiar infinite sequence p0=2, p1=3, p2=5, p3=7, p4=11,…. Let p(x)=px—i.e., the function which returns the xth prime number. p(x) can be defined by primitive recursion relative to the function nextPrime(x) which returns the least y>x such that y is prime as follows:

p(0)=¯2p(x+1)=nextPrime(p(x))

Recall that Euclid’s Theorem states that there is always a prime number between x and x!+1 and also that x!=fact(x) is primitive recursive. It thus follows that nextPrime(x) can be defined via bounded minimization as follows:

nextPrime(x)=mx<z ∧ Prime(z)(x,fact(x)+1)

It thus follows that p(x) is primitive recursive.

##### Sequences and coding

The foregoing sequence of definitions provides some evidence for the robustness of the class of primitive recursive relations and functions. Further evidence is provided by the fact that it is possible to develop the machinery for coding and decoding finite sequences of natural numbers and for performing various combinatorial operations on sequences—e.g., adjunction of an element, concatenation, extracting a subsequence, substituting one element for another, etc. The primitive recursiveness of these operations underpins Gödel’s arithmetization of syntax as described in [Section 1.3][84]. We present here only the basic definitions required to demonstrate the primitive recursiveness of the k-tupling and projection functions which are required for results in computability theory such as the Normal Form Theorem ([2.3][85]) discussed below.

Given a finite sequence of natural numbers n0,n1,…,nk−1 we define its *code* to be the number

pn0+10×pn1+11×pn2+12×…×pnk−1+1k−1

where pi is the ith prime number as defined above. In other words, the code of n0,n1,…,nk−1 is the natural number resulting from taking the product of the numbers pni+1i for 0≤i≤k−1. This will be denote by ⟨n0,n1,…,nk−1⟩—e.g.,

⟨3,1,4,1,5⟩=24×32×55×72×116=39062920050000.

(Note that 1 is added to each exponent so that, e.g., 3, 1, 4, 1, 5 has a distinct code from that of 3, 1, 4, 1, 5, 0, etc.—i.e., so that the coding operation is *injective*.)

The operation which takes a sequence of arbitrary length to its code does not have a fixed arity and hence is not given by a single primitive recursive function. But it is not hard to see that if we restrict attention to sequences of given length k, then ⟨n0,n1,…,nk−1⟩:Nk→N is primitive recursive as it is simply the bounded product given by (25). Consider next the function element(s,i)=ni where s=⟨n0,n1,…,nk−1⟩ and 0≤i≤k−1 and which returns 0 when i is not in this range or s=0 or 1 (and thus not a code of a sequence). In order to see that element(s,i) is also primitive recursive, first observe that it is possible to recover len(s)—i.e., the *length* of the sequence coded by s—by searching for the least i<s such that pi∣s and pi+1∤s. Since s also bounds all the primes pi which divide it we may define

len(s)={0 if s=0 or s=11+mpz∣s∧pz+1∤s(s,s) otherwise

It is straightforward to see that a function defined by cases with primitive recursive conditions is primitive recursive. So len(s) is primitive recursive as well.

Finally observe that element(s,i) is equal to the smallest exponent n such that pn+1i∣s but pn+2i∤s and that such an exponent is also bounded by s. We may thus provide a primitive recursive definition of element(s,i) as follows:

element(s,i)={0 if len(s)≤i or s=0 or s=1mpz+1i∣s∧pz+2i∤s(s,s)∸1 otherwise

The conventional abbreviation (s)i=element(s,i) will be employed for this function below.

#### 2.1.3 Additional closure properties of the primitive recursive functions

The primitive recursive functions and relations encompass a broad class including virtually all those encountered in ordinary mathematics outside of logic or computability theory. This is illustrated in part by the fact that PR contains functions such as supexp(x,y) which grow far faster than those whose values we can feasibly compute in practice in the sense studied in [computational complexity theory][86]. But the robustness of the class PR is also attested to by the fact that its definition is invariant with respect to a variety of modifications—e.g., with respect to the classes of initial functions IPR and functionals OpPR on which its definition is based.

As an initial illustration, consider the following scheme of so-called *pure iteration*:

h(0,y)=yh(x+1,y)=g(h(x,y))

It is easy to see that the function h defined by (26) from g in this manner is the xth–iterate of g— i.e., gx(y)=dfg(g(…g(y))) x–times with the convention that g0(y)=y. We will denote this functional by Iter[g,x]. The scheme (26) thus generalizes (14) by making the value of base case an argument to h. But it is an apparent restriction of (18) in the sense that h cannot depend on either the recursion variable or additional parameters.

Suppose we now consider an alternative class of initial functions InIT containing s,πki, the binary coding function ⟨x,y⟩, and the decoding functions (x)0 and (x)1 defined at the end of [Section 2.1.2][87]. (Note that these operate analogously to the first and second production functions π20 and π21 operating on *codes* of ordered pairs.) Now define IT to be the smallest class of functions containing InIT and closed under the functionals OpIT={Compij,Iter}.

**Theorem 2.1** (Robinson 1947): The class IT is equal to the class PR of primitive recursive functions.

This illustrates that if we slightly enlarge the class of initial functions, it is still possible to obtain the entire class PR via a scheme of functional iteration which at first appears less general than primitive recursion. See Odifreddi (1989, ch. I.5) for an account of further improvements which can be obtained in this direction.

Other results show that the class PR also remains stable if primitive recursion is replaced with other schemes which may initially appear more general. The most familiar of these is the scheme of *course of values recursion* which is traditionally illustrated using the so-called *Fibonacci function* fib(x) which was briefly discussed at the beginning of [Section 1][88]. This may be defined as follows:

fib(0)=0fib(1)=1fib(y+1)=fib(y)+fib(y−1)

This definition can readily be used to calculate the values of fib(x) in a recursive manner—e.g.,

fib(4)=fib(3)+fib(2)=(fib(2)+fib(1))+(fib(1)+fib(0))=((fib(1)+fib(0))+1)+(1+1)=((1+1)+1)+(1+1)=5

This gives rises to the familiar sequence 0, 1, 1, 2, 5, 8, 13, 21, 34, 55, 89, 144,… wherein F0=0, F1=1, and Fi+2=Fi+1+Fi. Note, however, the definition (27) cannot be directly assimilated to the primitive recursion scheme (18) since the third clause defines the value of fib(y+1) in terms of *both* fib(y) and fib(y−1). It is, however, still possible to show that fib∈PR. One means of doing this is to again make use of the binary coding and projection functions to first define an auxiliary function g(0)=⟨0,1⟩ and

g(y+1)=⟨(g(y))1,(g(y))0+(g(y))1⟩

which enumerates the pairs ⟨F0,F1⟩, ⟨F1,F2⟩,… It is then easy to see that fib(y)=(g(y))0.

(27) is thus an instance where the value of the function h at y depends on the values h(y−1) and h(y−2) of its graph (for y≥2). It is, of course, also possible to consider cases where h(y) depends on an arbitrary number of its preceding values h(0),…,h(y−1). To this end, suppose we are given h(→x,y) and then define

˜h(→x,y)=Πyi=0ph(→x,i)+1i=⟨h(→x,0),…,h(→x,y)⟩.

We then say that h(→x,y) is defined by *course of values recursion* from f(→x) and g(→x,y,z) if

h(→x,0)=f(→x)h(→x,y+1)=g(→x,y,˜h(→x,y))

Suppose that we now let CVk[f,g] denote the corresponding functional operation and let CV be the smallest class of functions containing InPR and closed under Compjk and CVk. Then since it is easy to see that ˜h(→x,y) is primitive recursive if h(→x,y) is, we also have the following:

**Theorem 2.2** (Péter 1935): The class CV is equal to the class PR of primitive recursive functions.

Since course of values recursion is occasionally used in mathematical practice, it is significant that it does not lead outside the class of primitive recursive functions. There are, however, a number of other possible ways in which the scheme (18) might also be generalized, including what are known as *double recursion* and *nested recursion*. The definition of the Ackermann-Péter function π(x,y) in [Section 1.4][89] exhibits the former since its value at x,y depends on its value at *both* x−1 and y−1 and also the latter since the occurrence of the defined function π(x,y) is “nested” within itself (rather than an auxiliary function) on the righthand side of the third clause. Although such definitions arise less often in practice, they are important historically due to their occurrence in Hilbert’s original discussion of recursion (see [Section 1.3][90]). Such schemes were considered systematically by Péter (1967) who showed that unnested double recursion on its own also does not lead outside the class of primitive recursive functions.

### 2.2 The Partial Recursive Functions (**PartREC**) and the Recursive Functions (**REC**)

We have now seen two ways of showing that there exist number theoretic functions which are not primitive recursive—i.e., by observing that while there are only countably many primitive recursive functions there are uncountably many functions of type Nk→N (k>0) and also by constructing a function such as α(x,y)=αx(y,y) which grows faster than any primitive recursive function. A third proof—originally due to Hilbert & Bernays (1934, ch. 7)—is based on the observation that it is possible to enumerate the class PR as g0(x),g1(x),g2(x),…—e.g., by Gödel numbering the sorts of definitions considered at the end of [Section 2.1.1][91]. If we then consider the modified diagonal function

δ(x)=gx(x)+1

it is easy to see that this function also cannot be primitive recursive. For if δ(x) coincided with some function gj(x) in the enumeration, then we would have gj(j)=δ(j)=gj(j)+1, a contradiction. Note that this also shows that relative to such an enumeration the *universal function* u1(i,x)=gi(→x) for unary primitive recursive functions cannot itself be primitive recursive as we could otherwise define δ(x) as u1(x,x)+1. Hilbert & Bernays (1939, ch. 5) would later discuss this observation in regard to what has become known as their *denotational paradox*—see, e.g., (Priest 1997).

On the other hand, there are intuitively effective procedures for computing each of these functions. For instance, in the case of δ(x) we can proceed as follows:

1.  use x to construct the definition of gx(y);
2.  compute the value of gx(x) by performing the corresponding primitive recursive calculation;
3.  add 1 and halt.

This illustrates that although α(x,y), δ(x), and u1(i,x) are not primitive recursive, they are still *effectively computable* in the sense discussed in [Section 1.6][92]. There is thus a natural motivation for seeking to expand the definition of the class PR so as to encompass such intuitively computable functions.

One means by which this can be accomplished builds on the observation that the bounded minimization operation mR(→x,y) admits to a straightforward algorithmic characterization—i.e., to compute the value of mR(→x,y) successively check R(→x,0), R(→x,1), …, R(→x,z),… giving output z and halting as soon as R(→x,z) holds and y+1 if no positive instance is found before z=y. This can be generalized to the so-called *unbounded search* operation. In particular, given a relation R(→x,y) we can define the operation μR(→x,z) which returns the least z such that R(→x,z) if such a z exists and is undefined otherwise. Note that if R(→x,y) is primitive recursive, then it is still possible to effectively search for the value of μR(→x,y) by successively checking R(→x,0), R(→x,1),…. But since no upper bound is specified in advance, we are not guaranteed that this procedure will always terminate. In particular, if there is no z∈N such that R(→x,z) holds, then the procedure will continue indefinitely. In this case, we stipulate that μR(→x,y) is *undefined*, from which it follows that μR(→x,y) will correspond to what is known as a *partial function*—a notion which is made precise by the following sequence of definitions.

#### 2.2.1 Definitions

The class of so-called *partial recursive functions* is obtained from our prior definition of PR by closing under an operation similar to μR(→x,z) which is applied to functions rather than relations. In order to define this class, we first introduce the following conventions regarding *partial functions* which extends those given at the beginning of [Section 2][93]:

-   A function f:Nk→N is called *total* if f(→n) is defined for all →n∈Nk. Otherwise f(→x) is called *partial*.
    
-   We write f(→n)↓ to express that f(→x) is defined at →n and additionally f(→n)↓=m if f(→n) is defined at →n and equal to m. Otherwise we write f(→n)↑ to express that f(→x) is undefined at →n.
    
-   The *domain* of f(→n) is the set dom(f)={→n∈Nk:f(→n)↓}.
    
-   We write f(→x)≃g(→x) just in case for all →n∈N, either f(→n) and g(→n) are both undefined or are both defined and equal.
    

Suppose we are given a partial function f(x0,…,xk−1,y). We now introduce terms of the form μyf(x0,…,xk−1,y) defined as follows:

μyf(x0,…,xk−1,y)={zif z is such that f(x0,…,xk−1,z)=0 and ∀w<z(f(x0,…,x1,w)↓≠0)↑otherwise

In other words, μyf(→n,y) is equal to the least m such that f(→n,m)=0 provided that such an m exists and also that f(→n,i) is defined but not equal to 0 for all 0≤i<m. On the other hand, μyf(→n,y) is undefined just in case either there is no m such that f(→n,m)=0 or there is such a m but f(→n,i) is undefined for some i<m.

Since this definition determines μyf(→x,y) uniquely, (28) can also be regarded as defining a functional Mink which maps k+1-ary partial functions into k-ary partial functions. We now define the classes of functions PartREC and REC as follow:

**Definition 2.5:** The class of *partial recursive functions* PartREC (also known as the *μ-recursive functions*) is the smallest class of partial functions of type Nk→N containing the initial functions IPR={0,s,πik} and closed under the functionals

OpPartREC={Compij,PrimReck,Mink}.

We say that a function f:Nk→N is *partial recursive* if f∈PartREC. Additionally we say that f is *recursive* if f∈PartREC and f is total. The set of recursive functions will be denoted by REC.

Note that despite its name, *the class of partial recursive functions contains total functions*. In particular, a *recursive function* is, by definition, one which is *partial recursive while also being total*. We will see in [Section 3.2][94], there also exist partial recursive functions which are genuinely partial and total functions which are not recursive.

Note finally that if f(→x) is recursive it may be defined via some finite number of applications of composition, primitive recursion, and unbounded minimization in a manner which preserves the totality of intermediate functions in its definition. Thus although the specification of f(→x) may involve one or more applications of unbounded search, each search required to compute its value is guaranteed to terminate in a finite number of steps. It thus follows that all of functions in REC are computable by an algorithm (despite the fact that we will soon see that this class contains functions which are not primitive recursive). This constitutes part of the evidence for *Church’s Thesis*—i.e., the claim that REC coincides with the class of effectively computable functions—which was surveyed in [Section 1.6][95].

#### 2.2.2 The Normal Form Theorem

A question which naturally arises at this stage is whether more than one application of unbounded minimization is required to obtain all partial recursive functions. The fact that a single application is sufficient is a consequence of the *Kleene Normal Form Theorem*. In order to formulate this result, it is convenient to officially extend the application of the μ-operator to relations in the manner discussed at the beginning of this section—i.e.,

μyR(→x,y)={the least y such that R(→x,y) if such a y exists↑ otherwise

**Theorem 2.3:** For all k∈N there exists a k+2-ary primitive recursive relation Tk(e,→x,s)—the so-called *Kleene T-predicate*—and a primitive recursive function u(x) (not depending on k) satisfying the following condition: for all k-ary partial recursive functions f(→x) there exists e∈N such that for all →n∈Nk

f(→n)≃u(μsTk(e,→n,s))

Since μyR(→x,y)≃μyχ¬R(→x,y), it is easy to see that the class PartREC can also be obtained by closing the primitive recursive functions under the operation defined by (29). One consequence of [Theorem 2.3][96] is thus that it is indeed possible to define any k-ary partial recursive function f(→x) by a single application of unbounded search applied to the relation Tk(e,→x,s) for an appropriate choice of e. More generally, the Normal Form Theorem illustrates how any such function may be defined from a *single* relation Tk(e,→x,s) wherein the value of e serves as a description of the manner in which f(→x) is defined in terms of the basis functions IPR and the operations OpPartRec. Such an e is known as an *index* for f(→x). As we will see in [Section 3][97], the availability of such indices is one of the central features of the partial recursive functions which allows them to provide the basis for a general theory of computability and non-computability.

The complete details of the proof of [Theorem 2.3][98] are involved. But the basic idea may be summarized as follows:

1.  Every partial recursive function f(→x) is defined by a term τ over the language
    
    0,s,πij,Compjk,PrimReck,Mink
    
    in the manner which extends the notation scheme for partial recursive function introduced at the end of [Section 2.1.1][99]. By associating the atomic expressions of this language with natural numbers in the manner of Gödel numbering ⌜⋅⌝ described in [Section 1.3][100] and then employing the coding machinery described at the end of [Section 2.1.2][101], it is then possible to associate τ with a natural number ⌜τ⌝=e which can serve as an index for f(→x).
    
2.  The definition of Tk(e,→n,s) can now be constructed by formalizing the following decision algorithm:
    
    1.  on input e,→n,s construct a term τ defining f(→x) from e;
    2.  understanding s as a potential code for a sequence of intermediate computational steps similar to that exemplified by the calculation (17), check whether the result of carrying out the computation described by τ on input →n for len(s) steps corresponds to s;
    3.  if so, accept—i.e., Tk(e,→n,s) holds—and if not reject—i.e., ¬Tk(e,→n,s) holds.
3.  By performing an unbounded search over codes of computation sequences in this manner, we achieve the dual purposes of both determining if the computation described by τ on input →n halts after a finite number of steps and, if so, also finding a code s of a computation sequence which witnesses this fact. The function u(s) can then be defined by formalizing the operation which extracts the output of the computation from the last step (s)len(s)−1 of the sequence encoded by s. In the case that Tk(e,→n,s) holds, u(s) will thus correspond to the value f(→n). Since the foregoing steps require only performing bounded search and checking the local combinatorial properties of finite sequences, it can additionally be shown that Tk(e,→n,s) and u(x) are primitive recursive.
    

The techniques used in this proof can also be used to show that α(x,y), the universal k-ary primitive recursive evaluation function uk(i,→x), and the modified diagonal function δ(x) are all recursive (despite the fact that we have seen above that they are *not* primitive recursive). For instance note that the coding of definitions of k-ary partial recursive functions described above also allows us to uniformly enumerate all primitive recursive functions g0(→x),g1(→x),… by considering the codes of terms not containing Mink. We can define in this manner a primitive recursive function r(i) enumerating the indices for these functions such that we can obtain the universal function for k-ary primitive recursive function as uk(i,→x)=u(μsT1(r(i),→x,s))=gi(→x). But note that since gi(→x) is always defined, u1(i,→x) is not only partial recursive but also total, and hence recursive.

Taking into account the equivalences between models of computation summarized in [Section 1.6][102], it is also possible to formulate a version of [Theorem 2.3][103] for each of the models of computation mentioned there. For instance, in the case of the Turing Machine model T, the analogous version of the Normal Form Theorem can be used to show that there is a single [*universal Turing machine* (see entry on Turing machines)][104] U such that every partial recursive function f(→x) corresponds to that computed by U(e,→x) for some e∈N. Complete proofs of this sort were given by Turing (1937, sec. 6) for T, by Kleene (1936a, sec. 2) for the general recursive functions GR (see also Kleene 1952, sec. 58), by Shoenfield (1967, ch. 7.4) for the class FPA of functions representable in Peano Arithmetic, and by Cutland (1980, ch. 5) for the Unlimited Register Machine model U.

## 3. Computability Theory

Computability Theory is a subfield of contemporary mathematical logic devoted to the classification of functions and sets of natural numbers in terms of their absolute and relative computability and definability-theoretic properties. This subject is closely related in both origin and content to the study of recursive functions. This is reflected by the fact that computability theory was known as *recursive function theory* (or simply *recursion theory*) from the time of its inception in the 1930s until the late 1990s. It is also reflected in the formulation and proof of the so-called *Recursion Theorem* which provides a fundamental link between recursive definability and the sort of self-referential constructions which are at the core of many methods in computability theory (see [Section 3.4][105]).

For reasons discussed in [Section 1.7][106], contemporary expositions of computability theory are often presented in an abstract manner which seeks to minimize reference to the specific features of a model of computation such as the partial recursive functions. It is thus useful to stress the following modifications to the traditional terminology which has been employed in [Sections 1 and 2][107] and the more contemporary terminology which will be employed in this section:

-   The expressions ***computable function*** and ***partial computable function*** will be used instead of the traditional terms ***recursive function*** and ***partial recursive function*** as defined in [Section 2.2.1][108].
    
-   The expression ***computable set*** will be used instead of the traditional term ***recursive set***. Similarly, ***computably enumerable*** (or c.e.) ***set*** will be used instead of the traditional term ***recursively enumerable*** (or r.e.) ***set*** (see [Section 3.3][109]).
    

The other notational conventions introduced at the beginnings of [Section 2.1][110] and [Section 2.2][111] will be retained in this section.

### 3.1 Indexation, the *s*-*m*-*n* Theorem, and Universality

The first significant result in computability theory was Kleene’s (1936a) proof of the Normal Form Theorem which was presented in [Section 2.2.2][112]. As discussed there, the Normal Form Theorem can be understood as illustrating how it is possible to associate each k-ary partial computable function f(→x) with a natural number e known as its *index* such that f(→x)≃μs(Tk(e,→x,s)). Such an e can be thought of as a name for a computer program built up from the basis functions, composition, primitive recursion, and minimization by which the values f(→x) can be computed. This also leads to what is known as an *indexation* of k-ary partial computable functions

ϕk0(→x),ϕk1(→x),ϕk2(→x),…,ϕki(→x),…

where ϕki(→x)≃μsTk(i,→x,s). Such an enumeration provides a uniform means of listing off all partial computable functions in the order of their indices. It should be noted, however, that each partial computable function has infinitely many indices. For instance, given a function f:Nk→N computed by ϕe(→x), it is possible to define infinitely many extensionally coincident functions with distinct indices ϕe′(→x),ϕe″(→x),…—e.g., by “padding” the definition encoded by e with terms that successively add and then subtract m for each m∈N. As this yields a definition of an extensionally equivalent function, it thus follows that infinitely many of the ϕki(→x) will correspond to the same function in extension.

A result closely related to the Normal Form Theorem is the following which is conventionally known as the *s-m-n* Theorem:

**Theorem 3.1:** For all n,m∈N, there is a primitive recursive function smn(i,x0,…,xm−1) such that

ϕnsmn(i,x0,…,xm−1)(y0,…,yn−1)≃ϕn+mi(x0,…,xm−1,y0,…,yn−1)

Here the function smn(i,→x) should be thought of as acting on an index i for an n+m-ary partial computable function together with values →x for the first m of its arguments. This function returns an index for another partial computable function which computes the n-ary function determined by carrying out ϕn+mi with the first m of its arguments →x fixed but retaining the next n variables →y as inputs. Although the formulation of the *s-m-n* Theorem may at first appear technical, its use will be illustrated in the proof of [Rice’s Theorem (3.4)][113] and the [Recursion Theorem (3.5)][114] below.

Another consequence of the Normal Form Theorem is the following:

**Theorem 3.2:** For every k∈N, there is a k+1-ary partial computable function υk which is universal in the sense that for all k-ary partial computable functions f(→x), there is an i∈N such that υk(i,→x)≃f(→x).

This follows immediately from [Theorem 2.3][115] by taking υk(i,→x)=u(μsTk(i,→x,s)) where i is such that f(→x)≃ϕki(→x) in the enumeration of k-ary partial computable functions. As υk(i,→x) can be used to compute the values of all k-ary partial computable functions uniformly in their index, it is conventionally referred to as the k-ary *universal partial computable function*.

It is useful to observe that while we have just defined such a function for each k, it is also possible to define a binary function υ(i,x) which treats its second argument as a code for a finite sequence x0,…,xk−1 and then computes in the same manner as the k-ary universal function so that we have υ(i,⟨x0,…,xk−1⟩)≃υk(i,x0,…,kk−1). This provides a means of replacing the prior enumerations of k-ary partial computable functions with a single enumeration of unary functions

ϕ0(x),ϕ1(x),ϕ2(x),…,ϕi(x),…

where ϕi(⟨x0,…,xk−1⟩)≃υ(i,⟨x0,…,xk−1⟩)≃ϕki(x0,…,xk−1).

Together with [Theorem 2.3][116], [Theorem 3.1][117] and [Theorem 3.2][118] codify the basic properties of a model of computation which make it suitable for the development of a general theory of computability. In [Section 2][119] such a model has been defined in the form of the partial recursive functions. But as was discussed briefly at the end of [Section 2.2.2][120], versions of these results may also be obtained for the other models of computation discussed in [Section 1.6][121]. This licenses the freer usage of computer-based analogies and other appeals to Church’s Thesis employed in most contemporary treatments of computability theory which will also be judiciously employed in the remainder of this entry.

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

g(x)={0if h(x,x)↓=0↑otherwise

On the assumption that h(x,y) is computable, g(x) is partial computable since, e.g., it may be computed by a program which on input x computes h(x,x) and returns 0 just in case h(x,x)=0 and otherwise goes into an infinite loop. It hence follows that g(x)≃ϕj(x) for some j∈N. But now observe that one of the following two alternatives must hold: i) g(j)↓; or ii) g(j)↑. We may thus reason by cases as follows:

1.  Suppose that g(j)↓. Then h(j,j)=0 by definition of g(x). Since h(i,x) is the characteristic function of HP, this means ϕj(j)↑. But then since g(x)≃ϕj(x), g(j)↑, a contradiction.
    
2.  Suppose that g(j)↑. Then h(j,j)≠0 by definition of g(x). Since h(x,y) is the characteristic function of HP (and hence total), the only other possibility is that h(j,j)=1 which in turn implies that ϕj(j)↓. But then since g(x)≃ϕj(x), g(j)↓, a contradiction. □
    

h(x,y) thus provides an initial example of a mathematically well-defined total function which is not computable. Other non-computable functions can be defined by considering decision problems similar to HP. Some well-known examples are as follows:

K={i:ϕi(i)↓}Z={i:ϕi(n)↓=0 for all n∈N}TOT={i:ϕi(n)↓ for all n∈N}FIN={i:ϕi(n)↓ for at most finitely many distinctn∈N}={i:Wi is finite}

Suppose we let k(x),z(x),tot(x), and fin(x) be the characteristic functions of these sets. By making suitable modifications to the proof of [Theorem 3.3][126] it is possible to directly show the following:

**Proposition 3.1:** None of the functions k(x),z(x),tot(x), and fin(x) are computable.

For instance in the case of k(x), we may argue as follows:

1.  define a function g(x) which returns 0 if k(x)=0 and which is undefined otherwise;
2.  as before, if k(x) is assumed to be computable, then g(x) is partial computable and there is hence an index j such that g(x)≃ϕj(x);
3.  but now observe that k(j)=1 iff g(j)↑ iff ϕj(j)↑ iff k(j)=0.

As this is again a contradictory situation, we may conclude that k(x) is not computable.

Note that each of the sets I defined in (30) has the following property: if j∈I and ϕj(x)≃ϕk(x), then k∈I as well. Sets with this property are known as *index sets* as they collect together the indices of all partial computable functions which share a common “semantic” property—i.e., one which is completely determined by their graphs such as being coincident with the constant 0 function in the case of Z or being defined on all inputs in the case of TOT. An index set I is called *non-trivial* if I≠∅ or I≠N—i.e., it fails to either include or exclude all indices. It is easy to see that all of the sets defined in (30) are non-trivial index sets. The undecidability of these sets thus follows from the following more general result:

**Theorem 3.4** (Rice 1953): If I is a non-trivial index set, then I is undecidable.

*Proof:* Let I be a non-trivial index set and suppose for a contradiction that χI(x) is computable. Consider the everywhere undefined unary function u(x)—i.e., u(n)↑ for all n∈N. Since u(x) is partial computable, there is an index b such that ϕb(x)≃u(x). We may suppose without loss of generality that b∉I. (If it is the case that b∈I≠N, then we can switch the role of I with its complement ¯I in the following argument and obtain the same result). Since I≠∅, we can also choose an index a∈I and define a function as follows:

f(x,y)={ϕa(y)if k(x)=1   (i.e., if ϕx(x)↓)↑if k(x)=0   (i.e., if ϕx(x)↑)

Note that f(x,y) is partial computable since it is defined by cases in terms of ϕa(x) based on the value of ϕx(x). There is thus an index c such that f(x,y)≃ϕc(x,y). By applying the [*s-m-n* Theorem (3.1)][127], we thus have that ϕc(x,y)≃ϕs21(c,x)(y). But note that we now have the following sequences of implications:

k(x)=1⇒f(x,y)≃ϕa(y)⇒ϕs21(c,x)(y)≃ϕa(y)⇒s21(c,x)∈I

(by our choice of a∈I)

k(x)=0⇒f(x,y)≃ϕb(y)⇒ϕs21(c,x)(y)≃ϕb(y)⇒s21(c,x)∉I

(by our assumptions that b is an index for u(x)—the everywhere undefined function—and that b∉I).

It hence follows that the value of k(x) may be computed by applying the following algorithm:

1.  on input x, calculate the value of s21(c,x) (whose computability follows from the *s-m-n* Theorem);
2.  calculate the value of χI(s21(c,x)) (which may be accomplished since we have assumed that χI(x) is computable).

Either by invoking Church’s Thesis or by formalizing the prior algorithm as a partial recursive definition, it follows that k(x) is computable. But this contradicts [Proposition 3.1][128] which shows that k(x) is not computable. □

[Rice’s Theorem (3.4)][129] provides a means of showing that many decision problems of practical import are undecidable—e.g., of determining whether a program always returns an output or whether it correctly computes a given function (e.g., addition or multiplication). Its proof also shows that if I is a non-trivial index set, the problem of deciding x∈K can be “reduced” to that of deciding x∈I it the following sense: *if* we could effectively decide the latter, *then* we could also effectively decide the former by first calculating s21(c,x) and then checking if this value is in I. This method of showing undecidability will be formalized by the notion of a *many-one reduction* described in [Section 3.5][130] below.

### 3.3 Computable and Computably Enumerable Sets

A set A⊆N is said to be *computable* (or *recursive* according to the older terminology of [Section 2][131]) just in case its characteristic function is. More generally we have the following:

**Definition 3.1:** A relation R⊆Nk is *computable* just in case χR(→x) is computable.

This definition extends the definition of a primitive recursive relation given in [Section 2.1][132]—e.g., since sets like *PRIMES* and *DIV* are primitive recursive they are *ipso facto* computable. Via Church’s Thesis, the notion of a computable set thus also generalizes the accompanying heuristic about effective decidability—i.e., R is computable just in case there is an algorithm for deciding if R(→n) holds which always returns an answer after a finite (although potentially unbounded) number of steps. On the other hand, it follows from the observations recorded in [Section 3.2][133] that none of *HP*, *K*, *Z*, *TOT*, or *FIN* are computable sets.

A related definition is that of a *computably enumerable* (or *c.e.*) *set*—i.e., one whose members can be enumerated by an effective procedure. (In the older terminology of [Section 2][134] such a set is said to be *recursively enumerable* which is traditionally abbreviated *r.e.*) Officially we have the following:

**Definition 3.2:** A⊆N is *computably enumerable* (or c.e.) if A=∅ or A is the range of a computable function—i.e.,

A={m:ϕe(n)↓=m for some n∈N}

for some index e of a total computable function.

This definition can be extended to relations by viewing m as a code for a finite sequence in the obvious way—i.e., R⊆Nk is c.e. just in case there is a computable function ϕe(x) such that R(n0,…,nk) if and only if ϕe(n)=⟨n0,…,nk⟩ for some n∈N.

If A is computably enumerable, its members may thus be listed off as

A={ϕe(0),ϕe(1),ϕe(2),…}

possibly with repetitions—e.g., the constant function const17(x) enumerates the singleton set {17}, which is thereby c.e. It is easy to see that a computable set A is computably enumerable. For if A=∅, then A is c.e. by definition. And if A≠∅, we may choose a∈A and then define

f(x)={xif χA(x)=1aotherwise

In this case f(x) is computable and has A as its range.

In proving facts about computably enumerable sets, it is often convenient to employ one of several equivalent definitions:

**Proposition 3.2:** Suppose A⊆N. Then the following are equivalent:

1.  A is computably enumerable.
    
2.  A=∅ or A is the range of a primitive recursive function.
    
3.  A={n∈N:∃yR(n,y)} for a computable relation R.
    
4.  A is the domain of a partial computable function.
    

The proof of [Proposition 3.2][135] is largely a matter of unpacking definitions. For instance, to see that iv implies i, suppose that A=dom(ϕe)—i.e., A={n∈N:ϕe(n)↓}. If A=∅ it is automatically c.e. Otherwise, there is an element a∈A. We may now define

f(x)={(x)0if T1(e,(x)0,(x)1)aotherwise

f(x) thus treats its input as a pair ⟨n,s⟩ consisting of an input n to ϕe(x) and a computation sequence s as defined in the proof of the Normal Form Theorem ([2.3][136]). As x varies over N, it thus steps through all possible inputs (x)0 to ϕe and also all possible witnesses (x)1 to the fact that the computation of ϕe on (x)0 halts. It then returns (x)0 if (x)1 is such a witness to a halting computation and a otherwise. Thus the range of f(x) will correspond to that of ϕe(x). And as T1(e,x,s) is computable (and in fact primitive recursive) relation, it is easy to see that f(x) is a computable function with range A. This shows that A is c.e. as desired.

Part iv of [Proposition 3.2][137] also provides a convenient uniform notation for computably enumerable sets—i.e., if A=dom(ϕe) we denote A by We={n:ϕe(n)↓}. The sequence W0,W1,W2,… thus provides a uniform enumeration of c.e. sets relative to our prior enumeration of unary partial computable functions. This notation also aids the formulation of the following:

**Proposition 3.3:**

1.  The computably enumerable sets are effectively closed under union, intersection, and cross product—i.e., there are computable functions un(x,y), int(x,y) and cr(x,y) such that if A=Wi and B=Wj then
    
    A∪B=Wun(i,j),A∩B=Wint(i,j)
    
    and
    
    {⟨x,y⟩:x∈A & y∈B}=Wcr(i,j).
2.  The computable sets are additionally closed under complementation and relative complementation—i.e., if A and B are recursive, then so are ¯A and A−B.
    

The proofs of these facts are also straightforward upon appeal to Church’s Thesis. For instance, if dom(ϕi)=A and dom(ϕj)=B then un(i,j) can be taken to be an index for a program which simulates the computation of ϕi(n) and ϕj(n) in alternate stages and halts just in case one of these subcomputations halt. Note also that if A=Wi is computable, then χ¯A(x)=1∸χA(x) is also computable, from which it follows that ¯A is computable.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-21" id="ref-21">21</a>]</sup>

A related observation is the following:

**Proposition 3.4** (Post 1944): A is computable if and only if A and ¯A are both computably enumerable.

The left-to-right direction is subsumed under [Proposition 3.3][139]. For the right-to-left direction, suppose that A=dom(ϕi) and ¯A=dom(ϕj). Then to decide n∈A we can perform an unbounded search for a computation sequence s such that either T1(i,n,s) or T1(j,n,s), accepting in the first case and rejecting in the second. Since A∪¯A=N, the search must always terminate and since A∩¯A=∅, the conditions are exclusive. Thus by again appealing to Church’s Thesis, A is computable.

We have seen that the computable sets are contained in the computably enumerable sets. Two questions which arise at this stage are as follows:

1.  are there examples of sets which are computably enumerable but not computable?
2.  are there are examples of sets which are not computably enumerable?

A positive answer to both is provided by the following:

**Corollary 3.1:** Recall the set K={i:ϕi(i)↓}—i.e., the so called *Diagonal Halting Problem*. K is computably enumerable but not computable while ¯K is not computably enumerable.

K is clearly c.e. as it is the domain of μsT1(x,x,s). On the other hand, we have seen that the characteristic function of K—i.e., the function χK(x)=k(x) as defined in [Section 3.2][140]—is not computable. Thus K is indeed a computably enumerable set which is not computable. To see that ¯K is not c.e., observe that if it were, then K would be computable by [Proposition 3.4][141]. This in turn suggests a sense in which it is “harder” to decide membership in K than in any computable set. The hierarchies introduced in [Sections 3.5][142] and [Section 3.6][143] will provide a means of making such observations precise.

### 3.4 The Recursion Theorem

The result which is now most often referred to as *Kleene’s Recursion Theorem* can be used to unify a number of effective diagonal arguments similar to that underlying [Theorem 3.3][144] and has a wide range of applications both in computability theory and other areas of mathematical logic and computer science.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-22" id="ref-22">22</a>]</sup> Although its statement is straightforward, both its significance and the following proof become clearer upon considering subsequent applications.

**Theorem 3.5** (Kleene 1938): Suppose that f(x) is a total computable function. Then there is a number n∈N such that ϕn(y)≃ϕf(n)(y).

*Proof:* Consider the function g(x,y) defined as follows:

g(x,y)={ϕϕx(x)(y)if ϕx(x)↓↑otherwise

As it is evident that g(x,y) is partial computable, g(x,y)≃ϕe(x,y) for some e. It thus follows by the [*s-m-n* Theorem (3.1)][146] that ϕe(x,y)≃ϕs21(e,x)(y). Let b(x)=s21(e,x) and note that we then have ϕb(x)(y) is the same function as ϕϕx(x)(y) provided that ϕx(x) is defined. Note that b(x) is a total computable function and is defined independently of the given function f(x).

Next let k be an index for the composition of f(x) with b(x)—i.e., ϕk(x)≃f(b(x)). We now claim that n=b(k) is the number called for in the statement of the theorem. For first note that since b(x) and f(x) are both total, ϕk(x) is also total and thus ϕk(k) is defined. From this it follows that ϕb(k)(y)≃ϕϕk(k)(y). We now have the following sequence of functional identities:

ϕn(y)≃ϕb(k)(y)≃ϕϕk(k)(y)≃ϕf(b(k))(y)≃ϕf(n)(y)

□

The Recursion Theorem is sometimes also referred to as the *Fixed Point Theorem*. Note, however, that [Theorem 3.5][147] does not guarantee the existence of an extensional fixed point for the given function f(x)—i.e., a number n such that f(n)=n. (In fact it is evident that there are computable functions for which no such value exists—e.g., f(x)=x+1.) But suppose we view f(x) instead as a mapping on indices to partial computable functions or, more figuratively, as a means of transforming a *program* for computing a partial computable function into another program. On this interpretation, the theorem expresses that for every such computable transformation there is some program n such that the function ϕn(y) which it computes is the same as the function ϕf(n)(y) computed by its image f(n) under the transformation.

As it may at first appear such an n is defined in a circular manner, it is also *prima facie* unclear why such a program must exist. Indeed Soare (2016, 28–29) remarks that the foregoing proof of the Recursion Theorem is “very short but mysterious” and is “best visualized as a diagonal argument that fails”. In order to clarify both this comment and the proof, consider the matrix depicted in Figure 1 whose rows Ri enumerate not the values of partial computable functions but rather the functions themselves—i.e., the row Ri will contain the functions ϕϕi(0),ϕϕi(1),… with the understanding that if ϕi(j)↑, then ϕϕi(j) denotes the totally undefined function. (Such a depiction is originally due to Owings 1973.)

ϕϕ0(0)ϕϕ0(1)…ϕϕ0(i)…ϕϕ0(d)…ϕϕ0(hf(i))…ϕϕ1(0)ϕϕ1(1)…ϕϕ1(i)…ϕϕ1(d)…ϕϕ1(hf(i))…⋮⋱⋮ϕϕi(0)……ϕϕi(i)…ϕϕi(d)…ϕϕi(hf(i))…⋮⋱⋮ϕϕd(0)……ϕϕd(i)…ϕϕd(d)…ϕϕd(hf(i))…ϕϕd(hf(d))…⋮⋱↑ϕϕhf(i)(0)……ϕϕhf(i)(i)…ϕϕhf(i)(d)…ϕϕhf(i)(hf(i))…=⋮⋱↓ϕϕhf(d)(0)……ϕϕhf(d)(i)…ϕϕhf(d)(d)…ϕϕhf(d)(hf(i))…ϕϕhf(d)(hf(d))…⋮

Figure 1: The matrix of partial computable functions employed in the proof of the [Recursion Theorem (3.5)][148]

We may think of the function f(x) given in [Theorem 3.5][149] as inducing a transformation on the rows so that Ri is mapped to Rf(i). To this end, let hf(x) be an index to the total computable function which composes f with ϕx so that we have

ϕhf(x)(y)≃f(ϕx(y))

Next consider the diagonal of this matrix—i.e., D=ϕϕ0(0),ϕϕ1(1),… Since the indices to the functions which comprise D are given effectively, it must be the case that D itself corresponds to some row Rd—i.e.,

ϕϕd(i)(y)≃ϕϕi(i)(y) for all i∈N

But now consider the image of Rd under f—i.e., the row Rhf(d)=ϕϕhf(d)(0),ϕϕhf(d)(1),… It follows from (32) that we must have

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
    
    f(x,y)={0if x=y↑otherwise
    
    in [Corollary 3.2][154].)
    
3.  Consider a term τ corresponding to a “program” which determines the partial computable program with index ⌜τ⌝ (as described in [Section 2.2.2][155]). We say that such a program is *self-reproducing* if for all inputs x, the computation of τ on x outputs ⌜τ⌝. Since in order to construct τ it would seem that we need to know ⌜τ⌝ in advance, it might appear that self-reproducing programs need not exist. Note, however, that transposed back into our official terminology, the existence of such a program is equivalent to the existence of a number n such that ϕn(x)=n. And this is guaranteed by applying [Corollary 3.2][156] to the function f(x,y)=x.
    

For further discussions of the Recursion Theorem in regard to self-reference and more advanced applications in computability theory see, e.g., Cutland (1980, ch. 11), Rogers (1987, ch. 11), Odifreddi (1989, ch. II.2), and Y. Moschovakis (2010).

Before leaving the Recursion Theorem, it will finally be useful to reflect on how it bears on the general concept of recursive definability as discussed in [Sections 1 and 2][157]. Consider, for instance, a simple definition such as

h(0)=kh(y+1)=g(h(y))

In the case that f(y) and g(y) are primitive recursive, we have remarked that it is possible to show that there exists a unique function h(y) satisfying (35) by an external set-theoretic argument. But we may also consider the case in which g(y) is assumed to be computable relative to a model of computation M which differs from the partial recursive functions in that it does not natively support recursion as a mode of computation—e.g., the Turing Machine model T or Unlimited Register Machine model U. If we simply set down (35) as a definition in this case, we would have no *a priori* assurance that h(y) is computable relative to M even if g(x) is.

Upon examination, however, it is clear that the only features of a model of computation on which the proof of [Theorem 3.5][158] relies are the existence of an indexation for which a version of the [*s-m-n* Theorem (3.1)][159] is available. If M satisfies these conditions, the claim that h(y) is computable relative to M is equivalent to h(y)≃ϕn(y) where n is an index drawn from some suitable indexation of the M-computable functions. But since the *s-m-n* Theorem for M allows us to treat an index as a variable, we can also consider the function defined by

f(x,0)=kf(x,y+1)=g(ϕx(y))

Now note that the existence of an n such that f(n,y)≃ϕn(y) is again guaranteed by [Corollary 3.2][160]. This in turn yields

ϕn(0)=kϕn(y+1)=g(ϕn(y))

This illustrates how the existence of a computable function satisfying a recursive definition such as (35) follows from the Recursion Theorem even if we have not started out by characterizing a “computable function” as one defined “recursively” in the informal sense discussed in [Section 1][161]. And this in turn helps to explain why [Theorem 3.5][162] has come to be known as the *Recursion* Theorem.

### 3.5 Reducibilities and Degrees

A central topic in contemporary computability theory is the study of *relative computability*—i.e., if we *assume* that we are able to decide membership in a given set or compute a given function, which other sets or functions would we be able to decide or compute? This question may be studied using the notion of a *reduction* of one set A to another B which was introduced informally by Kolmogorov (1932) as a means of transforming a “solution” of A into a “solution” of B.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-23" id="ref-23">23</a>]</sup> Turing (1939) provided the first formal definition of a computational reduction in his study of ordinal logics. However, it was Post who first proposed to systematically study reducibility notions and their associated degree structures in his highly influential paper “Recursively enumerable sets of positive integers and their decision problems” (1944).

Therein Post explains the basic idea of a reduction and its significance as follows:

> Related to the question of solvability or unsolvability of problems is that of the reducibility or non-reducibility of one problem to another. Thus, if problem P1 has been reduced to problem P2, a solution of P2 immediately yields a solution of P1, while if P1 is proved to be unsolvable, P2 must also be unsolvable. For unsolvable problems the concept of reducibility leads to the concept of degree of unsolvability, two unsolvable problems being of the same *degree of unsolvability* if each is reducible to the other, one of lower degree of unsolvability than another if it is reducible to the other, but that other is not reducible to it, of incomparable degrees of unsolvability if neither is reducible to the other. A primary problem in the theory of recursively enumerable sets is the problem of determining the degrees of unsolvability of the unsolvable decision problems thereof. We shall early see that for such problems there is certainly a highest degree of unsolvability. Our whole development largely centers on the single question of whether there is, among these problems, a lower degree of unsolvability than that, or whether they are all of the same degree of unsolvability. (Post 1944, 289)

In order to appreciate this passage, it is again useful to think of a set A⊆N as being associated with the *problem* of deciding membership in A—e.g., given a natural number n, is n prime? (i.e., n∈PRIMES?) or is the nth partial computable function with input n defined? (i.e., n∈K?). But even given this correspondence, the assertion that a solution to a problem B “immediately yields” a solution to A may still be analyzed in a number of different ways. Two of the most important possibilities are as follows:

1.  Assuming that there is an algorithm for deciding questions of the form n∈B, then it is possible to specify an algorithm for deciding questions of the form n∈A.
    
2.  Assuming that we had access to an “*oracle*” capable of answering arbitrary questions of the form n∈B in a single step, then it is possible to specify an algorithm employing the oracle for deciding n∈A.
    

The formalization of these relations between problems leads to the notions of *many-one reducibility* and *Turing reducibility* which provide distinct but complementary analyses of the notions A *is no harder to solve than* B and also *the degree of unsolvability* (or *difficulty*) *of A is equal to that of B*.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-24" id="ref-24">24</a>]</sup> The latter notion came first historically and was introduced by Turing (1939) and in an equivalent form by Kleene (1943). However it was Post (1944) who both introduced the former notion and also initiated the general study of Turing reducibility. In fact the final sentence of the passage quoted above describes an important technical question about the Turing degrees which would shape the early development of computability theory (i.e., “Post’s problem” given as [Question 3.1][165] below).

#### 3.5.1 The many-one degrees

We have already seen an example of many-one reducibility in the proof of [Rice’s Theorem (3.4)][166]. In particular, the proof showed that the problem of deciding membership in K can be reduced to that of deciding membership in any non-trivial index set I in the following sense: for all n, if n∈K then s21(c,n)∈I. Thus if there were an algorithm for deciding membership in I, we would be able to decide whether n∈K by using it to test whether s21(c,n)∈I. The function s21(c,x) (whose computability is given by the *s-m-n* Theorem) is thus a so-called *many-one* reduction of K to I.

The formal definition generalizes this example as follows:

**Definition 3.3:** Given sets A,B⊆N, A is said to be *many-one* (or m-one) *reducible* to B if there is a computable function f(x) such that for all n∈N,

n∈A in and only if f(n)∈B

In this case we write A≤mB.

Using this notation, the foregoing example thus shows that K≤mI. These observations can generalized as follows:

**Proposition 3.5:** Suppose that A≤mB.

1.  If B is computable, then so is A.
    
2.  If B is computably enumerable, then so is A.
    

By contraposing [Proposition 3.5][167] it thus follows that in order to show that a set B is non-computable (or non-c.e.) it suffices to show that a known non-computable (or non-c.e.) set can be reduced to it. As an initial example, observe that the Diagonal Halting Problem K={i:ϕi(i)↓} is reducible to the Halting Problem HP={⟨i,n⟩:ϕi(n)↓} by the reduction f(x)=⟨x,x⟩—i.e., the computable pairing function of x with itself is a many-one reduction showing K≤mHP. Thus since HP is known to be non-computable, this gives another proof that K also is not computable.

Reducibility notions also typically come with an associated notion of what it means for a designated set to be *complete* relative to a class of sets—i.e., a set to which every set in the class may be reduced and which is itself a member of the class. As an initial example we have the following:

**Definition 3.4:** A set B is said to be *many-one* (or m-) *complete* for the computably enumerable sets just in case the following conditions hold:

1.  B is computable enumerable;
    
2.  For all computably enumerable sets A, A≤mB.
    

An obvious example of a complete c.e. set is HP. For since HP={⟨i,n⟩:∃sT1(i,n,s)} and T1(x,y,z) is a computable relation, it follows from [Proposition 3.2][168] that HP is c.e. And on the other hand, if A=Wi, then n∈A if and only if ⟨i,n⟩∈HP thus showing that Wi≤mHP.

It is, nonetheless, standard to take K rather than HP as the canonical complete c.e. Although it might at first seem that K contains “less computational information” than HP, it is not hard to see that K is also such that every c.e. set is m-reducible to it. For supposing that A=Wi, we may define a function

f(x,y)={1 if ϕi(x)↓ (i.e., x∈A)↑otherwise

As f(x,y) is clearly partial computable, the [*s-m-n* Theorem (3.1)][169] gives a total recursive function s21(i,x) such that f(x,y)≃ϕs21(i,x)(y). We then have

n∈A ⇔ ϕi(n)↓ ⇔ ϕs21(i,n)(s21(i,n))↓ ⇔ s21(i,n)∈K

These biconditionals hold because ϕi(n)↓ just in case ϕs21(i,n)(y) is const1(x) (i.e., the constant 1-function) as opposed to the everywhere undefined function just in case ϕs21(i,n)(s21(i,n))↓. But as the later condition is equivalent to s21(i,n)∈K, s21(i,x) is a many-one reduction showing A≤mK.

This illustrates a sense in which deciding membership in K can also be understood as universal for computably enumerable sets or, alternatively, that there is no c.e. set which is any “harder” to solve than K. Nonetheless, there are problems that are harder to solve than K in the sense that they could not be solved even if we possessed a decision algorithm for K. For instance, it will follow from results given below that while K is m-reducible to TOT, TOT is not m-reducible to K. This illustrates how m-reducibility can be used to study the *relative difficulty* of solving computational problems.

These considerations lead naturally to the notion of a *degree of difficulty*—another concept which can be made precise with respect to different reducibility notions. The version for many-one reducibility is given by the following definition:

**Definition 3.5:** If A and B are many-one reducible to each other—i.e., A≤mB and B≤mA—then we say that A and B are *many-one equivalent* and we write A≡mB.

It follows immediately from [Definition 3.3][170] that ≤m is reflexive. It is also clearly transitive. (For if f(x) and g(x) are computable functions which respectively serve as many-one reductions showing A≤mB and B≤mC, then their composition f(g(x)) is a many-one reduction showing A≤mC.) As it thus follows that ≡m is an equivalence relation, it also makes sense to define the following:

**Definition 3.6:** degm(A)—the *many-one* (or m-) *degree* of A—is the equivalence class of A with respect to ≡m—i.e., degm(A)={B⊆N:B≡mA}. We call an m-degree *computable* if it contains a computable set and *c.e*. if it contains a computably enumerable set.

The m-degree deg(A) of A collects together all sets which are many-one equivalent to it. It can thus be thought of as an abstract representation of the relative difficulty of deciding membership in A when this latter notion is in turn explicated in terms of m-reducibility. For instance, since our prior observations show that degm(HP)=degm(K), they are thus “equally difficult” c.e. degrees.

It is traditional to use boldface lower case Roman letters a,b,… to denote degrees (although it should be kept in mind that these are *sets of sets of natural numbers*). We next define an ordering on m-degrees as follows:

**Definition 3.7:** Let a and b be m-degrees. We then define

1.  a≤mb just in case there is a set A∈a and a set B∈b such that A≤mB.
    
2.  a<mb just in case a≤mb and a≠b.
    

It is easy to see that <m is a partial order on m-degrees—i.e., irreflexive, antisymmetric, and transitive. We accordingly introduce the structure Dm=⟨{degm(A):A⊆N},<m⟩ which is traditionally known as the *many-one* (or *m*-) *degrees*.

Together with the similar study of the Turing degrees (which will be defined in [Section 3.5.2][171]), investigating the structure of Dm has been a major focus of research in computability theory since the time of Post’s (1944) introduction of the many-one degrees. Some properties of this structure are as follows:

**Proposition 3.6:**

1.  The m-degrees are not closed under complementation—i.e., there exist sets A such that A≢m¯A and thus ¯A∉deg(A).
    
2.  0=dfdegm(∅)={∅} and n=dfdegm(N)={N} are distinct m-degrees both of which are (trivially) computable.
    
3.  There is exactly one computable m-degree 0m other than 0 and n—i.e., 0m=deg(A) for any computable set A≠∅,A≠N. Additionally, 0m is minimal in Dm in the sense that 0m≤ma for all degrees a other than 0 and n.
    
4.  If b is a c.e. degree and a≤mb, then a is also a c.e. degree.
    
5.  There is a *maximum* c.e. m-degree—i.e., degm(K)=df0′m—in the sense that a≤0′m for all c.e. degrees a.
    
6.  Any pair of m-degrees a,b have a *least upper bound* c—i.e., a≤mc and b≤mc and c is ≤m-less than any other upper bound of a and b. Since we have seen that ≤m is also a partial order, this implies that Dm is additionally an *upper semi-lattice*.
    
7.  There exists a c.e. degree a properly between 0m and a<0′m—i.e., 0m<a<0′m.
    

Post (1944) demonstrated part vii by showing that there exist so-called *simple sets*—i.e., sets A which are c.e. and such that ¯A is infinite but does not contain an infinite c.e. subset. It is easy to see that a simple set cannot be computable. But on the other hand, Post also showed that a simple set cannot be m-complete. And it thus follows that if A is simple a=dfdegm(A)≠0m but A≢mK and thus a<0′m. Suppose we now understand “degrees of unsolvability” in the passage quoted at the beginning of this section as corresponding to the c.e. m-degrees. It thus follows from part v of [Proposition 3.6][172] that 0′m is indeed a “highest” such degree and also from part vii that there is a lower but still “unsolvable” (i.e., non-computable) degree.

Although the other parts of [Proposition 3.6][173] have straightforward proofs, they provide some insight into the fact that Dm is itself a highly complex structure (see, e.g., Odifreddi 1999b, 1). Nonetheless the first two parts of this theorem are often taken to illustrate awkward features of the many-one degrees as an abstract representation of computational difficulty—i.e., the exceptional behavior of degm(∅) and degm(N) and the fact a set and its complement may inhabit different degrees (as is easy to see is exemplified by K and ¯K). It is partly in light of these features that the Turing degrees DT are the structure which are now most widely studied in computability theory. But as Post also alludes, it is relative to DT for which he was originally unable to demonstrate the existence of a c.e. set of an intermediate degree of unsolvability.

#### 3.5.2 The Turing degrees

The notion of *relative computability* mentioned at the beginning of this section is now standardly analyzed in terms of *computability in a set* A⊆N. Informally, we say that a function f(→x) is computable in A just in case there exists an algorithm which is effective in the traditional sense with the exception of the fact its computation may rely on computing one or more values χA(y). These values are in turn assumed to be available to the algorithm in a single step even though χA(y) may not itself be computable—e.g., if A=K.

This notion was originally introduced by Turing (1939) who described what he referred to as an *oracle* (or *o*-) *machine* variant of the standard Turing Machine model T. An o-machine is otherwise like a normal Turing machine but also possesses a read-only *oracle tape* (and corresponding read-only head) on which the characteristic function of a set A is assumed to be written at the beginning of its computation. The transitions of an o-machine are determined by its internal state together with the currently scanned symbols on both its read-write tape and the oracle tape, thus formalizing the idea that the machine may “consult the oracle” about the characteristic function of A one or more times during the course of its computation.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-25" id="ref-25">25</a>]</sup>

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

These observations in turn license the use of the expression *computable in A* to describe both a function f(→x) which is A-partial recursive and total and also a set B such that χB(x) is computable in A. We also use the expression *computably enumerable* (c.e.) *in A* to describe a set B which is the range of an A-partial recursive function and the notation WAe to denote the domain of ϕAe(x). It is then straightforward to see that many of our prior proofs about *non-computability* also carry over to the relativized setting—e.g., KA={i:ϕAi(i)↓} is an example of a set which is computably enumerable in A but not computable in A.

We may now state the definition of *Turing reducibility* as follows:

**Definition 3.9:** Given sets A,B⊆N, A is said to be *Turing* (or T-) *reducible* to B just in case A is computable in B. In this case we write A≤TB.

It is a consequence of this definition that A≤TB just in case χA(x) coincides with the (total) B-computable function given by ϕBe(x) for some index e. For instance if we adopt Turing’s characterization of relative computability, we may think of e as describing a program for a machine which can consult B as an oracle. In this case, A≤TB means that it is possible to decide if n∈A by carrying out the program described by e on the input n which may in turn require performing queries to the oracle B during the course of its computation.

We may also define a notion of completeness with respect to ≤T as follows:

**Definition 3.10:** We say that B is *Turing complete* if B is c.e. and all c.e. sets A are such that A≤TB.

It is easy to see that A≤mB implies A≤TB. (For if f(x) is a m-reduction of A to B, then consider the program which first computes f(n) and then, using B an as oracle, checks if f(n)∈B, outputting 1 if so and 0 if not.) It thus follows that K is also Turing complete—i.e., it embodies the maximum “degree of unsolvability” among the the c.e. sets when this notion is understood in terms of Turing reducibility as well as many-one reducibility.

Such observations can be made precise by first defining the notion of Turing equivalence:

**Definition 3.11:** If A and B are Turing reducible to each other—i.e., A≤TB and B≤TA—then we say that A and B are *Turing equivalent* and we write A≡TB.

As it is again easy to see that ≡T is an equivalence relation, we may also define the notion of *Turing degree* as follows:

**Definition 3.12:** degT(A)—the *Turing degree* of A—is the equivalence class of A with respect to ≡T—i.e., degT(A)={B⊆N:B≡TA}.

We can now define an ordering on Turing degrees as follows:

**Definition 3.13:** Let a and b be Turing degrees. We then define

1.  a≤Tb just in case there is a set A∈a and a set B∈b such that A≤TB.
    
2.  a<Tb just in case a≤Tb and a≠b.
    

As with the m-degrees, we say that a is a *computable Turing degree* if it contains a computable set and a *computably enumerable* (c.e.) *degree* if it contains a c.e. set. If we consider the structure

DT=⟨{degT(A):A⊆N},≤T⟩

—which is known as the *Turing degrees*—it is again easy to see that ≤T is a partial order. Some observations which illustrate the relationship between DT and the many-one degrees Dm are as follows:

**Theorem 3.7:**

1.  There is exactly one computable Turing degree denoted by 0T=degT(∅) (which is often written 0 when there is no possibility of ambiguity with the m-degrees). 0T consists of all of the computable sets and is the unique minimum Turing degree.
    
2.  For all sets A, and A≡T¯A and thus also degT(A)=degT(¯A).
    
3.  degT(K) is the maximum amongst all c.e. Turing degrees.
    
4.  For any sets A,B, degm(A)⊆degT(A) and if
    
    degm(A)≤mdegm(B),
    
    then
    
    degT(A)≤TdegT(B).

Since ∅ and N are both (trivially) computable sets, by part i) we have degT(∅)=degT(N)=0T, unlike the m-degrees. And also unlike the m-degrees we have by part ii that degT(A)=degT(¯A). (For if we can decide B via an algorithm which uses A an as oracle, then we can also decide it using ¯A as an oracle by simply swapping the responses obtained in our former algorithm.)

The structures of both DT and the c.e. degrees

ET=⟨{degT(A):A is c.e.},≤T⟩

have been extensively investigated since the 1950s. One of their most basic properties may be considered by first defining the operation of sets

A⊕B={2n:n∈A}∪{2n+1:n∈B}.

A⊕B is called the *effective join* of A and B as it encodes the “information” contained in A on the even members of A⊕B and that contained B on its odd members. A⊕B is c.e. if both A and B are. Suppose we also define the operation

degT(A)∨degT(B)=dfdeg(A⊕B)

on the degrees a=degT(A) and b=degT(B). Then it is not difficult to see that a∨b is the *least upper bound* of a and b with respect to the structure DT. Like the m-degrees, DT and ET both form an *upper semi-lattice*—i.e., a partial order in which least upper bounds always exist.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-26" id="ref-26">26</a>]</sup>

Given A⊆N, we may also consider KA={n:ϕAn(n)↓}—i.e., the set considered above which corresponds to the Diagonal Halting Problem relativized to the oracle A. KA is referred to as the *jump* of A for which we also write A′. This notation is also used to denote an operation on Turing degrees by setting a′=degT(A′) for some representative A∈a. The following collects together several facts about the jump operation on both sets and degrees:

**Proposition 3.7:** For any set A,B⊆N with degT(A)=a and degT(B)=b:

1.  If A is computable, then KA≡TK.
    
2.  A′ is c.e. in A but not computable in A.
    
3.  If A≤TB, then A′≤TB′ and if A≡TB, then A′≡TB′.
    
4.  a<Ta′
    
5.  If a≤Tb, then a′≤Tb′.
    
6.  0′≤Ta′
    
7.  If B is c.e. in A, then b≤Ta′.
    

Part ii of [Proposition 3.7][181] records the fact that the basic result that K is c.e. but not computable holds for computability relativized to any set A. From this it follows that A<TA′ and thus also that the result of iterating the jump operation on any set A yields a sequence

A(0)=A,A(1)=(A(0))′=A′,A(2)=(A(1))′=A″,⋮A(i+1)=(A(i))′,⋮

for which A(0)<TA(1)<TA(2)<T…. As benchmarks in the Turing degrees we also define the sets

∅0=∅,∅′=K,∅″=K′,⋮∅(i+1)=K(i)′,⋮

and the degrees 0(n)=degT(∅(n)). Note that the latter correspond to a linearly ordered sequence

0<T0′<T0″<T…<T0(n)<T…

As depicted in Figure 2, it is possible to use this sequence to classify many of the problems defined in [Section 3.2][182]:

1.  0=degT(∅)={A:A is computable}
    
2.  0′=degT(K)=degT(HP)
    
3.  0″=degT(TOT)=degT(FIN)
    

Such classifications illustrate how the position of a set within DT can be understood as a measure of how far away it is from being computable—i.e., of its *degree of unsolvability* or *difficulty*. However unlike other conventional measurement scales, the structure of DT is neither simple nor is it always straightforward to discern. Some evidence to this effect was provided by the fact that the answer to the following question was posed but left unanswered by Post (1944):<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-27" id="ref-27">27</a>]</sup>

**Question 3.1** (*Post’s Problem*): Is there a c.e. degree a such that 0<Ta<T0′?

Post’s problem was eventually answered in the positive independently by Friedberg (1957) and Muchnik (1956) who showed the following:

**Theorem 3.8:** There are c.e. sets A and B such that A≰TB and B≰TA. Thus if a=degT(A) and b=degT(B), then a≰Tb and b≰Ta and hence also 0<Ta<T0′ and 0<Tb<T0′.

The proof of [Friedberg-Muchnik Theorem (3.8)][184] required the development of a new technique known as the *priority method* (or also as the *injury method*) which has become a central tool in the subsequent development of computability theory. The method provides a means of constructing a c.e. set A with a certain property P which may be described as follows:

1.  the desired properties of A are divided into an infinite list of *requirements* R0,R1,R2,… such that if all of the Ri are satisfied, then A will satisfy P;
2.  the requirements are then associated with *priorities* corresponding to an ordering in which their satisfaction is to be preserved by the construction—e.g., R0 might have the highest (or “most important”) priority, R1 the second highest priority, …;
3.  A is then constructed in stages A0,A1,A2,…,As,… with each stage s attempting to satisfy the highest priority requirement Rj which is currently unsatisfied, either by adding numbers to the current approximation As of A or by prohibiting other numbers from entering At at a later stage t>s;
4.  it may happen that by satisfying some requirement Ri at stage s the process causes another requirement Rj to become unsatisfied (i.e., stage s *injures* Rj);
5.  in this case, the priority ordering is consulted in order to determine what action to take.

In the case of [Theorem 3.8][185], this technique is used to simultaneously construct the two c.e. sets A and B of degree intermediate between 0 and 0′ by alternating between the requirements R2i which entail that A≠{n:ϕBi(n)↓=1} at even stages to ensure A≰TB and requirements R2i+1 which entail that B≠{n:ϕAi(n)↓=1} at odd stages so as to ensure B≰TA.

Sophisticated application of the priority method have been employed in computability theory from the 1960s onward to investigate the structure of DT and ET.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-28" id="ref-28">28</a>]</sup> Some illustrative results which can be obtained either in this manner or more elementary techniques are as follows:

1.  There are continuum (i.e., 2ℵ0) many distinct Turing degrees. In particular, although for a given degree a the set of b such that b≤Ta is countable, the set of b such that a<Tb is uncountable (Kleene & Post 1954).
    
2.  For every degree a≢T0, there exists a degree b which is *incomparable* to a—i.e., b≰Ta and a≰Tb. Moreover, there is a set of 2ℵ0 pairwise incompatible degrees (Kleene & Post 1954).
    
3.  There are *minimal degrees* m—i.e., degrees for which there is no a such that 0<Ta<Tm (Sacks 1963b). Thus in general <T is *not* a dense order. (But by fact vii below, there are not minimal c.e. degrees.)
    
4.  There are pairs of degrees a and b which do not possess a greatest lower bound. Thus although DT is an upper semi-lattice, it is not a lattice (Kleene & Post 1954). The same is true of ET (Lachlan 1966).
    
5.  Every countable partially ordered set can be embedded into DT (Thomason 1971). However this is *not* true of ET into which there are finite non-distributive lattices which cannot be embedded (Lachlan & Soare 1980).
    
6.  There is a non-c.e. degree a<T0′ (Shoenfield 1960).
    
7.  For any c.e. degrees a<Tb, there is a c.e. degree c such that a<Tc<Tb (Sacks 1964). Thus unlike the Turing degrees in general, the c.e. degrees *are* densely ordered.
    
8.  For any c.e. degree a>T0, there are incomparable c.e. degrees b,c<Ta such that a=b∪c (Sacks 1963b).
    
9.  Let Th(DT) be the first-order theory of the structure DT in the language with the with ≡T and ≤T. Not only is Th(DT) undecidable (Lachlan 1968), it is fact many-one equivalent to *true second-order arithmetic* (Simpson 1977).
    
10.  As is easily shown to be true of the join operation a∨b, the jump operation a′=b is definable in DT in the language with ≡T and ≤T (Shore & Slaman 1999).
    

These properties attest to the complexity of DT as a mathematical structure. A related question is whether DT is *rigid* in the following sense:

**Question 3.2:** Does there exist a *non-trivial automorphism* of DT—i.e., a mapping π:DT→DT which preserves ≤T and is not the identity?

A negative answer to this question would show that the relation of degT(A) to other degrees uniquely determines the degree of unsolvability of A relative to DT. Recent work has pointed in this direction (see, e.g., Slaman 2008). Nonetheless, at the time of the 2020 update to this entry, [Question 3.2][187] remains a significant open problem in computability theory whose origins can be traced back to the original foundational work of Turing, Post, and Kleene surveyed above.

### 3.6 The Arithmetical and Analytical Hierarchies

The many-one degrees Dm and the Turing degrees DT are sometimes referred to as *hierarchies* in the sense that they determine an ordering on P(N)—i.e., the set of subsets of the natural numbers—in terms of relative computability. In a series of papers from the 1940s and 1950s, Kleene (initiating in 1943) and Mostowski (initiating in 1947) realized that it was also possible to impose another sort of ordering on P(N) in terms of the logical complexity of the simplest predicate which defines a set A⊆N in the languages of first- or second-order arithmetic. This idea leads to what are known as the *arithmetical* and *analytical hierarchies*, both of which can be understood as classifying sets in terms of their *definitional* (or *descriptive*) complexity. As we will see, the resulting classifications are related to those determined relative to DT in terms of relative computability. They are also similar in form to other definability hierarchies studied in [computational complexity theory][188] (e.g., the *polynomial hierarchy*) and [descriptive set theory][189] (e.g., the *Borel* and *projective hierarchies*).

#### 3.6.1 The arithmetical hierarchy

Recall that according to the definitions given in [Section 3.3][190], a *relation* R⊆Nk is said to be *computable* just in case its characteristic function χR(→x) is a computable function and *computably enumerable* just in case it is the range of a computable function. In order to introduce the arithmetical hierarchy, it is useful to employ an alternative characterization of computable and computably enumerable relations in the form of a semantic analog to the proof-theoretic notion of *arithmetical representability* discussed in [Section 1.3][191].

Recall that the *language of first-order arithmetic* La contains the primitive symbols {<,′,+,×,0} respectively intended to denote the less than relation, successor, addition, and multiplication functions on the natural numbers as well as the first natural number 0. A *first-order arithmetical formula* is one built up from these expressions using variables, propositional connectives, and the first-order quantifiers ∀x,∃x where the variables are intended to range over the natural numbers N. Recall also that the *standard model of first-order arithmetic* is the structure N=⟨N,0,<,s,+,×⟩ in which the symbols of La receive their intended interpretations. Finally we say that an La-formula φ(→x) *defines* a relation R⊆Nk just in case R={⟨n1,…,nk⟩:N⊨φ(n1,…,nk)}.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-29" id="ref-29">29</a>]</sup> For instance x<y∨x=y defines the less-than-or-equal relation ≤, ∃y(y+y=x) defines the even numbers, and

∀y∀z(y×z=x→y=s(0)∨y=x)

defines the prime numbers.

**Definition 3.14:** A formula φ(→x) of La is said to be in the class Δ00 if it contains only *bounded first-order quantifiers*—i.e., those of the form ∃x(x<t∧…) and ∀x(x<t→…) for t an La-term not containing x. A formula is said to be in the class Σ01 if it is of the form ∃→yφ(→x,→y) for φ(→x,→y)∈Δ00 and to be in the class Π01 if it is of the form ∀→yφ(→x,→y) for φ(→x,→y)∈Δ00. Finally, a formula φ(→x) is said to be in the class Δ01 if it is semantically equivalent to both a Σ01-formula ψ(→x) and a Π01-formula χ(→x)—i.e., N⊨φ(→n) iff N⊨ψ(→n) iff N⊨χ(→n) for all →n∈Nk.

It is standard to extend this syntactic classification of formulas in terms of quantifier complexity to sets and relations on the natural numbers which can be defined by a formula in a given class. Thus, for instance, x<y∨x=y is a Δ00-formula and the relation ≤ on N×N is accordingly said to be Δ00. On the other hand, while ∃y(y+y=x) is a Σ01-formula, the set of even numbers is also defined by ∃y<x(x=0∨y+y=x). Thus this set is also classified as Δ00 in virtue of the existence of this latter definition which is simpler in the sense measured by the arithmetical hierarchy.

The first step in relating such classifications to computability-theoretic notions is provided by the following:

**Proposition 3.8:**

1.  A relation R⊆Nk is computably enumerable if and only if there is a Σ01-formula which defines R(→x).
    
2.  A relation R⊆Nk is computable if and only if there is a Δ01-formula which defines R(→x).
    

[Proposition 3.8][193] may be proved by directly showing that for each partial recursive function ϕe(→x) it is possible to construct a corresponding La-formula φ(→x) whose logical structure mimics the steps in the definition of the former. This can be achieved by formalizing primitive recursion using an arithmetically definable coding of finite sequences and expressing minimization using an unbounded existential quantifier (see, e.g., Kaye 1991, ch. 3). But it is also possible to obtain [Proposition 3.8][194] in a uniform manner by showing that there is a so-called *universal formula* for Σ01. In order specify such a formula, first note that it is possible to effectively enumerate all Δ00-formulas with k+1 free variables as ψk+10(x,→y),ψk+11(x,→y),… and then define a corresponding enumeration of Σ01-formulas as φk0(→y)=∃xψ0(x,→y), φk1(→y)=∃xψ1(x,→y),…. We then have the following:

**Theorem 3.9** (Kleene 1943): For all k, there exists a Σ01-formula σk,1(x,→y) such that for all Σ01-formulas with k-free variables φke(→y), the following biconditional

σk,1(e,→m)↔φke(→m)

holds in the standard model N for all →m∈Nk.

[Theorem 3.9][195] can be demonstrated by first observing that the truth of a Σ01-formula φke(→x) is equivalent to N⊨ψke(n,→m) for some n∈N. Next note that the sequence of observations recorded in [Section 2.1.2][196] suffices to show that all Δ00-definable relations are primitive recursive. We may thus consider an algorithm which on input e,→m uses e to construct ψke(x,→y) and then performs an unbounded search for an n such that ψke(n,→m) holds. By an appeal to Church’s Thesis (which can, of course, be replaced by an explicit construction) there is a computable function f(e) for which we have the following:

N⊨φke(→m) if and only if μs(Tk(f(e),→m,s))↓

In order to construct the formula σk,1(e,→y) promised by [Theorem 3.9][197], observe that standard techniques from the arithmetization of syntax allow us to obtain a Δ01-formula τk(x,→y,z) which defines the Kleene T-predicate Tk(x,→y,z) introduced in [Section 2.2.2][198]. We may finally define σk,1(e,→y)=∃zτk(f(e),→y,z). The first part of [Proposition 3.8][199] now follows by letting e be such that dom(ϕke(→x))=R and then taking σk,1(e0,→x)∈Σ01 where e0 is such that f(e0)=e. This is often formulated as what is known as the *Enumeration Theorem* which can be compared to [Theorem 3.2][200]:

**Proposition 3.9:** A relation R⊆Nk is computable enumerable if and only if there is a number e (known as a *c.e. index* for R) such that R is defined by ∃zτk(e,→y,z).

The second part of [Proposition 3.8][201] follows by observing that if R is recursive then both R and ¯R are c.e. Thus if e is a c.e. index for R, then ¯R is defined by ¬∃zτk(e,→x,z) which is equivalent to a Π01-formula since τk(x,→y,z)∈Δ01.

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

for all φ(→x)∈Σ0n and →m∈Nk (and where we have also defined our Gödel numbering to agree with the indexation of Σ0n-formulas introduced above). Now consider the Π0n-formula λ(x)=¬σ2,n(x,x)∈Π0n and let A be the set defined by λ(x). A standard diagonal argument shows that A cannot be Σ0n-definable and also that if ⌜σ2,n(x,x)⌝=l in the enumeration of Σ0n-formulas then ¬σ2,n(l,l) is a Π0n-formula which cannot be provably equivalent to a Σ0k-formula (see, e.g., Kaye 1991: ch. 9.3). Thus as Kleene (1943, 64) observed, part of the significance of the Hierarchy Theorem is that it illustrates how the [Liar Paradox][205] may be formalized to yield a stratified form of Tarski’s Theorem on the undefinability of truth (see the entry on [self-reference][206]).

We may also define a notion of completeness with respect to the levels of the arithmetical hierarchy as follows: A is Σ0n-*complete* if A is Σ0n-definable and for all Σ0n-definable B, we have B≤mA (and similarly for Π0n-*complete*). It is not hard to show that in addition to being many-one complete, K is also Σ01-complete. Similarly ¯K is Π01-complete, INF is Σ02-complete, and TOT is Π02-complete. These observations can be subsumed under a more general result which relates the arithmetical hierarchy to the Turing degrees and from which [Theorem 3.10][207] can also be obtained as a corollary.

**Theorem 3.11** (Post 1944):

1.  A is Σ0n+1-definable iff A is computably enumerable in some Π0n-definable set iff A is computably enumerable in some Σn-definable set.
    
2.  ∅(n) is Σ0n-complete for all n>0.
    
3.  B is Σ0n+1-definable if and only if B is computably enumerable in ∅(n).
    
4.  B is Δ0n+1-definable if and only if B≤T∅(n).
    

The various parts of [Theorem 3.11][208] follow from prior definitions together with Propositions [3.2][209] and [3.7][210]. Note in particular that it follows from parts ii and iv of [Theorem 3.11][211] together with part vii of [Proposition 3.7][212] that ∅(n) is an example of a set in the class Σ0n−Π0n from which it also follows that ¯∅(n)∈Π0n−Σ0n. This observation in turn strengthens the Hierarchy Theorem ([3.10][213]) by showing that Δ0n⊊Σ0n and Δ0n⊊Π0n as depicted in Figure 3.

Part iv of [Theorem 3.11][214] can also be understood as generalizing [Proposition 3.4][215] (i.e., Post’s Theorem). In particular, it characterizes the Δ0n+1-definable sets as those sets B such that both B and ¯B are computably enumerable in some Σ0n-complete set such as ∅(n). Restricting to the case n=1, this observation can also be used to provide an independent computational characterization of the Δ02-definable sets, extending those given for the Σ01-definable and Δ01-definable sets by [Proposition 3.8][216].

**Definition 3.16:** A set A is said to be *limit computable* if there is a computable sequence of finite sets {As:s∈N} such that

n∈A if and only if limsAs(n)=1

where limsAs(n)=1 means that limsχAs(n) exists and is equal to 1.

If A is c.e., then it is clear that A is limit computable. For if A is the range of a computable function ϕe(x), then we may take As to be {ϕe(0),…,ϕe(s)} in which case A0⊆A1⊆A2⊆… In the general case of limit computability, the sequence of sets {As:s∈N} may be thought of as an approximation of A which need not grow monotonically in this way but can rather both grow and shrink as long as there is always a stage s such that for all s≤t, n∈At if n∈A and n∉At if n∉A. Following Putnam (1965), a limit computable set can also thus also be described as a so-called *trial-and-error predicate*—i.e., one for which membership can be determined by following a guessing procedure which eventually converges to the correct answer to the questions of the form n∈A?

The following is traditionally referred to as *The Limit Lemma*:

**Theorem 3.12** (Shoenfield 1959): The following are equivalent:

1.  A is limit computable.
    
2.  A≤T∅′
    

We have seen that part iv of [Proposition 3.11][217] characterizes the sets Turing reducible to ∅′ as the Δ02-definable sets. [Theorem 3.12][218] thus extends the characterizations of the computable (i.e., Δ01-definable) and computably enumerable (i.e., Σ01-definable) sets given in [Proposition 3.8][219] by demonstrating the coincidence of the Δ02-definable sets and those which are limit computable.

#### 3.6.2 The analytical hierarchy

Kleene introduced what is now known as the *analytical hierarchy* in a series of papers (1955a,b,c) which built directly on his introduction of the arithmetical hierarchy in (1943). His proximal motivation was to provide a definability-theoretic characterization of the so-called *hyperarithmetical sets*—i.e., those which are computable from transfinite iterates of the Turing jump through the constructive ordinals. On the other hand, Mostowski (1947) had already noticed similarities between the arithmetical hierarchy of sets of natural numbers and results about hierarchies of *point sets* studied in descriptive set theory—i.e., sets of elements of *Polish spaces* (complete, separable metrizable spaces such as the real numbers, Cantor space, or Baire space)—which have their origins in the work of Borel, Lebesgue, Lusin, and Suslin in the early twentieth century. Beginning in his PhD thesis under Kleene, Addison (1954) refined Mostowski’s comparisons by showing that Kleene’s initial work could also be used to provide effective versions of several classical results in this tradition. We present here the fundamental definitions regarding the analytical hierarchy together with some of some results illustrating how it is connected it to these other developments.

**Definition 3.17:** The *language L2a of second-order arithmetic* extends the language La of first-order arithmetic with the binary relation symbol ∈, together with *set variables* X,Y,Z,… and set quantifiers ∃X and ∀Y. The standard model of L2a is the structure ⟨N,P(N),0,<,s,+,×,∈⟩. The intended range of the set quantifiers is thus P(N) (i.e. the power set of N) while the intended interpretation of x∈X is that the number x∈N is a member of the set X where X∈P(N).

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

*True Arithmetic* (TA) corresponds to the set of Gödel numbers of first-order arithmetical sentences true in the standard model of La—i.e., TA={⌜φ⌝:φ∈La ∧ N⊨φ}. Prior to the definition of the analytical hierarchy itself, Hilbert & Bernays had already showed the following:

**Theorem 3.14** (Hilbert and Bernays 1939, §5.2e): TA is implicitly definable in L2a.

It is then not difficult to show the following:

**Proposition 3.10** (Spector 1955): If A is implicitly definable, then A is Δ11-definable in L2a.

It thus follows that TA is Δ11-definable. On the other hand, it follows from Tarski’s Theorem on the undefinability of truth that TA is not arithmetically definable— i.e. TA∉Σ0n∪Π0n for any n∈N. This in turn shows that the analytical sets properly extend the arithmetical ones.

The class of Δ11-definable subsets of N is also related to Kleene’s original study of the class of hyperarithmetical sets, customarily denoted HYP. The definition of HYP depends on that of a system of constructive ordinal notations known as O=⟨O,<O⟩ which Kleene had introduced in (1938). (It was also in the context of defining O in which he proved the [Recursion Theorem 3.5][220]—see Rogers 1987, ch. 11.7 and Y. Moschovakis 2010.) HYP can be informally characterized as the class of sets of natural numbers A such that A≤T∅(α) where α is an ordinal which receives a notation e∈O—i.e., A∈HYP just in case it is computable from a transfinite iteration the of Turing jump up to the first non-recursive ordinal ωck1.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-30" id="ref-30">30</a>]</sup> Kleene’s original result was as follows:<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-31" id="ref-31">31</a>]</sup>

**Theorem 3.15** (Kleene 1955b): A set A⊆N is Δ11-definable if and only if A∈HYP.

The next step up the analytical hierarchy involves the characterization of the Π11-definable sets. S. Kleene (1955a) originally established his normal form theorem for L2a-formulas using a variant of the language of second-order arithmetic which contains *function quantifiers* f,g,h,… which are intended to range over N→N instead of set quantifiers intended to range over P(N) (Rogers 1987, ch. 16.2). In this setting, it is possible to show the following:

**Proposition 3.11:** A∈Π11 if and only if there is a computable (i.e., Δ01-definable) relation R(x,f) such that

x∈A if and only if ∀f∃yR(x,¯f(y))

where ¯f(y) denotes ⟨f(0),…,f(y−1)⟩.

For each such relation, we may also define a computable tree Trx consisting of the finite sequences σ∈N<N such that for all proper initial subsequences τ⊂σ, ¬R(x,τ) holds. A leaf node in this tree thus corresponds to the first place for which R holds. An infinite path in Trx thus corresponds to a function f such that ∀y¬R(x,¯f(y)), which is in turn a witness to x∉A. It thus follows that x∈A if and only if Trx is well-founded. Since it is straightforward to effectively enumerate computable trees, it is also not difficult to show the following:

**Proposition 3.12:** The set T of indices to well-founded computable trees is m-complete for the Π11-definable sets—i.e., T∈Π11 and for all A∈Π11, A≤mT.

Recalling that O denotes the set of natural numbers which are notations for ordinals in Kleene’s O, a related result is the following:

**Proposition 3.13:** O is Π11-complete.

It can then be shown using the [Hierarchy Theorem 3.13][223] that neither T nor O is Σ11-definable. These results provide the basis for an inductive analysis of the structure of Δ11- and Π11-definable sets in terms of constructive ordinals which builds on [Theorem 3.15][224] (see Rogers 1987, ch. 16.4).

The foregoing results all pertain to the use of L2a-formulas to describe sets of natural numbers. The initial steps connecting the analytical hierarchy to classical descriptive set theory are mediated by considering formulas φ(X) which define subclasses X⊆P(N). In this case, A∈X may be identified with the graph of its characteristic function χA(x)—i.e., as an infinite sequence whose nth element is 1 if n∈A and 0 if n∉A. In this way a formula ψ(X) with a single free set variable may be understood as defining a subset of the *Cantor space* C=2N consisting of all infinite 0-1 sequences and a formula ψ(→X) with X1,…,Xk free as defining a subclass of 2N×…×2N.

In descriptive set theory, a parallel sequence of topological definitions of subclasses of C is given in the context of defining the Borel sets and projective sets. First recall that one means of defining a topology on C is to take as basic open sets all sets of functions f:N→{0,1} such that ¯f(k)=σ for some σ∈2<N and k∈N. The *boldface Borel Hierarchy* on C is now given by defining Σ01 to be the collection of all open sets of C, Π0n (for n≥1) to be the set of all complements ¯A of sets A∈Σ01, and Σ0n+1 to be the set of all countable unions ⋃i∈NAi where Ai∈Π0n. (Thus Π01 denotes the set of closed sets, Σ02 denotes the so-called Fσ sets, Π02 the Gδ sets, etc.) The union of these classes corresponds to the *boldface Borel sets* B which may also be characterized as the smallest class of sets containing the open sets of C which is closed under countable unions and complementation. The so-called *analytic sets* are defined to be the continuous images of the Borel sets and are denoted by Σ11 while the *co-analytic* sets are defined to be the complements of analytic sets and are denoted by Π11. Finally, Δ11 is used to denote the intersection of the analytic and co-analytic sets.

Addison observed (1958, 1959) that these classical definitions can be effectivized by restricting to computable unions in the definition of the Σ0n sets. This leads to the so-called *lightface* version of the Borel hierarchy—customarily denoted using the same notations Σ0n and Π0n used for the levels of arithmetical hierarchy—and corresponding definitions of Σ11 (i.e., lightface analytic), Π11 (i.e., lightface co-analytic), and Δ11 sets. In particular, this sequence of definitions suggests an analogy between [Theorem 3.15][225] and the following classical result of Suslin:

**Theorem 3.16** (Suslin 1917): The class of Δ11 sets is equal to the class of Borel sets B.

An effective form of [Theorem 3.16][226] relating the Δ11 subsets of C to the lightface Borel sets representable by computable codes can be obtained from Kleene’s original proof of [Theorem 3.15][227] (see, e.g., Y. Moschovakis 2009, ch. 7B). Addison also showed that it is similarly possible to obtain an effective version of Lusin’s Theorem (1927)—i.e., “any two disjoint analytic sets can be separated by a Borel set”—and Kondô’s theorem (1939)—i.e., “every Π11-relation can be uniformized by a Π11-relation”. See Y. Moschovakis (2009, ch. 2E,4E) and also Simpson (2009, ch. V.3,VI.2)

## 4. Further Reading

Historical surveys of the early development of recursive functions and computability theory are provided by Sieg (2009), Adams (2011), and Soare (2016, part V). Many of the original sources discussed in [§1][228] are anthologized in Davis (1965), Heijenoort (1967), and Ewald (1996). Textbook presentation of computability theory at an elementary and intermediate level include Hopcroft & Ulman (1979), Cutland (1980), Davis, Sigal, & Weyuker (1994), and Murawski (1999). The original textbook expositions of the material presented in [§2][229] and [§3][230] (up to the formulation of Post’s problem) include Kleene (1952), Shoenfield (1967), and Rogers (1987; first edition 1967). The structure of the many-one and Turing Degrees is presented in more advanced textbooks such as Sacks (1963a), Shoenfield (1971), Hinman (1978), Soare (1987), Cooper (2004), and Soare (2016). In addition to Shoenfield (1967, ch. 7) and Rogers (1987, ch. 16), the classic treatment of the hyperarithmetical and analytical hierarchies is Sacks (1990). Classical and effective descriptive set theory are developed in Y. Moschovakis (2009, first edition 1980) and Kechris (1995). Simpson (2009) develops connections between computability theory and *Reverse Mathematics*—i.e., the axiomatic study of subsystems of second-order arithmetic whose ω-models may often be characterized using computability theoretic methods. Treatment of sub-recursive hierarchies and connections to proof theory and theoretical computer science are provided by Péter (1967), Rose (1984), Clote (2002, ch. 6–7), and Schwichtenberg & Wainer (2011). Many of the historical and mathematical topics surveyed in this entry are also presented in greater detail in the two volumes of Odifreddi’s *Classical Recursion Theory* (1989, 1999a), which contain many additional historical references.

[1]: https://plato.stanford.edu/entries/recursive-functions/#FormRecu
[2]: https://plato.stanford.edu/entries/recursive-functions/#CompTheo
[3]: https://plato.stanford.edu/entries/recursive-functions/#AddiClosPropPrimRecuFunc
[4]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-1
[5]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-2
[6]: https://plato.stanford.edu/entries/recursive-functions/#mjx-eqn-funassert
[7]: https://plato.stanford.edu/entries/recursive-functions/#mjx-eqn-funassert
[8]: https://plato.stanford.edu/entries/recursive-functions/#Exam
[9]: https://plato.stanford.edu/entries/recursive-functions/#mjx-eqn-factcalc
[10]: https://plato.stanford.edu/entries/hilbert-program/
[11]: https://plato.stanford.edu/entries/proof-theory/
[12]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-3
[13]: https://plato.stanford.edu/entries/recursive-functions/#mjx-eqn-funassert
[14]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-4
[15]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-5
[16]: https://plato.stanford.edu/entries/recursive-functions/#PrimRecuFuncPR
[17]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-6
[18]: https://plato.stanford.edu/entries/recursive-functions/#mjx-eqn-prch
[19]: https://plato.stanford.edu/entries/recursive-functions/#Exam
[20]: https://plato.stanford.edu/entries/goedel-incompleteness/
[21]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-7
[22]: https://plato.stanford.edu/entries/goedel-incompleteness/#AriForLan
[23]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-8
[24]: https://plato.stanford.edu/entries/goedel-incompleteness/#DiaSelRef
[25]: https://plato.stanford.edu/entries/recursive-functions/#NormFormTheo
[26]: https://plato.stanford.edu/entries/self-reference/
[27]: https://plato.stanford.edu/entries/recursive-functions/#NonCompFuncUndeProb
[28]: https://plato.stanford.edu/entries/recursive-functions/#RecuTheo
[29]: https://plato.stanford.edu/entries/recursive-functions/#AritAnalHier
[30]: https://plato.stanford.edu/entries/recursive-functions/#GeneRecuFunc
[31]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[32]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-9
[33]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-10
[34]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-11
[35]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-12
[36]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-13
[37]: https://plato.stanford.edu/entries/recursive-functions/#PartRecuFuncPartRecuFuncREC
[38]: https://plato.stanford.edu/entries/recursive-functions/#grdef
[39]: https://plato.stanford.edu/entries/recursive-functions/#PartRecuFuncPartRecuFuncREC
[40]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-14
[41]: https://plato.stanford.edu/entries/recursive-functions/#FormRecu
[42]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-15
[43]: https://plato.stanford.edu/entries/church-turing/
[44]: https://plato.stanford.edu/entries/computational-complexity/#OriComThe
[45]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-16
[46]: https://plato.stanford.edu/entries/goedel-incompleteness/#Rep
[47]: https://plato.stanford.edu/entries/recursive-functions/#Defi_1
[48]: https://plato.stanford.edu/entries/logic-combinatory/
[49]: https://plato.stanford.edu/entries/logic-combinatory/#CompFuncArit
[50]: https://plato.stanford.edu/entries/turing-machine/
[51]: https://plato.stanford.edu/entries/turing-machine/#AlteHistModeComp
[52]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-17
[53]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-18
[54]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-19
[55]: https://plato.stanford.edu/entries/goedel/#ComThe
[56]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[57]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[58]: https://plato.stanford.edu/entries/recursive-functions/#hpundec0
[59]: https://plato.stanford.edu/entries/turing-machine/#HaltProbEnts
[60]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[61]: https://plato.stanford.edu/entries/recursive-functions/#hpundec0
[62]: https://plato.stanford.edu/entries/recursive-functions/#ManyOneDegr
[63]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[64]: https://plato.stanford.edu/entries/recursive-functions/#hpundec0
[65]: https://plato.stanford.edu/entries/recursive-functions/#churchsthm
[66]: https://plato.stanford.edu/entries/recursive-functions/#CompTheo
[67]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[68]: https://plato.stanford.edu/entries/recursive-functions/#EntsUnde
[69]: https://plato.stanford.edu/entries/recursive-functions/#CompTheo
[70]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[71]: https://plato.stanford.edu/entries/recursive-functions/#PartRecuFuncPartRecuFuncREC
[72]: https://plato.stanford.edu/entries/recursive-functions/#CompTheo
[73]: https://plato.stanford.edu/entries/recursive-functions/#HistBack
[74]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[75]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-20
[76]: https://plato.stanford.edu/entries/recursive-functions/#prereldefn
[77]: https://plato.stanford.edu/entries/recursive-functions/#prdef
[78]: https://plato.stanford.edu/entries/recursive-functions/#prdef
[79]: https://plato.stanford.edu/entries/recursive-functions/#Exam
[80]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[81]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[82]: https://plato.stanford.edu/entries/recursive-functions/#knft
[83]: https://plato.stanford.edu/entries/recursive-functions/#AckePeteFunc
[84]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[85]: https://plato.stanford.edu/entries/recursive-functions/#knft
[86]: https://plato.stanford.edu/entries/computational-complexity/
[87]: https://plato.stanford.edu/entries/recursive-functions/#Exam
[88]: https://plato.stanford.edu/entries/recursive-functions/#HistBack
[89]: https://plato.stanford.edu/entries/recursive-functions/#AckePeteFunc
[90]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[91]: https://plato.stanford.edu/entries/recursive-functions/#Defi
[92]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[93]: https://plato.stanford.edu/entries/recursive-functions/#FormRecu
[94]: https://plato.stanford.edu/entries/recursive-functions/#NonCompFuncUndeProb
[95]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[96]: https://plato.stanford.edu/entries/recursive-functions/#knft
[97]: https://plato.stanford.edu/entries/recursive-functions/#CompTheo
[98]: https://plato.stanford.edu/entries/recursive-functions/#knft
[99]: https://plato.stanford.edu/entries/recursive-functions/#Defi
[100]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[101]: https://plato.stanford.edu/entries/recursive-functions/#Exam
[102]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[103]: https://plato.stanford.edu/entries/recursive-functions/#knft
[104]: https://plato.stanford.edu/entries/turing-machine/#TuriUnivMach
[105]: https://plato.stanford.edu/entries/recursive-functions/#RecuTheo
[106]: https://plato.stanford.edu/entries/recursive-functions/#EntsUnde
[107]: https://plato.stanford.edu/entries/recursive-functions/#HistBack
[108]: https://plato.stanford.edu/entries/recursive-functions/#Defi_1
[109]: https://plato.stanford.edu/entries/recursive-functions/#CompCompEnumSets
[110]: https://plato.stanford.edu/entries/recursive-functions/#PrimRecuFuncPR
[111]: https://plato.stanford.edu/entries/recursive-functions/#PartRecuFuncPartRecuFuncREC
[112]: https://plato.stanford.edu/entries/recursive-functions/#NormFormTheo
[113]: https://plato.stanford.edu/entries/recursive-functions/#ricethm
[114]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[115]: https://plato.stanford.edu/entries/recursive-functions/#knft
[116]: https://plato.stanford.edu/entries/recursive-functions/#knft
[117]: https://plato.stanford.edu/entries/recursive-functions/#snmthm
[118]: https://plato.stanford.edu/entries/recursive-functions/#univthm
[119]: https://plato.stanford.edu/entries/recursive-functions/#FormRecu
[120]: https://plato.stanford.edu/entries/recursive-functions/#NormFormTheo
[121]: https://plato.stanford.edu/entries/recursive-functions/#ChurThes
[122]: https://plato.stanford.edu/entries/recursive-functions/#PartRecuFuncPartRecuFuncREC
[123]: https://plato.stanford.edu/entries/recursive-functions/#NormFormTheo
[124]: https://plato.stanford.edu/entries/recursive-functions/#EntsUnde
[125]: https://plato.stanford.edu/entries/turing-machine/#HaltProb
[126]: https://plato.stanford.edu/entries/recursive-functions/#hpundec
[127]: https://plato.stanford.edu/entries/recursive-functions/#snmthm
[128]: https://plato.stanford.edu/entries/recursive-functions/#kuncomp
[129]: https://plato.stanford.edu/entries/recursive-functions/#ricethm
[130]: https://plato.stanford.edu/entries/recursive-functions/#ReduDegr
[131]: https://plato.stanford.edu/entries/recursive-functions/#FormRecu
[132]: https://plato.stanford.edu/entries/recursive-functions/#PrimRecuFuncPR
[133]: https://plato.stanford.edu/entries/recursive-functions/#NonCompFuncUndeProb
[134]: https://plato.stanford.edu/entries/recursive-functions/#FormRecu
[135]: https://plato.stanford.edu/entries/recursive-functions/#ceequivdefs
[136]: https://plato.stanford.edu/entries/recursive-functions/#knft
[137]: https://plato.stanford.edu/entries/recursive-functions/#ceequivdefs
[138]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-21
[139]: https://plato.stanford.edu/entries/recursive-functions/#closeprops
[140]: https://plato.stanford.edu/entries/recursive-functions/#NonCompFuncUndeProb
[141]: https://plato.stanford.edu/entries/recursive-functions/#postthm
[142]: https://plato.stanford.edu/entries/recursive-functions/#ReduDegr
[143]: https://plato.stanford.edu/entries/recursive-functions/#AritAnalHier
[144]: https://plato.stanford.edu/entries/recursive-functions/#hpundec
[145]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-22
[146]: https://plato.stanford.edu/entries/recursive-functions/#snmthm
[147]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[148]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[149]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[150]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[151]: https://plato.stanford.edu/entries/recursive-functions/#snmthm
[152]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[153]: https://plato.stanford.edu/entries/recursive-functions/#recthmcor
[154]: https://plato.stanford.edu/entries/recursive-functions/#recthmcor
[155]: https://plato.stanford.edu/entries/recursive-functions/#NormFormTheo
[156]: https://plato.stanford.edu/entries/recursive-functions/#recthmcor
[157]: https://plato.stanford.edu/entries/recursive-functions/#HistBack
[158]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[159]: https://plato.stanford.edu/entries/recursive-functions/#snmthm
[160]: https://plato.stanford.edu/entries/recursive-functions/#recthmcor
[161]: https://plato.stanford.edu/entries/recursive-functions/#HistBack
[162]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[163]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-23
[164]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-24
[165]: https://plato.stanford.edu/entries/recursive-functions/#postprob
[166]: https://plato.stanford.edu/entries/recursive-functions/#ricethm
[167]: https://plato.stanford.edu/entries/recursive-functions/#redthm
[168]: https://plato.stanford.edu/entries/recursive-functions/#ceequivdefs
[169]: https://plato.stanford.edu/entries/recursive-functions/#snmthm
[170]: https://plato.stanford.edu/entries/recursive-functions/#mred
[171]: https://plato.stanford.edu/entries/recursive-functions/#TuriDegr
[172]: https://plato.stanford.edu/entries/recursive-functions/#mdegsprops
[173]: https://plato.stanford.edu/entries/recursive-functions/#mdegsprops
[174]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-25
[175]: https://plato.stanford.edu/entries/recursive-functions/#GeneRecuFunc
[176]: https://plato.stanford.edu/entries/recursive-functions/#Defi_1
[177]: https://plato.stanford.edu/entries/recursive-functions/#Defi
[178]: https://plato.stanford.edu/entries/recursive-functions/#snmthm
[179]: https://plato.stanford.edu/entries/recursive-functions/#univthm
[180]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-26
[181]: https://plato.stanford.edu/entries/recursive-functions/#tdegprops
[182]: https://plato.stanford.edu/entries/recursive-functions/#NonCompFuncUndeProb
[183]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-27
[184]: https://plato.stanford.edu/entries/recursive-functions/#fmthm
[185]: https://plato.stanford.edu/entries/recursive-functions/#fmthm
[186]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-28
[187]: https://plato.stanford.edu/entries/recursive-functions/#cooperprob
[188]: https://plato.stanford.edu/entries/computational-complexity/#PolHiePolSpaExpTim
[189]: https://plato.stanford.edu/entries/set-theory/#DesSetThe
[190]: https://plato.stanford.edu/entries/recursive-functions/#CompCompEnumSets
[191]: https://plato.stanford.edu/entries/recursive-functions/#AritReprGodeFirsIncoTheo
[192]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-29
[193]: https://plato.stanford.edu/entries/recursive-functions/#cesigma1
[194]: https://plato.stanford.edu/entries/recursive-functions/#cesigma1
[195]: https://plato.stanford.edu/entries/recursive-functions/#enumthm
[196]: https://plato.stanford.edu/entries/recursive-functions/#Exam
[197]: https://plato.stanford.edu/entries/recursive-functions/#enumthm
[198]: https://plato.stanford.edu/entries/recursive-functions/#NormFormTheo
[199]: https://plato.stanford.edu/entries/recursive-functions/#cesigma1
[200]: https://plato.stanford.edu/entries/recursive-functions/#univthm
[201]: https://plato.stanford.edu/entries/recursive-functions/#cesigma1
[202]: https://plato.stanford.edu/entries/recursive-functions/#cesigma1
[203]: https://plato.stanford.edu/entries/recursive-functions/#arithhier
[204]: https://plato.stanford.edu/entries/recursive-functions/#hierthm
[205]: https://plato.stanford.edu/entries/liar-paradox/
[206]: https://plato.stanford.edu/entries/self-reference/#ConSemPar
[207]: https://plato.stanford.edu/entries/recursive-functions/#hierthm
[208]: https://plato.stanford.edu/entries/recursive-functions/#postthm2
[209]: https://plato.stanford.edu/entries/recursive-functions/#ceequivdefs
[210]: https://plato.stanford.edu/entries/recursive-functions/#tdegprops
[211]: https://plato.stanford.edu/entries/recursive-functions/#postthm2
[212]: https://plato.stanford.edu/entries/recursive-functions/#tdegprops
[213]: https://plato.stanford.edu/entries/recursive-functions/#hierthm
[214]: https://plato.stanford.edu/entries/recursive-functions/#postthm2
[215]: https://plato.stanford.edu/entries/recursive-functions/#postthm
[216]: https://plato.stanford.edu/entries/recursive-functions/#cesigma1
[217]: https://plato.stanford.edu/entries/recursive-functions/#postthm2
[218]: https://plato.stanford.edu/entries/recursive-functions/#limitlemma
[219]: https://plato.stanford.edu/entries/recursive-functions/#cesigma1
[220]: https://plato.stanford.edu/entries/recursive-functions/#recthm
[221]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-30
[222]: https://plato.stanford.edu/entries/recursive-functions/notes.html#note-31
[223]: https://plato.stanford.edu/entries/recursive-functions/#hierthm2
[224]: https://plato.stanford.edu/entries/recursive-functions/#hypthm
[225]: https://plato.stanford.edu/entries/recursive-functions/#hypthm
[226]: https://plato.stanford.edu/entries/recursive-functions/#suslinthm
[227]: https://plato.stanford.edu/entries/recursive-functions/#hypthm
[228]: https://plato.stanford.edu/entries/recursive-functions/#HistBack
[229]: https://plato.stanford.edu/entries/recursive-functions/#FormRecu
[230]: https://plato.stanford.edu/entries/recursive-functions/#CompTheo
