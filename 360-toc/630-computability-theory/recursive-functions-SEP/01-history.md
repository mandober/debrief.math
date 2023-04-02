# Recursive Functions - SEP

https://plato.stanford.edu/entries/recursive-functions/

## Historical Background

- 1.1 Early history of recursive definitions
- 1.2 Origins of primitive recursion
- 1.3 Arithmetical Representability and Gödel's First Incompleteness Theorem
- 1.4 Ackermann-Péter Function
- 1.5 General Recursive Functions
- 1.6 Church's Thesis
- 1.7 Entscheidungsproblem and Undecidability
- 1.8 Origins of Recursive Function Theory and Computability Theory



## Early history of recursive definitions

Examples of recursive definitions can be found intermittently in the history of ancient and medieval mathematics. A familiar illustration is the sequence of Fibonacci numbers.

The definition of this sequence has traditionally been attributed to the thirteenth century Italian mathematician Leonardo of Pisa (also known as Fibonacci) who introduced it in his Liber Abaci in the context of an example involving population genetics, but descriptions of similar sequences can also be found in Greek, Egyptian, and Sanskrit sources dating as early as 700 BCE.

General interest in *recursion as a mode of function definition* originated in the mid-XIX century as part of the broader program of arithmetizing analysis and the ensuing discussions of the foundations of arithmetic itself.

In this context, the formulation of recursive definitions for number theoretic functions was closely tied to the isolation of *mathematical induction* as a mode of reasoning about the natural numbers.

It was in this setting in which Grassmann (1861) and Peirce (1881) first gave the familiar recursive definitions of addition and multiplication. They then used these definition to prove the associative, commutative, and distributive laws for these operations.

The first person to employ the expression *"definition by recursion"* appears to have been Dedekind in his essay "Was sind und was sollen die Zahlen", 1888.

This work presents a set theoretic foundation for arithmetic wherein Dedekind demonstrated that it was possible to state and prove the existence and uniqueness of functions defined by primitive recursion as mathematical theorems.

He formulated recursive definitions of addition, multiplication, exponentiation and then also formally proved by induction that the functions so defined satisfy the expected algebraic identities.

The first two of these definitions would later be adopted by Peano in 1889 as defining the symbols `+` and `×` in the direct axiomatization of arithmetic he based on Dedekind's monograph.


## Origins of primitive recursion

### T. Scolem

The first work devoted exclusively to recursive definability was **Skolem**'s 1923's paper titled: "The foundations of elementary arithmetic established by the recursive mode of thought, without the use of apparent variables ranging over infinite domains".

Skolem's paper is significant with respect to the subsequent development of computability theory for at least 3 reasons.
- it contains a informal description of what we now call PRFs
- it can be regarded as the first place where recursive definability is linked to effective computability (see also Skolem 1946)
- it demonstrates that a wide range of functions and relations are primitive recursive in a manner which anticipates Gödel's 1931's use of primitive recursion for the *arithmetization of syntax*.

One of Skolem's stated goals was to present a logical foundation for number theory which *avoids the use of unrestricted quantifiers*.

He was inspired in this regard by the observation that it is possible to develop much of elementary arithmetic without the use of the quantifiers that figure in the formalization of number theory given by Russell and Whitehead in Principia Mathematica (1910-1913).

This was to be accomplished by formulating arithmetical theorems as what he referred to as *functional assertions*. These took the form of identities between terms defined by primitive recursive operations which Skolem referred to as *descriptive functions*.

For instance, the commutativity of addition is expressed in this form by an equation with free variables `x + y = y + x`.

In cases where such statements are provable in the system Skolem describes, the intended interpretation is that the claim holds universally for all natural numbers, e.g. `∀x∀y(x + y = y + x)`. But in Skolem's system there is no means of negating such a statement to express a bare existential assertion without producing a witness.

Statements like this would later be referred to by Hilbert & Bernays (1934) (who provided the first textbook treatment of recursion) as *verifiable* in the sense that their individual instances can be verified computationally by replacing variables with concrete numerals.

This is accomplished by what Skolem referred to as the *"recursive mode of thought"*. The sense of this phrase is clarified by the following 4 properties of the system he describes:
- natural numbers are taken as basic objects together with successor function.
- it is assumed that descriptive functions proven to be equal 
  may be substituted for one another in other expressions.
- all definitions of functions and relations on ℕ are given by recursion.
- functional assertions must be proven by induction.

Taking these principles as a foundation, Skolem showed how to obtain recursive definitions of the predecessor and subtraction functions, the less than, divisibility, and primality relations, greatest common divisors, least common multiples, and bounded sums and products.

