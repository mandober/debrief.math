# Domain theory

https://en.wikipedia.org/wiki/Domain_theory

**Domain Theory** studies special types of partially ordered sets, known as *domains*, and for that reason it is considered a part of order theory.

The field has major applications in CS, where it is used to specify *denotational semantics*, especially for FPLs.

Domain theory formalizes the intuitive ideas of approximation and convergence in a very general way and is closely related to topology.

## Motivation and intuition

The primary motivation for the study of domains, which was initiated by Dana Scott in the late 1960s, was the search for a denotational semantics of the lambda calculus.

In this formalism, one considers "functions" specified by certain terms in a language. In a purely syntactic way, one can go from simple functions to functions that take other functions as their input arguments.

Again, using just the syntactic transformations available in this formalism, one can obtain the so-called fixed-point combinators (like the famous `Y` combinator). By the definition, a fixed-point (or fixpoint) combinators have the property that, all functions f, `f (Y f) = Y f`.

To formulate such a denotational semantics, one might first try to construct a *model for the lambda calculus*, in which a total function is associated with each lambda term.

Such a model would formalize a link between the *lambda calculus as a purely syntactic system* and the *lambda calculus as a notational system* for manipulating concrete mathematical functions.

The *combinator calculus* is such a model. However, the **elements of the combinator calculus are functions from functions to functions**; in order for the elements (of the model of the lambda calculus) to belong to an arbitrary domain and range, they could not be total functions, only *partial functions*.

Scott got around this difficulty by formalizing a notion of "partial" or "incomplete" information to represent computations that have not yet returned a result (diverging functions).

This was modeled by considering, for each domain of computation (ℕ, ℤ, ℝ, …), an *additional element that represents an undefined output* called *bottom* and denoted by `⟘`. Bottom is the "result" of a computation that never ends.

Moreover, the domain of computation is equipped with an ordering relation, in which the "undefined result" is the least element; e.g.

`⟘` ⊑ `⟘ : ⟘` ⊑ `x : ⟘` ⊑ `x : y : ⟘` ⊑ …

The important step to find a model for the lambda calculus is to consider only those functions (on such a partially ordered set) that are *guaranteed to have least fixed points*.

*The set of these functions, together with an appropriate ordering, is again a "domain"* in the sense of the theory.

The restriction to a subset of all available functions has another great benefit: *it is possible to obtain domains that contain their own function spaces*, i.e. **you get functions that can be applied to themselves**.

Beside these desirable properties, domain theory also allows for an appealing intuitive interpretation. As mentioned above, *the domains of computation are always partially ordered*. This **ordering represents a hierarchy of information or knowledge**. The higher an element is within the order, the more specific it is and the more information it contains. Lower elements represent incomplete knowledge or intermediate results.

> Computation then is modeled by applying monotone functions repeatedly on elements of the domain in order to refine a result. Reaching a fixed point is equivalent to finishing a calculation.

Domains provide a superior setting for these ideas since *fixed points of monotone functions can be guaranteed to exist* and, under additional restrictions, can be approximated from below.

## Directed sets as converging specifications

The intuition that domains are information orderings will be emphasized to motivate the mathematical formalization of the theory.

Domain theory deals with partially ordered sets to model a domain of computation. The goal is to interpret the elements of such an order as pieces of information or (partial) results of a computation, where elements that are higher in the order extend the information of the elements below them in a consistent way.

From this simple intuition it is already clear that *domains often do not have a greatest element*, since this would mean that there is an element that contains the information of all other elements - a rather uninteresting situation.

A concept that plays an important role in domain theory is that of a *directed subset of a domain*.

A **directed subset** is a non-empty subset of the order in which any two elements have an upper bound that is an element of this subset.

In view of our intuition about domains, this means that any two pieces of information within the directed subset are consistently extended by some other element in the subset.

Hence we can view directed subsets as consistent specifications, i.e. as sets of partial results in which no two elements are contradictory.

This interpretation can be compared with the notion of a *convergent sequence* in analysis, where each element is more specific than the preceding one. Indeed, in the theory of metric spaces, sequences play a role that is in many aspects analogous to the role of directed sets in domain theory.

Now, as in the case of sequences, we are interested in *the limit of a directed set*. According to what was said above, this would be an element that is the most general piece of information that extends the information of all elements of the directed set, i.e. the unique element that contains exactly the information that was present in the directed set, and nothing more.

In the formalization of order theory, this is just **the least upper bound of the directed set**. As in the case of limits of sequences, least upper bounds of directed sets do not always exist.

Naturally, one has a special interest in those domains of computations in which all consistent specifications converge, i.e. in orders in which all directed sets have a least upper bound.

This property defines **the class of directed-complete partial orders**, *dcpo*. Indeed, most considerations of domain theory do only consider orders that are at least directed complete.

From the underlying idea of partially specified results as representing incomplete knowledge, one derives another desirable property: *the existence of a least element*. Such an element models the state of no information - the place where most computations start. It also can be regarded as the output of a computation that does not return any result at all.

## Computations and domains

Now that we have some basic formal descriptions of what a *domain of computation* should be, we can turn to the computations themselves. Clearly, *these have to be functions*, taking inputs from some computational domain and returning outputs in some (possibly different) domain.

However, one would also expect that the output of a function will contain more information when the information content of the input is increased. Formally, this means that we want a function to be **monotonic**.

When dealing with *dcpos*, one might also want computations to be compatible with the formation of limits of a directed set.

