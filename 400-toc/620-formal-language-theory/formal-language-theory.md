# Formal language theory

https://en.wikipedia.org/wiki/Formal_language_theory

In logic, mathematics, computer science, and linguistics, 
a **formal language** consists of words 
whose letters are taken from an alphabet 
and are well-formed 
according to a specific set of rules.

The **alphabet** of a formal language 
consists of *symbols*, *letters*, or *tokens* 
that concatenate into *strings of the language*.

Each string concatenated from symbols of this alphabet is called a **word**.

The words belonging to a particular formal language are usually called **well-formed formulas or words** (wff).

A formal language is often defined by means of a *formal grammar* 
(such as a regular grammar or context-free grammar), 
which consists of its *formation rules*.

In computer science, formal languages are used among others as the basis for defining the grammar of programming languages and formalized versions of subsets of natural languages in which the words of the language represent concepts that are associated with particular meanings or semantics.

In computational complexity theory, decision problems are typically defined as formal languages, and complexity classes are defined as the sets of the formal languages that can be parsed by machines with limited computational power.

In logic and the foundations of mathematics, formal languages are used to represent the syntax of axiomatic systems, and mathematical formalism is the philosophy that all of mathematics can be reduced to the syntactic manipulation of formal languages in this way.

The field of formal language theory primarily studies the *purely syntactical aspects* of such languages, that is, their internal structural patterns.

Formal language theory sprang out of linguistics, as a way of understanding the syntactic regularities of natural languages.

## Contents

- History
- Words over an alphabet
- Definition
- Examples
- Constructions
- Language-specification formalisms
- Operations on languages
- Applications
  - Programming languages
  - Formal theories, systems, and proofs
  - Interpretations and models

## History

In the 17th Century, Gottfried Leibniz imagined and described the characteristica universalis, a universal and formal language which utilised pictographs. During this period, Carl Friedrich Gauss also investigated the problem of Gauss codes.

Gottlob Frege attempted to realize Leibniz's ideas, through a notational system first outlined in Begriffsschrift (1879) and more fully developed in his 2-volume Grundgesetze der Arithmetik (1893/1903). This described a "formal language of pure language".

In the first half of the 20th Century, several developments were made with relevance to formal languages. Axel Thue published four papers relating to words and language between 1906 and 1914. The last of these introduced what Emil Post later termed 'Thue Systems', and gave an early example of an undecidable problem. Post would later use this paper as the basis for a 1947 proof "that the word problem for semigroups was recursively insoluble", and later devised the canonical system for the creation of formal languages.

Noam Chomsky devised an abstract representation of formal and natural languages, known as the Chomsky hierarchy. In 1959 John Backus developed the Backus-Naur form to describe the syntax of a high level programming language, following his work in the creation of FORTRAN. Peter Naur invented a similar scheme in 1960.

## Words over an alphabet

An *alphabet*, in the context of formal languages, can be any set, although it often makes sense to use an alphabet in the usual sense of the word, or more generally any finite character encoding such as ASCII or Unicode.

The elements of an alphabet are called its *letters*. An alphabet may contain an infinite number of elements. For example, first-order logic is often expressed using an alphabet that, besides symbols such as `∧`, `¬`, `∀` and parentheses, contains infinitely many elements `x0, x1, x2, …` that play the role of variables. However, most definitions in formal language theory specify alphabets with a finite number of elements, and most results apply only to them.

A word over an alphabet can be any finite sequence, a *string of letters*. The set of all words over an alphabet `Σ` is usually denoted by `Σ*` (using the Kleene star). The length of a word is the number of letters it is composed of.

For any alphabet, there is only one word of length 0, the empty word, which is often denoted by `ε` or `λ`. By concatenation one can combine two words to form a new word, whose length is the sum of the lengths of the original words. The result of concatenating a word with the empty word is the original word.

