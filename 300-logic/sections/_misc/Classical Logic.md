---
downloaded:       2021-12-25
page-url:         https://plato.stanford.edu/entries/logic-classical/
page-title:       Classical Logic (Stanford Encyclopedia of Philosophy)
article-title:    Classical Logic
---
# Classical Logic (Stanford Encyclopedia of Philosophy)

Today, logic is a branch of mathematics and a branch of philosophy.
In most large universities, both departments offer courses in logic,
and there is usually a lot of overlap between them. Formal languages,
deductive systems, and model-theoretic semantics are mathematical
objects and, as such, the logician is interested in their mathematical
properties and relations. Soundness, completeness, and most of the
other results reported below are typical examples. Philosophically,
logic is at least closely related to the study of correct
reasoning. Reasoning is an epistemic, mental activity. So logic
is at least closely allied with epistemology. Logic is also a central
branch of computer science, due, in part, to interesting computational
relations in logical systems, and, in part, to the close connection
between formal deductive argumentation and reasoning (see the entries
on
 recursive functions,
 computability and complexity, and
 philosophy of computer science).
## 1\. Introduction

Today, logic is a branch of mathematics and a branch of philosophy. In most large universities, both departments offer courses in logic, and there is usually a lot of overlap between them. Formal languages, deductive systems, and model-theoretic semantics are mathematical objects and, as such, the logician is interested in their mathematical properties and relations. Soundness, completeness, and most of the other results reported below are typical examples. Philosophically, logic is at least closely related to the study of *correct reasoning*. Reasoning is an epistemic, mental activity. So logic is at least closely allied with epistemology. Logic is also a central branch of computer science, due, in part, to interesting computational relations in logical systems, and, in part, to the close connection between formal deductive argumentation and reasoning (see the entries on [recursive functions][1], [computability and complexity][2], and [philosophy of computer science][3]).

This raises questions concerning the philosophical relevance of the various mathematical aspects of logic. How do deducibility and validity, as properties of formal languages--sets of strings on a fixed alphabet--relate to correct reasoning? What do the mathematical results reported below have to do with the original philosophical issues concerning valid reasoning? This is an instance of the philosophical problem of explaining how mathematics applies to non-mathematical reality.

Typically, ordinary deductive reasoning takes place in a natural language, or perhaps a natural language augmented with some mathematical symbols. So our question begins with the relationship between a natural language and a formal language. Without attempting to be comprehensive, it may help to sketch several options on this matter.

One view is that the formal languages accurately exhibit actual features of certain fragments of a natural language. Some philosophers claim that declarative sentences of natural language have underlying *logical forms* and that these forms are displayed by formulas of a formal language. Other writers hold that (successful) declarative sentences express *propositions*; and formulas of formal languages somehow display the forms of these propositions. On views like this, the components of a logic provide the underlying deep structure of correct reasoning. A chunk of reasoning in natural language is correct if the forms underlying the sentences constitute a valid or deducible argument. See for example, Montague \[1974\], Davidson \[1984\], Lycan \[1984\] (and the entry on [logical form][4]).

Another view, held at least in part by Gottlob Frege and Wilhelm Leibniz, is that because natural languages are fraught with vagueness and ambiguity, they should be *replaced* by formal languages. A similar view, held by W. V. O. Quine (e.g., \[1960\], \[1986\]), is that a natural language should be *regimented*, cleaned up for serious scientific and metaphysical work. One desideratum of the enterprise is that the logical structures in the regimented language should be transparent. It should be easy to “read off” the logical properties of each sentence. A regimented language is similar to a formal language regarding, for example, the explicitly presented rigor of its syntax and its truth conditions.

On a view like this, deducibility and validity represent *idealizations* of correct reasoning in natural language. A chunk of reasoning is correct to the extent that it corresponds to, or can be regimented by, a valid or deducible argument in a formal language.

When mathematicians and many philosophers engage in deductive reasoning, they occasionally invoke formulas in a formal language to help disambiguate, or otherwise clarify what they mean. In other words, sometimes formulas in a formal language are *used* in ordinary reasoning. This suggests that one might think of a formal language as an *addendum* to a natural language. Then our present question concerns the relationship between this addendum and the original language. What do deducibility and validity, as sharply defined on the addendum, tell us about correct deductive reasoning in general?

Another view is that a formal language is a *mathematical model* of a natural language in roughly the same sense as, say, a collection of point masses is a model of a system of physical objects, and the Bohr construction is a model of an atom. In other words, a formal language displays certain features of natural languages, or idealizations thereof, while ignoring or simplifying other features. The purpose of mathematical models is to shed light on what they are models of, without claiming that the model is accurate in all respects or that the model should replace what it is a model of. On a view like this, deducibility and validity represent mathematical models of (perhaps different aspects of) correct reasoning in natural languages. Correct chunks of deductive reasoning correspond, more or less, to valid or deducible arguments; incorrect chunks of reasoning roughly correspond to invalid or non-deducible arguments. See, for example, Corcoran \[1973\], Shapiro \[1998\], and Cook \[2002\].

There is no need to adjudicate this matter here. Perhaps the truth lies in a combination of the above options, or maybe some other option is the correct, or most illuminating one. We raise the matter only to lend some philosophical perspective to the formal treatment that follows.

## 2\. Language

Here we develop the basics of a formal language, or to be precise, a class of formal languages. Again, a formal language is a recursively defined set of strings on a fixed alphabet. Some aspects of the formal languages correspond to, or have counterparts in, natural languages like English. Technically, this “counterpart relation” is not part of the formal development, but we will mention it from time to time, to motivate some of the features and results.

### 2.1 Building blocks

We begin with analogues of *singular terms*, linguistic items whose function is to denote a person or object. We call these *terms*. We assume a stock of *individual constants*. These are lower-case letters, near the beginning of the Roman alphabet, with or without numerical subscripts:

a,a1,b23,c,d22,etc.

We envisage a potential infinity of individual constants. In the present system each constant is a single character, and so individual constants do not have an internal syntax. Thus we have an infinite alphabet. This could be avoided by taking a constant like d22, for example, to consist of three characters, a lowercase “d” followed by a pair of subscript “2”s.

We also assume a stock of *individual variables*. These are lower-case letters, near the end of the alphabet, with or without numerical subscripts:

w,x,y12,z,z4,etc.

In ordinary mathematical reasoning, there are two functions terms need to fulfill. We need to be able to denote specific, but unspecified (or arbitrary) objects, and sometimes we need to express generality. In our system, we use some constants in the role of unspecified reference and variables to express generality. Both uses are recapitulated in the formal treatment below. Some logicians employ different symbols for unspecified objects (sometimes called “individual parameters”) and variables used to express generality.

Constants and variables are the only terms in our formal language, so all of our terms are simple, corresponding to proper names and some uses of pronouns. We call a term closed if it is not a variable. In general, we use v to represent variables, and t to represent a closed term, an individual constant. Some authors also introduce *function letters*, which allow complex terms corresponding to: “7+4” and “the wife of Bill Clinton”, or complex terms containing variables, like “the father of x” and “x/y”. Logic books aimed at mathematicians are likely to contain function letters, probably due to the centrality of functions in mathematical discourse. Books aimed at a more general audience (or at philosophy students), may leave out function letters, since it simplifies the syntax and theory. We follow the latter route here. This is an instance of a general tradeoff between presenting a system with greater expressive resources, at the cost of making its formal treatment more complex.

For each natural number n, we introduce a stock of n\-place *predicate letters*. These are upper-case letters at the beginning or middle of the alphabet. A superscript indicates the number of places, and there may or may not be a subscript. For example,

A3,B32,P3,etc.

are three-place predicate letters. We often omit the superscript, when no confusion will result. We also add a special two-place predicate symbol “\=” for identity.

Zero-place predicate letters are sometimes called “sentence letters”. They correspond to free-standing sentences whose internal structure does not matter. One-place predicate letters, called “monadic predicate letters”, correspond to linguistic items denoting properties, like “being a man”, “being red”, or “being a prime number”. Two-place predicate letters, called “binary predicate letters”, correspond to linguistic items denoting binary relations, like “is a parent of” or “is greater than”. Three-place predicate letters correspond to three-place relations, like “lies on a straight line between”. And so on.

The *non-logical terminology* of the language consists of its individual constants and predicate letters. The symbol “\=”, for identity, is not a non-logical symbol. In taking identity to be logical, we provide explicit treatment for it in the deductive system and in the model-theoretic semantics. Most authors do the same, but there is some controversy over the issue (Quine \[1986, Chapter 5\]). If K is a set of constants and predicate letters, then we give the fundamentals of a language L1K\= built on this set of non-logical terminology. It may be called the *first-order language with identity* on K. A similar language that lacks the symbol for identity (or which takes identity to be non-logical) may be called L1K, the *first-order language without identity* on K.

### 2.2 Atomic formulas

If V is an n\-place predicate letter in K, and t1,…,tn are terms of K, then Vt1…tn is an *atomic formula* of L1K\=. Notice that the terms t1,…,tn need not be distinct. Examples of atomic formulas include:

P4xaab,C1x,C1a,D0,A3abc.

The last one is an analogue of a statement that a certain relation (A) holds between three objects (a,b,c). If t1 and t2 are terms, then t1\=t2 is also an atomic formula of L1K\=. It corresponds to an assertion that t1 is identical to t2.

If an atomic formula has no variables, then it is called an *atomic sentence*. If it does have variables, it is called *open*. In the above list of examples, the first and second are open; the rest are sentences.

### 2.3 Compound formulas

We now introduce the final items of the lexicon:

¬,&,∨,→,∀,∃,(,)

We give a recursive definition of a *formula* of L1K\=:

1.  All atomic formulas of L1K\= are formulas of L1K\=.
2.  If θ is a formula of L1K\=, then so is ¬θ.

A formula corresponding to ¬θ thus says that it is not the case that θ. The symbol “¬” is called “negation”, and is a unary connective.

3.  If θ and ψ are formulas of L1K\=, then so is (θ&ψ).

The ampersand “&” corresponds to the English “and” (when “and” is used to connect sentences). So (θ&ψ) can be read “θ and ψ”. The formula (θ&ψ) is called the “conjunction” of θ and ψ.

4.  If θ and ψ are formulas of L1K\=, then so is (θ∨ψ).

The symbol “∨” corresponds to “either … or … or both”, so (θ∨ψ) can be read “θ or ψ”. The formula (θ∨ψ) is called the “disjunction” of θ and ψ.

