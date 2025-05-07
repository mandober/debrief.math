# ZFC Axioms

- `ZFC` - the Zermelo-Fraenkel set theory with the axiom of choice
- `ZF` - the Zermelo-Fraenkel set theory without the axiom of choice

ZFC axioms (10) = ZF axioms (9) + The axiom of choice (AC)
1. The axiom of extensionality
2. The axiom of empty set
3. The axiom of pairing
4. The axiom of union
5. The axiom of infinity
6. The axiom schema of replacement
7. The axiom of power set
8. The axiom of regularity
9. The axiom schema of specification
10. The axiom of choice (AC)


```bash
echo $'\b'-\ The\ axiom\ {of\ {extensionality,the\ empty\ set,pairing,union,infinity,the\ power\ set,regularity,choice},schema\ of\ {replacement,specification}}$'\n'
```


Links
- [Axiom of extensionality](https://en.wikipedia.org/wiki/Axiom_of_extensionality)
- [Axiom of empty set](https://en.wikipedia.org/wiki/Axiom_of_empty_set)
- [Axiom of pairing](https://en.wikipedia.org/wiki/Axiom_of_pairing)
- [Axiom of union](https://en.wikipedia.org/wiki/Axiom_of_union)
- [Axiom of infinity](https://en.wikipedia.org/wiki/Axiom_of_infinity)
- [Axiom schema of replacement](https://en.wikipedia.org/wiki/Axiom_schema_of_replacement)
- [Axiom of power set](https://en.wikipedia.org/wiki/Axiom_of_power_set)
- [Axiom of regularity](https://en.wikipedia.org/wiki/Axiom_of_regularity)
- [Axiom schema of specification](https://en.wikipedia.org/wiki/Axiom_schema_of_specification)



## Set Theory (Part 2): ZFC Axioms
https://www.youtube.com/watch?v=op3WZRUKk_k

Intro to the axioms of set theory using the Zermelo-Fraenkel with the axiom of choice (ZFC) formal system.

Showing how the union, the intersection, the empty set and the relative complement are derived or defined under this axiomatic system.


## The axiom of extensionality
https://en.wikipedia.org/wiki/Axiom_of_extensionality

Subset notation:

$$\forall a . (a\in A \to a \in B) \iff A \subseteq B$$

If set A is subset of set B and B is subset of A, then A and B are equal sets i.e. they are the same set.

$$\forall A\,\forall B\,(\forall X\,(X\in A\Rightarrow X\in B)\to A=B)$$


## The Axiom of pairing

For all sets X and Y, there is a set C which contains them as its elements. Since X and Y are sets, it means that, besides each being a member of C, each one is also a subset of C.

$$
X=\{a,b\} \\
Y=\{c,d\} \\
C=\{X,Y\} = \{ \{a,b\}, \{c,d\} \} \\
$$

$$\forall X\ \forall Y\ \exists C\ . (X \in C \land X \subseteq C) \lor (Y\in C \land Y \subseteq C)$$
