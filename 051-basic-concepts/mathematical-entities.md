# Mathematical entities
(author's comment)

The most primitive mathematical entity is an "object", which is a term completely undefined at this point, nevertheless, it represents a paricular subject of mathematical investigation.

Although the term "object" may incorporate some notion of physicality, it should be taken clean of any such attribute, as a pure, abstract, placeholder for whatever is the subject of the current mathematical analysis. Therefore, even more abstract terms, such as concept, notion, idea, are also swept under this label and abstracted as mathematical objects.

Then, what should be that most primitive, most basic object, so central for the mathematical investigation? It's uncertain, but some candidates are set, class, function, type, category.

In fact, since the majority of mathematicians acknowledge the ZF set theory as the foundation of (modern) mathematics, the most primitive mathematical object is… (drumroll) the plain old set (cymbals crash)!

At this point, when we're unsure what even the individual objects of mathematics might be, we are given a means to gather them together. Actually, no effort is required on our part since sets have a special builder mode that can create a new set as soon as we think it; actually, as soon as we come up with a valid description based on essential characteristics that more-less uniquely idetify the set. It will turn out that describing sets via identifying attributes or behaviour is very hard to achieve correctly.

One specific set can play the role of the most primitive mathematical object, **the empty set**, the set that has no elements. The empty set has the determiner "the" due to its uniqueness, i.e. there is only one such set. All empty sets are identical to each other, they are the same set. This is because sets are identified *extensionally*, meaning two sets are the same if they contain the same elements.

An **element** is an object contained in a set. At this point we have only one bona-fide object, the empty set. As its name hints, it is the only set that contains no elements. In fact, it cannot play the role of set (cannot contain other objects), it can only play the role of element (be contained in a set). This puts the empty set into a class of its own, the one of urelements. A **urelement** is an object that can be contained (as an element), but cannot contain other objects.

The empty set may seem like the only "proper" object curently existing, but actually any set is a math object in its own right, so we already have a lot of objects, in fact, infinitely many.

The existence of the empty set may be tied to an axiom or it may be introduced as a primitive object. The existence of sets [not entirely sure] cannot be introduced in its entirety, e.g. with a single axiom saying "sets exist, yall", at least not in an axiomatic set theory.

[unlegible] summarizing what we have so far:
- generic sets: can be contained in a set, can contain other objects
- the empty set: can be contained in a set, cannot contain other objects
Note: the "other" is not accidently injected - it's injected in there to delay the issue of a set containing itself as an element.

What's pretty amazing is that we can start defining the fundamental mathematical theories using sets only, without even requiring some other objects. For example, we can define natural numbers, and then expand them to include negative numbers, fractions, saso mange.

Sets
+ the empty set, `∅ := {}`
+ singletone set, `{x}`
+ unordered pair, `{x,y}`
+ nonempty set, A ≠ ∅
+ first-order set definition, A = { x | P(x) }

Natural numbers
+ `0 := {} = ∅`
+ `S(n) := n ⋃ {n}`, also `n = {0,1,2,…,n-1}`

Examples
- 1 = S(0) := 0 ⋃ {0} = ∅       ⋃ {∅}       = `{ ∅ }`
- 2 = S(1) := 1 ⋃ {1} = {∅}     ⋃ {{∅}}     = `{ ∅, {∅} }`
- 3 = S(2) := 2 ⋃ {2} = {∅,{∅}} ⋃ {{∅,{∅}}} = `{ ∅, {∅}, {∅,{∅}} }`
- 4 = {0,1,2,3} = `{ ∅, {∅}, {∅,{∅}}, {∅,{∅},{∅,{∅}}} }`

Ordered pair
+ (a,b) := `{{a}, {a,b}}`
- (a,a) := `{{a}}`
- (a,a) := {{a}, {a,a}} = {{a}, {a}} = {{a}}
+ (a,b) = (x,y) ⟺ (a=x ⋀ b=y)

Tuples (as nested ordered pairs)
+ (a₀, a₁, …, aₙ) := (a₀, (a₁, (…, aₙ)))
- (a,b,c) := (a,(b,c))
- (a,b,c,d) := (a,(b,(c,d)))
