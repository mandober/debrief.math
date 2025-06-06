---
downloaded:       2021-12-25
page-url:         https://plato.stanford.edu/entries/logical-constants/
page-title:       Logical Constants (Stanford Encyclopedia of Philosophy)
article-title:    Logical Constants
---
# Logical Constants (Stanford Encyclopedia of Philosophy)

The most venerable approach to demarcating the logical constants
identifies them with the language’s syncategorematic signs:
signs that signify nothing by themselves, but serve to indicate how
independently meaningful terms are combined. This approach was natural
in the context of the “term logics” that were dominant until the
nineteenth century. All propositions were thought to be composed out of
propositions of subject-predicate form by means of a small number of
connectives (“and”, “or”, “if …then”, and so on). In this framework,
words divide naturally into those that can be used as subjects or
predicates (“categorematic” words) and those whose function is to
indicate the relation between subject and predicate or between two
distinct subject-predicate propositions (“syncategorematic” words). For
example, “Socrates”, “runs”, “elephant”, and “large” are categorematic
words, while “only”, “every”, “necessarily”, and “or” are
syncategorematic. (For a more detailed account of the distinction, see
Kretzmann 1982, 211–214.) The syncategorematic words were naturally
seen as indicating the structure or form of the
proposition, while the categorematic words supplied its “matter.” Thus
the fourteenth-century logician Buridan writes:
## 1\. Syncategorematic terms

The most venerable approach to demarcating the logical constants identifies them with the language’s *syncategorematic* signs: signs that signify nothing by themselves, but serve to indicate how independently meaningful terms are combined. This approach was natural in the context of the “term logics” that were dominant until the nineteenth century. All propositions were thought to be composed out of propositions of subject-predicate form by means of a small number of connectives (“and”, “or”, “if …then”, and so on). In this framework, words divide naturally into those that can be used as subjects or predicates (“categorematic” words) and those whose function is to indicate the relation between subject and predicate or between two distinct subject-predicate propositions (“syncategorematic” words). For example, “Socrates”, “runs”, “elephant”, and “large” are categorematic words, while “only”, “every”, “necessarily”, and “or” are syncategorematic. (For a more detailed account of the distinction, see Kretzmann 1982, 211–214.) The syncategorematic words were naturally seen as indicating the *structure* or *form* of the proposition, while the categorematic words supplied its “matter.” Thus the fourteenth-century logician Buridan writes:

> I say that in a proposition (as we’re speaking here of matter and form), we understand by the “matter” of the proposition or *consequentia* the purely categorical terms, i.e. subjects and predicates, omitting the syncategorematic terms that enclose them and through which they are conjoined or negated or distributed or forced to a certain mode of supposition. All the rest, we say, pertains to the form. (Buridan 1976, I.7.2)

The Fregean revolution in our conception of [logical form][1] made this way of demarcating the logical constants problematic. Whereas the term logicians had seen every proposition as composed of subject and predicate terms linked together by syncategorematic “glue,” Frege taught us to see sentences and propositions as built up recursively by functional application and functional abstraction (for a good account, see Dummett 1981, ch. 2). To see the difference between the two approaches, consider the sentence

Every boat is smaller than Moby Dick.

Every boat is smaller than Moby Dick.(1)

A term logician would have regarded (1)([1][2]) as composed of a subject term (“boat”) and a predicate term (“thing smaller than Moby Dick”) joined together in a universal affirmative categorical form. Frege, by contrast, would have regimented (1)([1][3]) as

∀x(x is a boat⊃x is smaller than Moby Dick)

∀x(x is a boat⊃x is smaller than Moby Dick)(2)

which he would have analyzed as the result of applying the second-level function\[[2][4]\]

∀x(Φ(x)⊃Ψ(x))

∀x(Φ(x)⊃Ψ(x))(3)

to the first level functions

ξ is a boat

ξ is a boat(4)

and

ξ is smaller than Moby Dick.

ξ is smaller than Moby Dick.(5)

(The Greek letters ξξ, ΦΦ, and ΨΨ here indicate the functions’ argument places: lowercase Greek letters indicate places that can be filled by proper names, while uppercase Greek letters indicate places that must be filled by function expressions like (4)([4][5]) and (5)([5][6]).) He would have regarded (5)([5][7]) as itself the result of “abstracting” on the place occupied by “Shamu” in

Shamu is smaller than Moby Dick,

Shamu is smaller than Moby Dick,(6)

which in turn is the result of applying the function

ζ is smaller than ξ

ζ is smaller than ξ(7)

to “Shamu” and “Moby Dick”. Frege showed that by describing sentences and propositions this way, in terms of their function/argument composition, we can represent the logical relations between them in a far more complete, perspicuous, and systematic way than was possible with the old subject/predicate model of propositional form.

However, once we have thrown out the old subject/predicate model, we can no longer identify the categorematic terms with the subject and predicate terms, as the medievals did. Nor can we think of the syncategorematic terms as the expressions that have no “independent” significance, or as the “glue” that binds together the categorematic terms to form a meaningful whole. Granted, there is a sense in which the “logical” function (3)([3][8]) is the glue that binds together (4)([4][9]) and (5)([5][10]) to yield (2)([2][11]). But in the very same sense, the function (7)([7][12]) is the glue that binds together “Shamu” and “Moby Dick” to yield (6)([6][13]). If we count all functional expressions as syncategorematic on the grounds that they are “incomplete” or “unsaturated” and thus not “independently meaningful,” then the syncategorematic expressions will include not just connectives and quantifiers, but ordinary predicates. On the other hand, if we count all the functional expressions as categorematic, then the syncategoremata will be limited to variables, parentheses, and other signs that serve to indicate functional application and abstraction. In neither case would the distinction be useful for demarcating the logical constants. An intermediate proposal would be to count first-level functions as categoremata and second-level functions as syncategoremata. That would make (3)([3][14]) syncategorematic and (4)([4][15]) and (5)([5][16]) categorematic. However, not every second-level function is (intuitively) “logical.” Consider, for example, the second-level function

Every dog x such that Φ(x) is such that Ψ(x).

Every dog x such that Φ(x) is such that Ψ(x).(8)

Granted, standard logical languages do not have a simple expression for this function, but there is no reason in principle why we could not introduce such an expression. Conversely, not every first-level function is (intuitively) nonlogical: for example, the identity relation is usually treated as logical.

In sum, it is not clear how the distinction between categorematic and syncategorematic terms, so natural in the framework of a term logic, can be extended to a post-Fregean function/argument conception of propositional structure. At any rate, none of the natural ways of extending the distinction seem apt for the demarcation of the logical constants. Carnap concedes that the distinction between categorematic and syncategorematic expressions “seems more or less a matter of convention” (1947, 6–7). However, the idea that logical constants are syncategoremata does not wither away entirely with the demise of term logics. Its influence can still be felt in Wittgenstein’s insistence that the logical constants are like punctuation marks (1922, §5.4611),\[[3][17]\] in Russell’s claim that logical constants indicate logical form and not propositional constituents (1992, 98; 1920, 199), and in the idea (found in Quine and Dummett) that the logical constants of a language can be identified with its grammatical particles.

## 2\. Grammatical criteria

Quine and Dummett propose that the logical constants of a language are its grammatical *particles*—the expressions by means of which complex sentences are built up, step by step, from atomic ones—while non-logical expressions are the simple expressions of which atomic sentences are composed (see Quine 1980, Quine 1986, Dummett 1981, 21–2, and for discussion, Føllesdal 1980 and Harman 1984). On this conception, “\[l\]ogic studies the truth conditions that hinge solely on grammatical constructions” (Quine 1980, 17).\[[4][18]\] This criterion yields appropriate results when applied to the language of first-order logic (FOL) and other standard logical languages. In FOL (without identity), *all* singular terms and predicates are paradigm nonlogical constants, and *all* operators and connectives are paradigm logical constants.\[[5][19]\]

However, this nice coincidence of intuitively logical expressions and grammatical particles in FOL cannot be taken as support for the Quine/Dummett proposal, because FOL was *designed* so that its grammatical structure would reflect logical structure. It is easy enough to design other artificial languages for which the grammatical criterion gives intuitively inappropriate results. For example, take standard FOL and add a variable-binding operator “¢” whose interpretation is “there is at least one cat such that ….” The grammatical criterion counts “¢” as a logical constant, but surely it is not one.

