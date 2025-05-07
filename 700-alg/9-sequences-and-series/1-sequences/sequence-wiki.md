# Sequence

https://en.wikipedia.org/wiki/Sequence

* A **sequence** is an enumerated collection of objects (unlike a set, order matters and repetitions are allowed). The member objects of a sequence are called *terms* (or elements). The number of terms is the *length of the sequence*. An infinite sequence has an infinite number of terms; sequences may also be finite (more rare in practice).

* Formally, a sequence may be defined as a *function from `ℕ`* (which denote the position or index of the sequence term) to the term (at that position).
* Terms are typically reals, so the type of seq-as-a-function is `seq : ℕ → ℝ`.
* The set ℕ is the domain for seq-as-function - it provides inputs to the function which are dually also indices.
* The notion of a sequence can be generalized to an *indexed family*, defined as a function from an arbitrary *index set* (arbitrary, not necessarily ℕ, set is the domain).

* The position of a term in a sequence is determined by its *index* (rank), which is a natural number (non-negative integer).
* Indices denote the "slots" in the sequence at which the terms reside.
* A term (an element of the codomain) is the image of an index (element of domain) to which it is associated.
* The *first term* in a sequence, denoted `a₀`, has index 0 in 0-based indexing
* In 1-based indexing, the first term is `a₁`.
* It is important to specify whether 0 or 1 indexing in used as they may yiled different results because, besides as index, inputs are also arguments to a seq-as-function function.
* 0- and 1-indexing may be interconverted by adjusting the definition's body.


* A sequence is often denoted by letters, like `aₙ`, where the subscript `n` refers to the n-th term of the sequence; e.g. n-th term of the Fibonacci sequence `F` is generally denoted as `Fₙ`. More often, though, `aₙ` is used to refer to the sequence itself, usually in parens as `(aₙ)`, instead of referring to a particular term (and rather then using bare `a`).

* In computing and computer science, *finite sequences* are called *strings* (words) or *lists*, and these different names commonly correspond to different ways to represent them in memory. *Infinite sequences* are called *streams*. The *empty sequence*, `()`, is included in most implementations of sequences; it is almost never encountered in math, though.


## Contents

- 1. Examples and notation
  - 1.1. Examples
  - 1.2. Indexing
  - 1.3. Defining a sequence by recursion
- 2. Formal definition and basic properties
  - 2.1. Definition
  - 2.2. Finite and infinite
  - 2.3. Increasing and decreasing
  - 2.4. Bounded
  - 2.5. Subsequences
  - 2.6. Other types of sequences
- 3. Limits and convergence
  - 3.1. Formal definition of convergence
  - 3.2. Applications and important results
  - 3.3. Cauchy sequences
  - 3.4. Infinite limits
- 4. Series
- 5. Use in other fields of mathematics
  - 5.1. Topology
    - 5.1.1. Product topology
  - 5.2. Analysis
    - 5.2.1. Sequence spaces
  - 5.3. Linear algebra
  - 5.4. Abstract algebra
    - 5.4.1. Free monoid
    - 5.4.2. Exact sequences
    - 5.4.3. Spectral sequences
  - 5.5. Set theory
  - 5.6. Computing
  - 5.7. Streams
- 6. See also
- 7. Notes
- 8. References
- 9. External links


## 1. Examples and notation

A sequence can be thought of as a list of elements with a particular order.

Sequences are useful in a number of mathematical disciplines for studying functions, spaces, and other mathematical structures using the convergence properties of sequences. In particular, sequences are the basis for series, which are important in differential equations and analysis. Sequences are also of interest in their own right, and can be studied as patterns or puzzles, such as in the study of prime numbers.

There are a number of ways to denote a sequence, some of which are more useful for specific types of sequences. One way to specify a sequence is to list all its elements. For example, the first four odd numbers form the sequence (1, 3, 5, 7). This notation is used for infinite sequences as well. For instance, the infinite sequence of positive odd integers is written as (1, 3, 5, 7, ...). Because notating sequences with ellipsis leads to ambiguity, listing is most useful for customary infinite sequences which can be easily recognized from their first few elements. Other ways of denoting a sequence are discussed after the examples.

