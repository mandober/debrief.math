# Associativity

https://en.wikipedia.org/wiki/Associative_property
https://en.wikipedia.org/wiki/Operator_associativity


Associativity determines how an operation behave when multiple occurances of the same operator chance themselves in the same, unparenthesized, expression.

Unlike commutativity, associativity is about the relation an operator has with itself. It specifies how an operator behaves towards operands when in proximity of its doppelganger. In an expression where several identical operators are intercalated between operands, as in a • b • c • d


℗
» « • * ⁎ ⁕

հայերեն

associates to the same operators

how a binary operator relates to itself; i.e. 

Regarding associativity, an operation can be:
- left-associative
- right-associative
- fully-associative or non-associative


, associates to the left, e.g. function application   
    e.g. λa.λb.λc.λd.abcd = λa.λb.λc.λd.((ab)c)d
  - right-associative, associates to the right, e.g. function abstraction   
    e.g. λa.λb.λc.λd.abcd = λa.(λb.(λc.(λd.abcd)))
  - associative, fully-associative,    
    e.g. 
      p ∧  q  ∧  r  ∧ s = 
    ((p ∧  q) ∧  r) ∧ s =
      p ∧ (q  ∧ (r  ∧ s)) = 
     (p ∧  q) ∧ (r  ∧ s) = 
      p ∧ (q  ∧  r) ∧ s = 
      p ∧  q  ∧  r  ∧ s
  - non-associative



In math, the associative property is a quality of a large number of infix operators. Positioned in between the operands, it is their placement that makes the order of evaluation uncertain with two or more occurances of the same operator in a row.



In general, the order of operations (or operator precedence) is a collection of rules that reflect conventions about which procedures to perform first in order to evaluate a mathematical expression.

These conventions exist to eliminate ambiguity while allowing notation to be as brief as possible. Where it is desired to override the precedence conventions, or even simply to emphasize them, parentheses ( ) can indicate an alternative order or reinforce the default order to avoid confusion.

The order of operations, which is used throughout mathematics, science, technology and is:
- groupings
- powers: exponentiation and n-root
- multiplication and division
- addition and subtraction
- otherwise, left to right

In exponentiation, exponents of exponents (tower of exponents) are evaluated in bottom-associative (bottom-up) order, 2^3^2^4 = ((2^3)^2)^4

have a special treatment: they go top-down (do the exponent at the top first).

The commutative and associative laws of addition and multiplication allow adding terms in any order, but mixed operations must obey the standard order of operations.

Functions use parentheses around the argument list to avoid ambiguity, but they may be omitted when the argument is atomic, e.g. `sin π`.

Grouping symbols are used to overide or emphasize evaluation order. Symbols of grouping can be removed using the associative and distributive laws, also they can be removed if the expression inside the symbol of grouping is sufficiently simplified so no ambiguity results from their removal. A horizontal fractional line doubles as a symbol of grouping, and so does the vinculum (prolongated bar that runs over a radicand in a √ expression).

The root symbol √ is traditionally prolongated by a bar (called vinculum) over the radicand (this avoids the need for parentheses around the radicand).










---

the order of evaluation of operations in an expression depends on an arbitrarily-assigned, possibly explicit, precedence level. When implicit, the precedence depends on the previusly established set of rules.

Arithmetic operations are arranged in a less-precedent-then and more-precedent-then orders.

`+ ⊏ - ⊏ ⨯ ⊏ ÷ ⊏ ^ ⊏ ⇈`

P - Parentheses

E - Exponents

M - Multiplication

D - Division

A - Addition

S - Subtraction

+ - ⨯ ÷ ^ ⇈
± ∓ - + !

∑ ∏ log
√ ∛ ∜

≫ ≪ ≽ ≷ ≼ ≿ ≾ ⊒ ⊏ ⊐ ⊑ ⊰ ⊱ ⋘ ⋙ ⋗ ⋖ ⋟ ⋞ ⋝ ⋜
⪖ ⪕ ⪛ ⪘ ⪗ ⪜ ⪝ ⪞ ⪷ ⪸ ⫂ ⫁ ⫒ ⫑ ⫐ ⫏ 

Ř Ŗ ɺ ʀ Œ ɴ ɵ T ʧ ʦ ʈ

ĝ Ĥ Ĝ ô Ŝ Û ŵ Ŵ û Û Ŷ ŷ

ĸ k ɮ ɭ ʟ ʪ ɢ ɚ ɘ ɛ ʤ