Moreover, there are alternative ways of regimenting the grammar of FOL on which the standard truth-functional connectives are not grammatical particles, but members of a small lexical category (Quine 1986, 28–9). For example, instead of recognizing four grammatical operations that form one sentence from two sentences (one that takes PP and QQ and yields ⌜P∨Q⌝┌P∨Q┐, one that takes PP and QQ and yields ⌜P&Q⌝┌P&Q┐, and so on), we could recognize a single grammatical operation that forms one sentence from two sentences and one connective. On this way of regimenting the grammar of FOL, “&”“&” and “∨”“∨” would not count as grammatical particles.

The upshot is that a grammatical demarcation of logical constants will not impose significant constraints on what counts as a logical constant unless it is combined with some principle for limiting the languages to which it applies (excluding, for example, languages with the operator “¢”) and privileging some regimentations of their grammars over others (excluding, for example, regimentations that treat truth-functional connectives as members of a small lexical category). Quine’s own approach is to privilege the language best suited for the articulation of scientific theories and the grammar that allows the most economical representation of the truth conditions of its sentences. Thus the reason Quine holds that logic should restrict itself to the study of inferences that are truth-preserving in virtue of their grammatical structures is not that he thinks there is something special about the grammatical particles (in an arbitrary language), but rather that he thinks we should employ a language in which grammatical structure is a perspicuous guide to truth conditions: “what we call logical form is what grammatical form becomes when grammar is revised so as to make for efficient general methods of exploring the interdependence of sentences in respect of their truth values” (1980, 21).

Instead of applying the grammatical criterion to artificial languages like FOL, one might apply it to natural languages like English. One could then appeal to the work of empirical linguists for a favored grammatical regimentation. Contemporary linguists posit a structural representation called LF that resolves issues of scope and binding crucial to semantic evaluation. But the question remains which lexical items in the LF should count as logical constants. Generalizing Quine’s proposal, one might identify the logical constants with members of small, “closed” lexical categories: for example, conjunctions and determiners. However, by this criterion prepositions in English would count as logical constants (Harman 1984, 121). Alternatively, one might identify the logical constants with members of *functional categories* (including tense, complementizers, auxiliaries, determiners, and pronouns), and the nonlogical constants with members of *substantive categories* (including nouns, verbs, adjectives, adverbs, and prepositions) (for this terminology, see Chomsky 1995, 6, 54 and Radford 2004, 41). If a distinction that plays an important role in a theory of linguistic competence should turn out to coincide (in large part) with our traditional distinction between logical and nonlogical constants, then this fact would stand in need of explanation. Why should we treat inferences that are truth-preserving in virtue of their LF structures and functional words differently from those that are truth-preserving in virtue of their LF structures and substantive words? Future work in linguistics, cognitive psychology and neurophysiology may provide the materials for an interesting answer to this question, but for now it is important that the question be asked, and that we keep in mind the possibility of a sceptical answer.

## 3\. A Davidsonian approach

The Quinean approach identifies the logical constants as the expressions that play a privileged, “structural” role in a systematic grammatical theory for a language. An alternative approach, due to Quine’s student [Donald Davidson][20], identifies the logical constants as the expressions that play a privileged, “structural” role in a systematic theory of *meaning* for a language. A Davidsonian theory of meaning takes the form of a [Tarskian truth theory][21]. Thus, it contains two kinds of axioms: *base clauses* that specify the satisfaction conditions of atomic sentences,\[[6][22]\] and *recursive clauses* that specify the satisfaction conditions of complex sentences in terms of the satisfaction conditions of their proper parts.\[[7][23]\] For example:

*Base Clauses:*

-   For all assignments aa, Ref(“Bill Clinton”, aa) = Bill Clinton.
-   For all assignments aa, Ref(“Hilary Clinton”, aa) = Hilary Clinton.
-   If υυ is a variable, then for all assignments aa, Ref(υυ, aa) = a(υ)a(υ), the value aa assigns to υυ.
-   For all terms ττ, σσ, and all assignments aa, ⌜τ is taller than σ⌝┌τ is taller than σ┐ is satisfied by aa iff Ref(ττ, aa) is taller than Ref(σσ, aa).

*Recursive Clauses:*

-   For all assignments aa and all sentences ϕ,ψϕ,ψ, ⌜ϕ or ψ⌝┌ϕ or ψ┐ is satisfied by aa iff ϕϕ is satisfied by aa or ψψ is satisfied by aa.
-   For all assignments aa, all sentences ϕ,ψϕ,ψ, and all variables υυ, ⌜\[Some υ:ϕ\] ψ⌝┌\[Some υ:ϕ\] ψ┐ is satisfied by aa iff there is an assignment a′a′ that differs from aa at most in the value it assigns to υυ, satisfies ϕϕ, and satisfies ψψ.

Davidson suggests that “\[t\]he logical constants may be identified as those iterative features of the language that require a recursive clause in the characterization of truth or satisfaction” (1984, 71). (In our example, “or” and “some”.)

This criterion certainly gives reasonable results when applied to standard truth theories like the one above (although the sign for identity once more gets counted as nonlogical). But as Davidson goes on to observe, “\[l\]ogical form, in this account, will of course be relative to the choice of a metalanguage (with its logic) and a theory of truth” (1984, 71). Different truth theories can be given for the same language, and they can agree on the truth conditions of whole sentences while differing in which expressions they treat in the recursive clauses. Here are two examples (both discussed further in Evans 1976).

1\. We might have recursive clauses for “large” and other gradable adjectives, along these lines:

For all assignments aa, terms ττ, and sentences ϕϕ, ⌜τ is a large ϕ⌝┌τ is a large ϕ┐ is satisfied by a iff Ref(τ, a) is a large satisfier of ϕ on a. (cf. Evans 1976, 203)

We would in this case have to use a metalanguage with a stronger logic, one that provides rules for manipulating “large satisfier of ϕ on a.” (As Evans notes, all we would really need in order to derive T-sentences would be a rule licensing the derivation of ⌜τ is a large satisfier of ϕ on a⌝ from ⌜ϕ≡ψ⌝ and ⌜τ is a larger satisfier of ψ on a⌝.) But such a metalanguage cannot be ruled out without begging the question about the logicality of “large.”

2\. We might assign values to “and”, “or”, and the other truth-functional connectives in the *base* clauses, allowing us to get by with a single generic recursive clause for truth-functional connectives:

*Base:* For all assignments a, Ref(“or”, a) = Boolean disjunction (the binary truth function that takes the value True when either argument is True, and False otherwise).

*Recursive:* For all assignments a, sentences ϕ,ψ, and truth-functional connectives @, ⌜ϕ@ψ⌝ is satisfied by a iff Ref(@,a)(Val(ϕ,a), Val(ψ,a)) = True (where Val(ϕ,a) = True if ϕ is satisfied by a, False if ϕ is not satisfied by a). (cf. Evans 1976, 214)

This approach requires a stronger metatheory than the usual approach, since it requires quantification over truth functions. But it is not clear why this is an objection. It is still possible to derive T-sentences whose right sides are no more ontologically committed than the sentences named on their left sides, like

“Snow is white or grass is green” is true iff snow is white or grass is green.

So it is hard to see how the use of functions here is any more objectionable than Davidson’s own appeal to sequences or assignments of values to variables.

In sum, the problem with Davidson’s truth-theoretic proposal is much like the problem discussed above with Quine’s grammatical proposal. Without further constraints on the theory of meaning (or, in Quine’s case, the grammar), it does not yield a definite criterion for logical constancy. I do not mean to suggest that either Davidson or Quine was deluded on this score. As we saw above, Quine appeals to pragmatic considerations to pick out a favored language and grammatical regimentation. No doubt Davidson would do the same, arguing (for example) that the advantages of using a simple and well-understood logic in the metalanguage outweigh any putative advantages of treating “large” and the like in recursive clauses. (For a recent defense of a Davidsonian criterion against Evans’s objections, see Lepore and Ludwig 2002.)

## 4\. Topic neutrality

Logic, it seems, is not about anything in particular; relatedly, it is applicable everywhere, no matter what we are reasoning about. So it is natural to suppose that the logical constants can be marked out as the “topic-neutral” expressions (Ryle 1954, 116; Peacocke 1976, 229; Haack 1978, 5–6; McCarthy 1981, 504; Wright 1983, 133; Sainsbury 2001, 365). We have reason to care about the topic-neutral expressions, and to treat them differently from others, because we are interested in logic as a *universal* canon for reasoning, one that is applicable not just to reasoning about this or that domain, but to all reasoning.