5.  5\. If θ and ψ are formulas of L1K\=, then so is (θ→ψ).

The arrow “→” roughly corresponds to “if … then … ”, so (θ→ψ) can be read “if θ then ψ” or “θ only if ψ”.

The symbols “&”, “∨”, and “→” are called “binary connectives”, since they serve to “connect” two formulas into one. Some authors introduce (θ↔ψ) as an abbreviation of ((θ→ψ)&(ψ→θ)). The symbol “↔” is an analogue of the locution “if and only if”.

6.  If θ is a formula of L1K\= and v is a variable, then ∀vθ is a formula of L1K\=.

The symbol “∀” is called a *universal quantifier*, and is an analogue of “for all”; so ∀vθ can be read “for all v,θ”.

7.  If θ is a formula of L1K\= and v is a variable, then ∃vθ is a formula of L1K\=.

The symbol “∃” is called an *existential quantifier*, and is an analogue of “there exists” or “there is”; so ∃vθ can be read “there is a v such that θ”.

8.  That’s all folks. That is, all formulas are constructed in accordance with rules (1)–(7).

Clause (8) allows us to do inductions on the complexity of formulas. If a certain property holds of the atomic formulas and is closed under the operations presented in clauses (2)–(7), then the property holds of all formulas. Here is a simple example:

**Theorem 1**. Every formula of L1K\= has the same number of left and right parentheses. Moreover, each left parenthesis corresponds to a unique right parenthesis, which occurs to the right of the left parenthesis. Similarly, each right parenthesis corresponds to a unique left parenthesis, which occurs to the left of the given right parenthesis. If a parenthesis occurs between a matched pair of parentheses, then its mate also occurs within that matched pair. In other words, parentheses that occur within a matched pair are themselves matched.

**Proof**: By clause (8), every formula is built up from the atomic formulas using clauses (2)–(7). The atomic formulas have no parentheses. Parentheses are introduced only in clauses (3)–(5), and each time they are introduced as a matched set. So at any stage in the construction of a formula, the parentheses are paired off.

We next define the notion of an occurrence of a variable being *free* or *bound* in a formula. A variable that immediately follows a quantifier (as in “∀x” and “∃y”) is neither free nor bound. We do not even think of those as occurrences of the variable. All variables that occur in an atomic formula are free. If a variable occurs free (or bound) in θ or in ψ, then that same occurrence is free (or bound) in ¬θ,(θ&ψ),(θ∨ψ), and (θ→ψ). That is, the (unary and binary) connectives do not change the status of variables that occur in them. All occurrences of the variable v in θ are bound in ∀vθ and ∃vθ. Any *free* occurrences of v in θ are bound by the initial quantifier. All other variables that occur in θ are free or bound in ∀vθ and ∃vθ, as they are in θ.

For example, in the formula (∀x(*Axy* ∨Bx)&Bx), the occurrences of “x” in *Axy* and in the first Bx are bound by the quantifier. The occurrence of “y” and last occurrence of “x” are free. In ∀x(Ax→∃*xBx*), the “x” in Ax is bound by the initial universal quantifier, while the other occurrence of x is bound by the existential quantifier. The above syntax allows this “double-binding”. Although it does not create any ambiguities (see below), we will avoid such formulas, as a matter of taste and clarity.

The syntax also allows so-called vacuous binding, as in ∀xBc. These, too, will be avoided in what follows. Some treatments of logic rule out vacuous binding and double binding as a matter of syntax. That simplifies some of the treatments below, and complicates others.

Free variables correspond to place-holders, while bound variables are used to express generality. If a formula has no free variables, then it is called a *sentence*. If a formula has free variables, it is called *open*.

### 2.4 Features of the syntax

Before turning to the deductive system and semantics, we mention a few features of the language, as developed so far. This helps draw the contrast between formal languages and natural languages like English.

We assume at the outset that all of the categories are disjoint. For example, no connective is also a quantifier or a variable, and the non-logical terms are not also parentheses or connectives. Also, the items within each category are distinct. For example, the sign for disjunction does not do double-duty as the negation symbol, and perhaps more significantly, no two-place predicate is also a one-place predicate.

One difference between natural languages like English and formal languages like L1K\= is that the latter are not supposed to have any ambiguities. The policy that the different categories of symbols do not overlap, and that no symbol does double-duty, avoids the kind of ambiguity, sometimes called “equivocation”, that occurs when a single word has two meanings: “I’ll meet you at the bank.” But there are other kinds of ambiguity. Consider the English sentence:

John is married, and Mary is single, or Joe is crazy.

It can mean that John is married and either Mary is single or Joe is crazy, or else it can mean that either both John is married and Mary is single, or else Joe is crazy. An ambiguity like this, due to different ways to parse the same sentence, is sometimes called an “amphiboly”. If our formal language did not have the parentheses in it, it would have amphibolies. For example, there would be a “formula” A&B∨ *C*. Is this supposed to be ((A&B)∨C), or is it (A&(B∨C))? The parentheses resolve what would be an amphiboly.

Can we be sure that there are no other amphibolies in our language? That is, can we be sure that each formula of L1K\= can be put together in only one way? Our next task is to answer this question.

Let us temporarily use the term “unary marker” for the negation symbol (¬) or a quantifier followed by a variable (e.g., ∀x,∃z).

**Lemma 2**. Each formula consists of a string of zero or more unary markers followed by either an atomic formula or a formula produced using a binary connective, via one of clauses (3)–(5).

**Proof**: We proceed by induction on the complexity of the formula or, in other words, on the number of formation rules that are applied. The Lemma clearly holds for atomic formulas. Let n be a natural number, and suppose that the Lemma holds for any formula constructed from n or fewer instances of clauses (2)–(7). Let θ be a formula constructed from n+1 instances. The Lemma holds if the last clause used to construct θ was either (3), (4), or (5). If the last clause used to construct θ was (2), then θ is ¬ψ. Since ψ was constructed with n instances of the rule, the Lemma holds for ψ (by the induction hypothesis), and so it holds for θ. Similar reasoning shows the Lemma to hold for θ if the last clause was (6) or (7). By clause (8), this exhausts the cases, and so the Lemma holds for θ, by induction.

**Lemma 3**. If a formula θ contains a left parenthesis, then it ends with a right parenthesis, which matches the leftmost left parenthesis in θ.

**Proof**: Here we also proceed by induction on the number of instances of (2)–(7) used to construct the formula. Clearly, the Lemma holds for atomic formulas, since they have no parentheses. Suppose, then, that the Lemma holds for formulas constructed with n or fewer instances of (2)–(7), and let θ be constructed with n+1 instances. If the last clause applied was (3)–(5), then the Lemma holds since θ itself begins with a left parenthesis and ends with the matching right parenthesis. If the last clause applied was (2), then θ is ¬ψ, and the induction hypothesis applies to ψ. Similarly, if the last clause applied was (6) or (7), then θ consists of a quantifier, a variable, and a formula to which we can apply the induction hypothesis. It follows that the Lemma holds for θ.

**Lemma 4**. Each formula contains at least one atomic formula.

The proof proceeds by induction on the number of instances of (2)–(7) used to construct the formula, and we leave it as an exercise.

**Theorem 5**. Let α,β be nonempty sequences of characters on our alphabet, such that αβ (i.e α followed by β) is a formula. Then α is *not* a formula.

**Proof**: By Theorem 1 and Lemma 3, if α contains a left parenthesis, then the right parenthesis that matches the leftmost left parenthesis in αβ comes at the end of αβ, and so the matching right parenthesis is in β. So, α has more left parentheses than right parentheses. By Theorem 1,α is not a formula. So now suppose that α does not contain any left parentheses. By Lemma 2,αβ consists of a string of zero or more unary markers followed by either an atomic formula or a formula produced using a binary connective, via one of clauses (3)–(5). If the latter formula was produced via one of clauses (3)–(5), then it begins with a left parenthesis. Since α does not contain any parentheses, it must be a string of unary markers. But then α does not contain any atomic formulas, and so by Lemma 4,α is not a formula. The only case left is where αβ consists of a string of unary markers followed by an atomic formula, either in the form t1\=t2 or Pt1…tn. Again, if α just consisted of unary markers, it would not be a formula, and so α must consist of the unary markers that start αβ, followed by either t1 by itself, t1\= by itself, or the predicate letter P, and perhaps some (but not all) of the terms t1,…,tn. In the first two cases, α does not contain an atomic formula, by the policy that the categories do not overlap. Since P is an n\-place predicate letter, by the policy that the predicate letters are distinct, P is not an m\-place predicate letter for any m≠n. So the part of α that consists of P followed by the terms is not an atomic formula. In all of these cases, then, α does not contain an atomic formula. By Lemma 4,α is not a formula.

We are finally in position to show that there is no amphiboly in our language.

**Theorem 6**. Let θ be any formula of L1K\=. If θ is not atomic, then there is one and only one among (2)–(7) that was the last clause applied to construct θ. That is, θ could not be produced by two different clauses. Moreover, no formula produced by clauses (2)–(7) is atomic.

**Proof**: By Clause (8), either θ is atomic or it was produced by one of clauses (2)–(7). Thus, the first symbol in θ must be either a predicate letter, a term, a unary marker, or a left parenthesis. If the first symbol in θ is a predicate letter or term, then θ is atomic. In this case, θ was not produced by any of (2)–(7), since all such formulas begin with something other than a predicate letter or term. If the first symbol in θ is a negation sign “¬”, then was θ produced by clause (2), and not by any other clause (since the other clauses produce formulas that begin with either a quantifier or a left parenthesis). Similarly, if θ begins with a universal quantifier, then it was produced by clause (6), and not by any other clause, and if θ begins with an existential quantifier, then it was produced by clause (7), and not by any other clause. The only case left is where θ begins with a left parenthesis. In this case, it must have been produced by one of (3)–(5), and not by any other clause. We only need to rule out the possibility that θ was produced by more than one of (3)–(5). To take an example, suppose that θ was produced by (3) and (4). Then θ is (ψ1&ψ2) and θ is also (ψ3∨ψ4), where ψ1,ψ2,ψ3, and ψ4 are themselves formulas. That is, (ψ1&ψ2) is the very same formula as (ψ3∨ψ4). By Theorem 5,ψ1 cannot be a proper part of ψ3, nor can ψ3 be a proper part of ψ1. So ψ1 must be the same formula as ψ3. But then “&” must be the same symbol as “∨”, and this contradicts the policy that all of the symbols are different. So θ was not produced by both Clause (3) and Clause (4). Similar reasoning takes care of the other combinations.

