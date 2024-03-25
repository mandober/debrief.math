# Set theory :: Transitive set

https://en.wikipedia.org/wiki/Transitive_set

## Definition

>Set `A` is a **transitive set** if every element of `A` is a subset of `A`. 
Similarly, `M` is a transitive class if each elem of `M` is a subset of `M`.

More precisely, 
a set `A` is a transitive set 
if either of these two equivalent conditions hold:
* whenever `x ∈ A` and `y ∈ x`, then `y ∈ A`
* whenever `x ∈ A` and `x` is not an urelement (but a set), then `x ⊆ A`

The first condition says that a set is transitive if all elements (i.e. `y`) of each element (`x`) of `A`, is also in `A`. In other words,
>set is transitive if it contains the children of its children.

The second condition says that when a set 𝒰 is transitive 
>then each element of 𝒰's is a subset of 𝒰.

In fact the two conditions are equivalent in almost all cases (probably save for a few hairy cases "on the edge" of set theory, involving set of all sets, classes and universes). In fact, *urelements* are not part of ZF set theory, but they do appear in Kripke-Platek set theory and in a variant of NBG (Neumann-Bernays-Gödel) set theory described by Mendelson.


## Formal formula

Formally, `∀x∀y(x ∈ A ⋀ y ∈ x → y ∈ A)`.

```hs
∀𝒜 ∀A ∀a ((A ∈ 𝒜 ⋀ a ∈ A) → a ∈ 𝒜)
-- or
∀x ∀y ((x ∈ A ⋀ y ∈ x) → y ∈ A)
-- vs
∀x ((x ∈ A ⋀ ∀y (y ∈ x)) → y ∈ A)
-- or
∀x (x ∈ A → ∀y(y ∈ x → y ∈ A))
-- vs
∀x ∀y (x ∈ A → (y ∈ x → y ∈ A))
```

## WTF analysys

Let `A = {A, {∅}}` and `B = {B, ∅}`. If a set `𝒰` contains only `A` and `B` sets, i.e. `𝒰 = {A, B}`, then `𝒰` is not transitive. But, if besides A and B, `𝒰` also contains `∅` and `{∅}`, i.e. if `𝒰 = {A, B, {∅}, ∅}`, then `𝒰` is *indeed a transitive set*.

That is, for `𝒰` to be a transitive set, it needs to contain all members of its children, i.e. all members of sets `A` and `B`.

In other words, `𝒰` *needs to contain the children of its children to be transitive*.

```
A = {A, {∅}}
B = {B, ∅}
𝒰 = {A, B}                ✘ not transitive
𝒰 = {A, B, {∅}, ∅}        ✔ transitive
```

Note also that when 𝒰 is indeed a transitive set, then   
`A ⊆ 𝒰` and `B ⊆ 𝒰`, i.e.   
each element of 𝒰's is a subset of 𝒰.

## Examples

Using the definition of ordinal numbers suggested by John von Neumann, ordinal numbers are defined as *hereditarily transitive sets*: an ordinal number is a transitive set whose members are also transitive (and thus ordinals). The class of all ordinals is a transitive class.

Any of the stages `Vₐ` and `Lₐ` leading to the construction of the *von Neumann universe* `V` and *Gödel's constructible universe* `L` are transitive sets. The universes `V` and `L` themselves are transitive classes.

The complete list of all (115) finite transitive sets with up to 20 brackets:

```
{},
{{}},
{{},{{}}},
{{},{{}},{{{}}}},
{{},{{}},{{},{{}}}},
{{},{{}},{{{}}},{{{{}}}}},
{{},{{}},{{{}}},{{},{{}}}},
{{},{{}},{{{}}},{{},{{{}}}}},
{{},{{}},{{{}}},{{{}},{{{}}}}},
{{},{{}},{{{},{{}}}},{{},{{}}}},
{{},{{}},{{{}}},{{},{{}},{{{}}}}},
{{},{{}},{{},{{}}},{{},{{},{{}}}}},
{{},{{}},{{},{{}}},{{{}},{{},{{}}}}},
{{},{{}},{{{}}},{{{{}}}},{{},{{}}}},
{{},{{}},{{},{{}}},{{},{{}},{{},{{}}}}},
{{},{{}},{{{}}},{{{{}}}},{{{{{}}}}}},
{{},{{}},{{{}}},{{{{}}}},{{},{{{}}}}},
{{},{{}},{{{}}},{{{},{{}}}},{{},{{}}}},
{{},{{}},{{{}}},{{},{{}}},{{},{{{}}}}},
{{},{{}},{{{}}},{{{{}}}},{{},{{{{}}}}}},
{{},{{}},{{{}}},{{{{}}}},{{{}},{{{}}}}},
{{},{{}},{{{}}},{{},{{}}},{{},{{},{{}}}}},
{{},{{}},{{{}}},{{},{{}}},{{{}},{{{}}}}},
{{},{{}},{{{}}},{{{{}}}},{{{}},{{{{}}}}}},
{{},{{}},{{{}}},{{{{}}}},{{},{{}},{{{}}}}},
{{},{{}},{{{}}},{{{},{{{}}}}},{{},{{{}}}}},
{{},{{}},{{{}}},{{},{{}}},{{{}},{{},{{}}}}},
{{},{{}},{{{}}},{{},{{}}},{{},{{}},{{{}}}}},
{{},{{}},{{{}}},{{},{{{}}}},{{{}},{{{}}}}},
{{},{{}},{{{}}},{{{{}}}},{{{{}}},{{{{}}}}}},
{{},{{}},{{{}}},{{{{}}}},{{},{{}},{{{{}}}}}},
{{},{{}},{{{}}},{{},{{}}},{{{{}}},{{},{{}}}}},
{{},{{}},{{{}}},{{},{{}}},{{},{{}},{{},{{}}}}},
{{},{{}},{{{}}},{{},{{{}}}},{{},{{},{{{}}}}}},
{{},{{}},{{{}}},{{},{{{}}}},{{},{{}},{{{}}}}},
{{},{{}},{{{{},{{}}}}},{{{},{{}}}},{{},{{}}}},
{{},{{}},{{{},{{}}}},{{},{{}}},{{},{{},{{}}}}},
{{},{{}},{{{}}},{{{{}}}},{{},{{{}}},{{{{}}}}}},
{{},{{}},{{{}}},{{{{}},{{{}}}}},{{{}},{{{}}}}},
{{},{{}},{{{}}},{{},{{}}},{{},{{{}}},{{},{{}}}}},
{{},{{}},{{{}}},{{},{{{}}}},{{{}},{{},{{{}}}}}},
{{},{{}},{{{}}},{{{}},{{{}}}},{{},{{}},{{{}}}}},
{{},{{}},{{{},{{}}}},{{},{{}}},{{},{{{},{{}}}}}},
{{},{{}},{{{},{{}}}},{{},{{}}},{{{}},{{},{{}}}}},
{{},{{}},{{{}}},{{{{}}}},{{{{{}}}}},{{},{{}}}},
{{},{{}},{{{}}},{{{{}}}},{{{},{{}}}},{{},{{}}}},
{{},{{}},{{{}}},{{{{}}}},{{},{{}}},{{},{{{}}}}}
```


