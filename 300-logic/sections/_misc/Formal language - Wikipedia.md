---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Formal_language
page-title:       Formal language - Wikipedia
article-title:    Formal language - Wikipedia
---
# Formal language - Wikipedia

This article is about a technical term in mathematics and computer science. For related studies about natural languages, see Formal semantics (linguistics). For formal modes of speech in natural languages, see Register (sociolinguistics).
This article is about a technical term in mathematics and computer science. For related studies about natural languages, see [Formal semantics (linguistics)][1]. For formal modes of speech in natural languages, see [Register (sociolinguistics)][2].

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Syntax_tree.svg/250px-Syntax_tree.svg.png)][3]

Structure of the syntactically well-formed, although nonsensical, English sentence, *"Colorless green ideas sleep furiously"* ([historical example][4] from [Chomsky][5] 1957).

In [logic][6], [mathematics][7], [computer science][8], and [linguistics][9], a __formal language__ consists of [words][10] whose [letters][11] are taken from an [alphabet][12] and are [well-formed][13] according to a specific set of rules.

The [alphabet][14] of a formal language consists of symbols, letters, or tokens that concatenate into strings of the language.[\[1\]][15] Each string concatenated from symbols of this alphabet is called a word, and the words that belong to a particular formal language are sometimes called *well-formed words* or *[well-formed formulas][16]*. A formal language is often defined by means of a [formal grammar][17] such as a [regular grammar][18] or [context-free grammar][19], which consists of its [formation rules][20].

The field of __formal language theory__ studies primarily the purely [syntactical][21] aspects of such languages—that is, their internal structural patterns. Formal language theory sprang out of linguistics, as a way of understanding the syntactic regularities of [natural languages][22]. In computer science, formal languages are used among others as the basis for defining the grammar of [programming languages][23] and formalized versions of subsets of natural languages in which the words of the language represent concepts that are associated with particular meanings or [semantics][24]. In [computational complexity theory][25], [decision problems][26] are typically defined as formal languages, and [complexity classes][27] are defined as the sets of the formal languages that can be [parsed by machines][28] with limited computational power. In [logic][29] and the [foundations of mathematics][30], formal languages are used to represent the syntax of [axiomatic systems][31], and [mathematical formalism][32] is the philosophy that all of mathematics can be reduced to the syntactic manipulation of formal languages in this way.

## History\[[edit][33]\]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][34]

This section __needs expansion__. You can help by [adding to it][35]. *(March 2021)*

The first use of formal language is thought to be [Gottlob Frege][36]'s 1879 *[Begriffsschrift][37]*, meaning "concept writing", which described a "formal language, modeled upon that of arithmetic, for pure thought."[\[2\]][38]

[Axel Thue][39]'s early [semi-Thue system][40], which can be used for rewriting strings, was influential on [formal grammars][41].

## Words over an alphabet\[[edit][42]\]

An __alphabet__, in the context of formal languages, can be any [set][43], although it often makes sense to use an [alphabet][44] in the usual sense of the word, or more generally a [character set][45] such as [ASCII][46] or [Unicode][47]. The elements of an alphabet are called its __letters__. An alphabet may contain an [infinite][48] number of elements;[\[note 1\]][49] however, most definitions in formal language theory specify alphabets with a finite number of elements, and most results apply only to them.

A __word__ over an alphabet can be any finite sequence (i.e., [string][50]) of letters. The set of all words over an alphabet Σ is usually denoted by Σ\* (using the [Kleene star][51]). The length of a word is the number of letters it is composed of. For any alphabet, there is only one word of length 0, the *empty word*, which is often denoted by e, ε, λ or even Λ. By [concatenation][52] one can combine two words to form a new word, whose length is the sum of the lengths of the original words. The result of concatenating a word with the empty word is the original word.

In some applications, especially in [logic][53], the alphabet is also known as the *vocabulary* and words are known as *formulas* or *sentences*; this breaks the letter/word metaphor and replaces it by a word/sentence metaphor.