This result is sometimes called “unique readability”. It shows that each formula is produced from the atomic formulas via the various clauses in exactly one way. If θ was produced by clause (2), then its *main connective* is the initial “¬”. If θ was produced by clauses (3), (4), or (5), then its *main connective* is the introduced “&”, “∨”, or “→”, respectively. If θ was produced by clauses (6) or (7), then its *main connective* is the initial quantifier. We apologize for the tedious details. We included them to indicate the level of precision and rigor for the syntax.

## 3\. Deduction

We now introduce a *deductive system*, D, for our languages. As above, we define an *argument* to be a non-empty collection of sentences in the formal language, one of which is designated to be the *conclusion*. If there are any other sentences in the argument, they are its *premises*.\[[1][5]\] By convention, we use “Γ”, “Γ′”, “Γ1”, etc, to range over sets of sentences, and we use the letters “ϕ”, “ψ”, “θ”, uppercase or lowercase, with or without subscripts, to range over single sentences. We write “Γ,Γ′” for the union of Γ and Γ′, and “Γ,ϕ” for the union of Γ with {ϕ}.

We write an argument in the form ⟨Γ,ϕ⟩, where Γ is a set of sentences, the premises, and ϕ is a single sentence, the conclusion. Remember that Γ may be empty. We write Γ⊢ϕ to indicate that ϕ is deducible from Γ, or, in other words, that the argument ⟨Γ,ϕ⟩ is deducible in D. We may write Γ⊢Dϕ to emphasize the deductive system D. We write ⊢ϕ or ⊢Dϕ to indicate that ϕ can be deduced (in D) from the empty set of premises.

The rules in D are chosen to match logical relations concerning the English analogues of the logical terminology in the language. Again, we define the deducibility relation by recursion. We start with a rule of assumptions:

-   (As) If ϕ is a member of Γ, then Γ⊢ϕ.

We thus have that {ϕ}⊢ϕ; each premise follows from itself. We next present two clauses for each connective and quantifier. The clauses indicate how to “introduce” and “eliminate” sentences in which each symbol is the main connective.

First, recall that “&” is an analogue of the English connective “and”. Intuitively, one can deduce a sentence in the form (θ&ψ) if one has deduced θ and one has deduced ψ. Conversely, one can deduce θ from (θ&ψ) and one can deduce ψ from (θ&ψ):

-   (&I) If Γ1⊢θ and Γ2⊢ψ, then Γ1,Γ2⊢(θ&ψ).
-   (&E) If Γ⊢(θ&ψ) then Γ⊢θ; and if Γ⊢(θ&ψ) then Γ⊢ψ.

The name “&I” stands for “&-introduction”; “&E” stands for “&-elimination”.

Since, the symbol “∨” corresponds to the English “or”, (θ∨ψ) should be deducible from θ, and (θ∨ψ) should also be deducible from ψ:

-   (∨I) If Γ⊢θ then Γ⊢(θ∨ψ); if Γ⊢ψ then Γ⊢(θ∨ψ).

The elimination rule is a bit more complicated. Suppose that “θ or ψ” is true. Suppose also that ϕ follows from θ and that ϕ follows from ψ. One can reason that if θ is true, then ϕ is true. If instead ψ is true, we still have that ϕ is true. So either way, ϕ must be true.

-   (∨E) If Γ1⊢(θ∨ψ),Γ2,θ⊢ϕ and Γ3,ψ⊢ϕ, then Γ1,Γ2,Γ3⊢ϕ.

For the next clauses, recall that the symbol, “→”, is an analogue of the English “if … then … ” construction. If one knows, or assumes (θ→ψ) and also knows, or assumes θ, then one can conclude ψ. Conversely, if one deduces ψ from an assumption θ, then one can conclude that (θ→ψ).

-   (→I) If Γ,θ⊢ψ, then Γ⊢(θ→ψ).
-   (→E) If Γ1⊢(θ→ψ) and Γ2⊢θ, then Γ1,Γ2⊢ψ.

This elimination rule is sometimes called “modus ponens”. In some logic texts, the introduction rule is proved as a “deduction theorem”.

Our next clauses are for the negation sign, “¬”. The underlying idea is that a sentence ψ is inconsistent with its negation ¬ψ. They cannot both be true. We call a pair of sentences ψ,¬ψ *contradictory opposites*. If one can deduce such a pair from an assumption θ, then one can conclude that θ is false, or, in other words, one can conclude ¬θ.

-   (¬I) If Γ1,θ⊢ψ and Γ2,θ⊢¬ψ, then Γ1,Γ2⊢¬θ.

By (As), we have that {A,¬A}⊢A and {*A,¬A*}⊢¬A. So by ¬I we have that {A}⊢¬¬A. However, we do not have the converse yet. Intuitively, ¬¬θ corresponds to “it is not the case that it is not the case that” . One might think that this last is equivalent to θ, and we have a rule to that effect:

-   (DNE) If Γ⊢¬¬θ, then Γ⊢θ.

The name DNE stands for “double-negation elimination”. There is some controversy over this inference. It is rejected by philosophers and mathematicians who do not hold that each meaningful sentence is either true or not true. *Intuitionistic logic* does not sanction the inference in question (see, for example Dummett \[2000\], or the entry on [intuitionistic logic][6], or [history of intuitionistic logic][7]), but, again, classical logic does.

To illustrate the parts of the deductive system D presented thus far, we show that ⊢(A∨¬A):

1.  {¬(A∨¬A),A}⊢¬(A∨¬A), by (As)
2.  {¬(A∨¬A),A}⊢A, by (As).
3.  {¬(A∨¬A),A}⊢(A∨¬A), by (∨I), from (ii).
4.  {¬(A∨¬A)}⊢¬A, by (¬I), from (i) and (iii).
5.  {¬(A∨¬A),¬A}⊢¬(A∨¬A), by (As)
6.  {¬(A∨¬A),¬A}⊢¬A, by (As)
7.  {¬(A∨¬A),¬A}⊢(A∨¬A), by (∨I), from (vi).
8.  {¬(A∨¬A)}⊢¬¬A, by (¬I), from (v) and (vii).
9.  ⊢¬¬(A∨¬A), by (¬I), from (iv) and (viii).
10.  ⊢(A∨¬A), by (DNE), from (ix).

The principle (θ∨¬θ) is sometimes called the *law of excluded middle*. It is not valid in intuitionistic logic.

Let θ,¬θ be a pair of contradictory opposites, and let ψ be any sentence at all. By (As) we have {θ,¬θ,¬ψ}⊢θ and {θ,¬θ,¬ψ}⊢¬θ. So by (¬I), {θ,¬θ}⊢¬¬ψ. So, by (DNE) we have {θ,¬θ}⊢ψ . That is, anything at all follows from a pair of contradictory opposites. Some logicians introduce a rule to codify a similar inference:

If Γ1⊢θ and Γ2⊢¬θ, then for any sentence ψ,Γ1,Γ2⊢ψ

The inference is sometimes called *ex falso quodlibet* or, more colorfully, *explosion*. Some call it “¬\-elimination”, but perhaps this stretches the notion of “elimination” a bit. We do not officially include *ex falso quodlibet* as a separate rule in D, but as will be shown below (Theorem 10), each instance of it is derivable in our system D.

Some logicians object to *ex falso quodlibet*, on the ground that the sentence ψ may be *irrelevant* to any of the premises in Γ. Suppose, for example, that one starts with some premises Γ about human nature and facts about certain people, and then deduces both the sentence “Clinton had extra-marital sexual relations” and “Clinton did not have extra-marital sexual relations”. One can perhaps conclude that there is something wrong with the premises Γ. But should we be allowed to then deduce *anything at all* from Γ? Should we be allowed to deduce “The economy is sound”?

A small minority of logicians, called *dialetheists*, hold that some contradictions are actually true. For them, *ex falso quodlibet* is not truth-preserving.

Deductive systems that demur from *ex falso quodlibet* are called *paraconsistent*. Most relevant logics are paraconsistent. See the entries on [relevance logic][8], [paraconsistent logic][9], and [dialetheism][10]. Or see Anderson and Belnap \[1975\], Anderson, Belnap, and Dunn \[1992\], and Tennant \[1997\] for fuller overviews of relevant logic; and Priest \[2006\],\[2006a\] for dialetheism. Deep philosophical issues concerning the nature of [logical consequence][11] are involved. Far be it for an article in a philosophy encyclopedia to avoid philosophical issues, but space considerations preclude a fuller treatment of this issue here. Suffice it to note that the inference *ex falso quodlibet* is sanctioned in systems of *classical logic*, the subject of this article. It is essential to establishing the balance between the deductive system and the semantics (see §5 below).

The next pieces of D are the clauses for the quantifiers. Let θ be a formula, v a variable, and t a term (i.e., a variable or a constant). Then define θ(v|t) to be the result of substituting t for each *free* occurrence of v in θ. So, if θ is (Qx&∃*xPxy*), then θ(x|c) is (Qc&∃*xPxy*). The last occurrence of x is not free.

A sentence in the form ∀vθ is an analogue of the English “for every v,θ holds”. So one should be able to infer θ(v|t) from ∀vθ for any closed term t. Recall that the only closed terms in our system are constants.

-   (∀E) If Γ⊢∀vθ, then Γ⊢θ(v|t), for any closed term t.

The idea here is that if ∀vθ is true, then θ should hold of t, no matter what t is.

The introduction clause for the universal quantifier is a bit more complicated. Suppose that a sentence θ contains a closed term t, and that θ has been deduced from a set of premises Γ. If the closed term t does not occur in any member of Γ, then θ will hold no matter which object t may denote. That is, ∀vθ follows.

-   (∀I) For any closed term t, if Γ⊢θ(v|t), then Γ⊢∀vθ provided that t is not in Γ or θ.

This rule (∀I) corresponds to a common inference in mathematics. Suppose that a mathematician says “let n be a natural number” and goes on to show that n has a certain property P, without assuming anything about n (except that it is a natural number). She then reminds the reader that n is “arbitrary”, and concludes that P holds for *all* natural numbers. The condition that the term t not occur in any premise is what guarantees that it is indeed “arbitrary”. It could be any object, and so anything we conclude about it holds for all objects.

