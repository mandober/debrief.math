# Semilattice

https://en.wikipedia.org/wiki/Semilattice

A **Semilattice** is a set equipped with a binary operation which is associative and commutative and such that all elements are idempotent.

This generalizes the notion of a collection of sets equipped with the union operation. Semilattices always form a natural partially ordered set.

>A **join-semilattice** (or upper semilattice) is a partially ordered set that has a *join* (or Least Upper Bound) for any nonempty finite subset.

>Dually, a **meet-semilattice** (or lower semilattice) is a partially ordered set which has a *meet* (or Greatest Lower Bound) for any nonempty finite subset.

Every join-semilattice is a meet-semilattice in the inverse order and vice versa.

**Semilattices** can also be defined algebraically: join and meet are associative, commutative, idempotent binary operations, and any such operation induces a partial order (and the respective inverse order) such that the result of the operation for any two elements is the Least Upper Bound (or Greatest Lower Bound) of the elements with respect to this partial order.

>A **lattice** is a partially ordered set that is both a meet- and join-semilattice with respect to the same partial order. Algebraically, a lattice is a set with two associative, commutative idempotent binary operations linked by corresponding absorption laws.


## Semilattice

We say that `(L,∨)` is a **semilattice** if the binary operation satisfies the following 3 axioms:
1. (associativity) ∀xyz ∈ L. x ∨ (y ∨ z) = (x ∨ y) ∨ z
2. (commutativity)  ∀xy ∈ L. x ∨ y = y ∨ x
3. (idempotency)      ∀x∈ L. x ∨ x = x

In order words, a *semilattice* is a commutative semigroup such that all elements are idempotent.

Example: Let `X` be a set. Then `(𝒫 X, ∪)` is a semilattice.

We now see that these algebraic objects correspond to *posets*.

### Proposition
Let `(L,∨)` be a semilattice. 
We may define a relation __≤__ on `L` as follows:

    x ≤ y ⇔ x ∨ y = y

Then `≤` is a partial order on `L`. 
Furthermore, `x ∨ y` (i.e. `x` join `y`) is 
the *Least Upper Bound* for `x` and `y` 
with regard to this partial order, 
`lub(x,y,≤) = x ∨ y`.

### Proof
Assume `L` is a semilattice. 

* Let `x ∈ L`. 
By idempotency, `x ∨ x = x`. 
Thus, `x ≤ x`, that is, `≤` is *reflexive*.

    ∀x. x ≤ x

* Let `xy ∈ L`. 
Suppose that `x ≤ y` and `y ≤ x`. 
This means that `x ∨ y = y` and `y ∨ x = x`. 

    (x ≤ y) ⇔ x ∨ y = y
    (y ≤ x) ⇔ y ∨ x = x
    x = (y ∨ x) = (x ∨ y) = y

By commutativity of `∨`, we have that 
`y ∨ x = x ∨ y`, i.e. `x = y`. 
Therefore, `≤` is *antisymmetric*.

    ∀xy. x ≤ y ⋀ y ≤ x ⇔ x = y

* Lastly, let `xyz ∈ L` such that `x ≤ y` and `y ≤ z`. 
This implies that
  `x ≤ y` ⇔ `x ∨ y = y`
and
  `y ≤ z` ⇔ `y ∨ z = z`

Then,
```hs
  x ∨ z =           -- z = y ∨ z
= x ∨ (y ∨ z)       -- assoc
= (x ∨ y) ∨ z       -- y = x ∨ y
= y ∨ z             -- z = y ∨ z
= z
```

where the second equality follows from associativity. 
Thus, `x ≤ z` and `≤` is *transitive*. 

    ∀xyz. x ≤ y ⋀ y ≤ z ⇔ x ≤ z

* Thus, `≤` is a *partial order*.


### Upper bound

Let `z` be an upper bound of `x`, `y`, that is, `x,y ≤ z`. 
Hence, `x ∨ z = y ∨ z = z`. 
Then 
```hs
(x ∨ y) ∨ z =  -- by assoc
= x ∨ (y ∨ z)  -- y ∨ z = z
= x ∨ z        -- x ∨ z = z
= z
```

Therefore,

    x ∨ y ≤ z

and `x ∨ y` is the *Least Upper Bound* of `x` and `y` wrt `≤`.

Reversing the previous discussion, let `(X, ≤)` be a poset such that a LUB exists for any pairs of elements from X. Then for `x,y ∈ X`, define `x ∨ y` to be the LUB of `x` and `y`. Then `(L, ∨)` is a semilattice.

Notice that if we had defined `≤` by the rule `x ≤ y` iff `x ∨ y = x`, then the proof above would carry through the same, although `x ∨ y` would be the *Greatest Lower Bound*. As partial orders often have both, a lattice will incorporate two operations.
- `x ≤ y ⇔ x ∨ y = y` then `x ∨ y` is LUB
- `x ≤ y ⇔ x ∨ y = x` then `x ∨ y` is GLB