Unfortunately, the notion of topic neutrality is too vague to be of much help when it comes to the hard cases for which we *need* a principle of demarcation. Take arithmetic, for instance. Is it topic-neutral? Well, yes: anything can be counted, so the theorems of arithmetic will be useful in any field of inquiry. But then again, no: arithmetic has its own special subject matter, the natural numbers and the arithmetical relations that hold between them. The same can be said about set theory: on the one hand, anything we can reason about can be grouped into sets; on the other hand, set theory seems to be about a particular corner of the universe—the sets—and thus to have its own special “topic.” The general problem of which these two cases are instances might be called the *antinomy of topic-neutrality*. As George Boolos points out, the antinomy can be pressed all the way to paradigm cases of logical constants: “it might be said that logic is not so ‘topic-neutral’ as it is often made out to be: it can easily be said to be about the notions of negation, conjunction, identity, and the notions expressed by ‘all’ and ‘some’, among others …” (1975, 517). It is plausible to think that the source of the antinomy is the vagueness of the notion of topic neutrality, so let us consider some ways in which we might make this notion more precise.

Gilbert Ryle, who seems to have coined the expression “topic-neutral”, gives the following rough criterion:

> We may call English expressions “topic-neutral” if a foreigner who understood them, but only them, could get no clue at all from an English paragraph containing them what that paragraph was about. (1954, 116)\[[8][24]\]

There are, I suppose, a few paradigm cases of such expressions: “is”, for instance, and “if”. But the criterion gives little help when we venture beyond these clear-cut cases. The problem is that one might answer the question “what is this paragraph about?” at many different levels of generality. Suppose I understand English badly, and I hear someone say:

> blah blah blah *and not* blah blah blah *because it* blah blah blah *to be* blah blah blah *and was always* blah blah blah. *But every* blah blah *is* blah blah, *although a few* blah blah *might be* blah.

Do I have any clue as to what the paragraph is about? Well, surely I have *some* clue. “Because” reveals that the passage is about causal or explanatory relations. “It” reveals that the passage is about at least one object that is not known to be a person. The tense operator “was always” reveals that it is about events that occur in time. “Might be” reveals that it is about the realm of the possible (or the unknown), and not just the actual (or the known). Finally, “every” and “a few” reveal that it is about discrete, countable objects. Perhaps some of these words are not topic-neutral and should not be included in the domain of logic, but we certainly don’t want to rule out *all* of them. And Ryle’s criterion gives no guidance about where to draw the line. One might even suspect that there is no line, and that topic neutrality is a matter of degree, truth-functional expressions being more topic-neutral than quantifiers, which are more topic-neutral than tense and modal operators, which are more topic-neutral than epistemic expressions, and so on (Lycan 1989).

The problem with Ryle’s account is its reliance on vague and unclarified talk of “aboutness.” If we had a precise philosophical account of what it is for a statement to be *about* a particular object or subject matter, then we could define a topic-neutral statement as one that is not about anything—or, perhaps, one that is about everything indifferently. Here we might hope to appeal to Nelson Goodman’s classic account of “absolute aboutness,” which implies that logical truths are not absolutely about anything (1961, 256), or to David Lewis’s (1988) account of what it is for a proposition to be about a certain subject matter, which implies that logical truths are about *every* subject matter indifferently. However, neither account is appropriate for our purpose. On Goodman’s account, “what a statement is absolutely about will depend in part upon what logic is presupposed,” and hence upon which expressions are taken to be logical constants (253–4), so it would be circular to appeal to Goodman’s account of aboutness in a demarcation of the logical constants. On Lewis’s account, *all* necessarily true propositions turn out to be topic-neutral. But if there is any point to invoking topic neutrality in demarcating logic, it is presumably to distinguish the logical truths from a wider class of necessary propositions, some of which are subject matter-specific. If we are willing to broaden the bounds of logic to encompass all necessary propositions (or, alternatively, all analytic sentences), then we might as well demarcate logic as the realm of necessary truth (alternatively, analytic truth). It is only if we want to *distinguish* the logical from the generically necessary, or to demarcate logic without appealing to modal notions at all, that we need to invoke topic neutrality. And in neither of these cases will Lewis’s criterion of aboutness be of service.

We rejected Ryle’s criterion for topic-neutrality because it appealed to an unclarified notion of aboutness. We rejected Goodman’s explication of aboutness because it assumed that the line between logic and non-logic had already been drawn. And we rejected Lewis’s account of aboutness because it did not distinguish logical truths from other kinds of necessary truths. How else might we cash out the idea that logic is “not about anything in particular”? Two approaches have been prominent in the literature.

The first starts from the idea that what makes an expression specific to a certain domain or topic is its capacity to *discriminate* between different individuals. For example, the monadic predicate “is a horse”, the dyadic predicate “is taller than”, and the quantifier “every animal” all distinguish between Lucky Feet, on the one hand, and the Statue of Liberty, on the other:

-   “Lucky Feet is a horse” is true; “The Statue of Liberty is a horse” is false.
-   “The Statue of Liberty is taller than Lucky Feet” is true; “Lucky Feet is taller than the Statue of Liberty” is false.
-   The truth of “Every animal is healthy” depends on whether Lucky Feet is healthy, but not on whether the Statue of Liberty is healthy.

On the other hand, the monadic predicate “is a thing”, the dyadic predicate “is identical with”, and the quantifier “everything” do not distinguish between Lucky Feet and the Statue of Liberty. In fact, they do not distinguish between *any* two particular objects. As far as they are concerned, one object is as good as another and might just as well be switched with it. Expressions with this kind of indifference to the particular identities of objects might reasonably be said to be topic-neutral. As we will see in the next section, this notion of topic neutrality can be cashed out in a mathematically precise way as invariance under arbitrary permutations of a domain. It is in this sense that the basic concepts of arithmetic and set theory are not topic-neutral, since they distinguish some objects (the empty set, the number 0) from others.

The second approach locates the topic neutrality of logic in its universal applicability. On this conception, logic is useful for the guidance and criticism of reasoning about any subject whatsoever—natural or artefactual, animate or inanimate, abstract or concrete, normative or descriptive, sensible or merely conceptual—because it is intimately connected somehow with the very conditions for thought or reasoning. This notion of topic neutrality is not equivalent to the one just discussed. It allows that a science with its own proprietary domain of objects, like arithmetic or set theory, might still count as topic-neutral in virtue of its completely general applicability. Thus, Frege, who took arithmetic to be about numbers, which he regarded as genuine objects, could still affirm its absolute topic neutrality:

> …the basic propositions on which arithmetic is based cannot apply merely to a limited area whose peculiarities they express in the way in which the axioms of geometry express the peculiarities of what is spatial; rather, these basic propositions must extend to everything that can be thought. And surely we are justified in ascribing such extremely general propositions to logic. (1885, 95, in Frege 1984; for further discussion, see MacFarlane 2002)

The tradition of demarcating the logical constants as expressions that can be characterized by purely inferential introduction and elimination rules can be seen as a way of capturing this notion of completely general applicability. For, plausibly, it is the fact that the logical constants are characterizable in terms of notions fundamental to thought or reasoning (for example, valid inference) that accounts for their universal applicability.

The antinomy with which we started can now be resolved by disambiguating. Arithmetic and set theory make distinctions among objects, and so are not topic-neutral in the first sense, but they might still be topic-neutral in the second sense, by virtue of their universal applicability to reasoning about any subject. We are still faced with a decision about which of these notions of topic neutrality is distinctive of logic. Let us postpone this problem, however, until we have had a closer look at both notions.

## 5\. Permutation invariance

A number of philosophers have suggested that what is distinctive of logical constants is their insensitivity to the particular identities of objects, or, more precisely, their *invariance* under arbitrary permutations of the domain of objects (Mautner 1946; Mostowski 1957, 13; Scott 1970, 160–161; McCarthy 1981, 1987; Tarski 1986; van Benthem 1989; Sher 1991, 1996; McGee 1996).

Let us unpack that phrase a bit. A *permutation* of a collection of objects is a one-one mapping from that collection onto itself. Each object gets mapped to an object in the collection (possibly itself), and no two objects are mapped to the same object. For example, the following mapping is a permutation of the first five letters of the alphabet:

A⇒CB⇒BC⇒ED⇒AE⇒D

And the function f(x)\=x+1 is a permutation of the set of integers onto itself. (Note, however, that a permutation need not be specifiable either by enumeration, as in our first example, or by a rule, as in our second.)

The extension of a predicate is invariant under a permutation of the domain if replacing each of its members with the object to which the permutation maps it leaves us with the same set we started with. Thus, for example, the extension of “is a letter between A and E” is invariant under the permutation of letters described above. By contrast, the extension of “is a vowel between A and E”, the set {A,E}, is not invariant under this permutation, which transforms it to a different set, {C,D}.