The existential quantifier is an analogue of the English expression “there exists”, or perhaps just “there is”. If we have established (or assumed) that a given object t has a given property, then it follows that there is something that has that property.

-   (∃I) For any closed term t, if Γ⊢θ(v|t) then Γ⊢∃vθ.

The elimination rule for ∃ is not quite as simple:

-   (∃E) For any closed term t, if Γ1⊢∃vθ and Γ2,θ(v|t)⊢ϕ, then Γ1,Γ2⊢ϕ, provided that t does not occur in ϕ, Γ2 or θ.

This elimination rule also corresponds to a common inference. Suppose that a mathematician assumes or somehow concludes that there is a natural number with a given property P. She then says “let n be such a natural number, so that Pn”, and goes on to establish a sentence ϕ, which does not mention the number n. If the derivation of ϕ does not invoke anything about n (other than the assumption that it has the given property P), then n could have been any number that has the property P. That is, n is an *arbitrary* number with property P. It does not matter which number n is. Since ϕ does not mention n, it follows from the assertion that something has property P. The provisions added to (∃E) are to guarantee that t is “arbitrary”.

The final items are the rules for the identity sign “=”. The introduction rule is about a simple as can be:

-   (\=I) Γ⊢t\=t, where t is any closed term.

This “inference” corresponds to the truism that everything is identical to itself. The elimination rule corresponds to a principle that if a is identical to b, then anything true of a is also true of b.

-   (\=E) For any closed terms t1 and t2, if Γ1⊢t1\=t2 and Γ2⊢θ, then Γ1,Γ2⊢θ′, where θ′ is obtained from θ by replacing one or more occurances of t1 with t2.

The rule (\=E) indicates a certain restriction in the expressive resources of our language. Suppose, for example, that Harry is identical to Donald (since his mischievous parents gave him two names). According to most people’s intuitions, it would not follow from this and “Dick knows that Harry is wicked” that “Dick knows that Donald is wicked”, for the reason that Dick might not know that Harry is identical to Donald. Contexts like this, in which identicals cannot safely be substituted for each other, are called “opaque”. We assume that our language L1K\= has no opaque contexts.

One final clause completes the description of the deductive system D:

-   (\*) That’s all folks. Γ⊢θ only if θ follows from members of Γ by the above rules.

Again, this clause allows proofs by induction on the rules used to establish an argument. If a property of arguments holds of all instances of (As) and (\=I), and if the other rules preserve the property, then every argument that is deducible in D enjoys the property in question.

Before moving on to the model theory for L1K\=, we pause to note a few features of the deductive system. To illustrate the level of rigor, we begin with a lemma that if a sentence does not contain a particular closed term, we can make small changes to the set of sentences we prove it from without problems. We allow ourselves the liberty here of extending some previous notation: for any terms t and t′, and any formula θ, we say that θ(t|t′) is the result of replacing all free occurrences of t in θ with t′.

**Lemma 7.** If Γ1 and Γ2 differ only in that wherever Γ1 contains θ, Γ2 contains θ(t|t′), then for any sentence ϕ not containing t or t′, if Γ1⊢ϕ then Γ2⊢ϕ.

**Proof:** The proof proceeds by induction on the number of steps in the proof of ϕ. Crucial to this proof is the fact that θ\=θ(t|t′) whenever θ does not contain t or t′. When the number of steps in the proof of ϕ is one, this means that the last (and only) rule applied is (As) or (=I). Then, since ϕ does not contain t or t′, if Γ1⊢ϕ we simply apply the same rule ((As) or (=I)) to Γ2 to get Γ2⊢ϕ. Assume that there are n\>1 steps in the proof of ϕ, and that Lemma 7 holds for any proof with less than n steps. Suppose that the nth rule applied to Γ1 was (&I). Then ϕ is ψ&χ, and Γ1⊢ϕ&χ. But then we know that previous steps in the proof include Γ1⊢ψ and Γ1⊢χ, and by induction, we have Γ2⊢ψ and Γ2⊢χ, since neither ψ nor χ contain t or t′. So, we simply apply (&I) to Γ2 to get Γ2⊢ψ&χ as required. Suppose now that the last step applied in the proof of Γ1⊢ϕ was (&E). Then, at a previous step in the proof of ϕ, we know Γ1⊢ϕ&ψ for some sentence ψ. If ψ does not contain t, then we simply apply (&E) to Γ2 to obtain the desired result. The only complication is if ψ contains t. Then we would have that Γ2⊢(ϕ&ψ)(t|t′). But, since (ϕ&ψ)(t|t′) is ϕ(t|t′)&ψ(t|t′), and ϕ(t|t′) is just ϕ, we can just apply (&E) to get Γ2⊢ϕ as required. The cases for the other rules are similar.

**Theorem 8. The rule of Weakening.** If Γ1⊢ϕ and Γ1⊆Γ2, then Γ2⊢ϕ.

**Proof:** Again, we proceed by induction on the number of rules that were used to arrive at Γ1⊢ϕ. Suppose that n\>0 is a natural number, and that the theorem holds for any argument that was derived using fewer than n rules. Suppose that Γ1⊢ϕ using exactly n rules. If n\=1, then the rule is either (As) or (\=I). In these cases, Γ2⊢ϕ by the same rule. If the last rule applied was (&I), then ϕ has the form (θ&ψ), and we have Γ3⊢θ and Γ4⊢ψ, with Γ1\=Γ3,Γ4. We apply the induction hypothesis to the deductions of θ and ψ, to get Γ2⊢θ and Γ2⊢ψ. and then apply (&I) to the result to get Γ2⊢ϕ. Most of the other cases are exactly like this. Slight complications arise only in the rules (∀I) and (∃E), because there we have to pay attention to the conditions for the rules.

Suppose that the last rule applied to get Γ1⊢ϕ is (∀I). So ϕ is a sentence of the form ∀vθ, and we have Γ1⊢θ(v|t) and t does occur in any member of Γ1 or in θ. The problem is that t may occur in a member of Γ2, and so we cannot just invoke the induction hypothesis and apply (∀I) to the result. So, let t′ be a term not occurring in any sentence in Γ2. Let Γ′ be the result of substituting t′ for all t in Γ2. Then, since t does not occur in Γ1, Γ1⊆Γ′. So, the induction hypothesis gives us Γ′⊢θ(v|t), and we know that Γ′ does not contain t, so we can apply (∀I) to get Γ′⊢∀vθ. But ∀vθ does not contain t or t′, so Γ2⊢∀vθ by Lemma 7.

Suppose that the last rule applied was (∃E), we have Γ3⊢∃vθ and Γ4,θ(v|t)⊢ϕ, with Γ1 being Γ3,Γ4, and t not in ϕ, Γ4 or θ. If t does not occur free in Γ2, we apply the induction hypothesis to get Γ2⊢∃vθ, and then (∃E) to end up with Γ2⊢ϕ. If t does occur free in Γ2, then we follow a similar proceedure to ∀I, using Lemma 7.

Theorem 8 allows us to add on premises at will. It follows that Γ⊢ϕ if and only if there is a subset Γ′⊆Γ such that Γ′⊢ϕ. Some systems of relevant logic do not have weakening, nor does substructural logic (See the entries on [relevance logic][12], [substructural logics][13], and [linear logic][14]).

By clause (\*), all derivations are established in a finite number of steps. So we have

**Theorem 9**. Γ⊢ϕ if and only if there is a finite Γ′⊆Γ such that Γ′⊢ϕ.

**Theorem 10**. The rule of *ex falso quodlibet* is a “derived rule” of D: if Γ1⊢θ and Γ2⊢¬θ, then Γ1,Γ2⊢ψ, for any sentence ψ.

**Proof:** Suppose that Γ1⊢θ and Γ2⊢¬θ. Then by Theorem 8,Γ1,¬ψ⊢θ, and Γ2,¬ψ⊢¬θ. So by (¬I), Γ1,Γ2⊢¬¬ψ. By (DNE), Γ1,Γ2⊢ψ.

**Theorem 11. The rule of Cut**. If Γ1⊢ψ and Γ2,ψ⊢θ, then Γ1,Γ2⊢θ.

**Proof:** Suppose Γ1⊢ψ and Γ2,ψ⊢θ. We proceed by induction on the number of rules used to establish Γ2,ψ⊢θ. Suppose that n is a natural number, and that the theorem holds for any argument that was derived using fewer than n rules. Suppose that Γ2,ψ⊢θ was derived using exactly n rules. If the last rule used was (\=I), then Γ1,Γ2⊢θ is also an instance of (\=I). If Γ2,ψ⊢θ is an instance of (As), then either θ is ψ, or θ is a member of Γ2. In the former case, we have Γ1⊢θ by supposition, and get Γ1,Γ2⊢θ by Weakening (Theorem 8). In the latter case, Γ1,Γ2⊢θ is itself an instance of (As). Suppose that Γ2,ψ⊢θ was obtained using (&E). Then we have Γ2,ψ⊢(θ&ϕ). The induction hypothesis gives us Γ1,Γ2⊢(θ&ϕ), and (&E) produces Γ1,Γ2⊢θ. The remaining cases are similar.

Theorem 11 allows us to chain together inferences. This fits the practice of establishing theorems and lemmas and then using those theorems and lemmas later, at will. The cut principle is, some think, essential to reasoning. In some logical systems, the cut principle is a deep theorem; in others it is invalid. The system here was designed, in part, to make the proof of Theorem 11 straightforward.

If Γ⊢Dθ, then we say that the sentence θ is a *deductive consequence* of the set of sentences Γ, and that the argument ⟨Γ,θ⟩ is *deductively valid*. A sentence θ is a *logical theorem*, or a *deductive logical truth*, if ⊢Dθ. That is, θ is a logical theorem if it is a deductive consequence of the empty set. A set Γ of sentences is *consistent* if there is no sentence θ such that Γ⊢Dθ and Γ⊢D¬θ. That is, a set is consistent if it does not entail a pair of contradictory opposite sentencess.

**Theorem 12**. A set Γ is consistent if and only if there is a sentence θ such that it is not the case that Γ⊢θ.

**Proof:** Suppose that Γ is consistent and let θ be any sentence. Then either it is not the case that Γ⊢θ or it is not the case that Γ⊢¬θ. For the converse, suppose that Γ is inconsistent and let ψ be any sentence. We have that there is a sentence such that both Γ⊢θ and Γ⊢¬θ. By *ex falso quodlibet* (Theorem 10), Γ⊢ψ.

