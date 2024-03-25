# 2. Categories

## 2.1 Functions as sets

A good illustration of the way in which set theory formalises an intuitive mathematical idea is provided by an examination of the notion of a function. A function is an association between objects, a correspondence that assigns to a given object one and only one other object. It may be thought of as a rule, or operation, which is applied to something to obtain its associated thing. A useful way of envisaging a function is as an input-output process, a kind of black box. For a given input the function produces a uniquely determined output.

The inputs are called arguments of the function and the outputs values, or images of the inputs that they are produced by. If `f` denotes a function, and `x` an input, then the corresponding output, the image of `x` under `f`, is denoted `f(x)`.

## 2.2 Composition of functions

* Associative law for functional composition: 
  `h ∘ (g ∘ f) = (h ∘ g) ∘ f`

* Identity law for functional composition: 
  ∀f: A -> B, g: В -> С. `1ᵇ ∘ f = f = f ∘ 1ᵃ`


## 2.3 First examples of categories

CATEGORY   OBJECTS                   ARROWS
Set        Sets                      Functions between sets
Finset     Finite sets               Functions between finite sets
Nonset     Non-empty sets            Functions between nonempty sets
Top        Topological spaces        Continuous fns between topological spaces
Vect       Vector spaces             Linear transformations
Grp        Groups                    Group homomorphisms
Mon        Monoids                   Monoid homomorphisms
Met        Metric spaces             Contraction Maps
Man        Manifolds                 Smooth Maps
Top Grp    Topological groups        Continuous homomorphisms
Pos        Partially ordered sets    Monotone functions


In each example, the objects are sets with, apart from the first three cases, some additional structure. The arrows are all set functions which in each appropriate case satisfy conditions relating to this structure.

The key to what makes each of these a category lies, not in the particular nature of objects or arrows, but in the way the arrows behave. In each case the following things occur: (1) each arrow has associated with it two special objects, domain and codomain, (2) there is an operation of composition that can be performed on certain pairs of arrows in the category to obtain a new arrow `g ∘ f`, which is also in the category, (3) each object has associated with it a special, identity arrow.


## 2.4 Axiomatic definition of category

**Axiomatic Definition of a Category** - a category 𝒞 comprises:
1. A collection of things called *𝒞-objects*.
2. A collection of things called *𝒞-arrows*.

3. An operation assigning to each 𝒞-arrow `f`, 𝒞-objects `dom f` and `cod f`;
   if `a = dom f` and `b = cod f`, we denote this as `f : a -> b`.

4. An operation assigning to each pair (g,f) of 𝒞-arrows 
  with `dom g = cod f`, 
  a 𝒞-arrow `g ∘ f`, i.e. the composite of `f` and `g`, with 
  `dom (g ∘ f) = dom g` and 
  `cod (g ∘ f) = cod g`, 
  i.e. `g ∘ f : dom f -> cod g`, 
  such that 
  the following condition obtains 

  *The Associative Law*:    
  given the configuration of 𝒞-objects and 𝒞-arrows    
  then `h ∘ (g ∘ f) = (h ∘ g) ∘ f = h ∘ g ∘ f`    
  illustrated by    
  `a -----f-----> b -----g-----> c -----h-----> d`


5. An assignment to each 𝒞-object `b` 
  of an 𝒞-arrow `1ᵇ : b -> b`, called the identity arrow on `b`, 
  such that the identity law holds. 

  *The Identity Law*: 
    for all 𝒞-arrows 
    `f : a -> b` and `g : b -> с`   
    it holds that 
    `1ᵇ ∘ f = f` and `g ∘ 1ᵇ = g`

  *The Identity Law* (alt): 
    for all 𝒞-arrows 
    `f : a -> b`   
    it holds that 
    `1ᵇ ∘ f = f = f ∘ 1ᵃ` illustrated by `1ᵃ ↻ a-------f------>b ↺ 1ᵇ`


## 2.5 The pathology of abstraction

The process we have just been through in identifying the notion of a category is one of the basic modi operandi of pure mathematics. It is called *abstraction*. It begins with the recognition, through experience and examination of a number of specific situations, that certain phenomena occur repeatedly, that there are a number of common features, that there are formal analogies in the behaviour of different entities. Then comes the actual
process of abstraction, wherein these common features are singled out and presented in isolation; an axiomatic description of an "abstract" concept.

This is precisely how we obtained our general definition of a category from an inspection of a list of particular categories. It is the same process by which all of the abstract structures that mathematics investigates (group, vector space, topological space etc) were arrived at.

Having obtained our abstract concept we then develop its general theory, and seek further instances of it. These instances are called examples of the concept or models of the axioms that define the concept.

Any statement that belongs to the general theory of the concept (i.e. is derivable from the axioms) will hold true in all models. The search for new models is a *process of specialisation*, the reverse of abstraction.

Progress in understanding comes as much from the recognition that a particular new structure is an instance of a more general phenomenon, as from the recognition that several different structures have a common core. Our knowledge of mathematical reality advances through the ininterplay of these two processes, through movement from the particular to the general and back again.

An important aspect of specialisation concerns so-called *representation theorems*.