Overall Skolem considered instances of what we would now refer to as
- primitive recursion
- course-of-values recursion
- double recursion
- recursion on functions of type ℕ → ℕ

However, Scolem didn't introduce *general schemas* so as to systematically distinguish these modes of definition.

Nonetheless, the 4 properties of Skolem's treatment provide a means of assimilating calculations to derivations in quantifier-free first-order logic.

It is thus not difficult to discern in (Skolem 1923) the kernel of the system we now know as *Primitive Recursive Arithmetic* (as later formally introduced by Hilbert & Bernays in 1934).

### D. Hilbert

The next important steps in the development of a general theory of recursive function arose as a consequence of the interaction between *Hilbert's Program* and *Gödel's 1931's proof of his Incompleteness Theorems*.

In 1900, **Hilbert** had announced the goal of proving the consistency of arithmetic - and ultimately also analysis and set theory - in the face of the set theoretic paradoxes.

Hilber't stance would come to be called the *finitary standpoint*, i.e. the fragment of mathematical reasoning pertaining to finite combinatorial objects which was intended to serve as the secure basis for a consistency proof.

The proof itself was to be carried out using the methods of what Hilbert referred to as *metamathematics*, i.e. the formal study of axioms and derivations which would grow into the subject now known as *proof theory*.

In one of his initial descriptions of this program Hilbert (1905) sketched the basic form which a metamathematical proof of consistency might take.

Suppose, for instance, that `T` is a mathematical theory about which it is possible to prove the following conditional:

>(i) If `n` applications of rules of inference applied to the axioms of a system `T` do not lead to a contradiction, then `n + 1` applications also do not lead to a contradiction.

Were it possible to provide a mathematical demonstration of (i), it might seem possible to conclude that

>(ii) `T` is consistent.


However *Poincaré* (1906) observed that Hilbert's approach relies on mathematical induction in inferring (ii) from (i). He objected on this basis that this renders Hilbert's proposed method circular in the case that the system `T` in question itself subsumes principles intended to formalize induction.

Together with his collaborators Ackermann and Bernays, Hilbert developed metamathematics considerably during the 1910-1920s. This served as the basis of Hilbert's (1922) lecture wherein he replied to Poincaré by making a systematic distinction between "formal" occurrences of mathematical induction in the object language and the metatheoretic use of induction as a "contentual" principle used in order to reason about proofs as finite combinatorial objects. It was also in this context in which Hilbert connected the latter form of induction to the "construction and deconstruction of number signs".

As is made clear in subsequent presentations, Hilbert understood "number signs" to be unary numerals written in stroke notation of the form `|, ||, |||, …`.

Such expressions can be operated on concretely by adjoining or removing strokes in a manner which mirrors the arithmetical operations of successor and predecessor which figure in Skolem's "recursive mode of thought".

This observation in turn informed Hilbert's explanation of the meaning of functional assertions in terms of their logical derivability fromrecursive definitions which also serve as procedures for computing the values of functions they define (Hilbert 1920).

Hilbert first described a logical calculus for finitary number theory including "recursion and intuitive induction for finite totalities" in (1923). Although this presentation also included a discussion of definition by simultaneous recursion, a more extensive treatment of what we would now recognize as *recursion schemes* is given in his well known paper "On the infinite" (1926).

