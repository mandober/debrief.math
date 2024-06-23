# Empty type

Empty type, `𝟘`, is a canonical unihabited type. It is not *the* empty type because there are other types that are uninhabited, but its not entirely clear whether they are all considered the same type. Following the similar situation from set theory, they should be like all empty sets are the same empty set, so there is only one empty set. But, set equality is extensional: two sets are equal iff they have the same elements. In type theory, equality is (I think?) intensional (?) so it is not the case that all empty types are the same (?). In the meantime, we use the term "empty type" with an indefinite and definite article as well as with the null article.

Being unihabited means that there are no terms of type `𝟘`, so, in Agda, the definition of the empty type, as a GADT, lacks a type constructor:

```agda hs
data 𝟘 : Type where
```

Having no term means you can never produce a value of the empty type, but this doesn't prevent us to bluff. For example, and perhaps counter-intuitively, there is a single function of the type `𝟘 → 𝟘`, namely the identity function. This is compatible with arithmetics where `0⁰ = 1`. So, although the type `𝟘` is uninhabited, the type `𝟘 → 𝟘` is inhabited (it has one term, the identity function). In fact, the non-dependent elimination principle for the empty type generalizes this.

As another example, we can use the empty type as the indexing type to get a family of types indexed by it, `x : 𝟘 ⊢ P(x) type`. This says that if `x` is a term (!) of the empty type, then we can form a type family `P(x)` indexed by it. The *induction principle for the empty type* states that for any type family `x : 𝟘 ⊢ Q(x) type`, we have a term `ind : Π (x:𝟘) Q(x)`.


## Proposition-as-types interpretation

The empty type is used to define *negation*, similarly to how the negation is defined in intuitionistic logic, `¬P = P → ⊥`. Only in type theory, working under the propositions-as-types view, we use the empty type (instead of the Boolean 'false' value) to express the fact that a proposition has no proof. Then the negation of a proposition `P` amounts to having a function that takes a proof of `P` to the empty type, which has no proof since it has no terms (witnesses, evidence), `¬P = P → 𝟘`.

While the empty type is uniquelly used to express the fact that a proposition has no proof, the unit type is used to express the fact that a proposition has a proof, that is, that a proof exists, but what that proof actually is, for some reason, doesn't matter - only the fact that there is one does. However, besides the unit type, other inhabited types are also used to express this, and preferably so.

In logic, in order to prove that a proposition is false, we assume it is true and use the assumption in the attempt to reach a contradiction (like `0 = 1`).

In the proofs-as-programs paradigm, in order to show that a statement represented by a type `A` is false, we assume a hypothetical term `x:A`, and then try to build a (necessarily impossible) term of the type `𝟘`, which is the contradiction we're looking for. Thus, in logic, the negation of `A` is defined as `A` implies 'false', `¬P = P → false`, or `A` implies contradiction, `¬P = P → ⊥` (although contradiction and falsity may have the same symbol).

And in type theory, we define the negation of a type `A` to be the function type `A → 𝟘`, which we use to define negation as an abbreviation

```agda hs
¬_ : Type → Type
¬ A = A → 𝟘
```

## Elimination principle

In FP, we usually define functions in terms of multiple equations using patern matching. Agda has a special pattern, called the absurd pattern, `()`, which expresses the fact that no reasonable pattern exists to be matched against the type because the type is empty.

Similarly to how the empty type is defined by giving an empty list of constructors, we define the function `𝟘-elim` by giving an empty list of equations, which is made explicit with the absurd pattern.

```agda hs
𝟘-elim : {A : 𝟘 → Type} (x : 𝟘) → A x
𝟘-elim ()
```

In terms of logic, this says that in order to show that a property `A` of elements of the empty type holds for all `x : 𝟘`, we need to do nothing, because there is no element to check, and by doing nothing we have exhaust all possibilities. Situations like this are said to be vacuously true. (It is important to notice that this is not a mere technicality, but the practical examples will be shown later).

The non-dependent version of elimination says that there is a function from the empty type to any type, `𝟘 → A`. If `n = |A|`, this is `n⁰ = 1`. That is, there is a single function from the empty type to any type (even back to the empty itself, since 0⁰ = 1).

```agda hs
𝟘-nondep-elim : {A : Type} → 𝟘 → A
𝟘-nondep-elim {A} = 𝟘-elim {λ _ → A}
```


## Definition of emptiness

On the other hand, there is a function `f : A → 𝟘` if and only if `A`
has no elements, that is, if `A` is also empty. This is because if
`x : A`, there is no element `y : 𝟘` we can choose
in order to define `f x` to be `y`. In fact, we make this observation into our
definition of emptiness:
```agda
is-empty : Type → Type
is-empty A = A → 𝟘
```
So notice that this is the same definition as that of negation.

Here is another example of a type that is empty. In the [introduction](introduction.lagda.md) we defined the identity type former `_≡_`, which [we will revisit](identity-type.lagda.md), and we have that, for example, the type `3 ≡ 4` is empty, whereas the type `3 ≡ 3` has an element `refl 3`. Here are some examples coded in Agda:
```agda
𝟘-is-empty : is-empty 𝟘
𝟘-is-empty = 𝟘-nondep-elim

open import unit-type

𝟙-is-nonempty : ¬ is-empty 𝟙
𝟙-is-nonempty f = f ⋆
```

The last function works as follows. First we unfold the definition of `¬ is-empty 𝟙` to get `is-empty 𝟙 → 𝟘`. Unfolding again, we get the type `(𝟙 → 𝟘) → 𝟘`. So, given a hypothetical function `f : 𝟙 → 𝟘`, which of course cannot exist (and this what we are trying to conclude), we need to produce an element of `𝟘`. We do this by simply applying the mythical `f` to `⋆ : 𝟙`. We can actually incorporate this discussion in the Agda code, if we want:
```agda
𝟙-is-nonempty' : ¬ is-empty 𝟙
𝟙-is-nonempty' = γ
 where
  γ : (𝟙 → 𝟘) → 𝟘
  γ f = f ⋆
```
Agda accepts this second version because it automatically unfolds definitions, just as we have done above, to check whether what we have written makes sense. In this case, Agda knows that `¬ is-empty 𝟙` is exactly the same thing as `(𝟙 → 𝟘) → 𝟘` *by definition* of `¬` and `is-empty`. More examples are given in the file [negation](negation.lagda.md).

[Go back to the table of contents](https://martinescardo.github.io/HoTTEST-Summer-School/)