We can make the notion of permutation invariance more precise as follows. Given a permutation p of objects on a domain D, we define a transformation p∗ of arbitrary types in the hierarchy:

-   if x is an object in D, p∗(x)\=p(x).
-   if x is a set, then p∗(x)\={y:∃z(z∈x&y\=p∗(z))} (that is, the set of objects to which p∗ maps members of x).
-   if x is an ordered n\-tuple ⟨x1,…,xn⟩, then p∗(x)\=⟨p∗(x1),…,p∗(xn)⟩ (that is, the n\-tuple of objects to which p∗ maps x1,…,xn).\[[9][25]\]

These clauses can be applied recursively to define transformations of sets of ordered tuples in D (the extensions of two-place predicates), sets of sets of objects in D (the extensions of unary first-order quantifiers), and so on. (For an introduction to the type theoretic hierachy, see the entry on [Type Theory][26].) Where x is an item in this hierarchy, we say that x is *invariant under* a permutation p just in case p∗(x)\=x. To return to our example above, the set {A,B,C,D,E} is invariant under all permutations of the letters A through E: no matter how we switch these letters around, we end up with the same set. But it is not invariant under all permutations of the entire alphabet. For example, the permutation that switches the letters A and Z, mapping all the other letters to themselves, transforms {A,B,C,D,E} to {Z,B,C,D,E}. The set containing all the letters, however, is invariant under all permutations of letters. So is the set of all sets containing at least two letters, and the relation of identity, which holds between each letter and itself.

So far we have defined permutation invariance for objects, tuples, and sets, but not for predicates, quantifiers, or other linguistic expressions. But it is the latter, not the former, that we need to sort into logical and nonlogical constants. The natural thought is that an expression should count as permutation-invariant just in case its extension on each domain of objects is invariant under all permutations of that domain. (As usual, the extension of a name on a domain is the object it denotes, the extension of a monadic predicate is the set of objects in the domain to which it applies, and the extension of an n\-adic predicate is the set of n\-tuples of objects in the domain to which it applies.) As it stands, this definition does not apply to sentential connectives, which do not have extensions in the usual sense,\[[10][27]\] but it can be extended to cover them in a natural way (following McGee 1996, 569). We can think of the semantic value of an n\-ary quantifier or sentential connective C on a domain D as a function from n\-tuples of sets of assignments (of values from D to the language’s variables) to sets of assignments. Where the input to the function is the n\-tuple of sets of assignments that satisfy ϕ1,…,ϕn, its output is the set of assignments that satisfies Cϕ1…ϕn. (Check your understanding by thinking about how this works for the unary connective ∃x.) We can then define permutation invariance for these semantic values as follows. Where A is a set of assignments and p is a permutation of a domain D, let p†(A)\={p∘a:a∈A}.\[[11][28]\] Then if e is the semantic value of an n\-place connective or quantifier (in the sense defined above), e is invariant under a permutation p just in case for any n\-tuple ⟨A1,…,An⟩ of sets of assignments, p†(e(⟨A1,…,An⟩))\=e(⟨p†(A1),…,p†(An)⟩). And a connective or quantifier is permutation-invariant just in case its semantic value on each domain of objects is invariant under all permutations of that domain.

It turns out that this condition does not quite suffice to weed out *all* sensitivity to particular features of objects, for it allows that a permutation-invariant constant might behave differently on domains containing different kinds of objects. McGee (1996, 575) gives the delightful example of *wombat disjunction*, which behaves like disjunction if the domain contains wombats and like conjunction otherwise. Sher’s fix, and McGee’s, is to consider not just permutations—bijections of the domain onto itself—but arbitrary bijections of the domain onto another domain of equal cardinality.\[[12][29]\] For simplicity, we will ignore this complication in what follows and continue to talk of permutations.

Which expressions get counted as logical constants, on this criterion? The monadic predicates “is a thing” (which applies to everything) and “is not anything” (which applies to nothing), the identity predicate, the truth-functional connectives, and the standard existential and universal quantifiers all pass the test. So do the standard first-order binary quantifiers like “most” and “the” (see the entry on [descriptions][30]). Indeed, because cardinality is permutation-invariant, every cardinality quantifier is included, including “there are infinitely many”, “there are uncountably many”, and others that are not first-order definable. Moreover, the second-order quantifiers count as logical (at least on the standard semantics, in which they range over arbitrary subsets of the domain), as do all higher-order quantifiers. On the other hand, all proper names are excluded, as are the predicates “red”, “horse”, “is a successor of”, and “is a member of”, as well as the quantifiers “some dogs” and “exactly two natural numbers”. So the invariance criterion seems to accord at least partially with common intuitions about logicality or topic neutrality, and with our logical practice. Two technical results allow us to be a bit more precise about the extent of this accord: Lindenbaum and Tarski (1934–5) show that all of the relations definable in the language of *Principia Mathematica* are permutation-invariant. Moving in the other direction, McGee (1996) shows that every permutation-invariant operation can be defined in terms of operations with an intuitively logical character (identity, substitution of variables, finite or infinite disjunction, negation, and finite or infinite existential quantification). He also generalizes the Lindenbaum-Tarski result by showing that every operation so definable is permutation invariant.

As Tarski and others have pointed out, the permutation invariance criterion for logical constants can be seen as a natural generalization of Felix Klein’s (1893) idea that different geometries can be distinguished by the groups of transformations under which their basic notions are invariant. Thus, for example, the notions of Euclidean geometry are invariant under similarity transformations, those of affine geometry under affine transformations, and those of topology under bicontinuous transformations. In the same way, Tarski suggests (1986, 149), the *logical* notions are just those that are invariant under the widest possible group of transformations: the group of *permutations* of the elements in the domain. Seen in this way, the logical notions are the end point of a chain of progressively more abstract, “formal,” or topic-neutral notions defined by their invariance under progressively wider groups of transformations of a domain.\[[13][31]\]

As an account of the distinctive generality of logic, then, permutation invariance has much to recommend it. It is philosophically well-motivated and mathematically precise, it yields results that accord with common practice, and it gives determinate rulings about some borderline cases (for example, set-theoretic membership). Best of all, it offers hope for a sharp and principled demarcation of logic that avoids cloudy epistemic and semantic terms like “about”, “analytic”, and “*a priori*”.\[[14][32]\]

A limitation of the permutation invariance criterion (as it has been stated so far) is that it applies only to extensional operators and connectives. It is therefore of no help in deciding, for instance, whether the necessity operator in S4 modal logic or the *H* operator (“it has always been the case that”) in temporal logic are bona fide logical constants, and these are among the questions that we wanted a criterion to resolve. However, the invariance criterion can be extended in a natural way to intensional operators. The usual strategy for handling such operators semantically is to relativize truth not just to an assignment of values to variables, but also to a possible world and a time. In such a framework, one might demand that logical constants be insensitive not just to permutations of the domain of objects, but to permutations of the domain of possible worlds and the domain of times (see Scott 1970, 161, McCarthy 1981, 511–13, van Benthem 1989, 334). The resulting criterion is fairly stringent: it counts the S5 necessity operator as a logical constant, but not the S4 necessity operator or the *H* operator in temporal logic. The reason is that the latter two operators are sensitive to *structure* on the domains of worlds and times—the “accessibility relation” in the former case, the relation of temporal ordering in the latter—and this structure is not preserved by all permutations of these domains.\[[15][33]\] (See the entries on [modal logic][34] and [temporal logic][35].)

One might avoid this consequence by requiring only invariance under permutations that preserve the relevant structure on these domains (accessibility relations, temporal ordering). But one would then be faced with the task of explaining why *this* structure deserves special treatment (cf. van Benthem 1989, 334). And if we are allowed to keep some structure on the domain of worlds or times fixed, the question immediately arises why we should not also keep some structure on the domain of *objects* fixed: for example, the set-theoretic membership relation, the mereological part/whole relation, or the distinction between existent and nonexistent objects (see the entry on [free logics][36]). Whatever resources we appeal to in answering this question will be doing at least as much work as permutation invariance in the resulting demarcation of logical constants.

