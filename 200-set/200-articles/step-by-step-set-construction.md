# Constructing new sets



In a (our) set theory, there is nothing but a means to construct sets. All that exists is a bare environment void of objects. But we do have the "set constructor" which allows us to construct sets. A set is a collection of objects, called its *elements*.

Per se, an entity is an *object*, especially when considered outside a set, but inside a set, that object is a *member* of the set. In that context, the object becomes an element. *Elementhood* is an apparent, "virtual" property of objects when placed inside a set.

The problem is, since we have no objects around to use as elements, we are left holding our… when we suddenly realize we can make an *empty set*! Yes, siree Bob, a set containing nothing at all, an empty metaphysical box. As soon as it is created, the empty set becomes a *mathematical object in its own right*. And just like that, we get our first object - an object we can use as an element!

Day 1
"In the beginning" there was nothing - at least nothing "physical" - except the abstract means to construct sets using the "set constructor". It is now the day 1, and we have created *the empty set*, denoted `∅`. At the day's end, we have a single new object - the empty set.

Day 2
On the second day he brough me flowers, continuing the "one day at a time" approach. With a bona fide element material (i.e. ∅), we can now create a new set - a set containing the empty set, `{∅}`. Precious. Let's count the objects we have so far: ∅ and {∅}. We take a stab at describing sets more precisely: *a set is a collection of elements*. Encouraged with this progress, we dare to create another set by placing ∅ twice as an element. Kabloom! Our arrogance will be the end of us. The set `{∅, ∅}` seems highly unstable as it keeps collapsing into `{∅}`. How are we to comprehend this?

Metaphysical collapse
Perhaps a strange metaphysical law does take hold inside sets, collapsing multiple instances of the same object into the *one true Platonic form* of that object. So a set reduces its elements to their essence. Or perhaps, it is only an apparition? Maybe in "reality", a set doesn't collapse shit, it's just that we cannot tell. Anyway, this deserves an update: *a set is a collection of elements that reduces multiple instances of the same element into one* (aka, "there can be only one", or the Highlander property of elements).

On the other hand, how can we than exlain the "stable" set `{∅, {∅}}`?
- Does ∅ appear once or twice in this set?
- How are the two occurrences of ∅ related then?
- Does this set exists in some higher dimension that allows for the two sets to intersect such that the inner set encloses only ∅, while the other set somehow encloses both ∅ and the inner set, {∅}.
- Are multiple instances of the same object allowed provided they exist on different "palnes" (nesting levels).

It is unclear.

Disorder
We level-up, unlocking another secret: a set is really an *unordered collection of elements*. Being unordered is great as it doesn't require us to make shit up to justify what an order in fact is. Sets have no notion of order whatsoever; a set might be ordered, but it would't know because the notion or order is unbeknownst to it.

Day 3
The day before ended in a haze, we don't even know how many distinct objects we could have constructerd. We have ∅ and {∅} from before, and at least `{∅,{∅}}` and `{{∅}}`.

From this point onward, if possible, it would be good to come up with some methodology of construction of further sets, some method to the madness.

We'll make new sets using the "horizontal" and "vertical" approach (but many other methods are possible).

Both horizontal and vertical nesting can be defined inductively, with (1) below as the base case and (2) as the inductive case. Both ways can be used to define the natural numbers in terms of sets.

*Horizontal nesting* 
expands horizontally, to the right, where each new set contains all the sets defined in the previous steps. The superscript indicates a set's cardinality (and correspond to a natural number).
1. H⁰ = {} = ∅
2. Hⁿ = {H⁰, H¹, H², …, Hⁿ⁻¹ }

so we have,
- H⁰ = ∅
- H¹ = {H⁰} = {∅}
- H² = {H⁰, H¹} = {∅, {∅}}
- H³ = {H⁰, H¹, H²} = {∅, {∅}, {∅,{∅}}}
- H⁴ = {H⁰, H¹, H², H³} = {∅, {∅}, {∅,{∅}}, {∅,{∅},{∅,{∅}}}}

We can now also define natural numbers in terms of the zero element and the successor functions, `S`:
1. 0 := ∅
2. S(n) := n ⋃ {n}

thus,
- 0 = {} = ∅
- 1 = S(0) = 0 ⋃ {0} = {} ⋃ {{}} = {{}} = {∅}
- 2 = S(1) = 1 ⋃ {1} = {∅} ⋃ {{∅}} = {∅, {∅}}
- 3 = S(2) = 2 ⋃ {2} = {∅, {∅}} ⋃ {{∅, {∅}}} = {∅, {∅}, {∅,{∅}}}
- n = S(n) = n ⋃ {n} = {0, 1, 2, … n-1}


*Vertical nesting* 
expands by depth and can be inductively described as follows (where the superscript indicates the number of braces minus one, or the number of sets nested inside the first set-element):
1. V⁰ = {} = ∅
2. Vⁿ = {Vⁿ⁻¹}

so we have
- V⁰ = {} =                 ∅
- V¹ = {V¹⁻¹} = {V⁰} =     {∅}
- V² = {V²⁻¹} = {V¹} =    {{∅}}
- V³ = {V³⁻¹} = {V²} =   {{{∅}}}
- V⁴ = {V⁴⁻¹} = {V³} =  {{{{∅}}}}
- V⁵ = {V⁵⁻¹} = {V⁴} = {{{{{∅}}}}}


The set of all sets obtained using horizontal nesting is infinite, but *countably infinite* (ℵ₀) since it describes the natural numbers. The same is true for the set of all sets constructed using vertical nesting.

When we merge these two sets, adding in also the sets constructed using different other methods, we see that the cardinality of *the set of all possible constructible sets* is beyond countable - it must be *uncountably infinite*, having the cardinality `𝖈`.