## Definition\[[edit][54]\]

A __formal language__ *L* over an alphabet Σ is a [subset][55] of Σ\*, that is, a set of words over that alphabet. Sometimes the sets of words are grouped into expressions, whereas rules and constraints may be formulated for the creation of 'well-formed expressions'.

In computer science and mathematics, which do not usually deal with [natural languages][56], the adjective "formal" is often omitted as redundant.

While formal language theory usually concerns itself with formal languages that are described by some syntactical rules, the actual definition of the concept "formal language" is only as above: a (possibly infinite) set of finite-length strings composed from a given alphabet, no more and no less. In practice, there are many languages that can be described by rules, such as [regular languages][57] or [context-free languages][58]. The notion of a [formal grammar][59] may be closer to the intuitive concept of a "language," one described by syntactic rules. By an abuse of the definition, a particular formal language is often thought of as being equipped with a formal grammar that describes it.

## Examples\[[edit][60]\]

The following rules describe a formal language L over the alphabet Σ = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, +, =}:

-   Every nonempty string that does not contain "+" or "=" and does not start with "0" is in L.
-   The string "0" is in L.
-   A string containing "=" is in L if and only if there is exactly one "=", and it separates two valid strings of L.
-   A string containing "+" but not "=" is in L if and only if every "+" in the string separates two valid strings of L.
-   No string is in L other than those implied by the previous rules.

Under these rules, the string "23+4=555" is in L, but the string "=234=+" is not. This formal language expresses [natural numbers][61], well-formed additions, and well-formed addition equalities, but it expresses only what they look like (their [syntax][62]), not what they mean ([semantics][63]). For instance, nowhere in these rules is there any indication that "0" means the number zero, "+" means addition, "23+4=555" is false, etc.

### Constructions\[[edit][64]\]

For finite languages, one can explicitly enumerate all well-formed words. For example, we can describe a language L as just L = {a, b, ab, cba}. The [degenerate][65] case of this construction is the __empty language__, which contains no words at all (L = [∅][66]).

However, even over a finite (non-empty) alphabet such as Σ = {a, b} there are an infinite number of finite-length words that can potentially be expressed: "a", "abb", "ababba", "aaababbbbaab", .... Therefore, formal languages are typically infinite, and describing an infinite formal language is not as simple as writing *L* = {a, b, ab, cba}. Here are some examples of formal languages:

-   L = Σ\*, the set of *all* words over Σ;
-   L = {a}\* = {a*n*}, where *n* ranges over the natural numbers and "a*n*" means "a" repeated *n* times (this is the set of words consisting only of the symbol "a");
-   the set of syntactically correct programs in a given programming language (the syntax of which is usually defined by a [context-free grammar][67]);
-   the set of inputs upon which a certain [Turing machine][68] halts; or
-   the set of maximal strings of [alphanumeric][69] [ASCII][70] characters on this line, i.e.,  
    the set {the, set, of, maximal, strings, alphanumeric, ASCII, characters, on, this, line, i, e}.

## Language-specification formalisms\[[edit][71]\]

Formal languages are used as tools in multiple disciplines. However, formal language theory rarely concerns itself with particular languages (except as examples), but is mainly concerned with the study of various types of formalisms to describe languages. For instance, a language can be given as

-   those strings generated by some [formal grammar][72];
-   those strings described or matched by a particular [regular expression][73];
-   those strings accepted by some [automaton][74], such as a [Turing machine][75] or [finite-state automaton][76];
-   those strings for which some [decision procedure][77] (an [algorithm][78] that asks a sequence of related YES/NO questions) produces the answer YES.

Typical questions asked about such formalisms include:

-   What is their expressive power? (Can formalism *X* describe every language that formalism *Y* can describe? Can it describe other languages?)
-   What is their recognizability? (How difficult is it to decide whether a given word belongs to a language described by formalism *X*?)
-   What is their comparability? (How difficult is it to decide whether two languages, one described in formalism *X* and one in formalism *Y*, or in *X* again, are actually the same language?).

