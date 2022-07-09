---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Interpretation_(logic)
page-title:       Interpretation (logic) - Wikipedia
article-title:    Interpretation (logic) - Wikipedia
---
# Interpretation (logic) - Wikipedia

An interpretation is an assignment of meaning to the symbols of a formal language. Many formal languages used in mathematics, logic, and theoretical computer science are defined in solely syntactic terms, and as such do not have any meaning until they are given some interpretation. The general study of interpretations of formal languages is called formal semantics.
An __interpretation__ is an assignment of meaning to the [symbols][1] of a [formal language][2]. Many formal languages used in [mathematics][3], [logic][4], and [theoretical computer science][5] are defined in solely [syntactic][6] terms, and as such do not have any meaning until they are given some interpretation. The general study of interpretations of formal languages is called [formal semantics][7].

The most commonly studied formal logics are [propositional logic][8], [predicate logic][9] and their [modal][10] analogs, and for these there are standard ways of presenting an interpretation. In these contexts an interpretation is a [function][11] that provides the [extension][12] of symbols and strings of symbols of an object language. For example, an interpretation function could take the predicate *T* (for "tall") and assign it the extension {*a*} (for "Abraham Lincoln"). Note that all our interpretation does is assign the extension {a} to the non-logical constant *T*, and does not make a claim about whether *T* is to stand for tall and 'a' for Abraham Lincoln. Nor does logical interpretation have anything to say about logical connectives like 'and', 'or' and 'not'. Though *we* may take these symbols to stand for certain things or concepts, this is not determined by the interpretation function.

An interpretation often (but not always) provides a way to determine the [truth values][13] of [sentences][14] in a language. If a given interpretation assigns the value True to a sentence or [theory][15], the interpretation is called a [model][16] of that sentence or theory.

## Formal languages\[[edit][17]\]

A formal language consists of a possibly infinite set of *sentences* (variously called *words* or *[formulas][18]*) built from a fixed set of *letters* or *symbols*. The inventory from which these letters are taken is called the *[alphabet][19]* over which the language is defined. To distinguish the strings of symbols that are in a formal language from arbitrary strings of symbols, the former are sometimes called *[well-formed formulæ][20]* (wff). The essential feature of a formal language is that its syntax can be defined without reference to interpretation. For example, we can determine that (*P* or *Q*) is a well-formed formula even without knowing whether it is true or false.

### Example\[[edit][21]\]

