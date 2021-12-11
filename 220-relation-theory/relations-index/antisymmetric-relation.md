# Antisymmetric relation

https://en.wikipedia.org/wiki/Antisymmetric_relation

A binary relation `R` on a set `X` is antisymmetric if there is no pair of distinct elements of `X` each of which is related by `R` to the other.

More formally, `R` is antisymmetric precisely if for all a,b in X   

if `aRb` with `a ≠ b` then `bRa` must hold. Or, equivalently:

`a𝓡b ⋀ b𝓡a -> a = b`

The definition of antisymmetry says nothing about whether `aRa` actually holds or not for any `a` (if it holds then the relation is reflexive).

Formulae
- `a𝓡b ⋀ b𝓡a -> a = b`
- `∀ab ∈ X. [(a,b) ∈ R ⋀ (b,a) ∈ R] -> [a = b]`

Properties
- antysymmetric tolerates mirrired pairs `(a,b)` and `(b,a)` provided their components are the same, i.e. as long as `a = b`, thus, `(a, a)`
- can have any number of pairs that make up the diagonal
- allows mirrored pairs but only of the `(a,a)` form
- `<=` is antysymmetric

## Examples

The *divisibility relation* on ℕ is an example of an antisymmetric relation.

`n,m ∈ ℕ. n|m <-> m % n = 0`

(m is divisible by n if n divides m without a remainder)

In this context, antisymmetry means that the only way each of two numbers can be divisible by the other is if they are in fact the same number; that is, the only way an antisymmetric relation can be transposed but still remain valid is if the two related numbers are actually the same number.

Equivalently, if n and m are distinct and n is a factor of m, then m cannot be a factor of n.

`n,m ∈ ℕ. n|m ⋀ m|n -> n = m`

A real-life example of a relation that is typically antisymmetric is "takes care of the bill (e.g. on some celebratory occasion)". Typically, some people pay their own bills, while others pay for their spouses or friends. As long as no two people pay each other's bills, the relation is antisymmetric.

## Properties

- partial orders are antisymmetric by definition
- total orders are antisymmetric by definition
- a relation can be both symmetric and antisymmetric (in this case, it must be coreflexive), and there are relations which are neither symmetric nor antisymmetric (for example, the "preys on" relation on biological species).

Antisymmetry is different from asymmetry: a relation is asymmetric if and only if it is antisymmetric and irreflexive.


coreflexive-relation.md
quasireflexive-relation.md
