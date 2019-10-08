# Powerset

https://en.wikipedia.org/wiki/Power_set

The **powerset** of any set $$S$$ is the set of all its subsets (including the empty set and $$S$$ itself) denoted by $$\mathcal{P}(S)$$.

![Hasse diagram][pset]

*𝒫(S) ordered by inclusion*

Given $$S = {x, y, z}$$ the $$\mathcal{P}(S)$$ consist of all possible subsets of $$S$$:

$$\mathcal{P}(S) = \{   \\
\quad \{\},     \qquad \small\text{ the empty set is a subset of any set } \\
\quad \{x\},      \qquad \quad\small\text{ for each element  } \\
\quad \{y\},      \qquad \quad\small\text{ α of S: {α} is an } \\
\quad \{z\},      \qquad \quad\small\text{ element of 𝒫(S)   } \\
\quad \{x, y\},   \qquad        \\
\quad \{x, z\},   \qquad              \\
\quad \{y, z\},   \qquad    \\
\quad \{x, y, z\} \quad \small\text{ any set is an element & subset of its 𝒫 } \\
\}$$


## Powerset properties

**The empty set** is a subset of any set, ∅ ∈ S, but not an explicit member.

hence besides always being a subset of any set, , it is also an element and a subset of the powerset of any set.


$$
S = {x,y,z}  \\
\mathcal{P}(S)=\{\{\},\{x\},\{y\},\{z\},\{x,y\},\{x,z\},\{y,z\},\{x,y,z\}\} \\
\ \\
\quad \star \mathcal{P}(S) \ni S \\
\quad \star \mathcal{P}(S) \ni \varnothing \\
\ \\
\quad \star \varnothing \in \mathcal{P}(S) \\
\quad \star S \in \mathcal{P}(S) \\
\quad \star \forall s \in S . \{s\} \in \mathcal{P}(S)  \\
$$



Identifying the powerset of $$S$$ with the set of all functions from $$S$$ to a given set of two elements, $$2S$$.


In axiomatic set theory (e.g. ZFC), the existence of the power set of any set is postulated by **the axiom of power set**.


Any subset of P(S) is called a family of sets over S.




If a set $$\mathcal{P}$$ contains all the possible subsets of a set $$X$$ (including the empty set), then $$\mathcal{P}$$ is a **powerset** of $$X$$, denoted as $$\mathcal{P}(X)$$.

For example, if $$X=\{a,b\}$$, then $$\mathcal{P}(X) =\{\{a\},\{b\},\{ab\},\{\varnothing\}\}$$

The cardinality of a power set of a set $$X$$ is $$2^{|X|}$$.


[pset]: https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Hasse_diagram_of_powerset_of_3.svg/317px-Hasse_diagram_of_powerset_of_3.svg.png


## Notation

- ASCII: P(S),
- Unicode glyphs: 𝒫(S), ℘(S), ℙ(S)
- latex keywords: $$\mathcal{P}(S),\wp(S),\mathbb{P}(S),\mathscr{P}(S)$$










---

## Leftovers

r ℘ ℘


```
{}           ... the empty set is a subset of any set
{x}           \
{y}            > individual elements of S
{z}           /
{x, y}
{x, z}
{y, z}
{x, y, z}    ... any set S is an element of 𝒫(S)
```