A formal language ![{\mathcal {W}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a1cc103563219127f59aec7ed9327a3595566dd) can be defined with the alphabet ![{\displaystyle \alpha =\{\triangle ,\square \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/675953072fb785b439b306969896942d85eec76c), and with a word being in ![{\mathcal {W}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a1cc103563219127f59aec7ed9327a3595566dd) if it begins with ![\triangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d909fe94e8277a4c44a50853cb7dbbf0fa3148ed) and is composed solely of the symbols ![\triangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d909fe94e8277a4c44a50853cb7dbbf0fa3148ed) and ![\square ](https://wikimedia.org/api/rest_v1/media/math/render/svg/455831d58fa08f311b934d324adcff89a868b4e4).

A possible interpretation of ![{\mathcal {W}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a1cc103563219127f59aec7ed9327a3595566dd) could assign the decimal digit '1' to ![\triangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d909fe94e8277a4c44a50853cb7dbbf0fa3148ed) and '0' to ![\square ](https://wikimedia.org/api/rest_v1/media/math/render/svg/455831d58fa08f311b934d324adcff89a868b4e4). Then ![\triangle \square \triangle ](https://wikimedia.org/api/rest_v1/media/math/render/svg/85e909b127abaf0e7e5bcd369f34ec89ccfc041d) would denote 101 under this interpretation of ![{\mathcal {W}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a1cc103563219127f59aec7ed9327a3595566dd).

### Logical constants\[[edit][22]\]

In the specific cases of propositional logic and predicate logic, the formal languages considered have alphabets that are divided into two sets: the logical symbols ([logical constants][23]) and the non-logical symbols. The idea behind this terminology is that *logical* symbols have the same meaning regardless of the subject matter being studied, while *non-logical* symbols change in meaning depending on the area of investigation.

Logical constants are always given the same meaning by every interpretation of the standard kind, so that only the meanings of the non-logical symbols are changed. Logical constants include quantifier symbols ∀ ("all") and ∃ ("some"), symbols for [logical connectives][24] ∧ ("and"), ∨ ("or"), ¬ ("not"), parentheses and other grouping symbols, and (in many treatments) the equality symbol =.

## General properties of truth-functional interpretations\[[edit][25]\]

Many of the commonly studied interpretations associate each sentence in a formal language with a single truth value, either True or False. These interpretations are called *truth functional*;\[*[dubious][26] – [discuss][27]*\] they include the usual interpretations of propositional and first-order logic. The sentences that are made true by a particular assignment are said to be *[satisfied][28]* by that assignment.

In [classical logic][29], no sentence can be made both true and false by the same interpretation, although this is not true of glut logics such as LP.[\[1\]][30] Even in classical logic, however, it is possible that the truth value of the same sentence can be different under different interpretations. A sentence is *[consistent][31]* if it is true under at least one interpretation; otherwise it is *inconsistent*. A sentence φ is said to be *logically valid* if it is satisfied by every interpretation (if φ is satisfied by every interpretation that satisfies ψ then φ is said to be a *[logical consequence][32]* of ψ).

### Logical connectives\[[edit][33]\]

Some of the logical symbols of a language (other than quantifiers) are [truth-functional connectives][34] that represent truth functions — functions that take truth values as arguments and return truth values as outputs (in other words, these are operations on truth values of sentences).

The truth-functional connectives enable compound sentences to be built up from simpler sentences. In this way, the truth value of the compound sentence is defined as a certain truth function of the truth values of the simpler sentences. The connectives are usually taken to be [logical constants][35], meaning that the meaning of the connectives is always the same, independent of what interpretations are given to the other symbols in a formula.

This is how we define logical connectives in propositional logic:

-   ¬Φ is True [iff][36] Φ is False.
-   (Φ ∧ Ψ) is True iff Φ is True and Ψ is True.
-   (Φ ∨ Ψ) is True iff Φ is True or Ψ is True (or both are True).
-   (Φ → Ψ) is True iff ¬Φ is True or Ψ is True (or both are True).
-   (Φ ↔ Ψ) is True iff (Φ → Ψ) is True and (Ψ → Φ) is True.

So under a given interpretation of all the sentence letters Φ and Ψ (i.e., after assigning a truth-value to each sentence letter), we can determine the truth-values of all formulas that have them as constituents, as a function of the logical connectives. The following table shows how this kind of thing looks. The first two columns show the truth-values of the sentence letters as determined by the four possible interpretations. The other columns show the truth-values of formulas built from these sentence letters, with truth-values determined recursively.

Now it is easier to see what makes a formula logically valid. Take the formula *F*: (Φ ∨ ¬Φ). If our interpretation function makes Φ True, then ¬Φ is made False by the negation connective. Since the disjunct Φ of *F* is True under that interpretation, *F* is True. Now the only other possible interpretation of Φ makes it False, and if so, ¬Φ is made True by the negation function. That would make *F* True again, since one of *F*s disjuncts, ¬Φ, would be true under this interpretation. Since these two interpretations for *F* are the only possible logical interpretations, and since *F* comes out True for both, we say that it is logically valid or tautologous.

## Interpretation of a theory\[[edit][37]\]

An *interpretation of a theory* is the relationship between a theory and some subject matter when there is a [many-to-one][38] correspondence between certain elementary statements of the theory, and certain statements related to the subject matter. If every elementary statement in the theory has a correspondent it is called a *full interpretation*, otherwise it is called a *partial interpretation*.[\[2\]][39]

## Interpretations for propositional logic\[[edit][40]\]

The formal language for [propositional logic][41] consists of formulas built up from propositional symbols (also called sentential symbols, sentential variables, [propositional variables][42]) and logical connectives. The only [non-logical symbols][43] in a formal language for propositional logic are the propositional symbols, which are often denoted by capital letters. To make the formal language precise, a specific set of propositional symbols must be fixed.

The standard kind of interpretation in this setting is a function that maps each propositional symbol to one of the [truth values][44] true and false. This function is known as a *truth assignment* or *valuation* function. In many presentations, it is literally a truth value that is assigned, but some presentations assign [truthbearers][45] instead.

For a language with *n* distinct propositional variables there are 2*n* distinct possible interpretations. For any particular variable *a*, for example, there are 21\=2 possible interpretations: 1) *a* is assigned __T__, or 2) *a* is assigned __F__. For the pair *a*, *b* there are 22\=4 possible interpretations: 1) both are assigned __T__, 2) both are assigned __F__, 3) *a* is assigned __T__ and *b* is assigned __F__, or 4) *a* is assigned __F__ and *b* is assigned __T__.

Given any truth assignment for a set of propositional symbols, there is a unique extension to an interpretation for all the propositional formulas built up from those variables. This extended interpretation is defined inductively, using the truth-table definitions of the logical connectives discussed above.

## First-order logic\[[edit][46]\]

Unlike propositional logic, where every language is the same apart from a choice of a different set of propositional variables, there are many different first-order languages. Each first-order language is defined by a [signature][47]. The signature consists of a set of non-logical symbols and an identification of each of these symbols as a constant symbol, a function symbol, or a [predicate symbol][48]. In the case of function and predicate symbols, a natural number [arity][49] is also assigned. The alphabet for the formal language consists of logical constants, the equality relation symbol =, all the symbols from the signature, and an additional infinite set of symbols known as variables.

For example, in the language of [rings][50], there are constant symbols 0 and 1, two binary function symbols + and ·, and no binary relation symbols. (Here the equality relation is taken as a logical constant.)

Again, we might define a first-order language __L__, as consisting of individual symbols a, b, and c; predicate symbols F, G, H, I and J; variables x, y, z; no function letters; no sentential symbols.

### Formal languages for first-order logic\[[edit][51]\]

Given a signature σ, the corresponding formal language is known as the set of σ-formulas. Each σ-formula is built up out of atomic formulas by means of logical connectives; atomic formulas are built from terms using predicate symbols. The formal definition of the set of σ-formulas proceeds in the other direction: first, terms are assembled from the constant and function symbols together with the variables. Then, terms can be combined into an atomic formula using a predicate symbol (relation symbol) from the signature or the special predicate symbol "=" for equality (see the section "[Interpreting equality"][52] below). Finally, the formulas of the language are assembled from atomic formulas using the logical connectives and quantifiers.