It may seem that the only principled position is to demand invariance under *all* permutations. But even that position needs justification, especially when one sees that it is possible to formulate even stricter invariance conditions. Feferman (1999) defines a “similarity invariance” criterion that counts the truth-functional operators and first-order existential and universal quantifiers as logical constants, but not identity, the first-order cardinality quantifiers, or the second-order quantifiers. Feferman’s criterion draws the line between logic and mathematics much closer to the traditional boundary than the permutation invariance criterion does. Indeed, one of Feferman’s criticisms of the permutation invariance criterion is that it allows too many properly mathematical notions to be expressed in purely logical terms. Bonnay (2008) argues for a different criterion, invariance under potential isomorphism, which counts finite cardinality quantifiers and the notion of finiteness as logical, while excluding the higher cardinality quantifiers—thus “\[setting\] the boundary between logic and mathematics somewhere between arithmetic and set theory” (37; see Feferman 2010, §6, for further discussion). Feferman (2010) suggests that instead of relying solely on invariance, we might combine invariance under permutations with a separate *absoluteness* requirement, which captures the insensitivity of logic to controversial set-theoretic theses like axioms of infinity. He shows that the logical operations that are both permutation-invariant and absolutely definable with respect to Kripke–Platek set theory without an axiom of infinity are just those definable in first-order logic.

There is another problem that afflicts any attempt to demarcate the logical constants by appeal to mathematical properties like invariance. As McCarthy puts it: “the logical status of an expression is not settled by the functions it introduces, independently of how these functions are *specified*” (1981, 516). Consider a two-place predicate “≈”, whose meaning is given by the following definition:

⌜α≈β⌝ is true on an assignment a just in case a(α) and a(β) have exactly the same mass.

According to the invariance criterion, “≈” is a logical constant just in case its extension on every domain is invariant under every permutation of that domain. On a domain D containing no two objects with exactly the same mass, “≈” has the same extension as “\=”—the set {⟨x,x⟩:x∈D}—and as we have seen, this extension is invariant under every permutation of the domain. Hence, if there is *no* domain containing two objects with exactly the same mass, “≈” counts as a logical constant, and “∀x(x≈x)” as a logical truth.\[[16][37]\] But it seems odd that the logical status of “≈” and “∀x(x≈x)” should depend on a matter of contingent fact: whether there are distinct objects with identical mass. Do we really want to say that if we lived in a world in which no two objects had the same mass, “≈” would be a logical constant?\[[17][38]\]

A natural response to this kind of objection would be to require that the extension of a logical constant on every *possible* domain of objects be invariant under every permutation of that domain, or, more generally, that a logical constant satisfy the permutation invariance criterion as a matter of *necessity*. But this would not get to the root of the problem. For consider the unary connective “#”, defined by the clause

⌜#ϕ⌝ is true on an assignment a just in case ϕ is not true on a and water is H2O.

Assuming that Kripke (1971; 1980) is right that water is *necessarily* H2O, “#” has the same extension as “¬” in every possible world, and so satisfies the permutation invariance criterion as a matter of necessity (McGee 1996, 578). But intuitively, it does not seem that “#” should be counted a logical constant.\[[18][39]\]

One might evade this counterexample by appealing to an *epistemic* modality instead of a metaphysical one. This is McCarthy’s strategy (1987, 439). Even if it is metaphysically necessary that water is H2O, there are presumably epistemically possible worlds, or information states, in which water is not H2O. So if we require that a logical constant be permutation invariant as a matter of epistemic necessity (or *a priori*), “#” does not count as a logical constant. But even on this version of the criterion, a connective like “%”, defined by

⌜%ϕ⌝ is true on an assignment a just in case ϕ is not true on a and there are no male widows.

would count as a logical constant (Gómez-Torrente 2002, 21), assuming that it is epistemically necessary that there are no male widows. It may be tempting to solve *this* problem by appealing to a distinctively *logical* modality—requiring, for example, that logical constants have permutation-invariant extensions as a matter of *logical* necessity. But we would then be explicating the notion of a logical constant in terms of an obscure primitive notion of logical necessity which we could not, on pain of circularity, explicate by reference to logical constants. (McCarthy 1998, §3 appeals explicitly to logical possibility and notices the threat of circularity here.)

McGee’s strategy is to invoke semantic notions instead of modal ones: he suggests that “\[a\] connective is a logical connective if and only if it follows from the meaning of the connective that it is invariant under arbitrary bijections” (McGee 1996, 578). But this approach, like McCarthy’s, seems to count “%” as a logical constant. And, like McCarthy’s, it requires appeal to a notion that does not seem any clearer than the notion of a logical constant: the notion of following (logically?) from the meaning of the connective.

Sher’s response to the objection is radically different from McGee’s or McCarthy’s. She suggests that “logical terms are identified with their (actual) extensions,” so that “#”, “%”, and “¬” are just different notations for the same term. More precisely: if these expressions are used the way a logical constant must be used—as rigid designators\[[19][40]\] of their semantic values—then they can be identified with the operation of Boolean negation and hence with each other. “Qua quantifiers, ‘the number of planets’ and ‘9’ are indistinguishable” (Sher 1991, 64). But it is not clear what Sher can mean when she says that logical terms can be identified with their extensions. We normally individuate connectives *intentionally*, by the conditions for grasping them or the rules for their use, and not by the truth functions they express. For example, we recognize a difference between “&”, defined by

⌜ϕ&ψ⌝ is true on an assignment a just in caseϕ is true on a and ψ is true on a,

and “@”, defined by

⌜ϕ @ ψ⌝ is true on an assignment a just in caseit is not the case either that ϕ is not true on aor that ψ is not true on a,

even though they express the same truth function. The distinction between these terms is not erased, as Sher seems to suggest, if we use them as rigid designators for the truth functions they express. (That “Hesperus”, “Phosphorus”, and “the planet I actually saw near the horizon on the morning of November 1, 2004” all rigidly designate Venus does not entail that they have the same meaning.) Thus Sher’s proposal can only be understood as a *stipulation* that if one of a pair of coreferential rigid designators counts as a logical constant, the other does too. But it is not clear why we should accept this stipulation. It certainly has some counterintuitive consequences: for example, that “P∨#P” is a logical truth, at least when “#” is used rigidly (see Gómez-Torrente 2002, 19, and the response in Sher 2003).

It is hard not to conclude from these discussions that the permutation invariance criterion gives at best a necessary condition for logical constancy. Its main shortcoming is that it operates at the level of reference rather than the level of sense; it looks at the logical operations expressed by the constants, but not at their meanings. An adequate criterion, one might therefore expect, would operate at the level of sense, perhaps attending to the way we *grasp* the meanings of logical constants.

## 6\. Inferential characterizations

At the end of the section on topic neutrality, we distinguished two notions of topic neutrality. The first notion—insensitivity to the distinguishing features of individuals—is effectively captured by the permutation invariance criterion. How might we capture the second—universal applicability to all thought or reasoning, regardless of its subject matter? We might start by identifying certain ingredients that must be present in anything that is to count as thought or reasoning, then class as logical any expression that can be understood in terms of these ingredients alone. That would ensure a special connection between the logical constants and thought or reasoning as such, a connection that would explain logic’s universal applicability.

Along these lines, it has been proposed that the logical constants are just those expressions that can be characterized by a set of purely inferential introduction and elimination rules.\[[20][41]\] To grasp the meaning of the conjunction connective “&”, for example, it is arguably sufficient to learn that it is governed by the rules: A,BA&BA&BAA&BB

Thus the meaning of “&” can be grasped by anyone who understands the significance of the horizontal line in an inference rule. (Contrast “%” from the last section, which cannot be grasped by anyone who does not understand what a male is and what a widow is.) Anyone who is capable of articulate thought or reasoning at all should be able to understand these inference rules, and should therefore be in a position to grasp the meaning of “&”. Or so the thought goes.\[[21][42]\]

To make such a proposal precise, we would have to make a number of additional decisions:

-   We would have to decide whether to use natural deduction rules or sequent rules. (See the entry on [the development of proof theory][43].)
    
-   If we opted to use sequent rules, we would have to decide whether or not to allow “substructure” (see the entry on [substructural logics][44]) and whether to allow multiple conclusions in the sequents. We would also have to endorse a particular set of purely structural rules (rules not involving any expression of the language essentially).
    
-   We would have to specify whether it is introduction or elimination rules, or both, that are to characterize the meanings of logical constants.\[[22][45]\] (In a sequent formulation, we would have to distinguish between right and left introduction and elimination rules.)
    
-   We would have to allow for subpropositional structure in our rules, in order to make room for quantifier rules.
    
-   We would have to say when an introduction or elimination rule counts as “purely inferential,” to exclude rules like these: a is redRaA,B,water is H2OA∗B
    
    The strictest criterion would allow only rules in which every sign, besides a single instance of the constant being characterized, is either structural (like the comma) or schematic (like “A”). But although this condition is met by the standard rules for conjunction, it is not met by the natural deduction introduction rule for negation, which must employ either another logical constant (“⊥”) or another instance of the negation sign than the one being introduced. Thus one must either relax the condition for being “purely inferential” or add more structure (see especially Belnap 1982).

