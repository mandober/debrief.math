# Set notation

## Denoting a set as an object

When a set should refer to a an indivisible object, one typically denotes it by a single capital letter, e.g. $$A=\{1,2,3\}$$, and then $$A$$ can be used to stand for that set.

When referring to an arbitrary generic set, a typical notational choice is by the letter $$S$$. When several sets are under consideration, first few capitals, $$A, B, C$$, etc. are used.

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




### Axiom of Extensionality

If $$X,Y$$ are sets then $$X = Y \iff (\forall Z. Z \to X \iff Z \to Y)$$

meaning, if X and Y are sets, then, they are the same set *iff* they contain the same elements.

If and only if, *iff*:
1. *if* they are the same set, *then* they contain the same elements.
2. *if* they contain the same elements, *then* they are the same set.



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