### 1.1 Examples

The prime numbers are the natural numbers greater than 1 that have no divisors but 1 and themselves. Taking these in their natural order gives the sequence (2, 3, 5, 7, 11, 13, 17, ...). The prime numbers are widely used in mathematics, particularly in number theory where many results related to them exist.

The Fibonacci numbers comprise the integer sequence in which each element is the sum of the previous two elements. The first two elements are either 0 and 1 or 1 and 1 so that the sequence is (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...).

Other examples of sequences include those made up of rational numbers, real numbers and complex numbers. The sequence (.9, .99, .999, .9999, ...), for instance, approaches the number 1. In fact, every real number can be written as the limit of a sequence of rational numbers (e.g. via its decimal expansion, also see completeness of the real numbers). As another example, π is the limit of the sequence (3, 3.1, 3.14, 3.141, 3.1415, ...), which is increasing. A related sequence is the sequence of decimal digits of π, that is, (3, 1, 4, 1, 5, 9, ...). Unlike the preceding sequence, this sequence does not have any pattern that is easily discernible by inspection.

Other examples are sequences of functions, whose elements are functions instead of numbers.

The On-Line Encyclopedia of Integer Sequences comprises a large list of examples of integer sequences.

https://oeis.org/wiki/Index_to_OEIS

### 1.2 Indexing

Other notations can be useful for sequences whose pattern cannot be easily guessed or for sequences that do not have a pattern such as the digits of π. One such notation is to write down a general formula for computing the nth term as a function of n, enclose it in parentheses, and include a subscript indicating the set of values that n can take. For example, in this notation the sequence of even numbers could be written as (2n)n∈N. The sequence of squares could be written as (n2)n∈N.

The variable n is called an index, and the set of values that it can take is called the index set.

One can consider multiple sequences at the same time by using different variables; e.g. 

(bn)n∈N could be a different sequence than 

(an)n∈N. One can even consider a sequence of sequences: 
((am,n)n∈N)m∈N denotes a sequence whose mth term is the sequence 
(am,n)n∈N.

An alternative to writing the domain of a sequence in the subscript is to indicate the range of values that the index can take by listing its highest and lowest legal values. For example, the notation 

(k2)10k=1 denotes the ten-term sequence of squares 

(1,4,9,…,100). The limits ∞ and −∞ are allowed, but they do not represent valid values for the index, only the supremum or infimum of such values, respectively. For example, the sequence 
(an)∞n=1 is the same as the sequence 
(an)n∈N, and does not contain an additional term "at infinity". The sequence 

    (an)∞n=−∞ 

is a bi-infinite sequence, and can also be written as 

    (…,a−1,a0,a1,a2,…)

In cases where the set of indexing numbers is understood, the subscripts and superscripts are often left off. That is, one simply writes (ak) for an arbitrary sequence. Often, the index k is understood to run from 1 to ∞. However, sequences are frequently indexed starting from zero, as in

    (ak)∞k=0=(a0,a1,a2,…)

In some cases, the elements of the sequence are related naturally to a sequence of integers whose pattern can be easily inferred. In these cases, the index set may be implied by a listing of the first few abstract elements. For instance, the sequence of squares of odd numbers could be denoted in any of the following ways.

    (1,9,25,…)
    (a1,a3,a5,…),ak=k2
    (a2k−1)∞k=1,ak=k2
    (ak)∞k=1,ak=(2k−1)2
    ((2k−1)2)∞k=1

Moreover, the subscripts and superscripts could have been left off in the third, fourth, and fifth notations, if the indexing set was understood to be the natural numbers. In the second and third bullets, there is a well-defined sequence (ak)∞k=1, but it is not the same as the sequence denoted by the expression.

### 1.3 Defining a sequence by recursion

## 2. Formal definition and basic properties

There are many different notions of sequences in mathematics, some of which (e.g. exact sequence) are not covered by the definitions and notations introduced below.

### 2.1 Definition