In some applications, especially in logic, the alphabet is also known as the *vocabulary* and words are known as *formulas* or sentences; this breaks the letter/word metaphor and replaces it by a word/sentence metaphor.

## Definition

>A formal language `L` over an alphabet `Σ` is a subset of `Σ*`, that is, a set of words over that alphabet.

Sometimes the sets of words are grouped into expressions, whereas rules and constraints may be formulated for the creation of *well-formed expressions*.

In computer science and mathematics, which do not usually deal with natural languages, the adjective "formal" is often omitted as redundant.

While formal language theory usually concerns itself with formal languages that are described by some syntactical rules, the actual definition of the concept *formal language* is only as above:

>A possibly infinite set of finite-length strings composed from a given alphabet, no more and no less.

In practice, there are many languages that can be described by rules, such as regular languages or context-free languages. The notion of a formal grammar may be closer to the intuitive concept of a "language", one described by syntactic rules. By an abuse of the definition, a particular formal language is often thought of as being equipped with a *formal grammar* that describes it.

## Examples

These rules describe a formal language `L` over the alphabet `Σ = {0-9, +, =}`:
- Every nonempty string without "+" or "=", which doesn't start with 0 is in L
- The string "0" is in L
- A string containing "=" is in L iff there is exactly one "=", and it separates two valid strings of L.
- A string containing "+", but not "=", is in L iff every "+" in the string separates two valid strings of L
- No string is in L other than those implied by the previous rules.

Under these rules, the string "23+4=555" is in L, but the string "=234=+" is not. This formal language expresses natural numbers, well-formed additions, and well-formed addition equalities, but it expresses only their *syntax*, not their *semantics*. For instance, nowhere in these rules is there any indication that "0" means the number zero, "+" means addition, "23+4=555" is false, etc.

## Constructions

For finite languages, one can explicitly enumerate all *well-formed words*. For example, we can describe a language L as just `L = {a, b, ab, cba}`. The degenerate case of this construction is the empty language, which contains no words at all, `L = ∅`.

However, even over a finite (non-empty) alphabet such as `Σ = {a,b}` there are an infinite number of finite-length words that can potentially be expressed: "a", "abb", "ababba", "aaababbbbaab", etc. Therefore, formal languages are typically infinite, and describing an infinite formal language is not as simple as writing `L = {a, b, ab, cba}`.

Here are some examples of formal languages:
- `L = Σ*`, the set of all words over `Σ`
- `L = {a}* = {aⁿ}`, where `n` ranges over `ℕ` and `aⁿ` means `a` repeated `n`
  times (this is the set of words consisting only of the symbol `a`)
- the set of syntactically correct programs in a given programming language 
  (the syntax of which is usually defined by a context-free grammar)
- the set of inputs upon which a certain Turing machine halts
- the set of maximal strings of alphanumeric ASCII characters on this line,
  i.e. the set `{the, set, of, maximal, strings, alphanumeric, ASCII, characters, on, this, line, i, e}`.

## Language-specification formalisms

Formal languages are used as tools in multiple disciplines. However, formal language theory rarely concerns itself with particular languages (except as examples), but is mainly concerned with the study of various types of formalisms to describe languages.

For instance, a language can be given as:
- those strings generated by some formal grammar
- those strings described or matched by a particular regular expression
- those strings accepted by some automaton, such as a TM or FSA
- those strings for which some decision procedure (an algorithm that asks a 
  sequence of related YES/NO questions) produces the answer YES

Typical questions asked about such formalisms include:
- *What is their expressive power*? Can formalism `X` describe every language that formalism `Y` can describe? Can it describe other languages?
- *What is their recognizability*? How difficult is it to decide whether a given word belongs to a language described by formalism `X`?
- *What is their comparability*? How difficult is it to decide whether two languages, one described in formalism `X` and one in formalism `Y`, or in `X` again, are actually the same language?

Surprisingly often, the answer to these decision problems is that it cannot be done at all, or that it is extremely expensive (with a characterization of how expensive).