Surprisingly often, the answer to these decision problems is "it cannot be done at all", or "it is extremely expensive" (with a characterization of how expensive). Therefore, formal language theory is a major application area of [computability theory][79] and [complexity theory][80]. Formal languages may be classified in the [Chomsky hierarchy][81] based on the expressive power of their generative grammar as well as the complexity of their recognizing [automaton][82]. [Context-free grammars][83] and [regular grammars][84] provide a good compromise between expressivity and ease of [parsing][85], and are widely used in practical applications.

## Operations on languages\[[edit][86]\]

Certain operations on languages are common. This includes the standard set operations, such as union, intersection, and complement. Another class of operation is the element-wise application of string operations.

Examples: suppose ![L_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e79dc1b001f8b923df475ed14de023cbc456013) and ![L_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c6a952cfe42c86b7741f55a817da0e251793a358) are languages over some common alphabet ![\Sigma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e1f558f53cda207614abdf90162266c70bc5c1e).

Such [string operations][87] are used to investigate [closure properties][88] of classes of languages. A class of languages is closed under a particular operation when the operation, applied to languages in the class, always produces a language in the same class again. For instance, the [context-free languages][89] are known to be closed under union, concatenation, and intersection with [regular languages][90], but not closed under intersection or complement. The theory of [trios][91] and [abstract families of languages][92] studies the most common closure properties of language families in their own right.[\[3\]][93]

## Applications\[[edit][94]\]

### Programming languages\[[edit][95]\]

A compiler usually has two distinct components. A [lexical analyzer][96], sometimes generated by a tool like [`lex`][97], identifies the tokens of the programming language grammar, e.g. [identifiers][98] or [keywords][99], numeric and string literals, punctuation and operator symbols, which are themselves specified by a simpler formal language, usually by means of [regular expressions][100]. At the most basic conceptual level, a [parser][101], sometimes generated by a [parser generator][102] like `[yacc][103]`, attempts to decide if the source program is syntactically valid, that is if it is well formed with respect to the programming language grammar for which the compiler was built.

Of course, compilers do more than just parse the source code – they usually translate it into some executable format. Because of this, a parser usually outputs more than a yes/no answer, typically an [abstract syntax tree][104]. This is used by subsequent stages of the compiler to eventually generate an [executable][105] containing [machine code][106] that runs directly on the hardware, or some [intermediate code][107] that requires a [virtual machine][108] to execute.

### Formal theories, systems, and proofs\[[edit][109]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Formal_languages.svg/300px-Formal_languages.svg.png)][110]

In [mathematical logic][111], a *formal theory* is a set of [sentences][112] expressed in a formal language.