Different versions of the inferential characterization approach make different decisions about these matters, and these differences affect which constants get certified as “logical.” For example, if we use single-conclusion sequents with the standard rules for the constants, we get the intuitionistic connectives, while if we use multiple-conclusion sequents, we get the classical connectives (Kneale 1956, 253). If we adopt Došen’s constraints on acceptable rules (Došen 1994, 280), the S4 necessity operator gets counted as a logical constant, while if we adopt Hacking’s constraints, it doesn’t (Hacking 1979, 297). Thus, if we are to have any hope of deciding the hard cases in a principled way, we will have to motivate all of the decisions that distinguish our version of the inferential characterization approach from the others. Here, however, we will avoid getting into these issues of detail and focus instead on the basic idea.

The basic idea is that the logical constants are distinguished from other sorts of expressions by being “characterizable” in terms of purely inferential rules. But what does “characterizable” mean here? As Gómez-Torrente (2002, 29) observes, it might be taken to require either the fixation of reference (semantic value) or the fixation of sense:

*Semantic value determination:* A constant c is characterizable by rules R iff its being governed by R suffices to fix its reference or semantic value (for example, the truth function it expresses), given certain semantic background assumptions (Hacking 1979, 299, 313).

*Sense determination:* A constant c is characterizable by rules R iff its being governed by R suffices to fix its sense: that is, one can grasp the sense of c simply by learning that it is governed by R (Popper 1946–7, 1947; Kneale 1956, 254–5; Peacocke 1987; Hodes 2004, 135).

Let us consider these two versions of the inferential characterization approach in turn.

### 6.1 Semantic value determination

Hacking shows that, given certain background semantic assumptions (bivalence, valid inference preserves truth), any introduction and elimination rules meeting certain proof-theoretic conditions (subformula property, provability of elimination theorems for Cut, Identity, and Weakening) will uniquely determine a semantics for the constant they govern (Hacking 1979, 311–314). It is in this sense that these rules “fix the meaning” of the constant: “they are such that if strong semantic assumptions of a general kind are made, then the specific semantics of the individual logical constants is thereby determined” (313).

The notion of determination of semantic value in a well-defined semantic framework is, at least, clear—unlike the general notion of determination of sense. However, as Gómez-Torrente points out, by concentrating on the fixation of reference (or semantic value) rather than sense, Hacking opens himself up to an objection not unlike the objection to permutation-invariance approaches we considered above (see also Sainsbury 2001, 369). Consider the quantifier “W”, which means “not for all not …, if all are not male widows, and for all not …, if not all are not male widows” (Gómez-Torrente 2002, 29). (It is important here that “W” is a primitive sign of the language, not one introduced by a definition in terms of “∀”, “¬”, “male”, and “widow”.) Since there are no male widows, “W” has the same semantic value as our ordinary quantifier “∃”. (As above, we can think of the semantic value of a quantifier as a function from sets of assignments to sets of assignments.) Now let R be the standard introduction and elimination rules for “∃”, and let R′ be the result of substituting “W” for “∃” in these rules. Clearly, R′ is no less “purely inferential” than R. And if R fixes a semantic value for “∃”, then R′ fixes a semantic value—the very same semantic value—for “W”. So if logical constants are expressions whose semantic values can be fixed by means of purely inferential introduction and elimination rules, “W” counts as a logical constant if and only if “∃” does.

Yet intuitively there is an important difference between these constants. We might describe it this way: whereas learning the rules R is sufficient to impart a full grasp of “∃”, one could learn the rules R′ without fully understanding what is meant by “W”. To understand “W” one must know about the human institution of marriage, and that accounts for our feeling that “W” is not “topic-neutral” enough to be a logical constant. However, this difference between “W” and “∃” cannot be discerned if we talk only of reference or semantic value; it is a difference in the *senses* of the two expressions.

### 6.2 Sense determination

The idea that introduction and/or elimination rules fix the *sense* of a logical constant is often motivated by talk of the rules as *defining* the constant. Gentzen remarks that the natural deduction rules “represent, as it were, the ‘definitions’ of the symbols concerned, and the eliminations are no more, in the final analysis, than the consequences of these definitions” (1935, §5.13; 1969, 80). However, a genuine definition would permit the constant to be eliminated from every context in which it occurs (see the entry on [Definitions][46]), and introduction and elimination rules for logical constants do not, in general, permit this. For example, in an intuitionistic sequent calculus, there is no sequent (or group of sequents) not containing “→” that is equivalent to the sequent “A→B⊢C”. For this reason, Kneale (1956, 257) says only that we can “treat” the rules as definitions, Hacking (1979) speaks of the rules “not as defining but only as characterizing the logical constants,” and Došen (1994) says that the rules provide only an “analysis,” not a definition.\[[23][47]\]

However, even if the rules are not “definitions,” there may still be something to say for the claim that they “fix the senses” of the constants they introduce. For it may be that a speaker’s grasp of the meaning of the constants consists in her mastery of these rules: her disposition to accept inferences conforming to the rules as “primitively compelling” (Peacocke 1987, Hodes 2004). (A speaker finds an inference form primitively compelling just in case she finds it compelling and does not take its correctness to require external ratification, e.g. by inference.) If the senses of logical constants are individuated in this way by the conditions for their grasp, we can distinguish between truth-functionally equivalent constants with different meanings, like “∨”, “‡”, and “†”, as defined below:

A∨BA or BA‡Bnot both not A and not BA†B(A or B) and no widows are male

To understand “∨” one must find the standard introduction rules primitively compelling:

AA∨BBA∨B

To understand “‡” one must find the following elimination rule primitively compelling:

¬A,¬B,A‡BC

Finally, to grasp the sense of “†” one must find these introduction rules primitively compelling:

A,no widows are maleA†BB,no widows are maleA†B

“∨” and “‡” will count as logical constants, because their sense-constitutive rules are purely inferential, while “†” will not, because its rules are not. (In the same way we can distinguish “∃” from “W”.) Note that appropriately rewritten versions of (15) will *hold* for “‡” and “†”; the difference is that one can grasp “‡” and “†” (but not “∨”) without finding these rules *primitively* compelling (Peacocke 1987, 156; cp. Sainsbury 2001, 370–1).

Some critics have doubted that the introduction and elimination rules for the logical constants exhaust the aspects of the use of these constants that must be mastered if one is to understand them. For example, it has been suggested that in order to grasp the conditional and the universal quantifier, one must be disposed to treat certain kinds of inductive evidence as grounds for the assertion of conditionals and universally quantified claims (Dummett 1991, 275–8; Gómez-Torrente 2002, 26–7; Sainsbury 2001, 370–1). It is not clear that these additional aspects of use can be captured in “purely inferential” rules, or that they can be derived from aspects of use that can be so captured.

It is sometimes thought that Prior’s (1960) example of a connective “tonk,”

AA tonk BA tonk BB

whose rules permit inferring anything from anything, decisively refutes the idea that the senses of logical constants are fixed by their introduction and/or elimination rules. But although Prior’s example (anticipated in Popper 1946–7, 284) certainly shows that *not all* sets of introduction and elimination rules determine a coherent meaning for a logical constant, it does not show that *none* do, or that the logical constants are not distinctive in having their meanings determined in this way. For some attempts to articulate conditions under which introduction and elimination rules do fix a meaning, see Belnap (1962), Hacking (1979, 296–8), Kremer (1988, 62–6), and Hodes (2004, 156–7).

Prawitz (1985; 2005) argues that *any* formally suitable introduction rule can fix the meaning for a logical constant. On Prawitz’s view, the lesson we learn from Prior is that we cannot *also* stipulate an elimination rule, but must justify any proposed elimination rule by showing that there is a procedure for rearranging any direct proof of the premises of the elimination rule into a direct proof of the conclusion. Thus, we can stipulate the introduction rule for “tonk”, but must then content ourselves with the strongest elimination rule for which such a procedure is available:

A tonk BA.

Other philosophers reject Prawitz's (and Gentzen's) view that the introduction rules have priority in fixing the meanings of constants, but retain the idea that the introduction and elimination rules that fix the meaning of a constant must be in *harmony*: the elimination rules must not permit us to infer more from a compound sentence than would be justified by the premises of the corresponding introduction rules (Dummett 1981, 396; Tennant 1987, 76-98). (For analyses of various notions of harmony, and their relation to notions like normalizability and conservativeness, see Milne 1994, Read 2010, and Steinberger 2011.)

## 7\. Pragmatic demarcations

