# Origins of primitive recursion

- 1.2 Origins of primitive recursion
  - 1.2.1 [Scolem](#scolem)
  - 1.2.2 [Hilbert](#hilbert)
  - 1.2.3 [Gödel](#gödel)


## Scolem

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

## Hilbert

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

## Gödel

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