These are propositions to the effect that any model of the axioms for a certain abstract structure must be (equivalent to) one of a particular list of concrete models.

They "measure" the extent to which the original motivating examples encompass the possible models of the general notion.

Thus we know (Cayley's Theorem) that any group can be thought of as being a group of permutations of some set, while any Boolean algebra is essentially an algebra of subsets of some set.

Roughly speaking, the stronger the abstraction, i.e. the more we put into the abstract concept, the fewer will be the possible examples.

The extreme case is where there is only one model. A classic example of this is the axiomatically presented concept of a complete ordered field. There is in
fact only one such field, viz the real number system. 

The category axioms represent a very weak abstraction. 
There is no representation theorem in terms of our original list. 

We talked at he outset of "general universes of mathematical discourse". However, we have picked out only the bare bones of our initial examples, and so little of the flesh that the axioms admit of all sorts of "pathological" cases that differ wildly in appearance from Set, Top, Vect, etc.

One readily finds categories that are not universes of discourse at all, in which the objects are not sets, the arrows look nothing like functions, and the composition has nothing to do with functional composition.

The following list includes a number of such categories. The reader is urged to examine these closely, to fill out the details of their definition, and to check that in each case the Associative and Identity axioms are satisfied.


## 2.6 Basic categories

- category `1`: 1 obj, 1 arr    
  As a paradigm description of it, we might as well take the object to be the number 0, and the arrow to be the ordered pair (0,0).
- category `2`: 2 obj, 3 arr; f : 0 -> 1
- category `3`: 3 obj, 3 id arr, 3 arr
- preorder is a category
- discrete categories

The practice is sometimes adopted of identifying the object `b` with the arrow `1ь : b -> b`

>Q: Why must distinct objects have distinct identity arrows?
(coz we said so?)


### Subcategory

If `C` is a category, and `a` and `b` are C-objects, we introduce `C(a,b)` or `hom(a,b)`, to denote the collection of all C-arrows with dom `a` and cod `b`.

`C` is said to be a **subcategory** of category `D`, denoted `C ⊆ D`, if
1. every C-object is a D-object
2. if `a` and `b` are any two C-objects, then `C(a,b) ⊆ D(a,b)`, 
  i.e. all the arrows `a -> b` are present in D.

For example, we have `Finset ⊆ Set`, and `Nonset ⊆ Set`.

`C` is a **full subcategory** of `D` if also
3. for any C-objects `a` and `b`, `C(a,b) = D(a,b)`, 
   i.e. `D` has no arrows `a -> b` other than the ones already in `C`.

If D is a category and C is any collection of D-objects, we obtain a full subcategory C of D by taking as C-arrows all the D-arrows between members of C. Thus, `Finset` and `Nonset` are full subcategories of `Set`.

An important full subcategory of `Finset` (and hence also of `Set`) is the category `Finord` of all finite ordinals. The **finite ordinals** are sets that are used in set-theoretic foundations as representations of the natural numbers. We use the natural numbers as names for these sets and put:
- 0 ≡ {}            ≡ ∅
- 1 ≡ {0}           ≡ {∅}
- 2 ≡ {0,1}         ≡ {∅, {∅}}
- 3 ≡ {0,1,2}       ≡ {∅, {∅}, {∅,{∅}}}
- 4 ≡ {0,1,2,3}
- n ≡ {0,1,…,n-1}

The sequence of finite sets thus generated are the finite ordinals. They form the objects of the category `Finord`, whose arrows are all the set functions between finite ordinals.

Of course, it is ridiculous to suggest that the number 1 is the set {0} whose only member is the null set. The point is that in axiomatic set theory, where we seek an explicit and precise account of mathematical entities and their intuitively understood properties, the finite ordinals provide such a paradigmatic representation of the natural numbers. They have an intricate and elegant structure that exhibits all the arithmetic and algebraic properties of the natural number system.

They are related by set inclusion and set membership as follows:
- 0 ⊆ 1 ⊆ 2 ⊆ 3 ⊆ …
- 0 ∈ 1 ∈ 2 ∈ 3 ∈ …

In fact, the following statements are equivalent:
- `n < m` (numerically less than)
- `n ⊂ m` (proper subset)
- `n ∈ m` (membership)

Thus, `n ≤ m` iff `n ⊆ m`.

The ordinal set n = {0,1,…,n-1} has the ordering ≤ built into its structure in a natural set-theoretic way. The corresponding pre-order category is none other than n of Example 4. If `n ≤ m`, the pre-order n is a full subcategory of m.


### Product category

The category `Set²` of pairs of sets has as objects all pairs `(A,B)` of sets. An arrow in Set² from `(A,B)` to `(C,D)` is a pair `(f,g)` of set functions such that `f : A -> C` and `g : B -> D`. Composition is defined by `(f,g) ∘ (f′, g′) = (f ∘ f′, g ∘ g′)`. The identity arrow on `(A,B)` is `(1ᵃ,1ᵇ)`.

This construction generalises: … and composition is defined component-wise with respect to composition in C and composition in D.

### Arrow category


### Comma category

These can be thought of as specialisations of arrow categories, where we restrict attention to arrows with fixed domain or codomain.