The proposals for demarcating logical constants that we have examined so far have all been *analytical demarcations*. They have sought to identify some favored property (grammatical particlehood, topic neutrality, permutation invariance, characterizability by inferential rules, etc.) as a necessary and sufficient condition for an expression to be a logical constant. A fundamentally different strategy for demarcating the constants is to start with a *job description* for logic and identify the constants as the expressions that are necessary to do that job. For example, we might start with the idea that the job of logic is to serve as a “framework for the deductive sytematization of scientific theories” (Warmbrod 1999, 516), or to characterize mathematical structures and represent mathematical reasoning (Shapiro 1991), or to “\[express\] explicitly *within* a language the features of the use of that language that confer conceptual contents on the states, attitudes, performances, and expressions whose significances are governed by those practices” (Brandom 1994, xviii). Let us call demarcations of this kind *pragmatic demarcations*.

There are some very general differences between the two kinds of demarcations. Unlike analytical demarcations, pragmatic demarcations are guided by what Warmbrod calls a “requirement of minimalism”:

> …logical theory should be as simple, as modest in its assumptions, and as flexible as possible given the goal of providing a conceptual apparatus adequate for the project of systematization. In practice, the minimalist constraint dictates that the set of terms recognized as logical constants should be as small as possible. (Warmbrod 1999, 521)

Or, in Harman’s pithier formulation: “Count as logic only as much as you have to” (Harman 1972, 79). Warmbrod uses this constraint to argue that the theory of identity is not part of logic, on the grounds that it is not needed to do the job he has identified for logic: “\[w\]e can systematize the same sets of sentences by recognizing only the truth-functional connectives and first-order quantifiers as constants, treating ‘=’ as an ordinary predicate, and adopting appropriate axioms for identity” (521; cf. Quine 1986, 63, 1980, 28). On similar grounds, both Harman and Warmbrod argue that modal operators should not be considered part of logic.\[[24][48]\] Their point is not that identity or modal operators lack some feature that the first-order quantifiers and truth-functional operators possess, but merely that, since we *can* get by without taking these notions to be part of our logic, we should. Warmbrod and Tharp even explore the possibility of taking truth-functional logic to be the whole of logic and viewing quantification theory as a non-logical theory (Warmbrod 1999, 525; Tharp 1975, 18), though both reject this idea on pragmatic grounds.

While pragmatic demarcations seek to minimize what counts as logic, analytical demarcations are inclusive. They count as logical *any* expression that has the favored property. It is simply irrelevant whether an expression is *required* for a particular purpose: its logicality rests on features that it has independently of any use to which we might put it.

Relatedly, pragmatic approaches tend to be holistic. Because it is whole logical *systems* that can be evaluated as sufficient or insufficient for doing the “job” assigned to logic, properties of systems tend to be emphasized in pragmatic demarcations. For example, Wagner (1987, 10–11) invokes Lindstrom’s theorem—that first-order logic is the only logic that is either complete or compact and satisfies the Löwenheim-Skolem theorem—in arguing that logic should be limited to first-order logic, and Kneale and Kneale (1962, 724, 741) invoke Gödel’s incompleteness theorems to similar effect. Although nothing about the idea of an analytical demarcation excludes appeal to properties of whole systems, analytical demarcations tend to appeal to *local* properties of particular expressions rather than global systemic properties.

Finally, on a pragmatic demarcation, what counts as logic may depend on the current state of scientific and mathematical theory. If the advance of science results in an increase or decrease in the resources needed for deductive systematization of science (or whatever is the favored task of logic), what counts as logic changes accordingly (Warmbrod 1999, 533). On an analytical demarcation, by contrast, whether particular resources are logical depends only on whether they have the favored property. If they do not, and if it turns out that they are needed for the deductive systematization of theories, then the proper conclusion to draw is that logic alone is not adequate for this task.

## 8\. Problem or pseudoproblem?

Now that we have gotten a sense for the tremendous variety of approaches to the problem of logical constants, let us step back and reflect on the problem itself and its motivation. We can distinguish four general attitudes toward the problem of logical constants: those of the Demarcater, the Debunker, the Relativist, and the Deflater.

*Demarcaters* hold that the demarcation of logical constants is a genuine and important problem, whose solution can be expected to illuminate the nature and special status of logic. On their view, the task of logic is to study features that arguments possess in virtue of their logical forms or structures.\[[25][49]\] Although there may be some sense in which the argument

Chicago is north of New OrleansNew Orleans is south of Chicago

is a good or “valid” argument, it is not *formally* valid. On the Demarcater’s view, logicians who investigate the (non-formal) kind of “validity” possessed by (20) are straying from the proper province of logic into some neighboring domain (here, geography or lexicography; in other cases, mathematics or metaphysics). For the Demarcater, then, understanding the distinction between logical and nonlogical constants is essential for understanding what logic is about. (For a forceful statement of the Demarcater’s point of view, see Kneale 1956.)

*Debunkers*, on the other hand, hold that the so-called “problem of logical constants” is a pseudoproblem (Bolzano 1929, §186; Lakoff 1970, 252–4; Coffa 1975; Etchemendy 1983, 1990, ch. 9; Barwise and Feferman 1985, 6; Read 1994). They do not dispute that logicians have traditionally concerned themselves with argument forms in which a limited number of expressions occur essentially. What they deny is that these expressions and argument forms define the *subject matter* of logic. On their view, logic is concerned with validity *simpliciter*, not just validity that holds in virtue of a limited set of “logical forms.” The logician’s *method* for studying validity is to classify arguments by their forms, but these forms (and the logical constants that in part define them) are logic’s *tools*, not its subject matter. The forms and constants with which logicians are concerned at a particular point in the development of logic are just a reflection of the logicians’ progress (up to that point) in systematically classifying valid inferences. Asking what is special about these forms and constants is thus a bit like asking what is special about the mountains that can be climbed in a day: “The information so derived will be too closely dependent upon the skill of the climber to tell us much about geography” (Coffa 1975, 114). What makes people logicians is not their concern with “and”, “or”, and “not”, but their concern with validity, consequence, consistency, and proof, and the distinctive methods they bring to their investigations.

A good way to see the practical difference between Debunkers and Demarcaters is by contrasting their views on the use of counterexamples to show invalidity. Demarcaters typically hold that one can show an argument to be invalid by exhibiting another argument with the same logical form that has true premises and a false conclusion. Of course, an argument will always instantiate multiple forms. For example, the argument

Firefighter(Joe)∃xFirefighter(x)

can be seen as an instance of the propositional logical form

PQ

as well as the more articulated form

F(a)∃xF(x).

As Massey (1975) reminds us, the fact that there are other arguments with the form (22) that have true premises and a false conclusion does not show that (21) is invalid (or even that it is “formally” invalid). The Demarcater will insist that a genuine counterexample to the formal validity of (21) would have to exhibit the *full* logical structure of (21), which is not (22) but (23). Thus the Demarcater’s use of counterexamples to demonstrate the formal invalidity of arguments presupposes a principled way of discerning the *full* logical structure of an argument, and hence of distinguishing logical constants from nonlogical constants.\[[26][50]\]

The Debunker, by contrast, rejects the idea that one of the many argument forms (21) instantiates should be privileged as *the* logical form of (21). On the Debunker’s view, counterexamples never show anything about a particular argument. All they show is that a *form* is invalid (that is, that it has invalid instances). To show that a particular *argument* is invalid, one sort of Debunker holds, one needs to describe a possible situation in which the premises would be true and the conclusion false, and to give a formal counterexample is not to do *that*.

The Demarcater will object that the Debunker’s tolerant attitude leaves us with no coherent distinction between logic and other disciplines. For surely it is the chemist, not the logician, who will be called upon to tell us whether the following argument is a good one:

HCl turns litmus paper redHCl is an acid.

Without a principled distinction between logical and nonlogical constants, it seems, logic would need to be a kind of universal science: not just a canon for inference, but an encyclopedia. If logic is to be a distinctive discipline, the Demarcater will argue, it must concern itself not with all kinds of validity or goodness of arguments, but with a special, privileged kind: *formal* validity.

Against this, the Debunker might insist that deductive validity is a feature arguments have by virtue of the meanings of the terms contained in them, so that anyone who understands the premises and conclusion of an argument must be in a position to determine, without recourse to empirical investigation, whether it is valid. On this conception, logic is the study of *analytic* truth, consequence, consistency, and validity. Because the relation between premise and conclusion in (24) depends on empirical facts, not the meanings of terms, (24) is not deductively valid.\[[27][51]\]