In this article, a sequence is formally defined as a function whose domain is an interval of integers. This definition covers several different uses of the word "sequence", including one-sided infinite sequences, bi-infinite sequences, and finite sequences (see below for definitions of these kinds of sequences). However, many authors use a narrower definition by requiring the domain of a sequence to be the set of natural numbers. This narrower definition has the disadvantage that it rules out finite sequences and bi-infinite sequences, both of which are usually called sequences in standard mathematical practice. Another disadvantage is that, if one removes the first terms of a sequence, one needs reindexing the remainder terms for fitting this definition. In some contexts, to shorten exposition, the codomain of the sequence is fixed by context, for example by requiring it to be the set R of real numbers,[5] the set C of complex numbers,[6] or a topological space.[7]

Although sequences are a type of function, they are usually distinguished notationally from functions in that the input is written as a subscript rather than in parentheses, that is, an rather than a(n). There are terminological differences as well: the value of a sequence at the lowest input (often 1) is called the "first element" of the sequence, the value at the second smallest input (often 2) is called the "second element", etc. Also, while a function abstracted from its input is usually denoted by a single letter, e.g. f, a sequence abstracted from its input is usually written by a notation such as 
(an)n∈A, or just as 
(an). Here A is the domain, or index set, of the sequence.

Sequences and their limits (see below) are important concepts for studying topological spaces. An important generalization of sequences is the concept of nets. A net is a function from a (possibly uncountable) directed set to a topological space. The notational conventions for sequences normally apply to nets as well.

### 2.2 Finite and infinite

See also: ω-language


The length of a sequence is defined as the number of terms in the sequence.

A sequence of a finite length n is also called an n-tuple. Finite sequences include the empty sequence ( ) that has no elements.

Normally, the term infinite sequence refers to a sequence that is infinite in one direction, and finite in the other-the sequence has a first element, but no final element. Such a sequence is called a singly infinite sequence or a one-sided infinite sequence when disambiguation is necessary. In contrast, a sequence that is infinite in both directions-i.e. that has neither a first nor a final element-is called a bi-infinite sequence, two-way infinite sequence, or doubly infinite sequence. A function from the set Z of all integers into a set, such as for instance the sequence of all even integers ( ..., −4, −2, 0, 2, 4, 6, 8, ... ), is bi-infinite. This sequence could be denoted (2n)∞n=−∞.


### 2.3 Increasing and decreasing

A sequence is said to be monotonically increasing if each term is greater than or equal to the one before it. For example, the sequence (an)∞n=1 is monotonically increasing if and only if an+1≥an for all n∈N. 

If each consecutive term is strictly greater than (>) the previous term then the sequence is called strictly monotonically increasing. A sequence is monotonically decreasing if each consecutive term is less than or equal to the previous one, and is strictly monotonically decreasing if each is strictly less than the previous. If a sequence is either increasing or decreasing it is called a monotone sequence. This is a special case of the more general notion of a monotonic function.

The terms nondecreasing and nonincreasing are often used in place of increasing and decreasing in order to avoid any possible confusion with strictly increasing and strictly decreasing, respectively.

### 2.4 Bounded

If the sequence of real numbers (an) is such that all the terms are less than some real number M, then the sequence is said to be bounded from above. In other words, this means that there exists M such that for all n, an ≤ M. Any such M is called an upper bound. Likewise, if, for some real m, an ≥ m for all n greater than some N, then the sequence is bounded from below and any such m is called a lower bound. If a sequence is both bounded from above and bounded from below, then the sequence is said to be bounded.

### 2.5 Subsequences

A subsequence of a given sequence is a sequence formed from the given sequence by deleting some of the elements without disturbing the relative positions of the remaining elements. For instance, the sequence of positive even integers (2, 4, 6, ...) is a subsequence of the positive integers (1, 2, 3, ...). The positions of some elements change when other elements are deleted. However, the relative positions are preserved.

Formally, a subsequence of the sequence 
(an)n∈N is any sequence of the form 
(ank)k∈N, where 
(nk)k∈N is a strictly increasing sequence of positive integers.

### 2.6 Other types of sequences

Some other types of sequences that are easy to define include:

An integer sequence is a sequence whose terms are integers.
A polynomial sequence is a sequence whose terms are polynomials.
A positive integer sequence is sometimes called multiplicative, if anm = an am for all pairs n, m such that n and m are coprime.[8] In other instances, sequences are often called multiplicative, if an = na1 for all n. Moreover, a multiplicative Fibonacci sequence[9] satisfies the recursion relation an = an−1 an−2.
A binary sequence is a sequence whose terms have one of two discrete values, e.g. base 2 values (0,1,1,0, ...), a series of coin tosses (Heads/Tails) H,T,H,H,T, ..., the answers to a set of True or False questions (T, F, T, T, ...), and so on.

## 3. Limits and convergence

Main article: Limit of a sequence

An important property of a sequence is convergence. If a sequence converges, it converges to a particular value known as the limit. If a sequence converges to some limit, then it is convergent. A sequence that does not converge is divergent.

Informally, a sequence has a limit if the elements of the sequence become closer and closer to some value L (called the limit of the sequence), and they become and remain arbitrarily close to L, meaning that given a real number 
d greater than zero, all but a finite number of the elements of the sequence have a distance from L less than d.

For example, the sequence an=n+12n2 shown to the right converges to the value 0. On the other hand, the sequences bn=n3 (which begins 1, 8, 27, ...) and cn=(−1)n (which begins −1, 1, −1, 1, ...) are both divergent.

If a sequence converges, then the value it converges to is unique. This value is called the limit of the sequence. The limit of a convergent sequence 
(an) is normally denoted limn→∞an. If (an) is a divergent sequence, then the expression limn→∞an is meaningless.

### 3.1 Formal definition of convergence

A sequence of real numbers (an) converges to a real number L if, for all ε>0, there exists a natural number N such that for all n≥N we have |an−L|<ε.

If (an) is a sequence of complex numbers rather than a sequence of real numbers, this last formula can still be used to define convergence, with the provision that |⋅| denotes the complex modulus, i.e. |z|=z∗z−−−√. If (an) is a sequence of points in a metric space, then the formula can be used to define convergence, if the expression |an−L| is replaced by the expression `dist(an,L)`, which denotes the distance between an and L.

### 3.2 Applications and important results



### 3.3 Cauchy sequences

Main article: Cauchy sequence

A Cauchy sequence is a sequence whose terms become arbitrarily close together as n gets very large. The notion of a Cauchy sequence is important in the study of sequences in metric spaces, and, in particular, in real analysis.

One particularly important result in real analysis is *Cauchy characterization of convergence for sequences*:
>A sequence of reals is convergent (in ℝ) iff it is Cauchy.

In contrast, there are Cauchy sequences of rational numbers that are not convergent in the rationals, e.g. the sequence defined by

x₁ = 1, xₙ₊₁ = (xₙ + 2/xₙ)/2

is Cauchy, but has no rational limit (cf. Cauchy sequence § Non-example: rational numbers).

More generally, any sequence of rational numbers that converges to an irrational number is Cauchy, but not convergent when interpreted as a sequence in the set of rational numbers.

Metric spaces that satisfy the Cauchy characterization of convergence for sequences are called complete metric spaces and are particularly nice for analysis.

### 3.4. Infinite limits

In calculus, it is common to define notation for sequences which do not converge in the sense discussed above, but which instead become and remain arbitrarily large, or become and remain arbitrarily negative. If `aₙ` becomes arbitrarily large as `n` tends to infinity, we write `lim{n→∞} aₙ = ∞`.

In this case we say that the *sequence diverges* (i.e. converges to infinity). An example of such a sequence is `aₙ = n`.

If `aₙ` becomes arbitrarily negative (i.e. negative and large in magnitude) as `n` tends to infinity, we write `lim{n→∞} aₙ = −∞`, and say that the *sequence diverges* (i.e. converges to negative infinity).

## 4. Series

Main article: Series (mathematics)
https://en.wikipedia.org/wiki/Series_(mathematics)

A series is, informally speaking, the sum of the terms of a sequence. That is, it is an expression of the form `∑{n=1..∞} aₙ` or `a₁ + a₂ + ⋯`, where `(aₙ)` is a sequence of real or complex numbers.

The *partial sums* of a series are the expressions resulting from replacing the infinity symbol with a finite number, i.e. the N-th partial sum of the series `∑{n=1..∞} aₙ` is the number `∑{n=1..N} aₙ = a₁ + a₂ + ⋯ + aɴ`.

