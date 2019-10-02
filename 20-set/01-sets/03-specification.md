# Set notation

- Extensional definition
  - Roster notation
- Intensional (semantic) definition
  - Set-builder notation (set comprehension)
- Infinite sets
- Finite sets
- Terminal set member


Sets are fundamental objects in mathematics. Intuitively, a set is merely a collection of elements or members. There are various conventions for denoting sets, and an author typically chooses a convention depending on whether he wants to emphases set properties, set elements or some other aspect.

## Denoting a set as an object

When a set should refer to a an indivisible object, one typically denotes it by a single capital letter, e.g. the set $$\{1,2,3\}$$ may be denoted by $$A=\{1,2,3\}$$, and then the $$A$$ can be used to stand in for that set. However, since a set can contain other sets this is not always the case.

When referring to an arbitrary generic set, a typical notational choice is by the letter $$S$$. When several sets are under consideration, first few capitals, $$A, B, C$$, etc. are used.

Some sets are associated with these, conventinally used, identifiers:
- a set (generic set) is usually denoted by a single letter, $$S$$
  - or, if several are considered at the same time, $$A, B, C, \dots$$
- The empty set, $$\{\}$$, has a special, unique symbol: $$\varnothing$$
  - there exists only one empty set.
- The universal set has its own letter, $$\mathcal{U}$$
  - it contains everything; there's only one universal set.
- The power set has its own letter, $$\mathcal{P}$$.
  - the power set of a set S is denoted by $$\mathcal{P}(S)$$.

The most fundamental number sets have their own unique identifier:
* ℕ, the set of the natural numbers, $$\mathbb{N}$$
* ℤ, the set of the integers, $$\mathbb{Z}$$ (from German *Zahl*)
* ℚ, the set of the rational numbers, $$\mathbb{Q}$$ (from *quotient*)
* ℝ, the set of the real numbers, $$\mathbb{R}$$
* ℂ, the set of the complex numbers, $$\mathbb{C}$$
* Their relation: $$\mathbb{N}\subset \mathbb{Z}\subset \mathbb{Q}\subset \mathbb{R} \subset \mathbb{C}$$


## Extensional and intensional definition

Extensional and intensional definitions are two key ways in which the objects (a term refers to) can be defined.

### Intensional definition

Sets can be declared semantically using **intensional specification**, as in: "_A set containing odd natural numbers_", which may be denoted by

$$\{x . x \text{ is an odd natural number}\}$$, or

$$\{x \in \mathbb{N} . x*2\}$$


### Extensional definition

**Extensional definition** defines an object by explicitly enumerating every element for which the defining property holds.

Defining a set extensionally means listing its elements one-by-one between the braces. This is also called **roster notation**, 

$$\{2,4,6,8,10\}$$.


Since it's inconvenient to define a large set ths way, or impossible in case of infinite sets, it is allowed to abbreviate the list using ellipsis for both infinite and finite sets, e.g. 

$$\{1,2,3, \dots\}$$, or 

$$\{1, 2, 3, \dots, 100\}$$


### Axiom of Extensionality

If $$X,Y$$ are sets then $$X = Y \iff (\forall Z. Z \to X \iff Z \to Y)$$

meaning, if X and Y are sets, then, they are the same set *iff* they contain the same elements.

If and only if, *iff*:
1. *if* they are the same set, *then* they contain the same elements.
2. *if* they contain the same elements, *then* they are the same set.


## Set-builder notation
Another form of extensional definition is **set-builder notation**, also called the **set comprehension**. It is a compact notation to describe a set, with the general sytax lookin like: $$X=\{exp:rule\}$$, with the colon, ":", (or sometimes, a pipe symbol, "|") standing for abstraction and being read as "_such that_".

For example: $$A=\{x:x \in \mathbb{Z}, 2^x<32\}$$    
is read as "_The set A contains all numbers of form two times x, such that x is an element of the integer set_". One of the common abbreviations is to immediately specify the "type" of $$x$$:     
$$A=\{x \in \mathbb{Z}: 2^x<32\}$$    

If the set comprehension contains more then one applicable rules, their relation can be spelled out in English or, more commonly, using logic symbols for negation (`¬`), conjunction (`∧`), disjunction (`∨` or `&`), implication (`→`) and bijection (`↔`). Generally, predicate logic is used as a language to describe sets.


## Definition by predicate

Elements of a set can be specified by a predicate i.e. in terms of a property (or properties) they possess.

Whether an object $$x$$ possesses a certain property $$P$$ is either true or false (in terms of classical logic), so it can be a subject of the propositional function $$P(x)$$.

A set can be specified by a predicate function; $$S=\{x:P(x)\}$$, means that $$S$$ is a set to whom each $$x$$, which possesses a certain property $$P$$, belongs; taht is, each $$x$$ for which $$P(x)$$ is true.




## Indexed sets

$$$
\bigcap_{i=0}^n A_i = A_0 \cap A_1 \cap \dots \cap A_n
$$$

$$$
\bigcap^{n+1}_{i=0} A_i = \bigcap_{i=0}^n A_i \cap A_{n+1}
$$$


$$$
\bigcup_{i=0}^n A_i = A_0 \cup A_1 \cup \dots \cup A_n
$$$