Therefore, formal language theory is a major application area of computability theory and complexity theory.

Formal languages may be classified in the *Chomsky hierarchy* based on the expressive power of their *generative grammar* as well as the complexity of their *recognizing automaton*.

*Context-free grammars* and *regular grammars* provide a good compromise between expressivity and ease of parsing, and are widely used in practice.

## Operations on languages

Certain operations on languages are common. This includes the standard set operations, such as union, intersection, and complement. Another class of operation is the element-wise application of string operations.

For example, suppose `L1` and `L2` are languages over a common alphabet `Σ`.

- *Concatenation* `L1∙L2` consists of all strings of the form `vw` where `v` is a string from `L1` and `w` is a string from `L2`.

- *Intersection* `L1 ⋂ L2` consists of all strings that are contained in both languages.

- *Complement* `¬L1` with respect to `Σ` consists of all strings over `Σ` that are not in `L1`.

- *Kleene star*: the language consisting of all words that are concatenations of zero or more words in the original language.

- *Reversal*:
  - Let `ε` be the empty word, 
    then `εᴿ = ε`,
    and for each non-empty word 
    `w = σ₁ ⋯ σₙ` 
    where `σ₁, …, σₙ` are elements of some alphabet,
    let `wᴿ = σ₁ ⋯ σₙ`,
    then for a formal language `L`,
    `Lᴿ = { wᴿ | w ∈ L }`.

- *String homomorphism* is a string substitution such that each character is replaced by a single string, i.e. `f(a) = s`, where `s` is a string, for each character `a`.


Such string operations are used to investigate *closure properties* of classes of languages. A *class of languages* is closed under a particular operation when the operation, applied to languages in the class, always produces a language in the same class again.

For instance, the context-free languages are known to be closed under union, concatenation, and intersection with regular languages, but not closed under intersection or complement.

The theory of *trios* ¹ and *abstract families of languages* ² studies the most common closure properties of language families in their own right.

¹ In formal language theory, a **cone** is a set of formal languages that has some desirable closure properties enjoyed by some well-known sets of languages, in particular by the families of regular languages, context-free languages and the recursively enumerable languages. The concept of a cone is a more abstract notion that subsumes all of these families. A similar notion is the faithful cone, having somewhat relaxed conditions.

² In formal language theory, an **abstract family of languages** is an abstract mathematical notion generalizing characteristics common to the regular languages, the context-free languages and the recursively enumerable languages, and other families of formal languages studied in the scientific literature.


*Closure properties of language families*, `L₁ Op L₂`, where both `L₁` and `L₂` are in the language family given by the column (Due to Hopcroft and Ullman).


N |Operation      |RL|DCF|CF|Ix|CS|rec|RE| Desc
--|---------------|--|---|--|--|--|---|--|---------------------------
1 |Union          | ✓| 🗴 | ✓| ✓| ✓| ✓ | ✓| L₁ ∪ L₂ = {w ∣ w ∈ L₁ ∨ w ∈ L₂}
2 |Intersection   | ✓| 🗴 | 🗴| 🗴| ✓| ✓ | ✓| L₁ ∩ L₂ = {w ∣ w ∈ L₁ ∧ w ∈ L₂}
4 |Concatenation  | ✓| 🗴 | ✓| ✓| ✓| ✓ | ✓| L₁ ∙ L₂ = {wz∣ w ∈ L₁ ∧ z ∈ L₂}
3 |Complement     | ✓| ✓ | 🗴| 🗴| ✓| ✓ | 🗴| ¬L₁ = {w ∣ w ∉ L₁}
5 |Kleene star    | ✓| 🗴 | ✓| ✓| ✓| ✓ | ✓| L₁∗ = {ε} ⋃ {wz ∣ w ∈ L₁ ∧ z ∈ L₁∗}
6 |String hm h    | ✓| 🗴 | ✓| ✓| 🗴| 🗴 | ✓| h(L₁) = {h(w) ∣ w ∈ L₁}
7 |ε-free string h| ✓| 🗴 | ✓| ✓| ✓| ✓ | ✓| h(L₁) = {h(w) ∣ w ∈ L₁}
8 |Substitution φ | ✓| 🗴 | ✓| ✓| ✓| 🗴 | ✓| φ(L₁)=⋃{σ₁⋯σₙ ∈ L₁} φ(σ₁) ⋅…⋅ φ(σₙ)
9 |Inverse hm h⁻¹ | ✓| ✓ | 🗴| ✓| ✓| ✓ | ✓| h⁻¹(L₁) = ⋃ {w ∈ L₁} h⁻¹(w) 
10|Reverse        | ✓| 🗴 | ✓| ✓| ✓| ✓ | ✓| Lᴿ = {wᴿ ∣ w ∈ L}
11|Inters with R  | ✓| ✓ | 🗴| ✓| ✓| ✓ | ✓| L ∩ R = {w ∣ w ∈ L ∧ w ∈ R}

