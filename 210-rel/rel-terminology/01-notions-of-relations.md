# Relations :: Basics :: Notion of relation

## Relations within mathematics

Relations are part of set theory, which is a subfield of *mathematical logic*, along with proof theory, computability (recursion) theory, and model theory.

In a broader context, set theory (as part of mathematical logic) is a subfield of *discrete mathematics* which also includes graph theory, number theory, combinatorics, probability theory.

Besides *relation theory*, set theory also encompases *function theory* (since functions are specialization of relations), *order theory* (since orders are based on relations), and *domain theory* (since domains are based on orders).

## Relations in general

Relations are encountered everywhere; in the physical world, things are related to other things, and people stand in all kinds of relations with each other.


>Relations represent concrete and abstract associations between objects in the same context.

Besides concrete relations that may represent a network of friends that a user of a social website has, relations can represent all kinds of concrete and abstract associations.

A relation is a general concept that represents *associations* that objects in some *context* have. The mere fact that a number of objects may be placed in the same context together implies they must be related somehow.

>A relation need not relate only objects of the same type.

For example, all elements of a set are related by the fact that they are all member of the same set. This particular relation, denoted by the symbol `∈`, is called a *membership relation* and it relates an object `a` with a set `A`. If the object `a` is indeed an element of `A`, we write `a ∈ A` and conclude that the relation holds. In a slighlty less familiar notation, this can be denoted by `∈(a, A)`, and it shows that a relation need not relate only objects of the same type.


The most common and by default assumed type of relation is a *binary relation* that relates two entities (objects, ideas, people).

There are numerous kinship relations between people; for example, "is a sister of" is a relation on the set of all people, but it holds only in certain instances - it holds between, e.g. Marie Curie and Bronisława Dłuska and vice versa because this relation is *bidirectional* (symmetric) - if it holds in one direction, it must hold in the other too.

However, the relation "is a father of" is *strictly directed* - if it holds in one direction, it does not hold in the other. A relation like "is a love interest of" may hold in one direction, but that doesn't prevent it to hold or not in the other direction (it may turn out symmetrical but it is not generally so). Some relations occur as *opposing pairs*, like "is a father of" and "is a son of" - if one of these hold, the opposing relation must hold with the direction reversed.

>Importantly, a relation is defined on a set or between sets.

That is, a binary relation may be defined *on a set*, in which case it relates a set with itself, or it may be defined *between two sets*, in which case it relates one set with the other. More precisely, a relation relates the elements of one set with the elements of another (possibly the same set).

This means, given e.g. a relation `≤` on a set `ℕ`, that some pairs of elements are related by `≤` (the relation holds) and some pairs are not (the relation does not hold). For example, it holds between 1 and 3, denoted `1 ≤ 3` or `≤(1,3)`, and between 1 and 1, denoted `1 ≤ 1`, but not between 4 and 2, denoted `¬(4 ≤ 2)` or `4 ≰  2` or `¬≤(4,2)`.

>However, the relation `≤` is defined on the whole set ℕ, so these examples are just a few of its instances - the relation `≤` itself is an infinite set of pairs of natural numbers.