### Interpretations of a first-order language\[[edit][53]\]

To ascribe meaning to all sentences of a first-order language, the following information is needed.

-   A [domain of discourse][54][\[3\]][55] *D*, usually required to be non-empty (see below).
-   For every constant symbol, an element of *D* as its interpretation.
-   For every *n*\-ary function symbol, an *n*\-ary function from *D* to *D* as its interpretation (that is, a function *Dn* → *D*).
-   For every *n*\-ary predicate symbol, an *n*\-ary relation on *D* as its interpretation (that is, a subset of *Dn*).

An object carrying this information is known as a [structure][56] (of signature σ), or σ-structure, or *L*\-structure (of language L), or as a "model".

The information specified in the interpretation provides enough information to give a truth value to any atomic formula, after each of its [free variables][57], if any, has been replaced by an element of the domain. The truth value of an arbitrary sentence is then defined inductively using the [T-schema][58], which is a definition of first-order semantics developed by Alfred Tarski. The T-schema interprets the logical connectives using truth tables, as discussed above. Thus, for example, φ & ψ is satisfied if and only if both φ and ψ are satisfied.

This leaves the issue of how to interpret formulas of the form ∀ *x* φ(*x*) and ∃ *x* φ(*x*). The domain of discourse forms the [range][59] for these quantifiers. The idea is that the sentence ∀ *x* φ(*x*) is true under an interpretation exactly when every substitution instance of φ(*x*), where *x* is replaced by some element of the domain, is satisfied. The formula ∃ *x* φ(*x*) is satisfied if there is at least one element *d* of the domain such that φ(*d*) is satisfied.

Strictly speaking, a substitution instance such as the formula φ(*d*) mentioned above is not a formula in the original formal language of φ, because *d* is an element of the domain. There are two ways of handling this technical issue. The first is to pass to a larger language in which each element of the domain is named by a constant symbol. The second is to add to the interpretation a function that assigns each variable to an element of the domain. Then the T-schema can quantify over variations of the original interpretation in which this variable assignment function is changed, instead of quantifying over substitution instances.

Some authors also admit [propositional variables][60] in first-order logic, which must then also be interpreted. A propositional variable can stand on its own as an atomic formula. The interpretation of a propositional variable is one of the two truth values *true* and *false.*[\[4\]][61]

Because the first-order interpretations described here are defined in set theory, they do not associate each predicate symbol with a property[\[5\]][62] (or relation), but rather with the extension of that property (or relation). In other words, these first-order interpretations are [extensional][63][\[6\]][64] not [intensional][65].

### Example of a first-order interpretation\[[edit][66]\]