Legend
- hm = homomorphism
- (7)  ε-free string h = ε-free (string) homomorphism `h`
- (11) Inters with R = Intersection with a regular language `R`
- RL  = Regular language
- DCF = Deterministic context-free language
- CF  = Context free language
- Ix  = Indexed language
- CS  = Context sensitive language
- rec = Recursive language
- REL = Recursively enumerable language


## Applications

### Programming languages

A *compiler* usually has two distinct components:
- a *lexical analyzer* (sometimes generated by a tool like lex) identifies the tokens of the grammar (e.g. identifiers or keywords, numeric and string literals, punctuation and operator symbols), which are themselves specified by a simpler formal language, usually by means of regular expressions.
- at the most basic conceptual level, a *parser* (sometimes generated by a parser generator like yacc) attempts to decide if the source program is syntactically valid, that is if it is well formed with respect to the grammar for which the compiler was built.

Of course, compilers do more than just parse the source code - they usually translate it into some executable format. Because of this, a parser usually outputs more than a yes/no answer, typically an AST. This is used by subsequent stages of the compiler to eventually generate an executable containing machine code that runs directly on the hardware, or some intermediate code that requires a virtual machine to execute.

### Formal theories, systems, and proofs

In mathematical logic, a *formal theory* is a set of sentences expressed in a formal language.

A *formal system* (also called a logical calculus, or a logical system) consists of a formal language together with a *deductive apparatus*, aka deductive system.

The *deductive apparatus* may consist of a set of *transformation rules*, which may be interpreted as valid rules of inference, or a set of axioms, or have both.

A formal system is used to derive one expression from one or more other expressions.

Although a formal language can be identified with its formulas, a formal system cannot be likewise identified by its theorems.

Two formal systems `FS` and `FS′` may have all the same theorems and yet differ in some significant proof-theoretic way (a formula `A` may be a syntactic consequence of a formula `B` in one but not another for instance).

A *formal proof* or *derivation* is a finite sequence of *well-formed formulas* (which may be interpreted as sentences, or propositions) each of which is an axiom or follows from the preceding formulas in the sequence by a rule of inference.

The last sentence in the sequence is a *theorem of a formal system*.

Formal proofs are useful because their theorems can be interpreted as true propositions.

### Interpretations and models

Formal languages are entirely syntactic in nature, but may be given semantics that give meaning to the elements of the language.

For instance, in mathematical logic, the set of possible formulas of a particular logic is a formal language, and an interpretation assigns a meaning to each of the formulas-usually, a truth value.

The study of interpretations of formal languages is called **formal semantics**.

In mathematical logic, this is often done in terms of *model theory*. In model theory, the terms that occur in a formula are interpreted as objects within mathematical structures, and fixed compositional interpretation rules determine how the truth value of the formula can be derived from the interpretation of its terms; a model for a formula is an *interpretation* of terms such that the formula becomes true.
