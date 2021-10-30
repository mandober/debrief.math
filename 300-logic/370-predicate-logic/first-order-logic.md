# First-order logic

https://en.wikipedia.org/wiki/First-order_logic


**First-order logic (FOL)** uses quantified variables over non-logical objects, and allows the use of sentences that contain variables. This distinguishes it from propositional logic, which does not use quantifiers or relations.

**Zeroth-order logic** is FOL without variables or quantifiers. Some authors use this phrase as a synonym for propositional calculus, but others define it as an extended propositional logic by adding constants, operations and relations on non-Boolean values. Every zeroth-order language in this broader sense is complete and compact.

Mathematical theories are usually presented in FOL, together with a specified *domain of discourse* over which the quantified variables range, finitely many functions from that domain to itself, finitely many predicates defined on that domain, and a set of axioms believed to hold for those things. Sometimes "theory" is understood in a more formal sense, which is just a set of sentences (set of wff) in FOL.

## FOL Syntax

- *Atomic sentence* is an indecomposable unit of lang with a truth value.
- *Individual constant* (symbols) is an expression that refers to a specific distinct object. Every individual constant must refer to exactly one actual object. An object can have any number of names: none, one, or more.
- *Predicates* (symbols) are symbols used to express properties or relations between objects. *Arity* is a property of a predicate, it is the number of arguments needed for a complete formation of an atomic sentence. *Argument* is a constant symbol used to fill in one of the slots associated with a predicate symbol.*Predicate symbols* in FOL have fixed arity. Each predicate is interpreted by the determinate property. *Determinate property* is a matter of fact if an object posses it or not.

Elements of predicate logic
- Atomic sentences
- Constant symbols
- Variables (free and bound)
- Predicate symbols
- Quantifiers
- Universe of discourse

FOL is a family of languages, all having a similar grammar and sharing certain important vocabulary items, known as the connectives and quantifiers. Languages in this family can differ in the specific vocabulary used to form their most atomic sentences.

**Atomic sentence** is the most basic sentences in the language used to make a claim about the world. It is the smallest lang unit with a truth value.

**Individual constants** are symbols that refer to a particular object and they function in FOL much the same way as the names do in English.

**Constants** are usually represented with a single lower case letter, picked from the front of the English alphabet, with/out the subscript or superscript. To avoid ambiguity, each constant denotes an actual object in the world; it always has a concrete referent. Some objects are referred to by more than one constant and some (nameless generic objects) by no constant at all. 
Aside: Names in English that do not refer to an actual object (Pegasus, Zeus, etc.) are disallowed in FOL, but a variant of FOL called *free logic* accepts referentless constants, providing a language suitable for formalizing mythology and other fiction.

**Predicate symbols** are symbols used to express a particular property of an object or a relation between objects, in which case they are sometimes called *relation symbols*. As in English, predicates are expressions that when combined with names (acting as arguments) form atomic sentences. An *argument* is a constant symbol when used to fill in one of the places associated with a predicate symbol to make an atomic sentence.

*Arity* specifies the number of individual constants the predicate symbol needs in order to form a sentence. Unary predicate is used to represent properties of objects, e.g. `H(x)` for "is tall" property. A relations between objects, e.g. `T(xy)` for "is-taller-than", is modelled using a binary predicate. Predicates with higher arity also represent relations, e.g. `P(x,y,z)` for "x gave y to z".

In FOL, every predicate is interpreted by a *determinate property* (relation), which is a property of an object for which there is a factual matter whether or not the object posseses such property. *Atomic sentence* is a predicate symbol applied to the appropriate number of names (arguments), making a claim about the world. The order of names is crucial in forming atomic sentences. Since predicates express determinate properties and *names* denote *definite individuals*, each atomic sentence of FOL must express a claim that has a truth value. FOL is a general purpose language and we can use different individual constants and predicate symbols to talk about any *subject matter*.

The **identity predicate** is a binary predicate, symbolized with an infix operator. An atomic sentence containing an occurrence of the identity predicate is true when the predicate's two arguments refer to the very same object.
