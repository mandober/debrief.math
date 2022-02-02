---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Implicational_propositional_calculus
page-title:       Implicational propositional calculus - Wikipedia
article-title:    Implicational propositional calculus - Wikipedia
---
# Implicational propositional calculus - Wikipedia

In mathematical logic, the implicational propositional calculus is a version of classical propositional calculus which uses only one connective, called implication or conditional. In formulas, this binary operation is indicated by "implies", "if ..., then ...", "→", "", etc..
In [mathematical logic][1], the __implicational propositional calculus__ is a version of [classical][2] [propositional calculus][3] which uses only one [connective][4], called [implication or conditional][5]. In [formulas][6], this [binary operation][7] is indicated by "implies", "if ..., then ...", "→", "![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b)", etc..

## Functional (in)completeness\[[edit][8]\]

Implication alone is not [functionally complete][9] as a [logical operator][10] because one cannot form all other two-valued [truth functions][11] from it.

For example, the two-place truth function that always returns *[false][12]* is not definable from → and arbitrary sentence variables: any formula constructed from → and propositional variables must receive the value *true* when all of its variables are evaluated to true. It follows that {→} is not functionally complete.

However, if one adds a nullary connective ⊥ for falsity, then one can define all other truth functions. Formulas over the resulting set of connectives {→, ⊥} are called __f-implicational__.[\[1\]][13] If *P* and *Q* are propositions, then:

-   ¬*P* is [equivalent][14] to *P* → ⊥
-   *P* ∧ *Q* is equivalent to (*P* → (*Q* → ⊥)) → ⊥
-   *P* ∨ *Q* is equivalent to (*P* → *Q*) → *Q*
-   *P* ↔ *Q* is equivalent to ((*P* → *Q*) → ((*Q* → *P*) → ⊥)) → ⊥

Since the above operators are known to be functionally complete, it follows that any truth function can be expressed in terms of → and ⊥.

## Axiom system\[[edit][15]\]

The following statements are considered [tautologies][16] (irreducible and intuitively true, by definition).

