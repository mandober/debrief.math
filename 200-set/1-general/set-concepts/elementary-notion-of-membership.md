# Set theory :: Elementary notions :: Set Membership

*Membership*, or more precisely, *set membership*, or sometimes, *belonging* relation is a primitive binary relation denoted by `∈`.


- name: set membership
- symbol: `∈`
- type of symbol: nonlogical (theory) symbol
- logical element: binary relation (predicate), `x ∈ y`
- kind: primitive notion

Membership is relation, and a binary relation at that as it always relates two entities. The two entities are the individuals comprising the *domain of discourse*, which contains all the objects under discussion.

Usually, as in ZFC, these objects are sets, so `∈` always relates two sets. However, in other set theories, like in NBG, there are non-set objects called *urelements*, so we have to be careful when using `∈` to relate individuals in the DOD - namely, `x ∈ v`, where `v` is an urelement, is not only false but nonsensical. We'd need to separate the two sides and specify that the symbol on the right side of `∈` must refer to a set.

In ZFC, `∈` relates two objects from the DOD, which we know are always sets, but the actual symbols used flanking the `∈` may be variables or constants or their mix, e.g. x ∈ y (vars), A ∈ B (const), x ∈ A (var and const), A ∈ x (const and var). When all objects are sets it doesn't really matter if we use capital or lowercase letters to represent them; this is something specified by the grammatical rules of FOL regarding a particular set theory.

Membership is a elemetary relation in that it is usually introduced as a primitive (i.e. undefined) notion, in most set theories, including ZFC. This way the symbol `∈` is the symbol belonging to *theoretical symbols*, as opposed to logical symbols (e.g. ∧, ⇒, ∀, or even `=`).

FOL defines its intrinsics and vocabulary without any theory in mind. Then, when FOL is used as a language of some mathematical theory, FOL symbols are augmented with the vocabulary specific to that theory, and the new theoretical symbols are described. For example, when FOL is the language of ZFC set theory, only one symbol belonging to the theory is introduced, namely, `∈`. Then `∈` is described to be a binary predicate such as P(x).

Stictly speaking, this means that the symbol `∈` may not ever appear in set-theoretic FOL formulas because membership is represented by a predicate such as `P(x)`, i.e. `P(x) = x ∈ x`. Namely, FOL formulas are the same, i.e. use the same symbols regardless of the theory - it is only when the *interpetation* is considered that various FOL symbols are assigned a meaning; e.g. `P₁(x)` may be assigned the meaning `x ∉ x`. All mentioned symbols would be assigned a meaning under some interpetation. Particularly, this means that there would have to be many predicate symbols available to represent all the possible expressions that have been writen in an exposition of a theory, e.g.
- P₁(x) := x ∈ x
- P₂(x) := x ∉ x
- P₁(x) := x ∈ y (what does a free var y represents?)
- P₃(x) := x ∈ ℕ (ℕ constant represents a well-known set)
- P₄(x) := x ≠ x
- P₅(x) := x = x
- P₆(x) := x ⊆ x
etc. and this is only a fraction of the entries in an interpetation.

When `P(x)` is e.g. `x ∈ x`, variable `x` is normally bound by a quantifier preceding the predicate, that is, zooming-out would probably reveal a quantifier that binds the `x`, perhaps `∀x(P(x))`. This would make this example instantiation of the predicate `P(x)` (as `x ∈ x`) a *closed formula*.

But what if an instantiation mentiones a free variable `y`? How is `y` then interpreted? And what is the relation between a free variable `y` vs using a constant `A` in an instantiation? What if `x` itself is unbound? Could it be? It says somewhere that a theory is a collection of all *closed formulas*.

## Membership as a relation

If every relation is identified with some set, then the relation of membership should also be a particular set, namely `{⟨x,y⟩ : x ∈ y}`. But does this set even exist? Given the Russell's paradox, it is a non-trivial claim that such a set exists.

In fact, an axiomatic development of set theory denies the existence of this set. So, even if some relations can be treated as sets, *the relation of set-membership will have to be a special case*. Actually, membership is usually introduced as a primitive notion, as that of a binary predicate.

## Membership as a set

If the set membership relation is a set `{ ⟨x,y⟩ | x ∈ y }` 
and if we let a set 
`A = {a, b, c}`, 
then this set membership relation is a set 
`∈ᴀ = {(a, A), (b, A), (c, A)}`
then this set membership relation is a set (using abbrev)
`∈(∈ᴀ) = { ((a, A), ∈ᴀ), ((b, A), ∈ᴀ), ((c, A), ∈ᴀ) }`
then this set membership relation is a set…

That's not even mentioning a set that contains itself, 
A = {A} 
then this set membership relation is a set 
∈ᴀ = {⟨A, A⟩} 
then this set membership relation is a set 
∈(∈ᴀ) = { (⟨A, A⟩, {⟨A, A⟩}) } 
then this set membership relation is a set 
∈(∈(∈ᴀ)) = { ( (⟨A,A⟩,{⟨A,A⟩}), {(⟨A,A⟩,{⟨A,A⟩})} ) } 
then this set membership relation is a set…



## Relation-as-predicate vs relation-as-set

In set theory with the law of excluded middle, predicates are understood to be *characteristic functions* or set *indicator functions* (i.e. functions from a set element to a truth value). Set-builder notation makes use of predicates to define sets.

https://en.wikipedia.org/wiki/Indicator_function