This includes a discussion of what Hilbert calls *ordinary recursion* (which is similar to Skolem's description of primitive recursion), *transfinite recursion*, as well as *recursion at higher types*. This treatment makes clear that Hilbert and his collaborators had taken substantial steps towards developing a *general theory of recursive definability*. Ultimately, however, the influence of Hilbert's presentations was diminished in light of the more precise formulation of primitive recursion which Gödel would soon provide.


### K. Gödel

Gödel's (1931) definition was as follows:

A number-theoretic function `ϕ(x₁, …, xₙ)` is said to be recursively defined in terms of the number-theoretic functions `ψ(x₁, …, xₙ˗₁)` and `μ(x₁, …, xₙ﹢₁)` if

```hs
ϕ(  0, x₂, …, xₙ) = ψ(x₂, …, xₙ)                       -- (i)
ϕ(S k, x₂, …, xₙ) = μ(k, ϕ(k, x₂, …, xₙ), x₂, …, xₙ)   -- (ii)
```
holds for all `x₁, …, xₙ, k`.

A number-theoretic function `ϕ` is said to be recursive if there is a finite sequence of number-theoretic functions `ϕ₁, ϕ₂, …, ϕₙ` that ends with `ϕ` and has the property that every function `ϕᵢ` of the sequence is recursively defined in terms of two of the preceding functions, or results from any of the preceding functions by substitution, or, finally, is a *constant* or the *successor* function.

A relation `R(x₁, …, xₙ)` between natural numbers is said to be recursive if there is a recursive function `ϕ(x₁, …, xₙ)` such that, for all `x₁, …, xₙ`, it holds that `R(x₁, …, xₙ) <=> ϕ(x₁, …, xₙ) = 0`. Note that Gödel used 0 for 'true' and 1 for 'false', thus, the previous equation means that vars `xᵢ` *do belong* to the relation if the function `ϕ` returns 0.

Putting aside Gödel's use of the term "recursive" rather than "primitive recursive" (which will be explained below), this exposition comes close to the modern definition of the primitive recursive functions, and the modern definition of primitive recursion is this Gödel's definition.

Gödel's definition also improved upon those of his predecessors by clearly defining the class of *initial functions* which are allowed in primitive recursive definitions and by stating that each primitive recursive function possesses a definition in terms of a sequence of functions showing how it is built up from initial functions.

This makes clear that the primitive recursive functions constitute a mathematically well-defined class of functions on the natural numbers (which will be denoted here as `PR`).

Gödel additionally proved that the *primitive recursive relations* - defined as characteristic functions are closed under propositional operations and quantification bounded by a primitive recursive function.


## Arithmetical Representability and Gödel's First Incompleteness Theorem



The foregoing definition appears in Gödel's well-known, 1931's paper `"On formally undecidable propositions of Principia mathematica and related systems I"`.

As he observes immediately before presenting it, the definition of primitive recursion is in fact a digression from the main focus of the paper, i.e. *proving the incompleteness of the axiomatic system of arithmetic he calls `P`*.

In order to understand Gödel's contribution to the initial development of recursive function theory, it will be useful to attend both to some features of this system and also to his proof of the *First Incompleteness Theorem* itself.


...


One of Gödel's goals was thus to provide a mathematical definition of the term "recursive" which generalizes prior examples of recursive definability in a manner but also captures to as great an extent as possible the class of functions computable by a finite procedure. 

This led him to define the so-called *general recursive functions* whose isolation in turn played an important role in the formulation of *Church's Thesis*.

However Gödel's definition also took place against the backdrop of other work which had been inspired by Hilbert's original consideration of different forms of recursive definitions. It will now be useful to examine these developments.


## Ackermann-Péter Function

Already in 1926, Hilbert had anticipated that it would be possible to formulate definitions of functions whose values could be computed *in a recursive manner but which are not themselves primitive recursive*.

In order to illustrate how such a definition might be obtained, he presented a heuristic argument involving the following sequence of functions:
- successor:       α₀(x, y) = x + 1
- addition:        α₁(x, y) = x + y
- multiplication:  α₂(x, y) = x ⨯ y
- exponentiation:  α₃(x, y) = xʸ = x ↑ y    = x ↑¹ y
- tetration:       α₄(x, y) = ʸx = x ↑↑ y   = x ↑² y
- pentation:       α₅(x, y)      = x ↑↑↑ y  = x ↑³ y
- hexation:        α₆(x, y)      = x ↑↑↑↑ y = x ↑⁴ y
- etc.

```hs
a₀  x    y  = succ x
a₁  x (S y) = a₀ (a₁   x y)
a₂  x (S y) = a₁ (a₂   x y) x
a₃  x (S y) = a₂ (a₃   x y) x
-- etc.
aᵢ﹢₁ x (S y) = aᵢ (aᵢ﹢₁ x y) x
```

The functions in this sequence are defined so that `αᵢ﹢₁(x, y+1)` is obtained by primitive recursion as `αᵢ(αᵢ﹢₁(x, y), x)`, together with an appropriate base case. It thus makes sense mathematically to consider `α(i,x,y) = αᵢ(x,y)` function, where `i` represents the the `i`-th operation in the sequence.

For fixed `i,n,m ∈ N`, it is thus possible to effectively compute the value of `α(i,n,m)` by first constructing the definition of `αᵢ(x,y)` and then evaluating it at `n` and `m`.

But it is also easy to see that `αᵢ﹢₁(x,x)` will eventually dominate `αᵢ(x,x)` for sufficiently large `x`. This in turn suggests that `α(i,x,y)` cannot be defined by a finite number of applications of the primitive recursion scheme and is thus not itself primitive recursive.

The specification of `α(i, x, y)` does not itself have the form of a recursive definition. But it is possible to define similar functions in a manner which generalizes the format of the PR scheme.

One means of doing so is to first use recursion on the type `ℕ → ℕ`, which is a simple form of *recursion at higher types* (as envisioned by Skolem and Hilbert), to define an **iteration functional** as follows:

```hs
-- | original
iter ϕ    0  = ϕ                            -- (A) ERROR
iter ϕ (S x) = ϕ (iter ϕ x)                 -- (B) ERROR

-- | corrected: typable in Haskell when we insert `fmap`
iter :: (ℕ -> ℕ) -> ℕ -> (ℕ -> ℕ)
iter ϕ    0  = ϕ
iter ϕ (S x) = fmap ϕ (iter ϕ x)
```

N.B: The original pair of equation is untypable (assuming I correctly inferred the overall type of `iter` above, which I'm pretty sure I did). They may be typed in Haskell if either we replace (A) with `ϕ 0` and remove the final `→ ℕ` in the type, or if we just `fmap` the return value in (B), leaving the type alone. Or, an untyped setting was actually assumed - no! they do talk about the types of these equations.


The `iter` takes as args a function `ϕ : ℕ → ℕ` as well as a number `x : ℕ` and is defined such that `iter(ϕ,n) = ϕⁿᐩ¹(x)`, i.e. the function which is the `n`-th iterate of `ϕ` (n-fold of `ϕ`).

We may now define a function `β : ℕ → (ℕ → ℕ)`

```hs
-- | original β
β :: ℕ -> (ℕ -> ℕ)
β    Z  = S
β (S x) = iter  β x     -- ERROR

-- | corrected β
β :: ℕ -> (ℕ -> ℕ)
β    Z  = S
β (S x) = iter (β x) x  -- this works with corrected `iter`

-- | corrected `iter`
iter :: (ℕ -> ℕ) -> ℕ -> (ℕ -> ℕ)
iter ϕ    0  = ϕ
iter ϕ (S x) = fmap ϕ (iter ϕ x)
```

N.B: Again, untypable. This time the signature was explicit as you can see. The reson `β` is untypable wrt their original definition of `iter` is that (and this part is fo sho), in the rhs call to `iter`, the `iter` is given `β` as the first arg - which is untypable since `iter` expects `(Nat -> Nat)` and `β`'s type is `ℕ -> (ℕ -> ℕ)`. However, fixing the rhs to `iter (β x) x` wrt the corrected `iter`'s definition works fine.


It can then be verified that

```hs
β(0) = x + 1
β(1) = 2 + (x + 3) − 3 =  x + 2
β(2) = 2 ⨯  x − 3      = 2x - 3
β(3) = 2 ^ (x + 3) − 3 = 2ˣ 2³ - 3
β(4) = 2^( … (2^2)…)   = ˣ2 - 3
-- etc.
```

On this basis, we may now define a variant of the so-called *Ackermann-Péter function* as `π(i, x) = β(i)(x)`, which is the result of applying the function `β(i)` to arg `x`. 

`π(i,x)` has the same order of growth as `αᵢ(x,x)` and it is possible to prove via the argument sketched above that `π(i,x)` is not primitive recursive.

Based on earlier work of Ackermann (1928), Péter (1935) also showed `π(i,x)` may also be defined by a so-called *doubly-recursive definition* of the following form which takes only natural numbers as arguments:

```hs
π    0     x  = x + 1
π (S i)    0  = π i 1
π (S i) (S x) = π i $ π (S i) x
```

(...)

Systematic consideration of such alternative recursion schemes was initiated by Péter (1932). It was also she who introduced the term *"primitive recursive"* to describe the class of functions given by Gödel's scheme, a choice which could become standard after its adoption by Kleene (1936a).

Péter additionally showed that Hilbert's (1926) formulation of *"ordinary recursion"* is equivalent to primitive recursion, and that **PRFs are closed under course-of-values recursion and nested recursions of one variable**.

Such studies led to her book (Péter 1967), whose original German edition "Rekursive Funktionen" (1951) was the first monograph devoted to recursive functions.

Together with the later work of Grzegorczyk (1953), these developments also inspired the investigation of various *subrecursive hierarchies* which would later play a role in proof theory and CS.


## General Recursive Functions

(...)

One evident drawback of Gödel's definition of general recursiveness is thus that there is no apparent means of establishing whether a given system of equations determines a unique function (even if only partially defined).

This is one of the reasons why Gödel's characterization has been replaced by other extensionally equivalent definitions such as *Kleene's partial recursive functions* in the subsequent development of computability theory.

## Church's Thesis

(...)

**Church's Thesis** (CT) corresponds to the claim that the class of functions which are computable by a finite mechanical procedure (or, as it is traditionally said, are effectively computable) coincides with the class of general recursive functions (GR), i.e.

`f: ℕᵏ → ℕ` is effectively computable iff `f ∈ GR`





## Entscheidungsproblem and Undecidability




## Origins of Recursive Function Theory and Computability Theory