## Properties

A set `X` is transitive if and only if `⋃X⊆X`, where `⋃X` is the union of all elements of `X` that are sets, `⋃X = { y | ∃x ∈ X ⋀ y ∈ x }`.

If `X` is transitive, then `⋃X` is transitive.

If `X` and `Y` are transitive, then `X ∪ Y` and `X ∪ Y ∪ {X,Y}` are transitive.

In general, if `Z` is a class all of whose elements are transitive sets, then `⋃Z` and `Z∪⋃Z` are transitive. The first sentence in this paragraph is the case of `Z = {X,Y}`.

A set `X` that does not contain *urelements* 
>is transitive iff it is a subset of its own powerset, `X ⊆ 𝒫(X)`.

Che cogno, isn't every set a subset of its powerset:
- ∅ ⊆ {∅}
- {∅} ⊆ {∅, {∅}}
- {∅,{∅}} ⊆ { ∅, {{∅,{∅}}}, {∅}, {{∅}} }
- …etc

>The power set of a transitive set without urelements is transitive.

## Transitive closure

The transitive closure of a set 
�
X is the smallest (with respect to inclusion) transitive set that includes 
�
X (i.e. 
�
⊆
TC
⁡
(
�
)
X⊆TC(X)).[2] Suppose one is given a set 
�
X, then the transitive closure of 
�
X is

TC
⁡
(
�
)
=
⋃
{
�
,
⋃
�
,
⋃
⋃
�
,
⋃
⋃
⋃
�
,
⋃
⋃
⋃
⋃
�
,
…
}
.
TC(X)=⋃{X,⋃X,⋃⋃X,⋃⋃⋃X,⋃⋃⋃⋃X,…}.
Proof. Denote 
�
0
=
�
X0=X and 
�
�
+
1
=
⋃
�
�
Xn+1=⋃Xn. Then we claim that the set

�
=
TC
⁡
(
�
)
=
⋃
�
=
0
∞
�
�
T=TC(X)=⋃n=0∞Xn
is transitive, and whenever 
�
1
T1 is a transitive set including 
�
X then 
�
⊆
�
1
T⊆T1.

Assume 
�
∈
�
∈
�
y∈x∈T. Then 
�
∈
�
�
x∈Xn for some 
�
n and so 
�
∈
⋃
�
�
=
�
�
+
1
y∈⋃Xn=Xn+1. Since 
�
�
+
1
⊆
�
Xn+1⊆T, 
�
∈
�
y∈T. Thus 
�
T is transitive.

Now let 
�
1
T1 be as above. We prove by induction that 
�
�
⊆
�
1
Xn⊆T1 for all 
�
n, thus proving that 
�
⊆
�
1
T⊆T1: The base case holds since 
�
0
=
�
⊆
�
1
X0=X⊆T1. Now assume 
�
�
⊆
�
1
Xn⊆T1. Then 
�
�
+
1
=
⋃
�
�
⊆
⋃
�
1
Xn+1=⋃Xn⊆⋃T1. But 
�
1
T1 is transitive so 
⋃
�
1
⊆
�
1
⋃T1⊆T1, hence 
�
�
+
1
⊆
�
1
Xn+1⊆T1. This completes the proof.

Note that this is the set of all of the objects related to 
�
X by the transitive closure of the membership relation, since the union of a set can be expressed in terms of the relative product of the membership relation with itself.

The transitive closure of a set can be expressed by a first-order formula: 
�
x is a transitive closure of 
�
y iff 
�
x is an intersection of all transitive supersets of 
�
y (that is, every transitive superset of 
�
y contains 
�
x as a subset).

## Transitive models of set theory

Transitive classes are often used for construction of interpretations of set theory in itself, usually called inner models. The reason is that properties defined by bounded formulas are absolute for transitive classes.

A transitive set (or class) that is a model of a formal system of set theory is called a transitive model of the system (provided that the element relation of the model is the restriction of the true element relation to the universe of the model). Transitivity is an important factor in determining the absoluteness of formulas.

In the superstructure approach to non-standard analysis, the non-standard universes satisfy strong transitivity.