Q: When FOL is used as the language of set theory, DOD consists of sets, so variables, constants and functions reference individuals (i.e. sets) in DOD, while relations (predicates, properties) reference truth values. So, what is up then with relations-as-sets and relations-as-truth-values? Relations can't be both, can they? Or, are these two separate notions of relations, i.e. relations as associations beteween sets (and sets themselves), and relation as a synonym for a predicate? The notation is the same: `Rxy` i.e. `⟨x,y⟩ ∈ R` may stand for a relation-as-predicate, and `xRy` i.e. `⟨x,y⟩ ∈ R` for a relation-as-set.

Sets are sets, predicates yield statements with a truth value. But a predicate *can* also be trated as a set - a *truth set*; then a concrete set manifests that truth set. In fact, we often define sets by specifying a predicate the elements must satisfy. So, in a way, *predicates may be identified with sets*.

In FOL variables range over individuals, which are sets in the DOD, and they cannot range over predicates - and this is sometimes expressed by saying that variables in FOL cannot range over sets of sets (only over sets). They can range over sets of sets in SOL, and over sets of sets of sets in TOL, and over anything in HOL.


## Philosophical Reflections

Relations are defined as certain sets. That is, a relation on set A is defined as a subset of A², R ⊆ A², and a relation between sets A and B is R ⊆ AB.

We should pause and ask a quick philosophical question:
>What is such a definition doing?

It is extremely doubtful that we should want to say that we have discovered some metaphysical identity facts; that, for example, the order relation on ℕ turned out to be the set `R = {⟨n,m⟩ : n,m ∈ N and n < m}`.

Here are 3 reasons why.

1. First: an ordered pair is almost always defined as `⟨a,b⟩ = {{a},{a,b}}`. Consider instead the definition `∥a,b∥ = {{b},{a,b}} = ⟨b,a⟩`. When `a ≠ b`, we have that `⟨a,b⟩ ≠ ∥a,b∥`. But we could equally have regarded `∥a,b∥` as our definition of an ordered pair, rather than `⟨a,b⟩`. Both definitions would have worked equally well. So now we have two equally good candidates to "be" the order relation on the natural numbers, namely:
- R = {⟨n,m⟩ : n,m ∈ N and n < m}
- S = {∥n,m∥ : n,m ∈ N and n < m}
Since `R ≠ S`, by extensionality, it is clear that they cannot both be identical to the order relation on ℕ. But it would just be arbitrary, and hence a bit embarrassing, to claim that `R` rather than `S` (or vice versa) is the ordering relation, as a matter of fact. This is a very simple instance of an argument against set-theoretic reductionism which Benacerraf made famous in 1965.

2. Second: if we think that every relation should be identified with a set, then the relation of set-membership itself, `∈`, should be a particular set. Indeed, it would have to be the set `{⟨x,y⟩ : x ∈ y }`. But does this set exist? Given Russell's Paradox, it is a non-trivial claim that such a set exists. In fact, it is possible to develop set theory in a rigorous way as an axiomatic theory, and that theory will indeed deny the existence of this set. So, even if some relations can be treated as sets, the relation of set-membership will have to be a special case.

3. Third: when we "identify" relations with sets, we said that we would allow ourselves to write `Rxy` for `⟨x,y⟩ ∈ R`. This is fine, provided that the membership relation, `∈`, is treated as a predicate. But if we think that `∈` stands for a certain kind of set, then the expression `⟨x,y⟩ ∈ R` just consists of 3 singular terms which stand for sets: `⟨x,y⟩`, `∈`, and `R`. And such a list of names is no more capable of expressing a proposition than the nonsense string: "the cup penholder the table". Again, even if some relations can be treated as sets, the relation of set-membership must be a special case. This rolls together a simple version of Frege's concept "horse" paradox, and a famous objection that Wittgenstein once raised against Russell.

>So where does this leave us?
Well, there is nothing wrong with saying that relations are sets. We just have to understand the spirit in which that remark is made. We are not stating a metaphysical identity, but we are simply noting that, in certain contexts, we can (and will) treat (certain) relations as certain sets.

## Bradley's regress

https://en.wikipedia.org/wiki/Bradley%27s_regress

Suppose, for example, that a respects b. This state of affairs seems to involve three things: a, b, and the relation of respecting. For the state of affairs of a respecting b to obtain, it doesn't, however, suffice that these three things (a, b, and the relation of respecting) exist. They must also be related in some way. What is required, we might say, is that a and b "stand in" the relation of respecting. But now we seem to have another state of affairs: the state of affairs of a and b standing in the relation of respecting. This state of affairs in turn seems to involve four things: a, b, the relation of respecting, and the relation of standing in. Again, however, for it to be the case that a and b stand in the relation of respecting, it doesn't suffice that these four items exist. They must also be related in some way. What is required, we might now say, is that a, b, and the relation of respecting stand in the relation of standing in. And so on, ad infinitum.

## Refs

https://en.wikipedia.org/wiki/Unity_of_the_proposition
https://en.wikipedia.org/wiki/Third_man_argument
https://en.wikipedia.org/wiki/Fact
https://en.wikipedia.org/wiki/Reductio_ad_absurdum
https://en.wikipedia.org/wiki/Category:Theorems_in_propositional_logic
https://en.wikipedia.org/wiki/Consequentia_mirabilis
https://en.wikipedia.org/wiki/Peirce%27s_law
https://en.wikipedia.org/wiki/Continuous_predicate
https://en.wikipedia.org/wiki/Unity_of_the_proposition
https://en.wikipedia.org/wiki/Infinite_regress
https://en.wikipedia.org/wiki/Hypostatic_abstraction
https://en.wikipedia.org/wiki/Relation_(mathematics)
https://en.wikipedia.org/wiki/Predicate_(mathematical_logic)
https://en.wikipedia.org/wiki/Semantics_of_logic
https://en.wikipedia.org/wiki/Rules_of_passage_(logic)