Define a set Γ of sentences of the language L1K\= to be *maximally consistent* if Γ is consistent and for every sentence θ of L1K\=, if θ is not in Γ, then Γ,θ is inconsistent. In other words, Γ is maximally consistent if Γ is consistent, and adding any sentence in the language not already in Γ renders it inconsistent. Notice that if Γ is maximally consistent then Γ⊢θ if and only if θ is in Γ.

**Theorem 13. The Lindenbaum Lemma.** Let Γ be any consistent set of sentences of L1K\=. Then there is a set Γ′ of sentences of L1K\= such that Γ⊆Γ′ and Γ′ is maximally consistent.

**Proof:** Although this theorem holds in general, we assume here that the set K of non-logical terminology is either finite or denumerably infinite (i.e., the size of the natural numbers, usually called ℵ0). It follows that there is an enumeration θ0,θ1,… of the sentences of L1K\=, such that every sentence of L1K\= eventually occurs in the list. Define a sequence of sets of sentences, by recursion, as follows: Γ0 is Γ; for each natural number n, if Γn,θn is consistent, then let Γn+1\=Γn,θn. Otherwise, let Γn+1\=Γn. Let Γ′ be the union of all of the sets Γn. Intuitively, the idea is to go through the sentences of L1K\=, throwing each one into Γ′ if doing so produces a consistent set. Notice that each Γn is consistent. Suppose that Γ′ is inconsistent. Then there is a sentence \\theta such that \\Gamma'\\vdash \\theta and \\Gamma'\\vdash \\neg \\theta. By Theorem 9 and Weakening (Theorem 8), there is finite subset \\Gamma'' of \\Gamma' such that \\Gamma''\\vdash \\theta and \\Gamma''\\vdash \\neg \\theta. Because \\Gamma'' is finite, there is a natural number n such that every member of \\Gamma'' is in \\Gamma\_n. So, by Weakening again, \\Gamma\_n \\vdash \\theta and \\Gamma\_n \\vdash \\neg \\theta. So \\Gamma\_n is inconsistent, which contradicts the construction. So \\Gamma' is consistent. Now suppose that a sentence \\theta is not in \\Gamma'. We have to show that \\Gamma', \\theta is inconsistent. The sentence \\theta must occur in the aforementioned list of sentences; say that \\theta is \\theta\_m. Since \\theta\_m is not in \\Gamma', then it is not in \\Gamma\_{m+1}. This happens only if \\Gamma\_m, \\theta\_m is inconsistent. So a pair of contradictory opposites can be deduced from \\Gamma\_m,\\theta\_m. By Weakening, a pair of contradictory opposites can be deduced from \\Gamma', \\theta\_m. So \\Gamma', \\theta\_m is inconsistent. Thus, \\Gamma' is maximally consistent.

Notice that this proof uses a principle corresponding to the law of excluded middle. In the construction of \\Gamma', we assumed that, at each stage, either \\Gamma\_n is consistent or it is not. Intuitionists, who demur from excluded middle, do not accept the Lindenbaum lemma.

## 4\. Semantics

Let K be a set of non-logical terminology. An *interpretation* for the language \\LKe is a structure M = \\langle d,I\\rangle, where d is a non-empty set, called the *domain-of-discourse*, or simply the *domain*, of the interpretation, and I is an *interpretation function*. Informally, the domain is what we interpret the language \\LKe to be about. It is what the variables range over. The interpretation function assigns appropriate extensions to the non-logical terms. In particular,

If c is a constant in K, then I(c) is a member of the domain d.

Thus we assume that every constant denotes something. Systems where this is not assumed are called *free logics* (see the entry on [free logic][15]). Continuing,

If P^0 is a zero-place predicate letter in K, then I(P) is a truth value, either truth or falsehood.

If Q^1 is a one-place predicate letter in K, then I(Q) is a subset of d. Intuitively, I(Q) is the set of members of the domain that the predicate Q holds of. For example, I(Q) might be the set of red members of the domain.

If R^2 is a two-place predicate letter in K, then I(R) is a set of ordered pairs of members of d. Intuitively, I(R) is the set of pairs of members of the domain that the relation R holds between. For example, I(R) might be the set of pairs \\langle a,b\\rangle such that a and b are the members of the domain for which a loves b.

In general, if *S^n* is an n\-place predicate letter in K, then I(S) is a set of ordered n\-tuples of members of d.

Define s to be a *variable-assignment*, or simply an *assignment*, on an interpretation M, if s is a function from the variables to the domain d of M. The role of variable-assignments is to assign denotations to the *free* variables of open formulas. (In a sense, the quantifiers determine the “meaning” of the bound variables.)

Let t be a term of \\LKe. We define the *denotation* of t in M under s, in terms of the interpretation function and variable-assignment:

If t is a constant, then D\_{M,s}(t) is I(t), and if t is a variable, then D\_{M,s}(t) is s(t).

That is, the interpretation M assigns denotations to the constants, while the variable-assignment assigns denotations to the (free) variables. If the language contained function symbols, the denotation function would be defined by recursion.

We now define a relation of *satisfaction* between interpretations, variable-assignments, and formulas of \\LKe. If \\phi is a formula of \\LKe, M is an interpretation for \\LKe, and s is a variable-assignment on M, then we write M,s\\vDash \\phi for M *satisfies* \\phi *under the assignment* s. The idea is that M,s\\vDash \\phi is an analogue of “\\phi comes out true when interpreted as in M via s”.

We proceed by recursion on the complexity of the formulas of \\LKe.

If t\_1 and t\_2 are terms, then M,s\\vDash t\_1 =t\_2 if and only if D\_{M,s}(t\_1) is the same as D\_{M,s}(t\_2).

This is about as straightforward as it gets. An identity t\_1 =t\_2 comes out true if and only if the terms t\_1 and t\_2 denote the same thing.

If P^0 is a zero-place predicate letter in K, then M,s\\vDash P if and only if I(P) is truth.

If *S^n* is an n\-place predicate letter in K and t\_1, \\ldots,t\_n are terms, then M,s\\vDash St\_1 \\ldots t\_n if and only if the n\-tuple \\langle D\_{M,s}(t\_1), \\ldots,D\_{M,s}(t\_n)\\rangle is in I(S).

This takes care of the atomic formulas. We now proceed to the compound formulas of the language, more or less following the meanings of the English counterparts of the logical terminology.

M,s\\vDash \\neg \\theta if and only if it is not the case that M,s\\vDash \\theta.

M,s\\vDash(\\theta \\amp \\psi) if and only if both M,s\\vDash \\theta and M,s\\vDash \\psi.

M,s\\vDash(\\theta \\vee \\psi) if and only if either M,s\\vDash \\theta or M,s\\vDash \\psi.

M,s\\vDash(\\theta \\rightarrow \\psi) if and only if either it is not the case that M,s\\vDash \\theta, or M,s\\vDash \\psi.

M,s\\vDash \\forall v\\theta if and only if M,s'\\vDash \\theta, for every assignment s' that agrees with s except possibly at the variable v.

The idea here is that \\forall v\\theta comes out true if and only if \\theta comes out true no matter what is assigned to the variable v. The final clause is similar.

M,s\\vDash \\exists v\\theta if and only if M,s'\\vDash \\theta, for some assignment s' that agrees with s except possibly at the variable v.

So \\exists v\\theta comes out true if there is an assignment to v that makes \\theta true.

Theorem 6, unique readability, assures us that this definition is coherent. At each stage in breaking down a formula, there is exactly one clause to be applied, and so we never get contradictory verdicts concerning satisfaction.

As indicated, the role of variable-assignments is to give denotations to the free variables. We now show that variable-assignments play no other role.

**Theorem 14.** For any formula \\theta, if s\_1 and s\_2 agree on the free variables in \\theta, then M,s\_1 \\vDash \\theta if and only if M,s\_2 \\vDash \\theta.

**Proof:** We proceed by induction on the complexity of the formula \\theta. The theorem clearly holds if \\theta is atomic, since in those cases only the values of the variable-assignments at the variables in \\theta figure in the definition. Assume, then, that the theorem holds for all formulas less complex than \\theta. And suppose that s\_1 and s\_2 agree on the free variables of \\theta. Assume, first, that \\theta is a negation, \\neg \\psi. Then, by the induction hypothesis, M,s\_1 \\vDash \\psi if and only if M,s\_2 \\vDash \\psi. So, by the clause for negation, M,s\_1 \\vDash \\neg \\psi if and only if M,s\_2 \\vDash \\neg \\psi. The cases where the main connective in \\theta is binary are also straightforward. Suppose that \\theta is \\exists v\\psi, and that M,s\_1 \\vDash \\exists v\\psi. Then there is an assignment s\_1' that agrees with s\_1 except possibly at v such that M,s\_1'\\vDash \\psi. Let s\_2' be the assignment that agrees with s\_2 on the free variables not in \\psi and agrees with s\_1' on the others. Then, by the induction hypothesis, M,s\_2'\\vDash \\psi. Notice that s\_2' agrees with s\_2 on every variable except possibly v. So M,s\_2 \\vDash \\exists v\\psi. The converse is the same, and the case where \\theta begins with a universal quantifier is similar.

By Theorem 14, if \\theta is a sentence, and s\_1, s\_2, are any two variable-assignments, then M,s\_1 \\vDash \\theta if and only if M,s\_2 \\vDash \\theta. So we can just write M\\vDash \\theta if M,s\\vDash \\theta for some, or all, variable-assignments s. So we define

M\\vDash \\theta where \\theta is a sentence just in case M,s\\vDash\\theta for all variable assignments s.

In this case, we call M a *model* of \\theta.

Suppose that K'\\subseteq K are two sets of non-logical terms. If M = \\langle d,I\\rangle is an interpretation of \\LKe, then we define the *restriction* of M to \\mathcal{L}1K'{=} to be the interpretation M'=\\langle d,I'\\rangle such that I' is the restriction of I to K'. That is, M and M' have the same domain and agree on the non-logical terminology in K'. A straightforward induction establishes the following:

**Theorem 15**. If M' is the restriction of M to \\mathcal{L}1K'{=}, then for every sentence \\theta of \\mathcal{L}1K', M\\vDash\\theta if and only if M'\\vDash \\theta.