## Greatest element

In order theory, the *greatest element* (dual of the least element) of a subset S of a partially ordered set is an element of S that is greater than every other element of S.

## Least element

In order theory, the *least element* (dual of the greatest element) of a subset S of a partially ordered set is an element of S that is smaller than every other element of S.


## Lattice

We say that `(L, ∨, ∧)` is a **lattice** if the following 4 axioms are satisfied by the binary operation:

1. associativity: ∀xyz ∈ L, it holds both that
  - x ∨ (y ∨ z) = (x ∨ y) ∨ z
  - x ∧ (y ∧ z) = (x ∧ y) ∧ z

2. commutativity: ∀xy ∈ L, it holds both that
  - x ∨ y = y ∨ x
  - x ∧ y = y ∧ x

3. idempotency: ∀x ∈ L, it holds both that
  - x ∨ x = x
  - x ∧ x = x

4. absorption: ∀xy ∈ L, it holds both that
  - x ∨ (x ∧ y) = x
  - x ∧ (x ∨ y) = x


In order words, a *lattice* is two semilattices which interact with each other by absorption. The operation `∨` is called *join* of the lattice, and `∧` is called *meet*.

To explain absorption, the *Least Upper Bound* (LUB) of an element and something less than it would be the original element:

    x ∨ (x ∧ y) = x

Likewise, the *Greatest Lower Bound* (GLB) between an element and something larger than it would be the original element:

    x ∧ (x ∨ y) = x


### Proposition

Let `(L, ∨, ∧)` be a lattice. Then,

    a ∨ b = b  ⇔  a ≤ b  ⇔  a ∧ b = a


Proof: 
The first biconditional follows from the previous Proposition above. 
Suppose `a ∨ b = b`. 
Then, a ∧ b = a ∧ (a ∨ b) = a by absorption. 
Conversely, suppose a ∧ b = a. 
Then, a ∨ b = (a ∧ b) ∨ b = b ∨ (a ∧ b) = b ∨ (b ∧ a) = b. 

By the previous proposition, we may define the partial order of a lattice by the meet or the join. They give the same ordering. 

Similarly, given a partial order with least upper bounds and greatest lower bounds then we can create a lattice. 

The previous proposition introduced an important principle of lattices. As the axioms of a lattice are identical on the left compared to the right when `∨ ↔ ∧`, any proof of a theorem in this theory can also become a proof of the "dual" theorem where meet and join are interchanged. 

Likewise, the relation `≤` would be replaced with `≥` in the dual statement.

With this perspective, the above proposition proves 
`a ≤ b ⇔ b ≥ a` 
where 
`b ≥ a ⇔ a ∧ b = a`

>Any statement that is true for all lattices remains true when `≤` is replaced by `≥`, and `∨` and `∧` are interchanged throughout the statement.


The name "lattice" comes from the visualization through a Hasse diagram (often called lattices). The *join* operation causes one to flow *up the diagram*, while *meet* causes one to flow *down the diagram*.


Let `n` be a positive integer and let [n] be the set of positive divisors of `n`. Then `([n], lcm, gcd)` is a lattice. For example, n = 24 is depicted below.

```
  24
 ⟋  ⟍
8     12
│   ⟋ │
│ ⟋   │
4     6
│   ⟋ │
│ ⟋   │
2     3
  ⟍ ⟋
   1
```


The **axiom of idempotency** is a theorem of the other 3 axioms of a lattice, that is, `(L, ∨, ∧)` is a lattice iff `L` satisfies the associativity, commutativity, and absorption axioms.

Proof. The first direction is trivial. 
Note that 
```hs
  a ∨ a
= a ∨ (a ∧ (a ∨ a))  -- by absorption with respect to meet
= a                  -- by absorption with respect to join
```
The other idempotency axiom is proven by duality.


## Refs

Semilattices from Math `4230 Abstract Algebra II` at Southern Utah University
https://www.youtube.com/watch?v=zMl5zskdrhM&list=PLz7t89zv8Lp1renyfXwXxaa3oEDXa3Uf2

This is lecture 37 (part 1/2) of the lecture series offered by Dr. Andrew Misseldine for the course `Math 4230 - Abstract Algebra II` at Southern Utah University.

A transcript of this lecture can be found at Dr. Misseldine's website 
or through his Google Drive at: 
https://drive.google.com/file/d/1QVkLUmLo6pVwe_Erjqj6dt-vWs1hef-0/view

This lecture is based upon Sections 19.1 of 
`Abstract Algebra: Theory and Applications` by Tom Judson
http://abstract.ups.edu/
