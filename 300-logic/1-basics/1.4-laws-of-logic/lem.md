# LEM

https://plato.stanford.edu/entries/logic-classical/

Some philosophers and logicians argue that classical, first-order logic is too strong: it declares that some argument-forms are valid which are not. Here we sketch two kinds of proposals.

## Intuitionistic logic

https://plato.stanford.edu/entries/logic-intuitionistic/

Intuitionistic logic can be succinctly described as classical logic
- without the law of excluded middle (LEM), `A ∨ ¬A`
- without the double negation elimination (DNE), `¬¬A → A`
+ with the law of contradiction (LC), `(A → B) → (A → ¬B) → ¬A`
  - verbosely, `(A → B) → ((A → ¬B) → ¬A)`
  - or          `(A → B) ∧ (A → ¬B) ⊢ ¬A`
  - or               `A → B, A → ¬B ⊢ ¬A`
  - or                `A → (B ∧ ¬B) ⊢ ¬A`
  - or                       `A → ⊥ ⊢ ¬A`
  - or, if `A ⊢ B` and `A ⊢ ¬B` then `⊢ ¬A`
  - or, if `A ⊢ B ∧ ¬B` then `⊢ ¬A`
  - or, if `A ⊢ ⊥` then `⊢ ¬A`
  - if assuming `A`, you derive both `B` and `¬B`, then infer `¬A`, and vv
  - if assuming `A`, you derive a contradiction, then infer `¬A`, and vv
  - the law of non-contradiction (LNC) is usually expressed as `¬(A ∧ ¬A)`
+ with ex falso (sequitur) quodlibet (EFQ), `¬A → A → B`
  - EFQ          `¬A → A → B`
  - verbosely,  `¬A → (A → B)`
  - curryied,  `(¬A ∧ A) → B`
  - or,          `¬A ∧ A ⊢ B`
  - or,           `¬A, A ⊢ B`
  - or,               `⊥ ⊢ B`
  - i.e. anything follows from contradiction



Intuitionistic logic rejects the validity of the *Law of Excluded Middle (LEM)*, `p ∨ ¬p`, and other inferences related to this, such as *Double Negation Elimination* (DNE), `Γ ⊢ ¬¬A` ⇒ `Γ ⊢ A`.

Roughly speaking, there are two main motivations for these restrictions. The traditional intuitionists L. E. J. Brouwer and Arend Heyting held that the essence of mathematics is idealized mental construction. Consider, for example, the proposition that for every natural number `n` there is a prime number `m > n` such that `m < n! + 2`. For Brouwer, this proposition invokes a procedure that, given any natural number `n`, produces a prime number `m` that is greater than `n` but less than `n! + 2`. The proposition expresses the existence of such a procedure. Given this orientation, we have no reason to hold that for any mathematical proposition `Φ`, we can establish either the procedure associated with `Φ` or the procedure associated with `¬Φ`.

Michael Dummett provides general arguments concerning how language functions, as a vehicle of communication, to argue that intuitionistic logic is uniquely correct, the One True Logic, not just for mathematics.

Philosophically, intuitionism differs from *logicism* by treating logic as a part of mathematics rather than as the foundation of mathematics; from *finitism* by allowing constructive reasoning about potentially uncountable structures; and from *Platonism* by viewing mathematical objects as mental constructs with no independent ideal existence.

*Hilbert's formalist program*, to justify classical mathematics by reducing it to a formal system whose consistency should be established by finitistic (hence constructive) means, was the most powerful contemporary rival to Brouwer's developing intuitionism. In his 1912 essay "Intuitionism and Formalism", Brouwer correctly predicted that any attempt to prove the consistency of complete induction on the natural numbers would lead to a vicious circle.


Brouwer observed that LEM was abstracted from finite situations, then extended without justification to statements about infinite collections. For example, let `x` and `y` range over `ℕ`, 
and let `B(y)` abbreviate `P(y) ∧ P(y + 2)` 
(twin-prime conjecture), 
where `P(y)` means that `y` is a prime number.
Then, `∀y(B(y) ∨ ¬B(y))` 
holds intuitionistically as well as classically, 
because in order to determine 
whether or not a natural number is prime 
we need only check whether or not 
it has a divisor strictly between itself and 1.