**Theorem 16.** If two interpretations M\_1 and M\_2 have the same domain and agree on all of the non-logical terminology of a sentence \\theta, then M\_1\\vDash\\theta if and only if M\_2\\vDash \\theta.

In short, the satisfaction of a sentence \\theta only depends on the domain of discourse and the interpretation of the non-logical terminology in \\theta.

We say that an argument \\langle \\Gamma,\\theta \\rangle is *semantically valid*, or just *valid*, written \\Gamma \\vDash \\theta, if for every interpretation M of the language, if M\\vDash\\psi, for every member \\psi of \\Gamma, then M\\vDash\\theta. If \\Gamma \\vDash \\theta, we also say that \\theta is a *logical consequence*, or *semantic consequence*, or *model-theoretic consequence* of \\Gamma. The definition corresponds to the informal idea that an argument is valid if it is not possible for its premises to all be true and its conclusion false. Our definition of logical consequence also sanctions the common thesis that a valid argument is truth-preserving--to the extent that satisfaction represents truth. Officially, an argument in \\LKe is valid if its conclusion comes out true under every interpretation of the language in which the premises are true. Validity is the model-theoretic counterpart to deducibility.

A sentence \\theta is *logically true*, or *valid*, if M\\vDash \\theta, for every interpretation M. A sentence is logically true if and only if it is a consequence of the empty set. If \\theta is logically true, then for any set \\Gamma of sentences, \\Gamma \\vDash \\theta. Logical truth is the model-theoretic counterpart of theoremhood.

A sentence \\theta is *satisfiable* if there is an interpretation M such that M\\vDash \\theta. That is, \\theta is satisfiable if there is an interpretation that satisfies it. A set \\Gamma of sentences is satisfiable if there is an interpretation M such that M\\vDash\\theta, for every sentence \\theta in \\Gamma. If \\Gamma is a set of sentences and if M\\vDash \\theta for each sentence \\theta in \\Gamma, then we say that M is a *model of* \\Gamma. So a set of sentences is satisfiable if it has a model. Satisfiability is the model-theoretic counterpart to consistency.

Notice that \\Gamma \\vDash \\theta if and only if the set \\Gamma,\\neg \\theta is not satisfiable. It follows that if a set \\Gamma is not satisfiable, then if \\theta is any sentence, \\Gamma \\vDash \\theta. This is a model-theoretic counterpart to *ex falso quodlibet* (see Theorem 10). We have the following, as an analogue to Theorem 12:

**Theorem 17**. Let \\Gamma be a set of sentences. The following are equivalent: (a) \\Gamma is satisfiable; (b) there is no sentence \\theta such that both \\Gamma \\vDash \\theta and \\Gamma \\vDash \\neg \\theta; (c) there is some sentence \\psi such that it is not the case that \\Gamma \\vDash \\psi.

**Proof:** (a)\\Rightarrow(b): Suppose that \\Gamma is satisfiable and let \\theta be any sentence. There is an interpretation M such that M\\vDash \\psi for every member \\psi of \\Gamma. By the clause for negations, we cannot have both M\\vDash \\theta and M\\vDash \\neg \\theta. So either \\langle \\Gamma,\\theta \\rangle is not valid or else \\langle \\Gamma,\\neg \\theta \\rangle is not valid. (b)\\Rightarrow(c): This is immediate. (c)\\Rightarrow(a): Suppose that it is not the case that \\Gamma \\vDash \\psi. Then there is an interpretation M such that M\\vDash \\theta, for every sentence \\theta in \\Gamma and it is not the case that M\\vDash \\psi. A fortiori, M satisfies every member of \\Gamma, and so \\Gamma is satisfiable.

We now present some results that relate the deductive notions to their model-theoretic counterparts. The first one is probably the most straightforward. We motivated both the various rules of the deductive system D and the various clauses in the definition of satisfaction in terms of the meaning of the English counterparts to the logical terminology (more or less, with the same simplifications in both cases). So one would expect that an argument is deducible, or deductively valid, only if it is semantically valid.

**Theorem 18. Soundness.** For any sentence \\theta and set \\Gamma of sentences, if \\Gamma \\vdash\_D \\theta, then \\Gamma \\vDash \\theta.

**Proof:** We proceed by induction on the number of clauses used to establish \\Gamma \\vdash \\theta. So let n be a natural number, and assume that the theorem holds for any argument established as deductively valid with fewer than n steps. And suppose that \\Gamma \\vdash \\theta was established using exactly n steps. If the last rule applied was (=I) then \\theta is a sentence in the form t=t, and so \\theta is logically true. A fortiori, \\Gamma \\vDash \\theta. If the last rule applied was (As), then \\theta is a member of \\Gamma, and so of course any interpretation that satisfies every member of \\Gamma also satisfies \\theta. Suppose the last rule applied is (&I). So \\theta has the form (\\phi \\amp \\psi), and we have \\Gamma\_1 \\vdash \\phi and \\Gamma\_2 \\vdash \\psi, with \\Gamma = \\Gamma\_1, \\Gamma\_2. The induction hypothesis gives us \\Gamma\_1 \\vDash \\phi and \\Gamma\_2 \\vDash \\psi. Suppose that M satisfies every member of \\Gamma. Then M satisfies every member of \\Gamma\_1, and so M satisfies \\phi. Similarly, M satisfies every member of \\Gamma\_2, and so M satisfies \\psi. Thus, by the clause for “\\amp” in the definition of satisfaction, M satisfies \\theta. So \\Gamma \\vDash \\theta.

Suppose the last clause applied was (\\exists\\mathrm{E}). So we have \\Gamma\_1 \\vdash \\exists v\\phi and \\Gamma\_2, \\phi(v|t) \\vdash \\theta, where \\Gamma = \\Gamma\_1, \\Gamma\_2, and t does not occur in \\phi , \\theta , or in any member of \\Gamma\_2.