Formally, this means that, for some function `f`, the image `f(D)` of a directed set `D` (i.e. the set of the images of each element of `D`) is again directed and has as a least upper bound the image of the least upper bound of `D`.

One could also say that `f` *preserves directed suprema*. Also note that, by considering directed sets of two elements, such a function also has to be monotonic. These properties give rise to the notion of a *Scott-continuous function*. Since this often is not ambiguous one also may speak of continuous functions.

## Approximation and finiteness

Domain theory is a purely qualitative approach to modeling the structure of information states. One can say that something contains more information, but the amount of additional information is not specified. Yet, there are some situations in which one wants to speak about elements that are in a sense much simpler (or much more incomplete) than a given state of information.

For example, in the natural subset-inclusion ordering on some powerset, any infinite element (i.e. set) is much more "informative" than any of its finite subsets.

If one wants to model such a relationship, one may first want to consider the *induced strict order* `<` of a domain with order `≤`. However, while this is a useful notion in the case of total orders, it does not tell us much in the case of partially ordered sets.

Considering again *inclusion-orders of sets*, a set is already strictly smaller than another (possibly infinite) set if it contains just one less element. One would, however, hardly agree that this captures the notion of being "much simpler".

## Way-below relation

- ⊐ ⊒ ⊏ ⊑ ≪ ∐
- `⊑` definedness, `⟘ ⊑ x`
- `≪` approximates, is-way-below, `x ≪ y`
- `x ≪ y` -> `x ⊑ y`

A more elaborate approach leads to the definition of the so-called **order of approximation**, which is also called *the way-below relation*.

An element `x` is way-below an element `y`, 
if, for every directed set `D` with supremum such that `y ⊑ sup D`, 
there is some element `d ∈ D` such that `x ⊑ d`. 
Then one also says that `x` approximates `y`, 
denoted by `x ≪ y`, 
which also implies `x ⊑ y`, 
since the singleton set `{y}` is directed.

For an example, in an ordering of sets, an infinite set is way above any of its finite subsets. On the other hand, consider the directed set (in fact, the chain) of finite sets `{0}, {0,1}, {0,1,2}, …`. Since the supremum of this chain is the set of all natural numbers ℕ, this shows that no infinite set is way-below ℕ.

However, being way-below some element is a relative notion and does not reveal much about an element alone. For example, one would like to characterize finite sets in an order-theoretic way, but even infinite sets can be way-below some other set.

> The special property of these *finite* elements `x` is that they are way below themselves, i.e. `x ≪ x`.

An element with this property is also called **compact**. Yet, such elements do not have to be "finite" nor "compact" in any other mathematical usage of the terms.

The notation is nonetheless motivated by certain parallels to the respective notions in set theory and topology.

> The *compact elements* of a domain have the important special property that they cannot be obtained as a limit of a directed set in which they did not already occur.

Many other important results about the way-below relation support the claim that this definition is appropriate to capture many important aspects of a domain.

## Bases of domains

The previous thoughts raise another question: *is it possible to guarantee that all elements of a domain can be obtained as a limit of much simpler elements?*

This is quite relevant in practice, since we cannot compute infinite objects but we may still hope to approximate them arbitrarily closely.

More generally, we would like to restrict to a certain subset of elements as being sufficient for getting all other elements as least upper bounds.

Hence, one defines a *base of a poset* `P` as being a subset `B` of `P`, such that, for each `x` in `P`, the set of elements in `B` that are way-below `x` contains a directed set with supremum `x`.

base(P) = B ⊆ P <=> ∀x ∈ P. ∀b ∈ B. b << x ⋀ b ⊑ sup x [?]

The poset `P` is a *continuous poset* if it has some base. Especially, `P` itself is a base in this situation. In many applications, one restricts to continuous (d)cpos as a main object of study.

> Finally, an even stronger restriction on a partially ordered set is given by requiring the existence of a base of finite elements. Such a poset is called algebraic.

From the viewpoint of denotational semantics, algebraic posets are particularly well-behaved, since they allow for the approximation of all elements even when restricting to finite ones.

As remarked before, not every finite element is "finite" in a classical sense and it may well be that the finite elements constitute an uncountable set.

In some cases, however, the base for a poset is countable. In this case, one speaks of an `ω`-*continuous poset*. Accordingly, if the countable base consists entirely of finite elements, we obtain an order that is *ω-algebraic*.

## Special types of domains

A simple special case of a domain is known as an elementary or **flat domain**. This consists of a set of incomparable elements (such as the integers) along with a single "bottom" element considered smaller than all other elements.

One can obtain a number of other interesting special classes of ordered structures that could be suitable as "domains".

We already mentioned continuous posets and algebraic posets. More special versions of both are *continuous and algebraic cpos*.

Adding even further completeness properties one obtains *continuous lattices* and *algebraic lattices*, which are just *complete lattices* with the respective properties.

For the algebraic case, one finds broader classes of posets that are still worth studying: historically, the *Scott domains* were the first structures to be studied in domain theory. Still wider classes of domains are constituted by *SFP-domains*, *L-domains*, and *bifinite domains*.

All of these classes of orders can be cast into various categories of dcpos, using functions that are monotone, Scott-continuous, or even more specialized as morphisms.

Finally, note that the term *domain* itself is not exact and thus is only used as an abbreviation when a formal definition has been given before or when the details are irrelevant.


## More

https://en.wikipedia.org/wiki/Denotational_semantics
https://en.wikipedia.org/wiki/Scott_domain
https://en.wikipedia.org/wiki/Scott_information_system