This response will not be available to those who have reservations about the [analytic/synthetic distinction][52]. An important example is Tarski (1936a; 1936b; 1983; 1987; 2002), who was much concerned to define logical truth and consequence in purely mathematical terms, without appealing to suspect modal or epistemic notions. On Tarski’s account, an argument is valid just in case there is no interpretation of its nonlogical constants on which the premises are true and the conclusion false. On this account, an argument containing no nonlogical constants is valid just in case it is materially truth-preserving (it is not the case that its premises are true and its conclusion false). Thus, as Tarski notes, if *every* expression of a language counted as a logical constant, logical validity would reduce to material truth preservation (or, on later versions of Tarski’s definition, to material truth preservation on every nonempty domain) (1983, 419). Someone who found this result intolerable might take it to show either that there *must* be a principled distinction between logical and nonlogical constants (the Demarcater’s conclusion), or that Tarski’s definition is misguided (the Debunker’s conclusion; see Etchemendy 1990, ch. 9).

Tarski’s own reaction was more cautious. After concluding that the distinction is “certainly not quite arbitrary” (1983, 418), he writes:

> Perhaps it will be possible to find important objective arguments which will enable us to justify the traditional boundary between logical and extra-logical expressions. But I also consider it to be quite possible that investigations will bring no positive results in this direction, so that we shall be compelled to regard such concepts as ‘logical consequence’, ‘analytical statement’, and ‘tautology’ as relative concepts which must, on each occasion, be related to a definite, although in greater or less degree arbitrary, division of terms into logical and extra-logical. (420; see also Tarski 1987)

Here Tarski is describing a position distinct from both the Demarcater’s position and the Debunker’s. The *Relativist* agrees with the Demarcater that logical consequence must be understood as *formal* consequence, and so presupposes a distinction between logical and nonlogical constants. But she agrees with the Debunker that we should not ask, “Which expressions are logical constants and which are not?” The way she reconciles these apparently conflicting positions is by *relativizing* logical consequence to a choice of logical constants. For each set *C* of logical constants, there will be a corresponding notion of *C*\-consequence. None of these notions is to be identified with consequence *simpliciter*; different ones are useful for different purposes. In the limiting case, where every expression of the language is taken to be a logical constant, we get material consequence, but this is no more (and no less) *the* consequence relation than any of the others.

Like the Relativist, the *Deflater* seeks a moderate middle ground between the Demarcater and the Debunker. The Deflater agrees with the Demarcater that there is a real distinction between logical and nonlogical constants, and between formally and materially valid arguments. She rejects the Relativist’s position that logical consequence is a relative notion. But she also rejects the Demarcater’s project of finding precise and illuminating necessary and sufficient conditions for logical constancy. “Logical constant”, she holds, is a “family resemblance” term, so we should not expect to uncover a hidden essence that all logical constants share. As Wittgenstein said about the concept of number: “the strength of the thread does not reside in the fact that some one fibre runs through its whole length, but in the overlapping of many fibres” (Wittgenstein 1958, §67). That does not mean that there is no distinction between logical and nonlogical constants, any more than our inability to give a precise definition of “game” means that there is no difference between games and other activities. Nor does it mean that the distinction does not matter. What it means is that we should not expect a principled criterion for logical constancy that explains why logic has a privileged epistemological or semantic status. (For a nice articulation of this kind of view, see Gómez-Torrente 2002.)

The debate between these four positions cannot be resolved here, because to some extent “the proof is in the pudding.” A compelling and illuminating account of logical constants—one that vindicated a disciplinary segregation of (20) from (21) by showing how these arguments are importantly different—might give us reason to be Demarcaters. But it is important not to get so caught up in the debates between different Demarcaters, or between Demarcaters and Debunkers, that one loses sight of the other positions one might take toward the problem of logical constants.

## Further reading

Other recent general discussions of the problem of logical constants include Peacocke 1976, McCarthy 1998, Warmbrod 1999, Sainsbury 2001, ch. 6, and Gómez-Torrente 2002. Tarski 1936b is essential background to all of these.

For a discussion of grammatical criteria for logical terms, see Quine 1980 and Føllesdal’s (1980) reply.

For a discussion of the Davidsonian approach, see Davidson 1984, Evans 1976, Lycan 1989, Lepore and Ludwig 2002, and Edwards 2002.

Tarski 1986 is a brief and cogent exposition of the permutation-invariance approach. For elaboration and criticism, see McCarthy 1981, van Bentham 1989, Sher 1991, McGee 1996, Feferman 1999 and 2010, Bonnay 2008, and Dutilh Novaes 2014. Bonnay 2014 surveys recent work in this area.

Hacking 1979 and Peacocke 1987 are good representatives of the two versions of the inferential characterization approach discussed above. Popper’s papers (1946–7, 1947) are still worth reading; see Schroeder-Heister 1984 for critical discussion and Koslow 1999 for a modern approach reminiscent of Popper’s. See also Kneale 1956, Kremer 1988, Prawitz 1985 and 2005, Tennant 1987, ch. 9, Dummett 1991, ch. 11, Došen 1994, Hodes 2004, and Read 2010.

For examples of pragmatic demarcations, see Wagner 1987 and Warmbrod 1999. A different kind of pragmatic approach can be found in Brandom (2000, ch. 1; 2008, ch. 2), who characterizes logical vocabulary in terms of its *expressive* role.

For critiques of the whole project of demarcating the logical constants, see Coffa 1975, Etchemendy (1983; 1990, ch. 9), and Read 1994.

[1]: https://plato.stanford.edu/entries/logical-form/
[2]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-moby
[3]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-moby
[4]: https://plato.stanford.edu/entries/logical-constants/notes.html#2
[5]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-function-boat
[6]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-function-smaller
[7]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-function-smaller
[8]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-second-level
[9]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-function-boat
[10]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-function-smaller
[11]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-moby-frege
[12]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-smaller-than
[13]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-shamu-smaller
[14]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-second-level
[15]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-function-boat
[16]: https://plato.stanford.edu/entries/logical-constants/#mjx-eqn-function-smaller
[17]: https://plato.stanford.edu/entries/logical-constants/notes.html#3
[18]: https://plato.stanford.edu/entries/logical-constants/notes.html#4
[19]: https://plato.stanford.edu/entries/logical-constants/notes.html#5
[20]: https://plato.stanford.edu/entries/davidson/
[21]: https://plato.stanford.edu/entries/tarski-truth/
[22]: https://plato.stanford.edu/entries/logical-constants/notes.html#6
[23]: https://plato.stanford.edu/entries/logical-constants/notes.html#7
[24]: https://plato.stanford.edu/entries/logical-constants/notes.html#8
[25]: https://plato.stanford.edu/entries/logical-constants/notes.html#9
[26]: https://plato.stanford.edu/entries/type-theory/
[27]: https://plato.stanford.edu/entries/logical-constants/notes.html#10
[28]: https://plato.stanford.edu/entries/logical-constants/notes.html#11
[29]: https://plato.stanford.edu/entries/logical-constants/notes.html#12
[30]: https://plato.stanford.edu/entries/descriptions/
[31]: https://plato.stanford.edu/entries/logical-constants/notes.html#13
[32]: https://plato.stanford.edu/entries/logical-constants/notes.html#14
[33]: https://plato.stanford.edu/entries/logical-constants/notes.html#15
[34]: https://plato.stanford.edu/entries/logic-modal/
[35]: https://plato.stanford.edu/entries/logic-temporal/
[36]: https://plato.stanford.edu/entries/logic-free/
[37]: https://plato.stanford.edu/entries/logical-constants/notes.html#16
[38]: https://plato.stanford.edu/entries/logical-constants/notes.html#17
[39]: https://plato.stanford.edu/entries/logical-constants/notes.html#18
[40]: https://plato.stanford.edu/entries/logical-constants/notes.html#19
[41]: https://plato.stanford.edu/entries/logical-constants/notes.html#20
[42]: https://plato.stanford.edu/entries/logical-constants/notes.html#21
[43]: https://plato.stanford.edu/entries/proof-theory-development/#NatDedSeqCal
[44]: https://plato.stanford.edu/entries/logic-substructural/
[45]: https://plato.stanford.edu/entries/logical-constants/notes.html#22
[46]: https://plato.stanford.edu/entries/definitions/
[47]: https://plato.stanford.edu/entries/logical-constants/notes.html#23
[48]: https://plato.stanford.edu/entries/logical-constants/notes.html#24
[49]: https://plato.stanford.edu/entries/logical-constants/notes.html#25
[50]: https://plato.stanford.edu/entries/logical-constants/notes.html#26
[51]: https://plato.stanford.edu/entries/logical-constants/notes.html#27
[52]: https://plato.stanford.edu/entries/analytic-synthetic/