The partial sums themselves form a sequence `(Sɴ)ɴ∈ℕ`, which is called the *sequence of partial sums* of the series `∑{n=1..N} aₙ`

If the sequence of partial sums converges, then we say that the series is convergent and the limit is called *the value of the series*.

The same notation is used to denote a series and its value, i.e. we write

    ∑{n=1..N} aₙ = lim{ɴ→∞}Sɴ




## 5. Use in other fields of mathematics

- 5.1 Topology
  - 5.1.1 Product topology
- 5.2 Analysis
  - 5.2.1 Sequence spaces
- 5.3 Linear algebra
- 5.4 Abstract algebra
  - 5.4.1 Free monoid
  - 5.4.2 Exact sequences
  - 5.4.3 Spectral sequences
- 5.5 Set theory
- 5.6 Computing
- 5.7 Streams

### 5.1 Topology

Sequences play an important role in topology, especially in the study of metric spaces. For instance:

A metric space is compact exactly when it is sequentially compact.
A function from a metric space to another metric space is continuous exactly when it takes convergent sequences to convergent sequences.
A metric space is a connected space if and only if, whenever the space is partitioned into two sets, one of the two sets contains a sequence converging to a point in the other set.
A topological space is separable exactly when there is a dense sequence of points.
Sequences can be generalized to nets or filters. These generalizations allow one to extend some of the above theorems to spaces without metrics.

#### 5.1.1 Product topology

The topological product of a sequence of topological spaces is the cartesian product of those spaces, equipped with a natural topology called the product topology.

More formally, given a sequence of spaces `(Xi)i∈N`, the product space

    X:=∏i∈NXi

is defined as the set of all sequences (xi)i∈N such that for each i, xi is an element of Xi.

The canonical projections are the maps pi : X → Xi defined by the equation 

    pi((xj)j∈N)=xi

Then the product topology on X is defined to be the coarsest topology (i.e. the topology with the fewest open sets) for which all the projections pi are continuous. The product topology is sometimes called the *Tychonoff topology*.

### 5.2 Analysis

When discussing sequences in analysis, one will generally consider sequences of the form (x1,x2,x3,…) or (x0,x1,x2,…), which is to say, infinite sequences of elements indexed by natural numbers.

A sequence may start with an index different from 1 or 0. For example, the sequence defined by xn = 1/log(n) would be defined only for n ≥ 2. When talking about such infinite sequences, it is usually sufficient (and does not change much for most considerations) to assume that the members of the sequence are defined at least for all indices large enough, that is, greater than some given N.

The most elementary type of sequences are numerical ones, that is, sequences of real or complex numbers. This type can be generalized to sequences of elements of some vector space. In analysis, the vector spaces considered are often function spaces. Even more generally, one can study sequences with elements in some topological space.



#### 5.2.1 Sequence spaces

Main article: Sequence space
A sequence space is a vector space whose elements are infinite sequences of real or complex numbers. Equivalently, it is a function space whose elements are functions from the natural numbers to the field K, where K is either the field of real numbers or the field of complex numbers. The set of all such functions is naturally identified with the set of all possible infinite sequences with elements in K, and can be turned into a vector space under the operations of pointwise addition of functions and pointwise scalar multiplication. All sequence spaces are linear subspaces of this space. Sequence spaces are typically equipped with a norm, or at least the structure of a topological vector space.

The most important sequences spaces in analysis are the ℓp spaces, consisting of the p-power summable sequences, with the p-norm. These are special cases of Lp spaces for the counting measure on the set of natural numbers. Other important classes of sequences like convergent sequences or null sequences form sequence spaces, respectively denoted c and c0, with the sup norm. Any sequence space can also be equipped with the topology of pointwise convergence, under which it becomes a special kind of Fréchet space called an FK-space.


### 5.3 Linear algebra

Sequences over a field may also be viewed as vectors in a vector space. Specifically, the set of F-valued sequences (where F is a field) is a function space (in fact, a product space) of F-valued functions over the set of natural numbers.

### 5.4 Abstract algebra