-   [Axiom schema][17] 1 is *P* → (*Q* → *P*).
-   Axiom schema 2 is (*P* → (*Q* → *R*)) → ((*P* → *Q*) → (*P* → *R*)).
-   Axiom schema 3 ([Peirce's law][18]) is ((*P* → *Q*) → *P*) → *P*.
-   The one non-nullary [rule of inference][19] ([modus ponens][20]) is: from *P* and *P* → *Q* infer *Q*.

Where in each case, *P*, *Q*, and *R* may be replaced by any formulas which contain only "→" as a connective. If Γ is a set of formulas and *A* a formula, then ![\Gamma \vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b4c81934043042b8bcc9ce610a307f52d95d92a) means that *A* is derivable using the axioms and rules above and formulas from Γ as additional hypotheses.

Łukasiewicz (1948) found an axiom system for the implicational calculus, which replaces the schemas 1–3 above with a single schema

-   ((*P* → *Q*) → *R*) → ((*R* → *P*) → (*S* → *P*)).

He also argued that there is no shorter axiom system.

## Basic properties of derivation\[[edit][21]\]

Since all axioms and rules of the calculus are schemata, derivation is closed under [substitution][22]:

If ![\Gamma \vdash A,](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a7057c5731e12b919c9877fb11d7f31737fffc3) then ![\sigma (\Gamma )\vdash \sigma (A),](https://wikimedia.org/api/rest_v1/media/math/render/svg/64579e1db9871726503a1f26cf906b3c8f00e837)

where σ is any substitution (of formulas using only implication).

The implicational propositional calculus also satisfies the [deduction theorem][23]:

If ![\Gamma ,A\vdash B](https://wikimedia.org/api/rest_v1/media/math/render/svg/4bfb6a35bca9651408fa84a2b489074e65e2e68a), then ![\Gamma \vdash A\to B.](https://wikimedia.org/api/rest_v1/media/math/render/svg/251de4c08d9654ad8ac7594cf065752ca552e959)

As explained in the [deduction theorem][24] article, this holds for any axiomatic extension of the system containing axiom schemas 1 and 2 above and modus ponens.

## Completeness\[[edit][25]\]

The implicational propositional calculus is [semantically complete][26] with respect to the usual two-valued semantics of classical propositional logic. That is, if Γ is a set of implicational formulas, and *A* is an implicational formula [entailed][27] by Γ, then ![\Gamma \vdash A](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b4c81934043042b8bcc9ce610a307f52d95d92a).

### Proof\[[edit][28]\]

A proof of the completeness theorem is outlined below. First, using the [compactness theorem][29] and the deduction theorem, we may reduce the completeness theorem to its special case with empty Γ, i.e., we only need to show that every tautology is derivable in the system.

The proof is similar to completeness of full propositional logic, but it also uses the following idea to overcome the functional incompleteness of implication. If *A* and *F* are formulas, then *A* → *F* is equivalent to (¬*A\**) ∨ *F*, where *A\** is the result of replacing in *A* all, some, or none of the occurrences of *F* by falsity. Similarly, (*A* → *F*) → *F* is equivalent to *A\** ∨ *F*. So under some conditions, one can use them as substitutes for saying *A\** is false or *A\** is true respectively.

We first observe some basic facts about derivability:

![A\to B,B\to C\vdash A\to C](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b120b8d96b04f5b99747b36caf88f3530d60682)

__(1)__

Indeed, we can derive *A* → (*B* → *C*) using Axiom 1, and then derive *A* → *C* by modus ponens (twice) from Ax. 2.

![A\to B\vdash (B\to C)\to (A\to C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b178896302597b7d6dc0e8eb34772b4c9d1e51e)

__(2)__

This follows from (__[1][30]__) by the deduction theorem.

![A\to C,(A\to B)\to C\vdash C](https://wikimedia.org/api/rest_v1/media/math/render/svg/6224b1add3912fc8874388682272623a840e92dc)

__(3)__

If we further assume *C* → *B*, we can derive *A* → *B* using (__[1][31]__), then we derive *C* by modus ponens. This shows ![A\to C,(A\to B)\to C,C\to B\vdash C](https://wikimedia.org/api/rest_v1/media/math/render/svg/3f5e1fa7ba81d5bc0d30b3b40e93bd35a6f019c0), and the deduction theorem gives ![A\to C,(A\to B)\to C\vdash (C\to B)\to C](https://wikimedia.org/api/rest_v1/media/math/render/svg/e374899c1383244c22b5935a2a5168bd45df5ae7). We apply Ax. 3 to obtain (__[3][32]__).

Let *F* be an arbitrary fixed formula. For any formula *A*, we define *A*0 = (*A* → *F*) and *A*1 = ((*A* → *F*) → *F*). Consider only formulas in propositional variables *p*1, ..., *pn*. We claim that for every formula *A* in these variables and every [truth assignment][33] *e*,

![p_{1}^{e(p_{1})},\dots ,p_{n}^{e(p_{n})}\vdash A^{e(A)}.](https://wikimedia.org/api/rest_v1/media/math/render/svg/17405b0e5fee38f0bd01f3ddbb6f07ed01919e5d)

__(4)__

We prove (__[4][34]__) by induction on *A*. The base case *A* = *pi* is trivial. Let *A* = (*B* → *C*). We distinguish three cases:

1.  *e*(*C*) = 1. Then also *e*(*A*) = 1. We have
    
    ![(C\to F)\to F\vdash ((B\to C)\to F)\to F](https://wikimedia.org/api/rest_v1/media/math/render/svg/655757d350943ac64424b5793ab88ab86a976cc6)
    
    by applying (__[2][35]__) twice to the axiom *C* → (*B* → *C*). Since we have derived (*C* → *F*) → *F* by the induction hypothesis, we can infer ((*B* → *C*) → *F*) → *F*.
    
2.  *e*(*B*) = 0. Then again *e*(*A*) = 1. The deduction theorem applied to (__[3][36]__) gives
    
    ![B\to F\vdash ((B\to C)\to F)\to F.](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b4f394f5dfd67deebd53e33a32b1e7524d9ad58)
    
    Since we have derived *B* → *F* by the induction hypothesis, we can infer ((*B* → *C*) → *F*) → *F*.
    
3.  *e*(*B*) = 1 and *e*(*C*) = 0. Then *e*(*A*) = 0. We have
    
    ![{\begin{aligned}(B\to F)\to F,C\to F,B\to C&\vdash B\to F&&{\text{by (1)}}\\&\vdash F&&{\text{by modus ponens,}}\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f62a7337065164e584ca917e701662622e50a2c8)
    
    thus ![(B\to F)\to F,C\to F\vdash (B\to C)\to F](https://wikimedia.org/api/rest_v1/media/math/render/svg/95cad1bc79f48a513fc86ab7c2da7f793748de0f) by the deduction theorem. We have derived (*B* → *F*) → *F* and *C* → *F* by the induction hypothesis, hence we can infer (*B* → *C*) → *F*. This completes the proof of (__[4][37]__).
    

Now let *F* be a tautology in variables *p*1, ..., *pn*. We will prove by reverse induction on *k* = *n*,...,0 that for every assignment *e*,

![{\displaystyle p_{1}^{e(p_{1})},\dots ,p_{k}^{e(p_{k})}\vdash F.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97b25a6a17a54bdf1a8175827babab3e6cd89a00)

__(5)__

The base case *k* = *n* follows from a special case of (__[4][38]__) using

![{\displaystyle F^{e(F)}=F^{1}=((F\to F)\to F)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ce16b19145a60c84d4302d269d75c0a82db2cb18)

and the fact that *F*→*F* is a theorem by the deduction theorem.

Assume that (__[5][39]__) holds for *k* + 1, we will show it for *k*. By applying deduction theorem to the induction hypothesis, we obtain

![{\displaystyle {\begin{aligned}p_{1}^{e(p_{1})},\dots ,p_{k}^{e(p_{k})}&\vdash (p_{k+1}\to F)\to F,\\p_{1}^{e(p_{1})},\dots ,p_{k}^{e(p_{k})}&\vdash ((p_{k+1}\to F)\to F)\to F,\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3f6e504967793318c70a4db573ccf830aa728dc4)

by first setting *e*(*p**k*+1) = 0 and second setting *e*(*p**k*+1) = 1. From this we derive (__[5][40]__) using modus ponens.

For *k* = 0 we obtain that the tautology *F* is provable without assumptions. This is what was to be proved.

This proof is constructive. That is, given a tautology, one could actually follow the instructions and create a proof of it from the axioms. However, the length of such a proof increases exponentially with the number of propositional variables in the tautology, hence it is not a practical method for any but the very shortest tautologies.

## The Bernays–Tarski axiom system\[[edit][41]\]

The Bernays–Tarski axiom system is often used. In particular, Łukasiewicz's paper derives the Bernays–Tarski axioms from Łukasiewicz's sole axiom as a means of showing its completeness.  
It differs from the axiom schemas above by replacing axiom schema 2, (*P*→(*Q*→*R*))→((*P*→*Q*)→(*P*→*R*)), with

-   Axiom schema 2': (*P*→*Q*)→((*Q*→*R*)→(*P*→*R*))

which is called *[hypothetical syllogism][42]*. This makes derivation of the deduction meta-theorem a little more difficult, but it can still be done.

We show that from *P*→(*Q*→*R*) and *P*→*Q* one can derive *P*→*R*. This fact can be used in lieu of axiom schema 2 to get the meta-theorem.

1.  *P*→(*Q*→*R*) given
2.  *P*→*Q* given
3.  (*P*→*Q*)→((*Q*→*R*)→(*P*→*R*)) ax 2'
4.  (*Q*→*R*)→(*P*→*R*) mp 2,3
5.  (*P*→(*Q*→*R*))→(((*Q*→*R*)→(*P*→*R*))→(*P*→(*P*→*R*))) ax 2'
6.  ((*Q*→*R*)→(*P*→*R*))→(*P*→(*P*→*R*)) mp 1,5
7.  *P*→(*P*→*R*) mp 4,6
8.  (*P*→(*P*→*R*))→(((*P*→*R*)→*R*)→(*P*→*R*)) ax 2'
9.  ((*P*→*R*)→*R*)→(*P*→*R*) mp 7,8
10.  (((*P*→*R*)→*R*)→(*P*→*R*))→(*P*→*R*) ax 3
11.  *P*→*R* mp 9,10 qed

## Satisfiability and validity\[[edit][43]\]

Satisfiability in the implicational propositional calculus is trivial, because every formula is satisfiable: just set all variables to true.

Falsifiability in the implicational propositional calculus is [NP-complete][44],[\[2\]][45] meaning that validity (tautology) is [co-NP-complete][46].

In this case, a useful technique is to presume that the formula is not a tautology and attempt to find a valuation which makes it false. If one succeeds, then it is indeed not a tautology. If one fails, then it is a tautology.

__Example of a non-tautology__:

Suppose \[(*A*→*B*)→((*C*→*A*)→*E*)\]→(\[*F*→((*C*→*D*)→*E*)\]→\[(*A*→*F*)→(*D*→*E*)\]) is false.

Then (*A*→*B*)→((*C*→*A*)→*E*) is true; *F*→((*C*→*D*)→*E*) is true; *A*→*F* is true; *D* is true; and *E* is false.

Since *D* is true, *C*→*D* is true. So the truth of *F*→((*C*→*D*)→*E*) is equivalent to the truth of *F*→*E*.

Then since *E* is false and *F*→*E* is true, we get that *F* is false.

Since *A*→*F* is true, *A* is false. Thus *A*→*B* is true and (*C*→*A*)→*E* is true.

*C*→*A* is false, so *C* is true.

The value of *B* does not matter, so we can arbitrarily choose it to be true.

Summing up, the valuation which sets *B*, *C* and *D* to be true and *A*, *E* and *F* to be false will make \[(*A*→*B*)→((*C*→*A*)→*E*)\]→(\[*F*→((*C*→*D*)→*E*)\]→\[(*A*→*F*)→(*D*→*E*)\]) false. So it is not a tautology.

__Example of a tautology__:

Suppose ((*A*→*B*)→*C*)→((*C*→*A*)→(*D*→*A*)) is false.

Then (*A*→*B*)→*C* is true; *C*→*A* is true; *D* is true; and *A* is false.

Since *A* is false, *A*→*B* is true. So *C* is true. Thus *A* must be true, contradicting the fact that it is false.

Thus there is no valuation which makes ((*A*→*B*)→*C*)→((*C*→*A*)→(*D*→*A*)) false. Consequently, it is a tautology.

## Adding an axiom schema\[[edit][47]\]

What would happen if another axiom schema were added to those listed above? There are two cases: (1) it is a tautology; or (2) it is not a tautology.

If it is a tautology, then the set of theorems remains the set of tautologies as before. However, in some cases it may be possible to find significantly shorter proofs for theorems. Nevertheless, the minimum length of proofs of theorems will remain unbounded, that is, for any natural number *n* there will still be theorems which cannot be proved in *n* or fewer steps.

If the new axiom schema is not a tautology, then every formula becomes a theorem (which makes the concept of a theorem useless in this case). What is more, there is then an upper bound on the minimum length of a proof of every formula, because there is a common method for proving every formula. For example, suppose the new axiom schema were ((*B*→*C*)→*C*)→*B*. Then ((*A*→(*A*→*A*))→(*A*→*A*))→*A* is an instance (one of the new axioms) and also not a tautology. But \[((*A*→(*A*→*A*))→(*A*→*A*))→*A*\]→*A* is a tautology and thus a theorem due to the old axioms (using the completeness result above). Applying modus ponens, we get that *A* is a theorem of the extended system. Then all one has to do to prove any formula is to replace *A* by the desired formula throughout the proof of *A*. This proof will have the same number of steps as the proof of *A*.

## An alternative axiomatization\[[edit][48]\]

The axioms listed above primarily work through the deduction metatheorem to arrive at completeness. Here is another axiom system which aims directly at completeness without going through the deduction metatheorem.

First we have axiom schemas which are designed to efficiently prove the subset of tautologies which contain only one propositional variable.

-   aa 1: ꞈ*A*→*A*
-   aa 2: (*A*→*B*)→ꞈ(*A*→(*C*→*B*))
-   aa 3: *A*→((*B*→*C*)→ꞈ((*A*→*B*)→*C*))
-   aa 4: *A*→ꞈ(*B*→*A*)

The proof of each such tautology would begin with two parts (hypothesis and conclusion) which are the same. Then insert additional hypotheses between them. Then insert additional tautological hypotheses (which are true even when the sole variable is false) into the original hypothesis. Then add more hypotheses outside (on the left). This procedure will quickly give every tautology containing only one variable. (The symbol "ꞈ" in each axiom schema indicates where the conclusion used in the completeness proof begins. It is merely a comment, not a part of the formula.)

Consider any formula Φ which may contain *A*, *B*, *C*1, ..., *C**n* __and ends with *A*__ as its final conclusion. Then we take

-   aa 5: Φ−→(Φ+→ꞈΦ)

as an axiom schema where Φ− is the result of replacing *B* by *A* throughout Φ and Φ+ is the result of replacing *B* by (*A*→*A*) throughout Φ. This is a schema for axiom schemas since there are two level of substitution: in the first Φ is substituted (with variations); in the second, any of the variables (including both *A* and *B*) may be replaced by arbitrary formulas of the implicational propositional calculus. This schema allows one to prove tautologies with more than one variable by considering the case when *B* is false Φ− and the case when *B* is true Φ+.

If the variable which is the final conclusion of a formula takes the value true, then the whole formula takes the value true regardless of the values of the other variables. Consequently if *A* is true, then Φ, Φ−, Φ+ and Φ−→(Φ+→Φ) are all true. So without loss of generality, we may assume that *A* is false. Notice that Φ is a tautology if and only if both Φ− and Φ+ are tautologies. But while Φ has *n*+2 distinct variables, Φ− and Φ+ both have *n*+1. So the question of whether a formula is a tautology has been reduced to the question of whether certain formulas with one variable each are all tautologies. Also notice that Φ−→(Φ+→Φ) is a tautology regardless of whether Φ is, because if Φ is false then either Φ− or Φ+ will be false depending on whether *B* is false or true.

Examples:

Deriving Peirce's law

1.  \[((*P*→*P*)→*P*)→*P*\]→(\[((*P*→(*P*→*P*))→*P*)→*P*\]→\[((*P*→*Q*)→*P*)→*P*\]) aa 5
2.  *P*→*P* aa 1
3.  (*P*→*P*)→((*P*→*P*)→(((*P*→*P*)→*P*)→*P*)) aa 3
4.  (*P*→*P*)→(((*P*→*P*)→*P*)→*P*) mp 2,3
5.  ((*P*→*P*)→*P*)→*P* mp 2,4
6.  \[((*P*→(*P*→*P*))→*P*)→*P*\]→\[((*P*→*Q*)→*P*)→*P*\] mp 5,1
7.  *P*→(*P*→*P*) aa 4
8.  (*P*→(*P*→*P*))→((*P*→*P*)→(((*P*→(*P*→*P*))→*P*)→*P*)) aa 3
9.  (*P*→*P*)→(((*P*→(*P*→*P*))→*P*)→*P*) mp 7,8
10.  ((*P*→(*P*→*P*))→*P*)→*P* mp 2,9
11.  ((*P*→*Q*)→*P*)→*P* mp 10,6 qed

Deriving Łukasiewicz' sole axiom

1.  \[((*P*→*Q*)→*P*)→((*P*→*P*)→(*S*→*P*))\]→(\[((*P*→*Q*)→(*P*→*P*))→(((*P*→*P*)→*P*)→(*S*→*P*))\]→\[((*P*→*Q*)→*R*)→((*R*→*P*)→(*S*→*P*))\]) aa 5
2.  \[((*P*→*P*)→*P*)→((*P*→*P*)→(*S*→*P*))\]→(\[((*P*→(*P*→*P*))→*P*)→((*P*→*P*)→(*S*→*P*))\]→\[((*P*→*Q*)→*P*)→((*P*→*P*)→(*S*→*P*))\]) aa 5
3.  *P*→(*S*→*P*) aa 4
4.  (*P*→(*S*→*P*))→(*P*→((*P*→*P*)→(*S*→*P*))) aa 2
5.  *P*→((*P*→*P*)→(*S*→*P*)) mp 3,4
6.  *P*→*P* aa 1
7.  (*P*→*P*)→((*P*→((*P*→*P*)→(*S*→*P*)))→\[((*P*→*P*)→*P*)→((*P*→*P*)→(*S*→*P*))\]) aa 3
8.  (*P*→((*P*→*P*)→(*S*→*P*)))→\[((*P*→*P*)→*P*)→((*P*→*P*)→(*S*→*P*))\] mp 6,7
9.  ((*P*→*P*)→*P*)→((*P*→*P*)→(*S*→*P*)) mp 5,8
10.  \[((*P*→(*P*→*P*))→*P*)→((*P*→*P*)→(*S*→*P*))\]→\[((*P*→*Q*)→*P*)→((*P*→*P*)→(*S*→*P*))\] mp 9,2
11.  *P*→(*P*→*P*) aa 4
12.  (*P*→(*P*→*P*))→((*P*→((*P*→*P*)→(*S*→*P*)))→\[((*P*→(*P*→*P*))→*P*)→((*P*→*P*)→(*S*→*P*))\]) aa 3
13.  (*P*→((*P*→*P*)→(*S*→*P*)))→\[((*P*→(*P*→*P*))→*P*)→((*P*→*P*)→(*S*→*P*))\] mp 11,12
14.  ((*P*→(*P*→*P*))→*P*)→((*P*→*P*)→(*S*→*P*)) mp 5,13
15.  ((*P*→*Q*)→*P*)→((*P*→*P*)→(*S*→*P*)) mp 14,10
16.  \[((*P*→*Q*)→(*P*→*P*))→(((*P*→*P*)→*P*)→(*S*→*P*))\]→\[((*P*→*Q*)→*R*)→((*R*→*P*)→(*S*→*P*))\] mp 15,1
17.  (*P*→*P*)→((*P*→(*S*→*P*))→\[((*P*→*P*)→*P*)→(*S*→*P*)\]) aa 3
18.  (*P*→(*S*→*P*))→\[((*P*→*P*)→*P*)→(*S*→*P*)\] mp 6,17
19.  ((*P*→*P*)→*P*)→(*S*→*P*) mp 3,18
20.  (((*P*→*P*)→*P*)→(*S*→*P*))→\[((*P*→*Q*)→(*P*→*P*))→(((*P*→*P*)→*P*)→(*S*→*P*))\] aa 4
21.  ((*P*→*Q*)→(*P*→*P*))→(((*P*→*P*)→*P*)→(*S*→*P*)) mp 19,20
22.  ((*P*→*Q*)→*R*)→((*R*→*P*)→(*S*→*P*)) mp 21,16 qed

Using a truth table to verify Łukasiewicz' sole axiom would require consideration of 16=24 cases since it contains 4 distinct variables. In this derivation, we were able to restrict consideration to merely 3 cases: *R* is false and *Q* is false, *R* is false and *Q* is true, and *R* is true. However because we are working within the formal system of logic (instead of outside it, informally), each case required much more effort.

## See also\[[edit][49]\]

-   [Deduction theorem][50]
-   [List of logic systems#Implicational propositional calculus][51]
-   [Peirce's law][52]
-   [Propositional calculus][53]
-   [Tautology (logic)][54]
-   [Truth table][55]
-   [Valuation (logic)][56]

## References\[[edit][57]\]

-   Mendelson, Elliot (1997) [*Introduction to Mathematical Logic*, 4th ed.][58] London: Chapman & Hall.
-   Łukasiewicz, Jan (1948) [*The shortest axiom of the implicational calculus of propositions*][59], Proc. Royal Irish Academy, vol. 52, sec. A, no. 3, pp. 25–33.

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[3]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[4]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[5]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[6]: https://en.wikipedia.org/wiki/Formula "Formula"
[7]: https://en.wikipedia.org/wiki/Binary_operation "Binary operation"
[8]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=1 "Edit section: Functional (in)completeness"
[9]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[10]: https://en.wikipedia.org/wiki/Logical_operator "Logical operator"
[11]: https://en.wikipedia.org/wiki/Truth_function "Truth function"
[12]: https://en.wikipedia.org/wiki/False_(logic) "False (logic)"
[13]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#cite_note-1
[14]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[15]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=2 "Edit section: Axiom system"
[16]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[17]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[18]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[19]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[20]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[21]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=3 "Edit section: Basic properties of derivation"
[22]: https://en.wikipedia.org/wiki/Substitution_(logic) "Substitution (logic)"
[23]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[24]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[25]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=4 "Edit section: Completeness"
[26]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[27]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[28]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=5 "Edit section: Proof"
[29]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[30]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_1
[31]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_1
[32]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_3
[33]: https://en.wikipedia.org/wiki/Valuation_(logic) "Valuation (logic)"
[34]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_4
[35]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_2
[36]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_3
[37]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_4
[38]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_4
[39]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_5
[40]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#math_5
[41]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=6 "Edit section: The Bernays–Tarski axiom system"
[42]: https://en.wikipedia.org/wiki/Hypothetical_syllogism "Hypothetical syllogism"
[43]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=7 "Edit section: Satisfiability and validity"
[44]: https://en.wikipedia.org/wiki/NP-complete "NP-complete"
[45]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus#cite_note-2
[46]: https://en.wikipedia.org/wiki/Co-NP-complete "Co-NP-complete"
[47]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=8 "Edit section: Adding an axiom schema"
[48]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=9 "Edit section: An alternative axiomatization"
[49]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=10 "Edit section: See also"
[50]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[51]: https://en.wikipedia.org/wiki/List_of_logic_systems#Implicational_propositional_calculus "List of logic systems"
[52]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[53]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[54]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[55]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[56]: https://en.wikipedia.org/wiki/Valuation_(logic) "Valuation (logic)"
[57]: https://en.wikipedia.org/w/index.php?title=Implicational_propositional_calculus&action=edit&section=11 "Edit section: References"
[58]: http://worldcat.org/oclc/259359
[59]: https://www.jstor.org/stable/20488489