We need to show that \\Gamma\\vDash\\theta. By the induction hypothesis, we have that \\Gamma\_1\\vDash\\exists v\\phi and \\Gamma\_2, \\phi(v|t)\\vDash\\theta. Let M be an interpretation such that M makes every member of \\Gamma true. So, M makes every member of \\Gamma\_1 and \\Gamma\_2 true. Then M,s\\vDash\\exists v\\phi for all variable assignments s, so there is an s' such that M,s'\\vDash\\phi. Let M' differ from M only in that I\_{M'}(t)=s'(v). Then, M',s'\\vDash\\phi(v|t) and M',s'\\vDash\\Gamma\_2 since t does not occur in \\phi or \\Gamma\_2. So, M',s'\\vDash\\theta. Since t does not occur in \\theta and M' differs from M only with respect to I\_{M'}(t), M,s'\\vDash\\theta. Since \\theta is a sentence, s' doesn't matter, so M\\vDash\\theta as desired. Notice the role of the restrictions on (\\existsE) here. The other cases are about as straightforward.

**Corollary 19.** Let \\Gamma be a set of sentences. If \\Gamma is satisfiable, then \\Gamma is consistent.

**Proof:** Suppose that \\Gamma is satisfiable. So let M be an interpretation such that M satisfies every member of \\Gamma. Assume that \\Gamma is inconsistent. Then there is a sentence \\theta such that \\Gamma \\vdash \\theta and \\Gamma \\vdash \\neg \\theta. By soundness (Theorem 18), \\Gamma \\vDash \\theta and \\Gamma \\vDash \\neg \\theta. So we have that M\\vDash \\theta and M\\vDash \\neg \\theta. But this is impossible, given the clause for negation in the definition of satisfaction.

Even though the deductive system D and the model-theoretic semantics were developed with the meanings of the logical terminology in mind, one should not automatically expect the converse to soundness (or Corollary 19) to hold. For all we know so far, we may not have included enough rules of inference to deduce every valid argument. The converses to soundness and Corollary 19 are among the most important and influential results in mathematical logic. We begin with the latter.

**Theorem 20. Completeness. Gödel \[1930\].** Let \\Gamma be a set of sentences. If \\Gamma is consistent, then \\Gamma is satisfiable.

**Proof:** The proof of completeness is rather complex. We only sketch it here. Let \\Gamma be a consistent set of sentences of \\LKe. Again, we assume for simplicity that the set K of non-logical terminology is either finite or countably infinite (although the theorem holds even if K is uncountable). The task at hand is to find an interpretation M such that M satisfies every member of \\Gamma. Consider the language obtained from \\LKe by adding a denumerably infinite stock of new individual constants c\_0, c\_1,\\ldots We stipulate that the constants, c\_0, c\_1,\\ldots, are all different from each other and none of them occur in K. One interesting feature of this construction, due to Leon Henkin, is that we build an interpretation of the language from the language itself, using some of the constants as members of the domain of discourse. Let \\theta\_0 (x), \\theta\_1 (x),\\ldots be an enumeration of the formulas of the expanded language with at most one free variable, so that each formula with at most one free variable occurs in the list eventually. Define a sequence \\Gamma\_0, \\Gamma\_1,\\ldots of sets of sentences (of the expanded language) by recursion as follows: \\Gamma\_0 = \\Gamma; and \\Gamma\_{n+1} = \\Gamma\_n,(\\exists x\\theta\_n \\rightarrow \\theta\_{n}(x|c\_i)), where c\_i is the first constant in the above list that does not occur in \\theta\_n or in any member of \\Gamma\_n. The underlying idea here is that if \\exists x\\theta\_nis true, then c\_i is to be one such x. Let \\Gamma be the union of the sets \\Gamma\_n.

We sketch a proof that \\Gamma' is consistent. Suppose that \\Gamma' is inconsistent. By Theorem 9, there is a finite subset of \\Gamma that is inconsistent, and so one of the sets \\Gamma\_m is inconsistent. By hypothesis, \\Gamma\_0 = \\Gamma is consistent. Let n be the smallest number such that \\Gamma\_n is consistent, but \\Gamma\_{n+1} = \\Gamma\_n,(\\exists x\\theta\_n \\rightarrow \\theta\_{n}(x|c\_i)) is inconsistent. By (\\negI), we have that

\\tag{1} \\Gamma\_n \\vdash \\neg(\\exists x\\theta\_n \\rightarrow \\theta\_n(x|c\_i)).

By *ex falso quodlibet* (Theorem 10), \\Gamma\_n, \\neg \\exists x\\theta\_n, \\exists x\\theta\_n \\vdash \\theta\_n (x|c\_i). So by (\\rightarrowI), \\Gamma\_n, \\neg \\exists x\\theta\_n \\vdash(\\exists x\\theta\_n \\rightarrow \\theta\_n (x|c\_i)). From this and (1), we have \\Gamma\_n \\vdash \\neg \\neg \\exists x\\theta\_n, by (\\negI), and by (DNE) we have

\\tag{2} \\Gamma\_n \\vdash \\exists x\\theta\_n .

By (As), \\Gamma\_n, \\theta\_n (x|c\_i), \\exists x\\theta\_n \\vdash \\theta\_n (x|c\_i). So by (\\rightarrowI), \\Gamma\_n, \\theta\_n (x|c\_i)\\vdash(\\exists x\\theta\_{n} \\rightarrow \\theta\_{n}(x|c\_i)). From this and (1), we have \\Gamma\_n \\vdash \\neg \\theta\_n (x|c\_i), by (\\negI). Let t be a term that does not occur in \\theta\_n or in any member of \\Gamma\_n. By uniform substitution of t for c\_i, we can turn the derivation of \\Gamma\_n \\vdash \\neg \\theta\_n (x|c\_i) into \\Gamma\_n \\vdash \\neg \\theta\_n (x|t). By (\\forallI), we have

\\tag{3} \\Gamma\_n \\vdash \\forall v\\neg \\theta\_n (x|v).

By (As) we have \\{\\forall v\\neg \\theta\_n (x|v),\\theta\_n\\}\\vdash \\theta\_n and by (\\forallE) we have \\{\\forall v\\neg \\theta\_n (x|v), \\theta\_n\\}\\vdash \\neg \\theta\_n. So \\{\\forall v\\neg \\theta\_n (x|v), \\theta\_n\\} is inconsistent. Let \\phi be any sentence of the language. By *ex falso quodlibet* (Theorem 10), we have that \\{\\forall v\\neg \\theta\_n (x|v),\\theta\_n\\}\\vdash \\phi and \\{\\forall v\\neg \\theta\_n (x|v), \\theta\_n\\}\\vdash \\neg \\phi. So with (2), we have that \\Gamma\_n, \\forall v\\neg \\theta\_n (x|v)\\vdash \\phi and \\Gamma\_n, \\forall v\\neg \\theta\_n (x|v)\\vdash \\neg \\phi, by (\\existsE). By Cut (Theorem 11), \\Gamma\_n \\vdash \\phi and \\Gamma\_n \\vdash \\neg \\phi. So \\Gamma\_n is inconsistent, contradicting the assumption. So \\Gamma' is consistent.

Applying the Lindenbaum Lemma (Theorem 13), let \\Gamma'' be a maximally consistent set of sentences (of the expanded language) that contains \\Gamma'. So, of course, \\Gamma'' contains \\Gamma. We can now define an interpretation M such that M satisfies every member of \\Gamma''.

If we did not have a sign for identity in the language, we would let the domain of M be the collection of new constants \\{c\_0, c\_1, \\ldots \\}. But as it is, there may be a sentence in the form c\_{i}=c\_{j}, with i\\ne j, in \\Gamma''. If so, we cannot have both c\_i and c\_j in the domain of the interpretation (as they are distinct constants). So we define the domain d of M to be the set \\{c\_i | there is no j\\lt i such that c\_{i}=c\_{j} is in \\Gamma''\\}. In other words, a constant c\_i is in the domain of M if \\Gamma'' does not declare it to be identical to an earlier constant in the list. Notice that for each new constant c\_i, there is exactly one j\\le i such that c\_j is in d and the sentence c\_{i}=c\_{j} is in \\Gamma''.

We now define the interpretation function I. Let a be any constant in the expanded language. By (=I) and (\\existsI), \\Gamma''\\vdash \\exists x x=a, and so \\exists x x=a \\in \\Gamma''. By the construction of \\Gamma', there is a sentence in the form (\\exists x x=a \\rightarrow c\_i =a) in \\Gamma''. We have that c\_i =a is in \\Gamma''. As above, there is exactly one c\_j in d such that c\_{i}=c\_{j} is in \\Gamma''. Let I(a)=c\_j. Notice that if c\_i is a constant in the domain d, then I(c\_i)=c\_i. That is each c\_i in d denotes itself.

Let P be a zero-place predicate letter in K. Then I(P) is truth if P is in \\Gamma'' and I(P) is falsehood otherwise. Let Q be a one-place predicate letter in K. Then I(Q) is the set of constants \\{c\_i | c\_i is in d and the sentence Qc is in \\Gamma''\\}. Let R be a binary predicate letter in K. Then I(R) is the set of pairs of constants \\{\\langle c\_i,c\_j\\rangle | c\_i is in d, c\_j is in d, and the sentence Rc\_{i}c\_{j} is in \\Gamma''\\}. Three-place predicates, etc. are interpreted similarly. In effect, I interprets the non-logical terminology as they are in \\Gamma''.

The final item in this proof is a lemma that for every sentence \\theta in the expanded language, M\\vDash \\theta if and only if \\theta is in \\Gamma''. This proceeds by induction on the complexity of \\theta. The case where \\theta is atomic follows from the definitions of M (i.e., the domain d and the interpretation function I). The other cases follow from the various clauses in the definition of satisfaction.

Since \\Gamma \\subseteq \\Gamma'', we have that M satisfies every member of \\Gamma. By Theorem 15, the restriction of M to the original language \\LKe and s also satisfies every member of \\Gamma. Thus \\Gamma is satisfiable.

A converse to Soundness (Theorem 18) is a straightforward corollary:

**Theorem 21.** For any sentence \\theta and set \\Gamma of sentences, if \\Gamma \\vDash \\theta, then \\Gamma \\vdash\_D \\theta.

**Proof:** Suppose that \\Gamma \\vDash \\theta. Then there is no interpretation M such that *M* satisfies every member of \\Gamma but does not satisfy \\theta. So the set \\Gamma,\\neg \\theta is not satisfiable. By Completeness (Theorem 20), \\Gamma,\\neg \\theta is inconsistent. So there is a sentence \\phi such that \\Gamma,\\neg \\theta \\vdash \\phi and \\Gamma,\\neg \\theta \\vdash \\neg \\phi. By (\\negI), \\Gamma \\vdash \\neg \\neg \\theta, and by (DNE) \\Gamma \\vdash \\theta.

Our next item is a corollary of Theorem 9, Soundness (Theorem 18), and Completeness:

**Corollary 22. Compactness.** A set \\Gamma of sentences is satisfiable if and only if every finite subset of \\Gamma is satisfiable.

**Proof:** If M satisfies every member of \\Gamma, then M satisfies every member of each finite subset of \\Gamma. For the converse, suppose that \\Gamma is not satisfiable. Then we show that some finite subset of \\Gamma is not satisfiable. By Completeness (Theorem 20), \\Gamma is inconsistent. By Theorem 9 (and Weakening), there is a finite subset \\Gamma'\\subseteq \\Gamma such that \\Gamma' is inconsistent. By Corollary 19, \\Gamma' is not satisfiable.

Soundness and completeness together entail that an argument is deducible if and only if it is valid, and a set of sentences is consistent if and only if it is satisfiable. So we can go back and forth between model-theoretic and proof-theoretic notions, transferring properties of one to the other. Compactness holds in the model theory because all derivations use only a finite number of premises.

Recall that in the proof of Completeness (Theorem 20), we made the simplifying assumption that the set K of non-logical constants is either finite or denumerably infinite. The interpretation we produced was itself either finite or denumerably infinite. Thus, we have the following:

**Corollary 23. Löwenheim-Skolem Theorem.** Let \\Gamma be a satisfiable set of sentences of the language \\LKe. If \\Gamma is either finite or denumerably infinite, then \\Gamma has a model whose domain is either finite or denumerably infinite.

In general, let \\Gamma be a satisfiable set of sentences of \\LKe, and let \\kappa be the larger of the size of \\Gamma and denumerably infinite. Then \\Gamma has a model whose domain is at most size \\kappa.

There is a stronger version of Corollary 23. Let M\_1 =\\langle d\_1,I\_1\\rangle and M\_2 =\\langle d\_2,I\_2\\rangle be interpretations of the language \\LKe. Define M\_1 to be a *submodel* of M\_2 if d\_1 \\subseteq d\_2, I\_1 (c) = I\_2 (c) for each constant c, and I\_1 is the restriction of I\_2 to d\_1. For example, if R is a binary relation letter in K, then for all a,b in d\_1, the pair \\langle a,b\\rangle is in I\_1 (R) if and only if \\langle a,b\\rangle is in I\_2 (R). If we had included function letters among the non-logical terminology, we would also require that d\_1 be closed under their interpretations in M\_2. Notice that if M\_1 is a submodel of M\_2, then any variable-assignment on M\_1 is also a variable-assignment on M\_2.

Say that two interpretations M\_1 =\\langle d\_1,I\_1\\rangle, M\_2 =\\langle d\_2,I\_2\\rangle are *equivalent* if one of them is a submodel of the other, and for any formula of the language and any variable-assignment s on the submodel, M\_1,s\\vDash \\theta if and only if M\_2,s\\vDash \\theta. Notice that if two interpretations are equivalent, then they satisfy the same sentences.

**Theorem 25. Downward Löwenheim-Skolem Theorem.** Let M = \\langle d,I\\rangle be an interpretation of the language \\LKe. Let d\_1 be any subset of d, and let \\kappa be the maximum of the size of K, the size of d\_1, and denumerably infinite. Then there is a submodel M' = \\langle d',I'\\rangle of M such that (1) d' is not larger than \\kappa, and (2) M and M' are equivalent. In particular, if the set K of non-logical terminology is either finite or denumerably infinite, then any interpretation has an equivalent submodel whose domain is either finite or denumerably infinite.

**Proof:** Like completeness, this proof is complex, and we rest content with a sketch. The downward Löwenheim-Skolem theorem invokes the axiom of choice, and indeed, is equivalent to the axiom of choice (see the entry on [the axiom of choice][16]). So let C be a choice function on the powerset of d, so that for each non-empty subset e\\subseteq d, C(e) is a member of e. We stipulate that if e is the empty set, then C(e) is C(d).

Let s be a variable-assignment on M, let \\theta be a formula of \\LKe, and let v be a variable. Define the v\-*witness of* \\theta *over s*, written w\_v (\\theta,s), as follows: Let q be the set of all elements c\\in d such that there is a variable-assignment s' on M that agrees with s on every variable except possibly v, such that M,s'\\vDash \\theta, and s'(v)=c. Then w\_v (\\theta,s) = C(q). Notice that if M,s\\vDash \\exists v\\theta, then q is the set of elements of the domain that can go for v in \\theta. Indeed, M,s\\vDash \\exists v\\theta if and only if q is non-empty. So if M,s\\vDash \\exists v\\theta, then w\_v (\\theta,s) (i.e., C(q)) is a chosen element of the domain that can go for v in \\theta. In a sense, it is a “witness” that verifies M,s\\vDash \\exists v\\theta.

If e is a non-empty subset of the domain d, then define a variable-assignment s to be an e\-*assignment* if for all variables u, s(u) is in e. That is, s is an e\-assignment if s assigns an element of e to each variable. Define sk(e), the *Skolem-hull* of e, to be the set:

\\begin{align\*} e \\cup \\{w\_v (\\theta,s)|& \\theta \\text{ is a formula in } \\LKe, \\\\ & v \\text{ is a variable, and } \\\\ & s \\text{ is an } e\\text{-assignment} \\}. \\end{align\*}

That is, the Skolem-Hull of e is the set e together with every v\-witness of every formula over every e\-assignment. Roughly, the idea is to start with e and then throw in enough elements to make each existentially quantified formula true. But we cannot rest content with the Skolem-hull, however. Once we throw the “witnesses” into the domain, we need to deal with sk(e) assignments. In effect, we need a set which is its own Skolem-hull, and also contains the given subset d\_1.

We define a sequence of non-empty sets e\_0, e\_1,\\ldots as follows: if the given subset d\_1 of d is empty and there are no constants in K, then let e\_0 be C(d), the choice function applied to the entire domain; otherwise let e\_0 be the union of d\_1 and the denotations under I of the constants in K. For each natural number n, e\_{n+1} is sk(e\_n). Finally, let d' be the union of the sets e\_n, and let I' be the restriction of I to d'. Our interpretation is M' = \\langle d',I'\\rangle.

Clearly, d\_1 is a subset of d', and so M' is a submodel of M. Let \\kappa be the maximum of the size of K, the size of d\_1, and denumerably infinite. A calculation reveals that the size of d' is at most \\kappa, based on the fact that there are at most \\kappa\-many formulas, and thus, at most \\kappa\-many witnesses at each stage. Notice, incidentally, that this calculation relies on the fact that a denumerable union of sets of size at most \\kappa is itself at most \\kappa. This also relies on the axiom of choice.

The final item is to show that M' is equivalent to M: For every formula \\theta and every variable-assignment s on M',

M,s\\vDash \\theta \\text{ if and only if } M',s\\vDash \\theta.

The proof proceeds by induction on the complexity of \\theta. Unfortunately, space constraints require that we leave this step as an exercise.

Another corollary to Compactness (Corollary 22) is the opposite of the Löwenheim-Skolem theorem:

**Theorem 26. Upward Löwenheim-Skolem Theorem.** Let \\Gamma be any set of sentences of \\LKe, such that for each natural number n, there is an interpretation M\_n = \\langle d\_n,I\_n\\rangle, such that d\_n has at least n elements, and M\_n satisfies every member of \\Gamma. In other words, \\Gamma is satisfiable and there is no finite upper bound to the size of the interpretations that satisfy every member of \\Gamma. Then for any infinite cardinal \\kappa, there is an interpretation M=\\langle d,I\\rangle, such that the size of d is *at least* \\kappa and M satisfies every member of \\Gamma.

**Proof:** Add a collection of new constants \\{c\_{\\alpha} | \\alpha \\lt \\kappa \\}, of size \\kappa, to the language, so that if c is a constant in K, then c\_{\\alpha} is different from c, and if \\alpha \\lt \\beta \\lt \\kappa, then c\_{\\alpha} is a different constant than c\_{\\beta}. Consider the set of sentences \\Gamma' consisting of \\Gamma together with the set \\{\\neg c\_{\\alpha}=c\_{\\beta} | \\alpha \\ne \\beta \\}. That is, \\Gamma' consists of \\Gamma together with statements to the effect that any two different new constants denote different objects. Let \\Gamma'' be any finite subset of \\Gamma', and let m be the number of new constants that occur in \\Gamma''. Then expand the interpretation M\_m to an interpretation M\_m' of the new language, by interpreting each of the new constants in \\Gamma'' as a different member of the domain d\_m. By hypothesis, there are enough members of d\_m to do this. One can interpret the other new constants at will. So M\_m is a restriction of M\_m'. By hypothesis (and Theorem 15), M'\_m satisfies every member of \\Gamma. Also M'\_m satisfies the members of \\{\\neg c\_{\\alpha}=c\_{\\beta} | \\alpha \\ne \\beta \\} that are in \\Gamma''. So M'\_m satisfies every member of \\Gamma''. By compactness, there is an interpretation M = \\langle d,I\\rangle such that M satisfies every member of \\Gamma'. Since \\Gamma' contains every member of \\{\\neg c\_{\\alpha}=c\_{\\beta} | \\alpha \\ne \\beta \\}, the domain d of M must be of size at least \\kappa, since each of the new constants must have a different denotation. By Theorem 15, the restriction of M to the original language \\LKe satisfies every member of \\Gamma.

Combined, the proofs of the downward and upward Löwenheim-Skolem theorems show that for any satisfiable set \\Gamma of sentences, if there is no finite bound on the models of \\Gamma, then for any infinite cardinal \\kappa, there is a model of \\Gamma whose domain has size *exactly* \\kappa. Moreover, if M is any interpretation whose domain is infinite, then for any infinite cardinal \\kappa, there is an interpretation M' whose domain has size exactly \\kappa such that M and M' are equivalent.

These results indicate a weakness in the expressive resources of first-order languages like \\LKe. No satisfiable set of sentences can guarantee that its models are all denumerably infinite, nor can any satisfiable set of sentences guarantee that its models are uncountable. So in a sense, first-order languages cannot express the notion of “denumerably infinite”, at least not in the model theory. (See the entry on [second-order and higher-order logic][17].)

Let A be any set of sentences in a first-order language \\LKe, where K includes terminology for arithmetic, and assume that every member of A is true of the natural numbers. We can even let A be the set of all sentences in \\LKe that are true of the natural numbers. Then A has uncountable models, indeed models of any infinite cardinality. Such interpretations are among those that are sometimes called *unintended*, or *non-standard* models of arithmetic. Let B be any set of first-order sentences that are true of the real numbers, and let C be any first-order axiomatization of set theory. Then if B and C are satisfiable (in infinite interpretations), then each of them has denumerably infinite models. That is, any first-order, satisfiable set theory or theory of the real numbers, has (unintended) models the size of the natural numbers. This is despite the fact that a sentence (seemingly) stating that the universe is uncountable is provable in most set-theories. This situation, known as the *Skolem paradox*, has generated much discussion, but we must refer the reader elsewhere for a sample of it (see the entry on [Skolem’s paradox][18] and Shapiro 1996).

## 6\. The One Right Logic?

Logic and reasoning go hand in hand. We say that someone has reasoned poorly about something if they have not reasoned logically, or that an argument is bad because it is not logically valid. To date, research has been devoted to exactly just what types of logical systems are appropriate for guiding our reasoning. Traditionally, classical logic has been the logic suggested as the ideal for guiding reasoning (for example, see Quine \[1986\], Resnik \[1996\] or Rumfitt \[2015\]). For this reason, classical logic has often been called “the one right logic”. See Priest \[2006a\] for a description of how being the best reasoning-guiding logic could make a logic the one right logic.

That classical logic has been given as the answer to which logic ought to guide reasoning is not unexpected. It has rules which are more or less intuitive, and is surprisingly simple for how strong it is. Plus, it is both sound and complete, which is an added bonus. There are some issues, though. As indicated in Section 5, there are certain expressive limitations to classical logic. Thus, much literature has been written challenging this status quo. This literature in general stems from three positions. The first is that classical logic is not reason-guiding because some other single logic is. Examples of this type of argument can be found in Brouwer \[1949\], Heyting \[1956\] and Dummett \[2000\] who argue that intuitionistic logic is correct, and Anderson and Belnap \[1975\], who argue relevance logic is correct, among many others. Further, some people propose that an extension of classical logic which can express the notion of “denumerably infinite” (see Shapiro \[1991\]). The second objection to the claim that classical logic is the one right logic comes from a different perspective: logical pluralists claim that classical logic is not the (single) one right logic, because more than one logic is right. See Beall and Restall \[2006\] and Shapiro \[2014\] for examples of this type of view (see also the entry on [logical pluralism][19]). Finally, the last objection to the claim that classical logic is the one right logic is that logic(s) is not reasoning-guiding, and so there is no one right logic.

Suffice it to say that, though classical logic has traditionally been thought of as “the one right logic”, this is not accepted by everyone. An interesting feature of these debates, though, is that they demonstrate clearly the strengths and weaknesses of various logics (including classical logic) when it comes to capturing reasoning.

[1]: https://plato.stanford.edu/entries/recursive-functions/
[2]: https://plato.stanford.edu/entries/computability/
[3]: https://plato.stanford.edu/entries/computer-science/
[4]: https://plato.stanford.edu/entries/logical-form/
[5]: https://plato.stanford.edu/entries/logic-classical/notes.html#note-1
[6]: https://plato.stanford.edu/entries/logic-intuitionistic/
[7]: https://plato.stanford.edu/entries/intuitionistic-logic-development/
[8]: https://plato.stanford.edu/entries/logic-relevance/
[9]: https://plato.stanford.edu/entries/logic-paraconsistent/
[10]: https://plato.stanford.edu/entries/dialetheism/
[11]: https://plato.stanford.edu/entries/logical-consequence/
[12]: https://plato.stanford.edu/entries/logic-relevance/
[13]: https://plato.stanford.edu/entries/logic-substructural/
[14]: https://plato.stanford.edu/entries/logic-linear/
[15]: https://plato.stanford.edu/entries/logic-free/
[16]: https://plato.stanford.edu/entries/axiom-choice/
[17]: https://plato.stanford.edu/entries/logic-higher-order/
[18]: https://plato.stanford.edu/entries/paradox-skolem/
[19]: https://plato.stanford.edu/entries/logical-pluralism/