Abstract algebra employs several types of sequences, including sequences of mathematical objects such as groups or rings.

#### 5.4.1 Free monoid



#### 5.4.2 Exact sequences



#### 5.4.3 Spectral sequences



### 5.5 Set theory

An *ordinal-indexed sequence* is a generalization of a sequence.

If `α` is a limit ordinal and `X` is a set, an `α`-indexed sequence of elements of `X` is a function from `α` to `X`. In this terminology an `ω`-indexed sequence is an ordinary sequence.


### 5.6 Computing

In computer science, finite sequences are called lists. Potentially infinite sequences are called streams. Finite sequences of characters or digits are called strings.

### 5.7 Streams

Infinite sequences of digits (or characters) drawn from a finite alphabet are of particular interest in theoretical computer science. They are often referred to simply as sequences or *streams*, as opposed to finite strings.

Infinite binary sequences, for instance, are infinite sequences of bits (characters drawn from the alphabet {0, 1}). The set `C = {0, 1}^∞` of all infinite binary sequences is sometimes called the *Cantor space*.

An infinite binary sequence can represent a formal language (a set of strings) by setting the n-th bit of the sequence to 1 iff the n-th string (in *shortlex* order) is in the language. This representation is useful in the diagonalization method for proofs.

**Shortlex** is a total ordering for finite sequences of objects that can themselves be totally ordered. In the shortlex ordering, sequences are primarily sorted by length with the shortest sequences first, and sequences of the same length are sorted into lexicographical order.

## See also

- Enumeration
  https://en.wikipedia.org/wiki/Enumeration
- Recurrence relation
  https://en.wikipedia.org/wiki/Recurrence_relation
- Sequence space
  https://en.wikipedia.org/wiki/Sequence_space

### Operations

- Cauchy product
  https://en.wikipedia.org/wiki/Cauchy_product

### Examples

- Discrete-time signal
  https://en.wikipedia.org/wiki/Discrete-time_signal
- Farey sequence
  https://en.wikipedia.org/wiki/Farey_sequence
- Fibonacci sequence
  https://en.wikipedia.org/wiki/Fibonacci_number
- Look-and-say sequence
  https://en.wikipedia.org/wiki/Look-and-say_sequence
- Thue-Morse sequence
  https://en.wikipedia.org/wiki/Thue%E2%80%93Morse_sequence
- List of integer sequences
  https://en.wikipedia.org/wiki/List_of_integer_sequences


### Types

- ±1-sequence
  https://en.wikipedia.org/wiki/%C2%B11-sequence
- Arithmetic progression
  https://en.wikipedia.org/wiki/Arithmetic_progression
- Automatic sequence
  https://en.wikipedia.org/wiki/Automatic_sequence
- Cauchy sequence
  https://en.wikipedia.org/wiki/Cauchy_sequence
- Constant-recursive sequence
  https://en.wikipedia.org/wiki/Constant-recursive_sequence
- Geometric progression
  https://en.wikipedia.org/wiki/Geometric_progression
- Harmonic progression
  https://en.wikipedia.org/wiki/Harmonic_progression_(mathematics)
- Holonomic sequence
  https://en.wikipedia.org/wiki/Holonomic_function
- Regular sequence
  https://en.wikipedia.org/wiki/K-regular_sequence
- Pseudorandom binary sequence
  https://en.wikipedia.org/wiki/Pseudorandom_binary_sequence
- Random sequence
  https://en.wikipedia.org/wiki/Random_sequence

### Related concepts

- List (computing)
  https://en.wikipedia.org/wiki/List_(computing)
- Net (topology) (a generalization of sequences)
  https://en.wikipedia.org/wiki/Net_(topology)
- Ordinal-indexed sequence
  https://en.wikipedia.org/wiki/Order_topology#Ordinal-indexed_sequences
- Recursion (computer science)
  https://en.wikipedia.org/wiki/Recursion_(computer_science)
- Set (mathematics)
  https://en.wikipedia.org/wiki/Set_(mathematics)
- Tuple
  https://en.wikipedia.org/wiki/Tuple
- Permutation
  https://en.wikipedia.org/wiki/Permutation