But if `A(x)` abbreviates `∃y(y > x ∧ B(y))`, 
then in order to assert 
`∀x(A(x) ∨ ¬A(x))` intuitionistically, 
we would need an effective method 
(cf. the Church-Turing thesis) 
to determine whether or not 
there is a pair of twin primes 
larger than an arbitrary natural number `x`, 
and so far no such method is known. 
An obvious semi-effective method is 
to list the prime number pairs 
using a refinement of Eratosthenes' sieve 
(generating the natural numbers one by one 
and striking out every number `y` 
which fails to satisfy `B(y)`), 
and if there is a pair of twin primes 
larger than `x` this method will 
eventually find the first one. 
However, `∀xA(x)` expresses 
the Twin Primes Conjecture, 
which has not yet been proved or disproved, 
so in the present state of our knowledge 
we can assert 
neither `∀x(A(x) ∨ ¬A(x))` 
nor     `∀xA(x) ∨ ¬∀xA(x)`.

One may object that these examples depend on the fact that the Twin Primes Conjecture has not yet been settled. A number of Brouwer's original "counterexamples" depended on problems (such as Fermat's Last Theorem) which have since been solved. But to Brouwer the general LEM was equivalent to *the a priori assumption that every mathematical problem has a solution* - an assumption he rejected, anticipating Gödel's incompleteness theorem by a quarter of a century.

The rejection of LEM has far-reaching consequences.

On the one hand:

* Intuitionistically, *reductio ad absurdum (RAA) only proves negative statements*, since `¬¬A → A` does not hold in general. If it did, LEM would follow by modus ponens from the intuitionistically provable `¬¬(A ∨ ¬A)`.

* Intuitionistic propositional logic does not have a *finite truth-table interpretation*. There are infinitely many distinct axiomatic systems between intuitionistic and classical logic.

* Not every propositional formula has an intuitionistically *equivalent disjunctive or conjunctive normal form*, built from prime formulas and their negations using only `∨` and `∧`.

* Not every predicate formula has an intuitionistically equivalent *prenex normal form*, with all the quantifiers at the front. While `∀x¬¬(A(x) ∨ ¬A(x))` is a theorem of intuitionistic predicate logic, `¬¬∀x(A(x) ∨ ¬A(x))` is not; so `¬∀x(A(x) ∨ ¬A(x))` is consistent with intuitionistic predicate logic.


- `A ∨ ¬A` ✘
- `¬¬A → A`    ✘
- `¬¬(A ∨ ¬A)` ✔
- `∀x¬¬(Ax ∨ ¬Ax)`  ✔
- `¬¬∀x(Ax ∨ ¬Ax)`  ✘
-  `¬∀x(Ax ∨ ¬Ax)`  ✔


On the other hand:

* Every intuitionistic proof of a *closed statement of the form `A ∨ B`* can be effectively transformed into an intuitionistic proof of `A` or an intuitionistic proof of `B`, and similarly for *closed existential statements*.

* Intuitionistic propositional logic is *effectively decidable*, in the sense that a finite constructive process applies uniformly to every propositional formula, either producing an intuitionistic proof of the formula or demonstrating that no such proof can exist.

* The *negative fragment of intuitionistic logic* (without `∨` or `∃`) contains a faithful translation of classical logic; and similarly for intuitionistic and classical arithmetic.

* Intuitionistic arithmetic can consistently be *extended by axioms which contradict classical arithmetic*, enabling the formal study of recursive mathematics.

* Brouwer's controversial *intuitionistic analysis*, which conflicts with LEM, can be formalized and shown consistent relative to a classically and intuitionistically correct subtheory.

---

The constructive independence of the logical operations `∧`, `∨`, `→`, `¬`, `∀`, `∃` contrasts with the classical situation, where e.g. `A ∨ B` is equivalent to `¬(¬A ∧ ¬B)`, and `∃xAx` is equivalent to `¬∀x¬Ax`.

From the BHK viewpoint, a sentence of the form
* `A ∨ B` asserts that either a proof of `A`, or a proof of `B`, has been constructed
* `¬(¬A ∧ ¬B)` asserts that an algorithm has been constructed which would effectively convert any pair of constructions proving `¬A` and `¬B`, respectively, into a proof of a known contradiction.

https://plato.stanford.edu/entries/logic-intuitionistic/#AdmiRuleIntuLogiArit