ⅹ ɺ ʁ ɴ ɯ ʞ ʜ ɓ ə p ɔ ʙ ɒ ɐ


have precedence in terms of a greater or lesser precedence in relation to another operator, such that `+` has less precedence then `*`

¬p ∧ q




we are mostly concerned with the associativity of a polyadic (arity > 0) infix operator.


mostly brought in connection with binary operators, although operators of other arity may also express it.







Within an expression containing two or more occurrences in a row of the same associative operator, 

the order in which the operations are performed does not matter as long as the sequence of the operands is not changed.

That is, rearranging the parentheses in such an expression will not change its value.


associative operations


In propositional logic, associativity is a valid rule of replacement for expressions in logical proofs.




Associativity is a property of a binary operation (and the underlying, carrier set) that makes the order, in which the elements of the set are combined, immaterial.

      p ∧  q  ∧  r  ∧ s = 
    ((p ∧  q) ∧  r) ∧ s =
      p ∧ (q  ∧ (r  ∧ s)) = 
     (p ∧  q) ∧ (r  ∧ s) = 
      p ∧ (q  ∧  r) ∧ s = 
      p ∧  q  ∧  r  ∧ s


$$\forall x,y,z\ .\ x \star (y \star z) = (x \star y) \star z = x \star y \star z$$

For all elements x,y,z in a carrier set, whether we first combine x and y, the result of which we then combine with z, is the same as combining a with the result of combining y and z. Since the order of operations does not matter, we can dispense with the parenthesis.

## Details

Associativity is sometimes an axiom, sometimes a law, a principle, a notion, but always a property of a mathematical entity (entity is a math object or concept/notion in the most abstract sense, a generic, catch-all term).

Associativity is a property of an operation. In fact, an operation that relates two terms, so it's gotta be a binary operation, and it arises when combining at least 3 terms.

In algebra, a binary operation, denoted by ⊙, is associative (has associative property) iff the order in which the terms are combined is immaterial.

Who does, in fact, posses associativity? An operation? Terms? Terms and the operation together? With many other axioms it is always the latter: we have a set/structure/type (called carrier set in abstract algebra) whose elements are combined with a binary operation, and these two (set and operation) together form, say, an algebraic structure iff they uphold a set of prescibed axioms.

So, for example, a monoid is an algebraic structure, and many things are monoids which means there is (i) a carrier set (ii) a binary operation (iii) and the axioms of closure, associativity and identity are respected. By whom? By the carrier set (also a type in programming languages) and the associated binary operation **together**. This is why it is said that, e.g., (i) *the set of natural numbers* under (ii) *addition* forms a (iii) monoid (the prescribed axioms come and are enforced by the monoid).

In arithmetics, the plus operator is associative no matter what kind of numbers you through at it, so with some axioms apparently and in some situations, it could be said that the op itself has a certian property, like associativity. However, it's better to think about both, the carrier set and operation together eminating such property.

The associative property is a property of some binary operations. In propositional logic, associativity is a valid rule of replacement for expressions in logical proofs.

a ⊙ b ⊙ c = (a ⊙ b) ⊙ c = a ⊙ (b ⊙ c)


## In programming languages

the associativity of an operator is a property that determines how operators of the same precedence are grouped in the absence of parentheses. If an operand is both preceded and followed by operators (for example, ^ 3 ^), and those operators have equal precedence, then the operand may be used as input to two different operations (i.e. the two operations indicated by the two operators).

The choice of which operations to apply the operand to, is determined by the associativity of the operators.

Operators may be:
- *associative* operations can be grouped arbitrarily
- *left-associative* operations are grouped from the left
- *right-associative* operations are grouped from the right
- *non-associative* operations cannot be chained, often because the output type is incompatible with the input types.

The associativity and precedence of an operator is a part of the definition of the programming language; different programming languages may have different associativity and precedence for the same type of operator.

The concept of **notational associativity** is related to, but different from the **mathematical associativity**.

An operation that is mathematically associative, by definition, requires no notational associativity. For example, addition has the associative property, therefore it does not have to be either left-associative or right-associative.

An operation that is not mathematically associative, however, must be notationally left-, right-, or non-associative. For example, subtraction does not have the associative property, therefore it must have notational associativity.






## Associative ops

```
x + y + z   addition
x * y * z   multiplication

h ∘ g ∘ f   function composition

p ∧ q ∧ r   logical conjunction
p ∨ q ∨ r   logical disjunction
```