A *formal system* (also called a *logical calculus*, or a *logical system*) consists of a formal language together with a [deductive apparatus][113] (also called a *deductive system*). The deductive apparatus may consist of a set of [transformation rules][114], which may be interpreted as valid rules of inference, or a set of [axioms][115], or have both. A formal system is used to [derive][116] one expression from one or more other expressions. Although a formal language can be identified with its formulas, a formal system cannot be likewise identified by its theorems. Two formal systems ![{\mathcal {FS}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab025245b89b5d8e91a0f027632b0c1764ab2a9f) and ![{\mathcal {FS'}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23a8dd711a545583eab7b71b7cf80d57ee84344c) may have all the same theorems and yet differ in some significant proof-theoretic way (a formula A may be a syntactic consequence of a formula B in one but not another for instance).

A *formal proof* or *derivation* is a finite sequence of well-formed formulas (which may be interpreted as sentences, or [propositions][117]) each of which is an axiom or follows from the preceding formulas in the sequence by a [rule of inference][118]. The last sentence in the sequence is a theorem of a formal system. Formal proofs are useful because their theorems can be interpreted as true propositions.

#### Interpretations and models\[[edit][119]\]

Formal languages are entirely syntactic in nature but may be given [semantics][120] that give meaning to the elements of the language. For instance, in mathematical [logic][121], the set of possible formulas of a particular logic is a formal language, and an [interpretation][122] assigns a meaning to each of the formulas—usually, a [truth value][123].

The study of interpretations of formal languages is called [formal semantics][124]. In mathematical logic, this is often done in terms of [model theory][125]. In model theory, the terms that occur in a formula are interpreted as objects within [mathematical structures][126], and fixed compositional interpretation rules determine how the truth value of the formula can be derived from the interpretation of its terms; a *model* for a formula is an interpretation of terms such that the formula becomes true.

## See also\[[edit][127]\]

-   [Combinatorics on words][128]
-   [Free monoid][129]
-   [Formal method][130]
-   [Grammar framework][131]
-   [Mathematical notation][132]
-   [Associative array][133]
-   [String (computer science)][134]

## Notes\[[edit][135]\]

1.  __[^][136]__ For example, [first-order logic][137] is often expressed using an alphabet that, besides symbols such as ∧, ¬, ∀ and parentheses, contains infinitely many elements *x*0, *x*1, *x*2, … that play the role of variables.

## References\[[edit][138]\]

### Citations\[[edit][139]\]

### Sources\[[edit][140]\]

Works cited

General references

-   A. G. Hamilton, *Logic for Mathematicians*, [Cambridge University Press][141], 1978, [ISBN][142] [0-521-21838-1][143].
-   [Seymour Ginsburg][144], *Algebraic and automata theoretic properties of formal languages*, North-Holland, 1975, [ISBN][145] [0-7204-2506-9][146].
-   [Michael A. Harrison][147], *Introduction to Formal Language Theory*, Addison-Wesley, 1978.
-   [Rautenberg, Wolfgang][148] (2010). *A Concise Introduction to Mathematical Logic* (3rd ed.). [New York][149], NY: [Springer Science+Business Media][150]. [doi][151]:[10.1007/978-1-4419-1221-3][152]. [ISBN][153] [978-1-4419-1220-6][154]..
-   [Grzegorz Rozenberg][155], [Arto Salomaa][156], *Handbook of Formal Languages: Volume I-III*, Springer, 1997, [ISBN][157] [3-540-61486-9][158].
-   Patrick Suppes, *Introduction to Logic*, D. Van Nostrand, 1957, [ISBN][159] [0-442-08072-7][160].

## External links\[[edit][161]\]

-   ["Formal language"][162], *[Encyclopedia of Mathematics][163]*, [EMS Press][164], 2001 \[1994\]
-   [University of Maryland][165], [Formal Language Definitions][166]
-   James Power, ["Notes on Formal Language Theory and Parsing"][167], 29 November 2002.
-   Drafts of some chapters in the "Handbook of Formal Language Theory", Vol. 1–3, G. Rozenberg and A. Salomaa (eds.), [Springer Verlag][168], (1997):
    -   Alexandru Mateescu and Arto Salomaa, ["Preface" in Vol.1, pp. v–viii, and "Formal Languages: An Introduction and a Synopsis", Chapter 1 in Vol. 1, pp.1–39][169]
    -   Sheng Yu, ["Regular Languages", Chapter 2 in Vol. 1][170]
    -   Jean-Michel Autebert, Jean Berstel, Luc Boasson, ["Context-Free Languages and Push-Down Automata", Chapter 3 in Vol. 1][171]
    -   Christian Choffrut and Juhani Karhumäki, ["Combinatorics of Words", Chapter 6 in Vol. 1][172]
    -   Tero Harju and Juhani Karhumäki, ["Morphisms", Chapter 7 in Vol. 1, pp. 439–510][173]
    -   Jean-Eric Pin, ["Syntactic semigroups", Chapter 10 in Vol. 1, pp. 679–746][174]
    -   M. Crochemore and C. Hancart, ["Automata for matching patterns", Chapter 9 in Vol. 2][175]
    -   Dora Giammarresi, Antonio Restivo, ["Two-dimensional Languages", Chapter 4 in Vol. 3, pp. 215–267][176]

[1]: https://en.wikipedia.org/wiki/Formal_semantics_(linguistics) "Formal semantics (linguistics)"
[2]: https://en.wikipedia.org/wiki/Register_(sociolinguistics) "Register (sociolinguistics)"
[3]: https://en.wikipedia.org/wiki/File:Syntax_tree.svg
[4]: https://en.wikipedia.org/wiki/Colorless_green_ideas_sleep_furiously "Colorless green ideas sleep furiously"
[5]: https://en.wikipedia.org/wiki/Noam_Chomsky "Noam Chomsky"
[6]: https://en.wikipedia.org/wiki/Logic "Logic"
[7]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[8]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[9]: https://en.wikipedia.org/wiki/Linguistics "Linguistics"
[10]: https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"
[11]: https://en.wikipedia.org/wiki/Symbol_(formal) "Symbol (formal)"
[12]: https://en.wikipedia.org/wiki/Alphabet_(computer_science) "Alphabet (computer science)"
[13]: https://en.wikipedia.org/wiki/Well-formedness "Well-formedness"
[14]: https://en.wikipedia.org/wiki/Alphabet_(computer_science) "Alphabet (computer science)"
[15]: https://en.wikipedia.org/wiki/Formal_language#cite_note-1
[16]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[17]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[18]: https://en.wikipedia.org/wiki/Regular_grammar "Regular grammar"
[19]: https://en.wikipedia.org/wiki/Context-free_grammar "Context-free grammar"
[20]: https://en.wikipedia.org/wiki/Formation_rule "Formation rule"
[21]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[22]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[23]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[24]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[25]: https://en.wikipedia.org/wiki/Computational_complexity_theory "Computational complexity theory"
[26]: https://en.wikipedia.org/wiki/Decision_problem "Decision problem"
[27]: https://en.wikipedia.org/wiki/Complexity_class "Complexity class"
[28]: https://en.wikipedia.org/wiki/Parser "Parser"
[29]: https://en.wikipedia.org/wiki/Logic "Logic"
[30]: https://en.wikipedia.org/wiki/Foundations_of_mathematics "Foundations of mathematics"
[31]: https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system"
[32]: https://en.wikipedia.org/wiki/Formalism_(mathematics) "Formalism (mathematics)"
[33]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=1 "Edit section: History"
[34]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[35]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=
[36]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[37]: https://en.wikipedia.org/wiki/Begriffsschrift "Begriffsschrift"
[38]: https://en.wikipedia.org/wiki/Formal_language#cite_note-Herken1279-2
[39]: https://en.wikipedia.org/wiki/Axel_Thue "Axel Thue"
[40]: https://en.wikipedia.org/wiki/Semi-Thue_system "Semi-Thue system"
[41]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[42]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=2 "Edit section: Words over an alphabet"
[43]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[44]: https://en.wikipedia.org/wiki/Alphabet "Alphabet"
[45]: https://en.wikipedia.org/wiki/Character_set "Character set"
[46]: https://en.wikipedia.org/wiki/ASCII "ASCII"
[47]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[48]: https://en.wikipedia.org/wiki/Countable_set "Countable set"
[49]: https://en.wikipedia.org/wiki/Formal_language#cite_note-3
[50]: https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"
[51]: https://en.wikipedia.org/wiki/Kleene_star "Kleene star"
[52]: https://en.wikipedia.org/wiki/Concatenation "Concatenation"
[53]: https://en.wikipedia.org/wiki/Logic "Logic"
[54]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=3 "Edit section: Definition"
[55]: https://en.wikipedia.org/wiki/Subset "Subset"
[56]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[57]: https://en.wikipedia.org/wiki/Regular_language "Regular language"
[58]: https://en.wikipedia.org/wiki/Context-free_language "Context-free language"
[59]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[60]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=4 "Edit section: Examples"
[61]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[62]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[63]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[64]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=5 "Edit section: Constructions"
[65]: https://en.wikipedia.org/wiki/Degeneracy_(mathematics) "Degeneracy (mathematics)"
[66]: https://en.wikipedia.org/wiki/%E2%88%85 "∅"
[67]: https://en.wikipedia.org/wiki/Context-free_grammar "Context-free grammar"
[68]: https://en.wikipedia.org/wiki/Turing_machine "Turing machine"
[69]: https://en.wikipedia.org/wiki/Alphanumeric "Alphanumeric"
[70]: https://en.wikipedia.org/wiki/ASCII "ASCII"
[71]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=6 "Edit section: Language-specification formalisms"
[72]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[73]: https://en.wikipedia.org/wiki/Regular_expression "Regular expression"
[74]: https://en.wikipedia.org/wiki/Automata_theory "Automata theory"
[75]: https://en.wikipedia.org/wiki/Turing_machine "Turing machine"
[76]: https://en.wikipedia.org/wiki/Finite-state_machine "Finite-state machine"
[77]: https://en.wikipedia.org/wiki/Decision_problem "Decision problem"
[78]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[79]: https://en.wikipedia.org/wiki/Computability_theory_(computer_science) "Computability theory (computer science)"
[80]: https://en.wikipedia.org/wiki/Computational_complexity_theory "Computational complexity theory"
[81]: https://en.wikipedia.org/wiki/Chomsky_hierarchy "Chomsky hierarchy"
[82]: https://en.wikipedia.org/wiki/Automata_theory "Automata theory"
[83]: https://en.wikipedia.org/wiki/Context-free_grammar "Context-free grammar"
[84]: https://en.wikipedia.org/wiki/Regular_grammar "Regular grammar"
[85]: https://en.wikipedia.org/wiki/Parsing "Parsing"
[86]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=7 "Edit section: Operations on languages"
[87]: https://en.wikipedia.org/wiki/String_operations "String operations"
[88]: https://en.wikipedia.org/wiki/Closure_(mathematics) "Closure (mathematics)"
[89]: https://en.wikipedia.org/wiki/Context-free_language "Context-free language"
[90]: https://en.wikipedia.org/wiki/Regular_language "Regular language"
[91]: https://en.wikipedia.org/wiki/Cone_(formal_languages) "Cone (formal languages)"
[92]: https://en.wikipedia.org/wiki/Abstract_family_of_languages "Abstract family of languages"
[93]: https://en.wikipedia.org/wiki/Formal_language#cite_note-4
[94]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=8 "Edit section: Applications"
[95]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=9 "Edit section: Programming languages"
[96]: https://en.wikipedia.org/wiki/Lexical_analyzer "Lexical analyzer"
[97]: https://en.wikipedia.org/wiki/Lex_programming_tool "Lex programming tool"
[98]: https://en.wikipedia.org/wiki/Identifier "Identifier"
[99]: https://en.wikipedia.org/wiki/Keyword_(computer_programming) "Keyword (computer programming)"
[100]: https://en.wikipedia.org/wiki/Regular_expressions "Regular expressions"
[101]: https://en.wikipedia.org/wiki/Parser "Parser"
[102]: https://en.wikipedia.org/wiki/Parser_generator "Parser generator"
[103]: https://en.wikipedia.org/wiki/Yacc "Yacc"
[104]: https://en.wikipedia.org/wiki/Abstract_syntax_tree "Abstract syntax tree"
[105]: https://en.wikipedia.org/wiki/Executable "Executable"
[106]: https://en.wikipedia.org/wiki/Machine_code "Machine code"
[107]: https://en.wikipedia.org/wiki/Intermediate_code "Intermediate code"
[108]: https://en.wikipedia.org/wiki/Virtual_machine "Virtual machine"
[109]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=10 "Edit section: Formal theories, systems, and proofs"
[110]: https://en.wikipedia.org/wiki/File:Formal_languages.svg
[111]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[112]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[113]: https://en.wikipedia.org/wiki/Deductive_apparatus "Deductive apparatus"
[114]: https://en.wikipedia.org/wiki/Transformation_rule "Transformation rule"
[115]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[116]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[117]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[118]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[119]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=11 "Edit section: Interpretations and models"
[120]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[121]: https://en.wikipedia.org/wiki/Logic "Logic"
[122]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[123]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[124]: https://en.wikipedia.org/wiki/Formal_semantics_(logic) "Formal semantics (logic)"
[125]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[126]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[127]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=12 "Edit section: See also"
[128]: https://en.wikipedia.org/wiki/Combinatorics_on_words "Combinatorics on words"
[129]: https://en.wikipedia.org/wiki/Free_monoid "Free monoid"
[130]: https://en.wikipedia.org/wiki/Formal_method "Formal method"
[131]: https://en.wikipedia.org/wiki/Grammar_framework "Grammar framework"
[132]: https://en.wikipedia.org/wiki/Mathematical_notation "Mathematical notation"
[133]: https://en.wikipedia.org/wiki/Associative_array "Associative array"
[134]: https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"
[135]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=13 "Edit section: Notes"
[136]: https://en.wikipedia.org/wiki/Formal_language#cite_ref-3 "Jump up"
[137]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[138]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=14 "Edit section: References"
[139]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=15 "Edit section: Citations"
[140]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=16 "Edit section: Sources"
[141]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[142]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[143]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-21838-1 "Special:BookSources/0-521-21838-1"
[144]: https://en.wikipedia.org/wiki/Seymour_Ginsburg "Seymour Ginsburg"
[145]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[146]: https://en.wikipedia.org/wiki/Special:BookSources/0-7204-2506-9 "Special:BookSources/0-7204-2506-9"
[147]: https://en.wikipedia.org/wiki/Michael_A._Harrison "Michael A. Harrison"
[148]: https://en.wikipedia.org/wiki/Wolfgang_Rautenberg "Wolfgang Rautenberg"
[149]: https://en.wikipedia.org/wiki/New_York_City "New York City"
[150]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[151]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[152]: https://doi.org/10.1007%2F978-1-4419-1221-3
[153]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[154]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4419-1220-6 "Special:BookSources/978-1-4419-1220-6"
[155]: https://en.wikipedia.org/wiki/Grzegorz_Rozenberg "Grzegorz Rozenberg"
[156]: https://en.wikipedia.org/wiki/Arto_Salomaa "Arto Salomaa"
[157]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[158]: https://en.wikipedia.org/wiki/Special:BookSources/3-540-61486-9 "Special:BookSources/3-540-61486-9"
[159]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[160]: https://en.wikipedia.org/wiki/Special:BookSources/0-442-08072-7 "Special:BookSources/0-442-08072-7"
[161]: https://en.wikipedia.org/w/index.php?title=Formal_language&action=edit&section=17 "Edit section: External links"
[162]: https://www.encyclopediaofmath.org/index.php?title=Formal_language
[163]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[164]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[165]: https://en.wikipedia.org/wiki/University_of_Maryland,_Baltimore "University of Maryland, Baltimore"
[166]: http://www.csee.umbc.edu/help/theory/lang_def.shtml
[167]: http://www.cs.nuim.ie/~jpower/Courses/parsing/
[168]: https://en.wikipedia.org/wiki/Springer_Verlag "Springer Verlag"
[169]: https://www.cs.cmu.edu/~lkontor/noam/Mateescu-Salomaa.pdf
[170]: https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.67.1248&rep=rep1&type=pdf
[171]: http://citeseer.ist.psu.edu/248295.html
[172]: http://www.liafa.jussieu.fr/~cc/PUBLICATIONS/CKTUCS.PS.gz
[173]: http://users.utu.fi/harju/articles/morph.pdf
[174]: http://www.liafa.jussieu.fr/~jep/PDF/HandBook.pdf
[175]: http://www-igm.univ-mlv.fr/~mac/REC/DOC/B4.ps
[176]: https://web.archive.org/web/20071008170115/http://bruno.maitresdumonde.com/optinfo/Spe-MP/dmds1998/2dlang/giammaresi-restivo-paper.ps
