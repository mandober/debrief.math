# Eigenvariable

If you want to introduce `∀a`, then you need to make sure that `a` is not free in the assumptions. Therefore, you may be forced to rename a free `a` in an assumption using a fresh name.

Alwen Tiu says
http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.94.9463&rep=rep1&type=pdf

In proof search for a universal quantified formula, e.g. `∀x.Bx`, the quantified variable `x` is replaced by a new constant `c`, and proof search is continued on `Bc`. Such constants are called *eigenvariables*, and in IL or classical logic, they play the role of scoped constants, being dynamically created as the search for a proof progresses; they are not instantiated during the proof search.

---

The usual formalisation of first-order logic needs to distinguish between letters that stand for things that can be substituted by any term and letters that are taken to be particular terms. The eigenvariables are the latter sort of letter, which cannot be substituted for in the forall-intro / exists-elim rules.

This is a very tricky concept when learning predicate logic and the move to natural deduction has the capacity to confuse things still further. To get a handle on the inference rules, most people find they need to be somewhat formal about the distinction, viewing the distinction as a syntactic marker saying which are the leaves of a formula that can be substituted into. But at this level of formality, you don't really grasp the why of it.

The key is that the two kinds of letters can be considered as variables that derive their meaning in the judgement expressed at that point in the derivation. The semantics of the variables has their being bound (?), with regular variables being universally quantified and eigenvariables being existentially quantified. The constants then are equivalent to the *Skolem constants* that arise from the Skolemization of the formula expressing the judgement.

The above is tricky, and properly grasping it requires that you (i) are comfortable with the application of Skolemisation (Skolem normal form), and (ii) figure out how to apply it to express the judgement at each formula in a natural deduction proof. But then, this is no more than the complexity of variables and constants in first-order logic.
















---

* https://en.wikipedia.org/wiki/Natural_deduction

* https://math.stackexchange.com/questions/40993/what-is-the-so-called-eigenvariable-or-parameter-in-natural-deduction
* https://math.stackexchange.com/questions/997850/how-can-universal-quantifier-manipulation-rules-be-made-redundant-by-the-general?rq=1
* https://math.stackexchange.com/questions/1819976/natural-deduction-introduction-of-universal-quantifier-and-elimination-of-exist?rq=1
* https://math.stackexchange.com/questions/1821358/calculus-of-natural-deduction-that-works-for-empty-structures?rq=1
* https://math.stackexchange.com/questions/2330464/in-what-way-is-the-existential-and-universal-quantifiers-treated-differently-by?rq=1
* https://math.stackexchange.com/questions/2544994/natural-deduction-with-quantifiers-and-identity-turning-an-existential-into-a?rq=1

* Model Checking for π-Calculus Using Proof Search
http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.94.9463&rep=rep1&type=pdf

* The Foundation of a Generic Theorem Prover
https://www.cl.cam.ac.uk/techreports/UCAM-CL-TR-130.pdf

* Mathematical Formulae, Ken Kubota 2017 (_828 pages_)
https://www.owlofminerva.net/files/formulae.pdf

* Foundations of Mathematics
https://kenkubota.de/
https://owlofminerva.net/
https://owlofminerva.net/mathematical-formulae/
https://owlofminerva.net/foundations-of-mathematics/
https://owlofminerva.net/the-mathematical-logic-r0/

* Mathtoys - Power tools for your math mind
https://mathtoys.org/equations.html

* Proof toys
https://prooftoys.org/pt-logic-concepts/