An example of interpretation ![{\mathcal {I}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e9730a0ada0426927ff64141eb9f505eca132d4) of the language __L__ described above is as follows.

-   Domain: A chess set
-   Individual constants: a: The white King b: The black Queen c: The white King's pawn
-   F(x): x is a piece
-   G(x): x is a pawn
-   H(x): x is black
-   I(x): x is white
-   J(x, y): x can capture y

In the interpretation ![{\mathcal {I}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e9730a0ada0426927ff64141eb9f505eca132d4) of L:

-   the following are true sentences: F(a), G(c), H(b), I(a) J(b, c),
-   the following are false sentences: J(a, c), G(a).

### Non-empty domain requirement\[[edit][67]\]

As stated above, a first-order interpretation is usually required to specify a nonempty set as the domain of discourse. The reason for this requirement is to guarantee that equivalences such as

![(\phi \lor \exists x\psi )\leftrightarrow \exists x(\phi \lor \psi )](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a896e489565dc449795390d641e9941f9d164b3),

where *x* is not a free variable of φ, are logically valid. This equivalence holds in every interpretation with a nonempty domain, but does not always hold when empty domains are permitted. For example, the equivalence

![[\forall y(y=y)\lor \exists x(x=x)]\equiv \exists x[\forall y(y=y)\lor x=x]](https://wikimedia.org/api/rest_v1/media/math/render/svg/1103d5e6440cb56fa1c1cfeb394b2f4306fc9ae3)

fails in any structure with an empty domain. Thus the proof theory of first-order logic becomes more complicated when empty structures are permitted. However, the gain in allowing them is negligible, as both the intended interpretations and the interesting interpretations of the theories people study have non-empty domains.[\[7\]][68][\[8\]][69]

Empty relations do not cause any problem for first-order interpretations, because there is no similar notion of passing a relation symbol across a logical connective, enlarging its scope in the process. Thus it is acceptable for relation symbols to be interpreted as being identically false. However, the interpretation of a function symbol must always assign a well-defined and total function to the symbol.

### Interpreting equality\[[edit][70]\]

The equality relation is often treated specially in first order logic and other predicate logics. There are two general approaches.

The first approach is to treat equality as no different than any other binary relation. In this case, if an equality symbol is included in the signature, it is usually necessary to add various axioms about equality to axiom systems (for example, the substitution axiom saying that if *a* = *b* and *R*(*a*) holds then *R*(*b*) holds as well). This approach to equality is most useful when studying signatures that do not include the equality relation, such as the signature for [set theory][71] or the signature for [second-order arithmetic][72] in which there is only an equality relation for numbers, but not an equality relation for set of numbers.

The second approach is to treat the equality relation symbol as a logical constant that must be interpreted by the real equality relation in any interpretation. An interpretation that interprets equality this way is known as a *normal model*, so this second approach is the same as only studying interpretations that happen to be normal models. The advantage of this approach is that the axioms related to equality are automatically satisfied by every normal model, and so they do not need to be explicitly included in first-order theories when equality is treated this way. This second approach is sometimes called *first order logic with equality*, but many authors adopt it for the general study of first-order logic without comment.

There are a few other reasons to restrict study of first-order logic to normal models. First, it is known that any first-order interpretation in which equality is interpreted by an [equivalence relation][73] and satisfies the substitution axioms for equality can be cut down to an [elementarily equivalent][74] interpretation on a subset of the original domain. Thus there is little additional generality in studying non-normal models. Second, if non-normal models are considered, then every consistent theory has an infinite model; this affects the statements of results such as the [Löwenheim–Skolem theorem][75], which are usually stated under the assumption that only normal models are considered.

### Many-sorted first-order logic\[[edit][76]\]

A generalization of first order logic considers languages with more than one *sort* of variables. The idea is different sorts of variables represent different types of objects. Every sort of variable can be quantified; thus an interpretation for a many-sorted language has a separate domain for each of the sorts of variables to range over (there is an infinite collection of variables of each of the different sorts). Function and relation symbols, in addition to having arities, are specified so that each of their arguments must come from a certain sort.

One example of many-sorted logic is for planar [Euclidean geometry][77]. There are two sorts; points and lines. There is an equality relation symbol for points, an equality relation symbol for lines, and a binary incidence relation *E* which takes one point variable and one line variable. The intended interpretation of this language has the point variables range over all points on the [Euclidean plane][78], the line variable range over all lines on the plane, and the incidence relation *E*(*p*,*l*) holds if and only if point *p* is on line *l*.

## Higher-order predicate logics\[[edit][79]\]

A formal language for [higher-order predicate logic][80] looks much the same as a formal language for first-order logic. The difference is that there are now many different types of variables. Some variables correspond to elements of the domain, as in first-order logic. Other variables correspond to objects of higher type: subsets of the domain, functions from the domain, functions that take a subset of the domain and return a function from the domain to subsets of the domain, etc. All of these types of variables can be quantified.

There are two kinds of interpretations commonly employed for higher-order logic. *Full semantics* require that, once the domain of discourse is satisfied, the higher-order variables range over all possible elements of the correct type (all subsets of the domain, all functions from the domain to itself, etc.). Thus the specification of a full interpretation is the same as the specification of a first-order interpretation. *Henkin semantics*, which are essentially multi-sorted first-order semantics, require the interpretation to specify a separate domain for each type of higher-order variable to range over. Thus an interpretation in Henkin semantics includes a domain *D*, a collection of subsets of *D*, a collection of functions from *D* to *D*, etc. The relationship between these two semantics is an important topic in higher order logic.

## Non-classical interpretations\[[edit][81]\]

The interpretations of propositional logic and predicate logic described above are not the only possible interpretations. In particular, there are other types of interpretations that are used in the study of [non-classical logic][82] (such as [intuitionistic logic][83]), and in the study of modal logic.

Interpretations used to study non-classical logic include [topological models][84], [Boolean-valued models][85], and [Kripke models][86]. [Modal logic][87] is also studied using Kripke models.

## Intended interpretations\[[edit][88]\]

Many formal languages are associated with a particular interpretation that is used to motivate them. For example, the first-order signature for set theory includes only one binary relation, ∈, which is intended to represent set membership, and the domain of discourse in a first-order theory of the natural numbers is intended to be the set of natural numbers.

The intended interpretation is called the *standard model* (a term introduced by [Abraham Robinson][89] in 1960).[\[9\]][90] In the context of [Peano arithmetic][91], it consists of the natural numbers with their ordinary arithmetical operations. All models that are [isomorphic][92] to the one just given are also called standard; these models all satisfy the [Peano axioms][93]. There are also [non-standard models of the (first-order version of the) Peano axioms][94], which contain elements not correlated with any natural number.

While the intended interpretation can have no explicit indication in the strictly formal [syntactical rules][95], it naturally affects the choice of the [formation][96] and [transformation rules][97] of the syntactical system. For example, [primitive signs][98] must permit expression of the concepts to be modeled; [sentential formulas][99] are chosen so that their counterparts in the intended interpretation are [meaningful][100] [declarative sentences][101]; [primitive sentences][102] need to come out as [true][103] [sentences][104] in the interpretation; [rules of inference][105] must be such that, if the sentence ![{\mathcal {I}}_{j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e6a124c17f5bab114652d405f59d06e52172d11c) is directly [derivable][106] from a sentence ![{\mathcal {I}}_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ee6e4227826836a1a6dad3186ce63a13866c257), then ![{\mathcal {I}}_{i}\to {\mathcal {I}}_{j}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0f52342d2be7d8d8d557a7ad01d4155821282e8f) turns out to be a true sentence, with ![\to ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1daab843254cfcb23a643070cf93f3badc4fbbbd) meaning [implication][107], as usual. These requirements ensure that all [provable][108] sentences also come out to be true.[\[10\]][109]

Most formal systems have many more models than they were intended to have (the existence of [non-standard models][110] is an example). When we speak about 'models' in [empirical sciences][111], we mean, if we want [reality][112] to be a model of our science, to speak about an *intended model*. A model in the empirical sciences is an *intended factually-true descriptive interpretation* (or in other contexts: a non-intended arbitrary interpretation used to clarify such an intended factually-true descriptive interpretation.) All models are interpretations that have the same [domain of discourse][113] as the intended one, but other [assignments][114] for [non-logical constants][115].[\[11\]][116]\[*[page needed][117]*\]

### Example\[[edit][118]\]

Given a simple formal system (we shall call this one ![{\mathcal {FS'}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23a8dd711a545583eab7b71b7cf80d57ee84344c)) whose alphabet α consists only of three symbols ![{\displaystyle \{\blacksquare ,\bigstar ,\blacklozenge \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e3c3a45dcbdf371128a134b28e54cfabd436e4e1) and whose formation rule for formulas is:

'Any string of symbols of ![{\mathcal {FS'}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23a8dd711a545583eab7b71b7cf80d57ee84344c) which is at least 6 symbols long, and which is not infinitely long, is a formula of ![{\mathcal {FS'}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23a8dd711a545583eab7b71b7cf80d57ee84344c). Nothing else is a formula of ![{\mathcal {FS'}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23a8dd711a545583eab7b71b7cf80d57ee84344c).'

The single [axiom schema][119] of ![{\mathcal {FS'}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/23a8dd711a545583eab7b71b7cf80d57ee84344c) is:

" ![{\displaystyle \blacksquare \ \bigstar \ast \blacklozenge \ \blacksquare \ast }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a9f71274d22cecf7459ceeea1e1aa158dbc38634) " (where " ![\ast ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f1858484bef51b1435c2b986c728a81788051803) " is a [metasyntactic variable][120] standing for a finite string of " ![\blacksquare ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8733090f2d787d03101c3e16dc3f6404f0e7dd4c) "s )

A formal proof can be constructed as follows:

1.  ![{\displaystyle \blacksquare \ \bigstar \ \blacksquare \ \blacklozenge \ \blacksquare \ \blacksquare }](https://wikimedia.org/api/rest_v1/media/math/render/svg/77b8eac53307c667d2f2c3073c60d84a935da4f5)
2.  ![{\displaystyle \blacksquare \ \bigstar \ \blacksquare \ \blacksquare \ \blacklozenge \ \blacksquare \ \blacksquare \ \blacksquare }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a642ee77a54f644550090bec66bd7aa85c04391b)
3.  ![{\displaystyle \blacksquare \ \bigstar \ \blacksquare \ \blacksquare \ \blacksquare \ \blacklozenge \ \blacksquare \ \blacksquare \ \blacksquare \ \blacksquare }](https://wikimedia.org/api/rest_v1/media/math/render/svg/5d6115bb86b6f98d86bca9b463e16b9d31751bfe)

In this example the theorem produced " ![{\displaystyle \blacksquare \ \bigstar \ \blacksquare \ \blacksquare \ \blacksquare \ \blacklozenge \ \blacksquare \ \blacksquare \ \blacksquare \ \blacksquare }](https://wikimedia.org/api/rest_v1/media/math/render/svg/5d6115bb86b6f98d86bca9b463e16b9d31751bfe) " can be interpreted as meaning "One plus three equals four." A different interpretation would be to read it backwards as "Four minus three equals one."[\[12\]][121]\[*[page needed][122]*\]

## Other concepts of interpretation\[[edit][123]\]

There are other uses of the term "interpretation" that are commonly used, which do not refer to the assignment of meanings to formal languages.

In model theory, a structure *A* is said to interpret a structure *B* if there is a definable subset *D* of *A*, and definable relations and functions on *D*, such that *B* is isomorphic to the structure with domain *D* and these functions and relations. In some settings, it is not the domain *D* that is used, but rather *D* modulo an equivalence relation definable in *A*. For additional information, see [Interpretation (model theory)][124].

A theory *T* is said to interpret another theory *S* if there is a finite [extension by definitions][125] *T*′ of *T* such that *S* is contained in *T*′.

## See also\[[edit][126]\]

-   [Free variables][127] and [Name binding][128]
-   [Herbrand interpretation][129]
-   [Interpretation (model theory)][130]
-   [Logical system][131]
-   [Löwenheim–Skolem theorem][132]
-   [Modal logic][133]
-   [Conceptual model][134]
-   [Model theory][135]
-   [Satisfiable][136]
-   [Truth][137]

## References\[[edit][138]\]

1.  __[^][139]__ Priest, Graham, 2008. *An Introduction to Non-Classical Logic: from If to Is,* 2nd ed. Cambridge University Press.
2.  __[^][140]__ [Haskell Curry][141] (1963). [*Foundations of Mathematical Logic*][142]. Mcgraw Hill. Here: p.48
3.  __[^][143]__ Sometimes called the "universe of discourse"
4.  __[^][144]__ Mates, Benson (1972), [*Elementary Logic, Second Edition*][145], New York: [Oxford University Press][146], pp. [56][147], [ISBN][148] [0-19-501491-X][149]
5.  __[^][150]__ The extension of a property (also called an attribute) is a set of individuals, so a property is a unary relation. E.g. The properties "yellow" and "prime" are unary relations.
6.  __[^][151]__ see also [Extension (predicate logic)][152]
7.  __[^][153]__ Hailperin, Theodore (1953), "Quantification theory and empty individual-domains", *The Journal of Symbolic Logic*, Association for Symbolic Logic, __18__ (3): 197–200, [doi][154]:[10.2307/2267402][155], [JSTOR][156] [2267402][157], [MR][158] [0057820][159]
8.  __[^][160]__ Quine, W. V. (1954), "Quantification and the empty domain", *The Journal of Symbolic Logic*, Association for Symbolic Logic, __19__ (3): 177–179, [doi][161]:[10.2307/2268615][162], [JSTOR][163] [2268615][164], [MR][165] [0064715][166]
9.  __[^][167]__ Roland Müller (2009). "The Notion of a Model". In Anthonie Meijers (ed.). *Philosophy of technology and engineering sciences*. Handbook of the Philosophy of Science. __9__. Elsevier. [ISBN][168] [978-0-444-51667-1][169].
10.  __[^][170]__ [Rudolf Carnap][171] (1958). [*Introduction to Symbolic Logic and its Applications*][172]. New York: Dover publications. [ISBN][173] [9780486604534][174].
11.  __[^][175]__ Hans Freudenthal, ed. (Jan 1960). *The Concept and the Role of the Model in Mathematics and Natural and Social Sciences (Colloquium proceedings)*. Springer. [ISBN][176] [978-94-010-3669-6][177].
12.  __[^][178]__ [Geoffrey Hunter][179] (1992). *Metalogic: An Introduction to the Metatheory of Standard First Order Logic*. University of California Press.

## External links\[[edit][180]\]

-   [Stanford Enc. Phil: Classical Logic, 4. Semantics][181]
-   [mathworld.wolfram.com: FormalLanguage][182]
-   [mathworld.wolfram.com: Connective][183]
-   [mathworld.wolfram.com: Interpretation][184]
-   [mathworld.wolfram.com: Propositional Calculus][185]
-   [mathworld.wolfram.com: First Order Logic][186]

[1]: https://en.wikipedia.org/wiki/Symbol_(formal) "Symbol (formal)"
[2]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[3]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[4]: https://en.wikipedia.org/wiki/Logic "Logic"
[5]: https://en.wikipedia.org/wiki/Theoretical_computer_science "Theoretical computer science"
[6]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[7]: https://en.wikipedia.org/wiki/Formal_semantics_(logic) "Formal semantics (logic)"
[8]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[9]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[10]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[11]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[12]: https://en.wikipedia.org/wiki/Extension_(predicate_logic) "Extension (predicate logic)"
[13]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[14]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[15]: https://en.wikipedia.org/wiki/Theory_(mathematical_logic) "Theory (mathematical logic)"
[16]: https://en.wikipedia.org/wiki/Model_(model_theory) "Model (model theory)"
[17]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=1 "Edit section: Formal languages"
[18]: https://en.wikipedia.org/wiki/Well_formed_formula "Well formed formula"
[19]: https://en.wikipedia.org/wiki/Alphabet_(computer_science) "Alphabet (computer science)"
[20]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[21]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=2 "Edit section: Example"
[22]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=3 "Edit section: Logical constants"
[23]: https://en.wikipedia.org/wiki/Logical_constant "Logical constant"
[24]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[25]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=4 "Edit section: General properties of truth-functional interpretations"
[26]: https://en.wikipedia.org/wiki/Wikipedia:Accuracy_dispute#Disputed_statement "Wikipedia:Accuracy dispute"
[27]: https://en.wikipedia.org/wiki/Talk:Interpretation_(logic)#Dubious "Talk:Interpretation (logic)"
[28]: https://en.wikipedia.org/wiki/Satisfiable "Satisfiable"
[29]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[30]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-1
[31]: https://en.wikipedia.org/wiki/Consistency "Consistency"
[32]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[33]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=5 "Edit section: Logical connectives"
[34]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[35]: https://en.wikipedia.org/wiki/Logical_constant "Logical constant"
[36]: https://en.wikipedia.org/wiki/Iff "Iff"
[37]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=6 "Edit section: Interpretation of a theory"
[38]: https://en.wikipedia.org/wiki/Many-to-one "Many-to-one"
[39]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-2
[40]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=7 "Edit section: Interpretations for propositional logic"
[41]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[42]: https://en.wikipedia.org/wiki/Propositional_variable "Propositional variable"
[43]: https://en.wikipedia.org/wiki/Non-logical_symbol "Non-logical symbol"
[44]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[45]: https://en.wikipedia.org/wiki/Truthbearer "Truthbearer"
[46]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=8 "Edit section: First-order logic"
[47]: https://en.wikipedia.org/wiki/Signature_(mathematical_logic) "Signature (mathematical logic)"
[48]: https://en.wikipedia.org/wiki/Predicate_symbol "Predicate symbol"
[49]: https://en.wikipedia.org/wiki/Arity "Arity"
[50]: https://en.wikipedia.org/wiki/Ring_(mathematics) "Ring (mathematics)"
[51]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=9 "Edit section: Formal languages for first-order logic"
[52]: https://en.wikipedia.org/wiki/Interpretation_(logic)#Interpreting_equality
[53]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=10 "Edit section: Interpretations of a first-order language"
[54]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[55]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-3
[56]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[57]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[58]: https://en.wikipedia.org/wiki/T-schema "T-schema"
[59]: https://en.wikipedia.org/wiki/Quantifier_(logic)#Range_of_quantification "Quantifier (logic)"
[60]: https://en.wikipedia.org/wiki/Propositional_variable "Propositional variable"
[61]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-4
[62]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-5
[63]: https://en.wikipedia.org/wiki/Extensional_definition "Extensional definition"
[64]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-6
[65]: https://en.wikipedia.org/wiki/Intensional_definition "Intensional definition"
[66]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=11 "Edit section: Example of a first-order interpretation"
[67]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=12 "Edit section: Non-empty domain requirement"
[68]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-7
[69]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-8
[70]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=13 "Edit section: Interpreting equality"
[71]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[72]: https://en.wikipedia.org/wiki/Second-order_arithmetic "Second-order arithmetic"
[73]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[74]: https://en.wikipedia.org/wiki/Elementary_substructure "Elementary substructure"
[75]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[76]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=14 "Edit section: Many-sorted first-order logic"
[77]: https://en.wikipedia.org/wiki/Euclidean_geometry "Euclidean geometry"
[78]: https://en.wikipedia.org/wiki/Euclidean_plane "Euclidean plane"
[79]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=15 "Edit section: Higher-order predicate logics"
[80]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[81]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=16 "Edit section: Non-classical interpretations"
[82]: https://en.wikipedia.org/wiki/Non-classical_logic "Non-classical logic"
[83]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[84]: https://en.wikipedia.org/w/index.php?title=Topological_model&action=edit&redlink=1 "Topological model (page does not exist)"
[85]: https://en.wikipedia.org/wiki/Boolean-valued_model "Boolean-valued model"
[86]: https://en.wikipedia.org/wiki/Kripke_model "Kripke model"
[87]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[88]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=17 "Edit section: Intended interpretations"
[89]: https://en.wikipedia.org/wiki/Abraham_Robinson "Abraham Robinson"
[90]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-9
[91]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[92]: https://en.wikipedia.org/wiki/Isomorphic "Isomorphic"
[93]: https://en.wikipedia.org/wiki/Peano_axioms "Peano axioms"
[94]: https://en.wikipedia.org/wiki/Peano_axioms#Nonstandard_models "Peano axioms"
[95]: https://en.wikipedia.org/wiki/Deductive_system "Deductive system"
[96]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[97]: https://en.wikipedia.org/wiki/Transformation_rules "Transformation rules"
[98]: https://en.wikipedia.org/wiki/Primitive_notion "Primitive notion"
[99]: https://en.wikipedia.org/wiki/Sentential_formula "Sentential formula"
[100]: https://en.wikipedia.org/wiki/Meaning_(linguistics) "Meaning (linguistics)"
[101]: https://en.wikipedia.org/wiki/Declarative_sentence "Declarative sentence"
[102]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[103]: https://en.wikipedia.org/wiki/Truth "Truth"
[104]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[105]: https://en.wikipedia.org/wiki/Rules_of_inference "Rules of inference"
[106]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[107]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[108]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[109]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-10
[110]: https://en.wikipedia.org/wiki/Non-standard_model "Non-standard model"
[111]: https://en.wikipedia.org/wiki/Empirical_science "Empirical science"
[112]: https://en.wikipedia.org/wiki/Reality "Reality"
[113]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[114]: https://en.wikipedia.org/wiki/Value_assignment "Value assignment"
[115]: https://en.wikipedia.org/wiki/Non-logical_constant "Non-logical constant"
[116]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-11
[117]: https://en.wikipedia.org/wiki/Wikipedia:Citing_sources "Wikipedia:Citing sources"
[118]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=18 "Edit section: Example"
[119]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[120]: https://en.wikipedia.org/wiki/Metasyntactic_variable "Metasyntactic variable"
[121]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_note-12
[122]: https://en.wikipedia.org/wiki/Wikipedia:Citing_sources "Wikipedia:Citing sources"
[123]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=19 "Edit section: Other concepts of interpretation"
[124]: https://en.wikipedia.org/wiki/Interpretation_(model_theory) "Interpretation (model theory)"
[125]: https://en.wikipedia.org/wiki/Extension_by_definition "Extension by definition"
[126]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=20 "Edit section: See also"
[127]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[128]: https://en.wikipedia.org/wiki/Name_binding "Name binding"
[129]: https://en.wikipedia.org/wiki/Herbrand_interpretation "Herbrand interpretation"
[130]: https://en.wikipedia.org/wiki/Interpretation_(model_theory) "Interpretation (model theory)"
[131]: https://en.wikipedia.org/wiki/Logical_system "Logical system"
[132]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[133]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[134]: https://en.wikipedia.org/wiki/Conceptual_model "Conceptual model"
[135]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[136]: https://en.wikipedia.org/wiki/Satisfiable "Satisfiable"
[137]: https://en.wikipedia.org/wiki/Truth "Truth"
[138]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=21 "Edit section: References"
[139]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-1 "Jump up"
[140]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-2 "Jump up"
[141]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[142]: https://archive.org/details/foundationsofmat0000unse_o5q2
[143]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-3 "Jump up"
[144]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-4 "Jump up"
[145]: https://archive.org/details/elementarylogic00mate/page/56
[146]: https://en.wikipedia.org/wiki/Oxford_University_Press "Oxford University Press"
[147]: https://archive.org/details/elementarylogic00mate/page/56
[148]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[149]: https://en.wikipedia.org/wiki/Special:BookSources/0-19-501491-X "Special:BookSources/0-19-501491-X"
[150]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-5 "Jump up"
[151]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-6 "Jump up"
[152]: https://en.wikipedia.org/wiki/Extension_(predicate_logic) "Extension (predicate logic)"
[153]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-7 "Jump up"
[154]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[155]: https://doi.org/10.2307%2F2267402
[156]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[157]: https://www.jstor.org/stable/2267402
[158]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[159]: https://www.ams.org/mathscinet-getitem?mr=0057820
[160]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-8 "Jump up"
[161]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[162]: https://doi.org/10.2307%2F2268615
[163]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[164]: https://www.jstor.org/stable/2268615
[165]: https://en.wikipedia.org/wiki/MR_(identifier) "MR (identifier)"
[166]: https://www.ams.org/mathscinet-getitem?mr=0064715
[167]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-9 "Jump up"
[168]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[169]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-444-51667-1 "Special:BookSources/978-0-444-51667-1"
[170]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-10 "Jump up"
[171]: https://en.wikipedia.org/wiki/Rudolf_Carnap "Rudolf Carnap"
[172]: https://archive.org/details/introductiontosy00carn
[173]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[174]: https://en.wikipedia.org/wiki/Special:BookSources/9780486604534 "Special:BookSources/9780486604534"
[175]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-11 "Jump up"
[176]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[177]: https://en.wikipedia.org/wiki/Special:BookSources/978-94-010-3669-6 "Special:BookSources/978-94-010-3669-6"
[178]: https://en.wikipedia.org/wiki/Interpretation_(logic)#cite_ref-12 "Jump up"
[179]: https://en.wikipedia.org/wiki/Geoffrey_Hunter_(logician) "Geoffrey Hunter (logician)"
[180]: https://en.wikipedia.org/w/index.php?title=Interpretation_(logic)&action=edit&section=22 "Edit section: External links"
[181]: http://plato.stanford.edu/entries/logic-classical/#4
[182]: http://mathworld.wolfram.com/FormalLanguage.html
[183]: http://mathworld.wolfram.com/Connective.html
[184]: http://mathworld.wolfram.com/Interpretation.html
[185]: http://mathworld.wolfram.com/PropositionalCalculus.html
[186]: http://mathworld.wolfram.com/First-OrderLogic.html
