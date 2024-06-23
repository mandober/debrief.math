# TT :: About :: History of Type Theory

## Problems with set theory

Cantor has introduced sets at the end of the XIX century, and the beginning of the XX century saw many problems with sets related to self-reference and cardinality (particularly of infinite sets), most induced by *the principle of (unrestricted) set comprehension* (which allows any predicate to describe a set).

These problems have lead to the developments of set theories that atempted to resolve them in various ways. The ZF replaced the (unrestricted) set comprehension with the axiom of formation. Another solution was to classify sets into proper sets and classes, with a proper class containing all sets.

One of the bigger problems with set theories, is that objects generally have no type. Some theories may distinguish between sets and proper set elements, called *urelements*, with further distinction between a set-as-container and a set-as-element-of-another-set. Some theories distinguish between *sets* and *classes*, restricting further what each may contain.

However, in general, there is barely any distinction between these various entities, and most often no distinction at all: "a set is a set is a set". Crucially, a set that contains a set, that contains a set, is given the same "type" as the empty set, which makes for a very "flat" hierarchy of quasi types in which "set" is the only type.

Importantly, although there was an intuitive understanding of the difference between {{∅}} and {∅} (just by considering the nesting levels), there was no formal way to describe it - then and even now. Math doesn't seem interesting in wanting to distinguish between different nesting levels of collections, be they sets, multisets or lists.

In programming languages, `Set (Set Int)` ≠ `Set Int`, and `[Int]` ≠ `[[Int]]`, i.e. collections with different levels of nesting make for distinct types. Taking lists for example, math goes only as far to distinguish between `A` and `A*`, but no further - the latter denotes a list of `A`'s (where `A` is some numeric set). In fact, the star (`*`) is often used to denote collections, but without the notion of `A**`, i.e. collection of collections. The star symbol is frequently slapped to a function name to denote the "lifted" version of that function: e.g. `f*` may denote the "lifted" function `f` that can operate over a collection of elements.

Math, in general, is very loose with typing, so a new branch of math, that would place types at its center of interest, had to be invented.

## Russell's Ramified Type Theory

After formulating its famous paradox, Russell has set out to resolve it, thus inventing a new mathematical entity called *type*, marking the origin of type theory.

Russell wanted to classify sets by establishing the rules which would govern the conditions of set containment and membership (i.e. when can one set contain another). 

Within this system, that came to be known as the Ramified (Stratified) Type Theory, each object (i.e. each set) has an associated type: a set of type `i` can only be contained in a set whose type is at least `i + 1`, thus creating an *infinite hierarchy of types*.

This notion of type hierarchy stood the test of time, with many modern proof assistants (all of which are based on a certain type theory), like Agda and Coq, implementing it.

A hierarchy of types also creates a point of contrition between different theories as to the way the notion of commulativity is resolved.

Namely, in a **commulative** type hierarchy, a term `t : 𝒰ᵢ` also belongs to all universes higher then `i`; that is, `t : 𝒰ᵢ` ⇒ `t : 𝒰ᵢ﹢₁`. For instance, Coq adopts commulativity, Agda does not.

>Admitting commulativity also breaks one of the fundamental principles in TT - that each term belongs to exactly one type.

## Further developments

Alonzo Church invented the λ-calculus in 1930's, a formalism he indended to be used as a logic system, but turned out inconsistent. Nevertheless, he extracted the consistant part and used it for denoting and analysing functions, which later became the ubiquitous **λ-calculus**.

In the 1940's, Church had formulated a typing system for λ-calculus, the system now called **simply-typed λ-calculus**, which represents the base of almost all fucntional PLs.

In 1972, Per Martin-Löf has introduced dependent types through a series of type theories he defined over that decade. One of the key features of *dependent type theory* is the unification of tt, set theory and logic, with numerous correspondencies going all around. Most modern type theories are based on some version of an intuitionistic **Martin-Löf type theory (MLTT)**. In fact, *Intuitionistic Type Theory (ITT)* is often synonymous with MLTT.

The **Curry-Howard isomporphism** (CHI) is a formulation of the correspondencies between different math areas, primarily between logic, set theory and type theory. When this correspondence includes category theor, it is usually called *Curry-Howard-Lambek isomporphism*. The correspondence is based on the *BHK interpretation* of intuitionistic logic and has spawned many isomporphisms like
- propositions as types
- proofs as programs
- reduction as evaluation

In 2006, Awodey and Warren, and Voevodsky, discovered that type theory has homotopical models, with Voevodsky introducing **Homotopy Type Theory** (HoTT) with a *new notion of equality of types in terms of homotopies* (paths on a manifold).

**Cubical type theory** (CTT) is one of the newest developments in HoTT. The `cubical` library brings support for CTT in Agda.
