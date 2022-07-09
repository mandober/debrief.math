---
downloaded:       2021-11-20
author:           Andrews, Peter
page-url:         https://plato.stanford.edu/entries/type-theory-church/
page-title:       Church's Type Theory (Stanford Encyclopedia of Philosophy)
article-title:    Church's Type Theory
article-length:   68794
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Church's Type Theory (Stanford Encyclopedia of Philosophy)

We start with an informal description of the fundamental ideas
underlying the syntax of Church's formulation of type
theory.
## 1\. Syntax

### 1.1 Fundamental Ideas

We start with an informal description of the fundamental ideas underlying the syntax of Church's formulation of type theory.

All entities have types, and if α and β are types, the type of functions from elements of type β to elements of type α is written as (αβ)(αβ). (This notation was introduced by Church, but some authors write (β→α)(β→α) instead of (αβ)(αβ). See, for example, Section 2 of the entry on [type theory][1].)

As noted by Schönfinkel (1924), functions of more than one argument can be represented in terms of functions of one argument when the values of these functions can themselves be functions. For example, if *f* is a function of two arguments, for each element *x* of the left domain of *f* there is a function *g* (depending on *x*) such that gy\=fxygy\=fxy for each element *y* of the right domain of *f*. We may now write g\=fxg\=fx, and regard *f* as a function of a single argument, whose value for any argument *x* in its domain is a function fxfx, whose value for any argument *y* in its domain is *fxy*.

For a more explicit example, consider the function + which carries any pair of natural numbers to their sum. We may denote this function by +((σσ)σ)+((σσ)σ), where σσ is the type of natural numbers. Given any number *x*, \[+((σσ)σ)x\]\[+((σσ)σ)x\] is the function which, when applied to any number *y*, gives the value \[\[+((σσ)σ)x\]y\]\[\[+((σσ)σ)x\]y\], which is ordinarily abbreviated as x+yx+y. Thus \[+((σσ)σ)x\]\[+((σσ)σ)x\] is the function of one argument which adds *x* to any number. When we think of +((σσ)σ)+((σσ)σ) as a function of one argument, we see that it maps any number *x* to the function \[+((σσ)σ)x\]\[+((σσ)σ)x\].

More generally, if *f* is a function which maps *n*\-tuples ⟨wβ,xγ,…,yδ,zτ⟩⟨wβ,xγ,…,yδ,zτ⟩ of elements of types ββ, γγ,…, δδ ,ττ, respectively, to elements of type α, we may assign to *f* the type ((…((ατ)δ)…γ)β)((…((ατ)δ)…γ)β). It is customary to use the convention of association to the left to omit parentheses, and write this type symbol simply as (ατδ…γβ)(ατδ…γβ).

A set or property can be represented by a function (often called *characteristic function*) which maps elements to truth values, so that an element is in the set, or has the property, in question iff the function representing the set or property maps that element to truth. When a statement is asserted, the speaker means that it is true, so that sxsx means that sxsx is true, which also expresses the assertions that *s* maps *x* to truth and that x∈sx∈s. In other words, x∈sx∈s iff sxsx. We take oo as the type symbol denoting the type of truth values, so we may speak of any function of type (oα)(oα) as a *set* of elements of type α. A function of type ((oα)β)((oα)β) is a binary relation between elements of type β and elements of type α. For example, if σσ is the type of the natural numbers, and << is the order relation between natural numbers, << has type (oσσ)(oσσ), and for all natural numbers *x* and y,<xyy,<xy (which we ordinarily write as x<y)x<y) has the value truth iff *x* is less than *y*. Of course, << can also be regarded as the function which maps each natural number *x* to the set <x<x of all natural numbers *y* such that *x* is less than *y*. Thus sets, properties, and relations may be regarded as particular kinds of functions. Church's type type theory is thus a logic of functions, and, in this sense, it is in the tradition of the work of Frege's *Begriffsschrift*. The opposite approach would be to reduce functions to relations, which was the approach taken by Whitehead and Russell (1927a) in the *Principia Mathematica*.

Expressions which denote elements of type α are called *wffs of type* α. Thus, statements of type theory are wffs of type oo.

If AαAα is a wff of type α in which uαβuαβ is not free, the function (associated with) uαβuαβ such that ∀vβ\[uαβvβ\=Aα\]∀vβ\[uαβvβ\=Aα\] is denoted by \[λvβAα\]\[λvβAα\]. Thus λvβλvβ is a variable-binder, like ∀vβ∀vβ or ∃vβ∃vβ (but with a quite different meaning, of course); λ is known as an *abstraction operator*. \[λvβAα\]\[λvβAα\] denotes the function whose value on any argument vβvβ is AαAα, where vβvβ may occur free in AαAα. For example, \[λnσ\[4⋅nσ+3\]\]\[λnσ\[4⋅nσ+3\]\] denotes the function whose value on any natural number *n* is 4⋅n+34⋅n+3. Hence, when we apply this function to the number 5 we obtain \[λnσ\[4⋅nσ+3\]\]5\=4⋅5+3\=23\[λnσ\[4⋅nσ+3\]\]5\=4⋅5+3\=23.

We use Sub(B,v,A) as a notation for the result of substituting B for v in A, and SubFree(B,v,A) as a notation for the result of substituting B for all free occurrences of v in A. The process of replacing \[λvβAα\]Bβ by SubFree(Bβ,vβ,Aα) (or vice-versa) is known as β-*conversion*, which is one form of λ-*conversion*. Of course, when Ao is a wff of type o, \[λvβAo\] denotes the set of all elements vβ (of type β) of which Ao is true; this set may also be denoted by {vβ|Ao}. For example, \[λx x<y\] denotes the set of *x* such that *x* is less than *y* (as well as that property which a number *x* has if it is less than *y*). In familiar set-theoretic notation,

\[λvβAo\]Bβ\=SubFree(Bβ,vβ,Ao)

would be written

Bβ∈{vβ|Ao}≡SubFree(Bβ,vβ,Ao).

(By the Axiom of Extensionality for truth values, when Co and Do are of type o,Co≡Do is equivalent to Co\=Do.)

Propositional connectives and quantifiers can be assigned types and can be denoted by constants of these types. The negation function maps truth values to truth values, so it has type (oo). Similarly, disjunction and conjunction (etc.) are binary functions from truth values to truth values, so they have type (ooo).

The statement ∀xαAo is true iff the set \[λxαAo\] contains all elements of type α. A constant Πo(oα) can be introduced (for each type symbol α) to denote a property of sets: a set soα has the property Πo(oα) iff soα contains all elements of type α. With this interpretation

∀soα\[Πo(oα)soα≡∀xα\[soαxα\]\]

should be true, as well as

Πo(oα)\[λxαAo\]≡∀xα\[\[λxαAo\]xα\]

for any wff Ao and variable xα. Since by λ-conversion we have

\[λxαAo\]xα≡Ao

equation can be written more simply as

Πo(oα)\[λxαAo\]≡∀xαAo

Thus, ∀xα can be defined in terms of Πo(oα), and λ is the only variable-binder that is needed.

### 1.2 Formulas

Before we state the definition of a "formula", a word of caution is in order. The reader may be accustomed to thinking of a formula as an expression which plays the role of an assertion in a formal language, and of a term as an expression which designates an object. Church's terminology is somewhat different, and provides a uniform way of discussing expressions of many different types. What we call *well-formed formula* of type α (wffα) below would in more standard terminology be called *term* of type α, and then only certain terms, namely those with type o, would be called formulas. Anyhow, in this entry we have decided to stay with Church's original terminology. Another remark concerns the use of some specific mathematical notation. In what follows, the entry distinguishes between the symbols ı, ι(α(oα)), and ι. The first is the symbol used for the type of individuals; the second is the symbol used for a logical constant (see [Section 1.2.1][2] below); the third is the symbol used as a variable-binding operator that represents the definite description "the" (see [Section 1.3.4][3]). The reader should not confuse them and check to see that the browser is displaying these symbols correctly.

#### 1.2.1 Definitions

*Type symbols* are defined inductively as follows:

-   ı is a type symbol (denoting the type of individuals). There may also be additional primitive type symbols which are used in formalizing disciplines where it is natural to have several sorts of individuals.
-   o is a type symbol (denoting the type of truth values).
-   If α and β are type symbols, then (αβ) is a type symbol (denoting the type of functions from elements of type β to elements of type α).

The *primitive symbols* are the following:

-   Improper symbols: \[, \], λ
-   For each type symbol α, a denumerable list of *variables* of type α:aα,bα,cα…
-   Logical constants: ∼(oo), ∨((oo)o), Π(o(oα)) and ι(α(oα)) (for each type symbol α). The types of these constants are indicated by their subscripts. The symbol ∼(oo) denotes negation, ∨((oo)o) denotes disjunction, and Π(o(oα)) is used in defining the universal quantifier as discussed above. ι(α(oα)) serves either as a description or selection operator as discussed in [Section 1.3.4][4] and [Section 1.3.5][5] below.
-   In addition, there may be other constants of various types, which will be called *nonlogical constants* or *parameters*. Each choice of parameters determines a particular formulation of the system of type theory. Parameters are typically used as names for particular entities in the discipline being formalized.

A *formula* is a finite sequence of primitive symbols. Certain formulas are called *well-formed formulas* (*wff*s). We write wffα as an abbreviation for *wff of type* α, and define this concept inductively as follows:

-   A primitive variable or constant of type α is a wffα.
-   If Aαβ and Bβ are wffs of the indicated types, then \[AαβBβ\] is a wffα.
-   If xβ is a variable of type β and Aα is a wff, then \[λxβAα\] is a wff(αβ).

Note, for example, that by (a) ∼(oo) is a wff(oo), so by (b) if Ao is a wffo, then \[∼(oo)Ao\] is a wffo. Usually, the latter wff will simply be written as ∼A. It is often convenient to avoid parentheses, brackets and type symbols, and use conventions for omitting them. For formulas we use the convention of association to the right, and we may write ∨((oo)o)AoBo instead of \[\[∨((oo)o)Ao\]Bo\]. For types the corresponding convention is association to the left, and we may write ooo instead of ((oo)o).

##### Abbreviations:

-   Ao∨Bo stands for ∨oooAoBo.
-   Ao⊃Bo stands for \[∼ooAo\]∨Bo.
-   ∀xαAo stands for Πo(oα)\[λxαAo\].
-   Other propositional connectives, and the existential quantifier, are defined in familiar ways. In particular, Ao≡Bostands for\[Ao⊃Bo\]∧\[Bo⊃Ao\]
-   Qoαα stands for λxαλyα∀foα\[foαxα⊃foαyα\].
-   Aα\=Bα stands for QoααAαBα.

The last definition is known as the Leibnizian definition of equality. It asserts that *x* and *y* are the same if *y* has every property that *x* has. Actually, Leibniz called his definition "the identity of indiscernibles" and gave it in the form of a biconditional: *x* and *y* are the same if *x* and *y* have exactly the same properties. It is not difficult to show that these two forms of the definition are logically equivalent.

#### 1.2.2 Examples

We now provide a few examples to illustrate how various assertions and concepts can be expressed in Church's type theory.

__Example 1__ To express the assertion that "Napoleon is charismatic" we introduce constants Charismaticoı and Napoleonı, with the types indicated by their subscripts and the obvious meanings, and assert the wff

CharismaticoıNapoleonı

If we wish to express the assertion that "Napoleon has all the properties of a great general", we might consider interpreting this to mean that "Napoleon has all the properties of some great general", but it seems more appropriate to interpret this statement as meaning that "Napoleon has all the properties which all great generals have". If the constant GreatGeneraloı is added to the formal language, this can be expressed by the wff

∀poı\[∀gı\[GreatGeneraloıgı⊃poıgı\]⊃poıNapoleonı\]

As an example of such a property, we note that the sentence "Napoleon's soldiers admire him" can be expressed in a similar way by the wff

∀xı\[Soldieroıxı∧CommanderOfııxı\=Napoleonı⊃AdmiresoııxıNapoleonı\]

By λ-conversion, this is equivalent to

\[λnı∀xı\[Soldieroıxı∧CommanderOfııxı\=nı⊃Admiresoııxını\]\]Napoleonı

This statement asserts that one of the properties which Napoleon has is that of being admired by his soldiers. The property itself is expressed by the wff

λnı∀xı\[Soldieroıxı∧CommanderOfııxı\=nı⊃Admiresoııxını\]

__Example 2__ We illustrate some potential applications of type theory with the following fable.

> A rich and somewhat eccentric lady named Sheila has an ostrich and a cheetah as pets, and she wishes to take them from her hotel to her remote and almost inaccessible farm. Various portions of the trip may involve using elevators, boxcars, airplanes, trucks, very small boats, donkey carts, suspension bridges, etc., and she and the pets will not always be together. She knows that she must not permit the ostrich and the cheetah to be together when she is not with them.

We consider how certain aspects of this problem can be formalized so that Sheila can use an automated reasoning system to help analyze the possibilities.

There will be a set *Moments* of instants or intervals of time during the trip. She will start the trip at the location Hotel and moment Start, and end it at the location Farm and moment Finish. Moments will have type τ, and locations will have type ϱ. A *state* will have type σ and will specify the location of Sheila, the ostrich, and the cheetah at a given moment. A *plan* will specify where the entities will be at each moment according to this plan. It will be a function from moments to states, and will have type (στ). The exact representation of states need not concern us, but there will be functions from states to locations called LocationOfSheila, LocationOfOstrich, and LocationOfCheetah which provide the indicated information. Thus, LocationOfSheilaϱσ\[pστtτ\] will be the location of Sheila according to plan pστ at moment tτ. The set Proposalso(στ) is the set of plans Sheila is considering.

We define a plan *p* to be acceptable if, according to that plan, the group starts at the hotel, finishes at the farm, and whenever the ostrich and the cheetah are together, Sheila is there too. Formally, we define Acceptableo(στ) as

λpστ\[LocationOfSheilaϱσ\[pστStartτ\]\=Hotelϱ∧LocationOfOstrichϱσ\[pστStartτ\]\=Hotelϱ∧LocationOfCheetahϱσ\[pστStartτ\]\=Hotelϱ∧LocationOfSheilaϱσ\[pστFinishτ\]\=Farmϱ∧LocationOfOstrichϱσ\[pστFinishτ\]\=Farmϱ∧LocationOfCheetahϱσ\[pστFinishτ\]\=Farmϱ∧∀tτ\[Momentsoτtτ⊃\[\[LocationOfOstrichϱσ\[pστtτ\]\=LocationOfCheetahϱσ\[pστtτ\]\]⊃\[LocationOfSheilaϱσ\[pστtτ\]\=LocationOfCheetahϱσ\[pστtτ\]\]\]\]\]

We can express the assertion that Sheila has a way to accomplish her objective with the formula

∃pστ\[Proposalso(στ)pστ∧Acceptableo(στ)pστ\]

__Example 3__ We now provide a mathematical example. Mathematical ideas can be expressed in type theory without introducing any new constants. An *iterate* of a function *f* from a set to itself is a function which applies *f* one or more times. For example, if g(x)\=f(f(f(x))), then *g* is an iterate of *f*. \[ITERATE+o(ıı)(ıı)fııgıı\] means that gıı is an iterate of fıı. ITERATE+o(ıı)(ıı) is defined (inductively) as

λfııλgıı∀po(ıı)\[po(ıı)fıı∧∀jıı\[po(ıı)jıı⊃po(ıı)\[λxıfıı\[jııxı\]\]\]⊃po(ıı)gıı\]

Thus, *g* is an iterate of *f* if *g* is in every set *p* of functions which contains *f* and which contains the function λxıfıı\[jııxı\] (i.e., *f* composed with *j*) whenever it contains *j*.

A *fixed point* of *f* is an element *y* such that f(y)\=y.

It can be proved that if some iterate of a function *f* has a unique fixed point, then *f* itself has a fixed point. This theorem can be expressed by the wff

∀fıı\[∃gıı\[ITERATE+o(ıı)(ıı)fııgıı∧∃xı\[gııxı\=xı∧∀zı\[gıızı\=zı⊃zı\=xı\]\]\]⊃∃yı\[fııyı\=yı\]\].

See Andrews et al. 1996, for a discussion of how this theorem, which is called THM15B, can be proved automatically.

__Example 4__ An example from philosophy is Gödel's variant of the ontological argument for the existence of God. This example illustrates two interesting aspects:

-   Church's type theory can be employed as a meta-logic to concisely embed expressive other logics such as the higher-order modal logic assumed by Gödel. By exploiting the possible world semantics of this target logic, its syntactic elements are defined in such a way that the infrastructure of the meta-logic are reused as much as possible. In this technique, called *shallow semantical embedding*, the modal operator ◻, for example, is simply identified with (taken as syntactic sugar for) the λ-formula
    
    λφoıλwı∀vı\[Roııwıvı⊃φoıvı\]
    
    where Roıı denotes the accessibility relation associated with ◻ and type ı is identified with possible worlds. Moreover, since ∀xα\[Aoαxα\] is shorthand in Church's type theory for Πo(oα)\[λxα\[Aoαxα\]\], the modal formula
    
    ◻∀xPx
    
    is represented as
    
    ◻Π′\[λxαλwı\[Poıαxαwı\]\]
    
    where Π′ stands for the λ-term
    
    λΦoıαλwı∀xα\[Φoıαxαwı\]
    
    and the ◻ gets resolved as described above. The above choice of Π′ realizes a possibilist notion of quantification. By introducing a binary "existence" predicate in the meta-logic and by utilizing this predicate as an additional guard in the definition of Π′ an actualist notion of quantification can be obtained. Expressing that an embedded modal formula φoı is globally valid is then captured by the formula ∀xı\[φoıxı\]. Local validity (and also actuality) can be modeled as φoını, where nı is a nominal (constant symbol in the meta-logic) denoting a particular possible world.
    
-   The above technique can be exploited for a natural encoding and automated assessment of Gödel's ontological argument in higher-order modal logic, which unfolds into formulas in Church's type theory such that higher-order theorem provers can be applied. Further details are presented in Section 6 (Logic and Philosophy) of the SEP entry on [automated reasoning][6] and also in [Section 5.2][7]; moreover, see Benzmüller & Woltzenlogel-Paleo 2014 and Benzmüller 2019.
    

__Example 5__ Suppose we omit the use of type symbols in the definitions of wffs. Then we can write the formula λx∼\[xx\], which we shall call R. It can be regarded as denoting the set of all sets *x* such that *x* is not in *x*. We may then consider the formula \[R R\], which expresses the assertion that R is in itself. We can clearly prove \[R R\]≡\[\[λx∼\[xx\]\]R\], so by λ-conversion we can derive \[R R\]≡∼\[R R\], which is a contradiction. This is Russell's paradox. Russell's discovery of this paradox (Russell 1903, 101-107) played a crucial role in the development of type theory. Of course, when type symbols are present, R is not well-formed, and the contradiction cannot be derived.

### 1.3 Axioms and Rules of Inference

#### 1.3.1 Rules of Inference

1.  *Alphabetic Change of Bound Variables* (α\-*conversion*). To replace any well-formed part λxβAα of a wff by λyβSub(yβ,xβ,Aα), provided that yβ does not occur in Aα and xβ is not bound in Aα.
2.  β-*contraction*. To replace any well-formed part \[λxαBβ\]Aα of a wff by Sub(Aα,xα,Bβ), provided that the bound variables of Bβ are distinct both from xα and from the free variables of Aα.
3.  β-*expansion*. To infer C from D if D can be inferred from C by a single application of β-contraction.
4.  *Substitution*. From F(oα)xα, to infer F(oα)Aα, provided that xα is not a free variable of F(oα).
5.  *Modus Ponens*. From \[Ao⊃Bo\] and Ao, to infer Bo.
6.  *Generalization*. From F(oα)xα to infer Πo(oα)F(oα), provided that xα is not a free variable of F(oα).

#### 1.3.2 Elementary Type Theory

We start by listing the axioms for what we shall call *elementary type theory*.

\[po∨po\]⊃popo⊃\[po∨qo\]\[po∨qo\]⊃\[qo∨po\]\[po⊃qo\]⊃\[\[ro∨po\]⊃\[ro∨qo\]\]Πo(oα)f(oα)⊃f(oα)xα∀xα\[po∨f(oα)xα\]⊃\[po∨Πo(oα)f(oα)\]

The theorems of elementary type theory are those theorems which can be derived, using the rules of inference, from Axioms (1)-(6α) (for all type symbols α). We shall sometimes refer to elementary type theory as T. It embodies the logic of propositional connectives, quantifiers, and λ-conversion in the context of type theory.

To illustrate the rules and axioms introduced above, we give a short and trivial proof in T. Following each wff of the proof, we indicate how it was inferred. (The proof is actually quite inefficient, since line 3 is not used later, and line 7 can be derived directly from line 5 without using line 6. The additional proof lines have been inserted to illustrate some relevant aspects. For the sake of readability, many brackets have been deleted from the formulas in this proof. The diligent reader should be able to restore them.)

∀xı\[po∨foıxı\]⊃\[po∨Πo(oı)foı\]Axiom 6ı\[λfoı\[∀xı\[po∨foıxı\]⊃\[po∨Πo(oı)foı\]\]\]foıβ-expansion: 1Πo(o(oı))\[λfoı\[∀xı\[po∨foıxı\]⊃\[po∨Πo(oı)foı\]\]\]Generalization: 2\[λfoı\[∀xı\[po∨foıxı\]⊃\[po∨Πo(oı)foı\]\]\]\[λxıroıxı\]Substitution: 2∀xı\[po∨\[λxıroıxı\]xı\]⊃\[po∨Πo(oı)\[λxıroıxı\]\]β-contraction: 4∀xı\[po∨\[λyıroıyı\]xı\]⊃\[po∨Πo(oı)\[λxıroıxı\]\]α-conversion: 5∀xı\[po∨roıxı\]⊃\[po∨Πo(oı)\[λxıroıxı\]\]β-contraction: 6

Note that (3) can be written as

∀foı\[∀xı\[po∨foıxı\]⊃\[po∨\[∀xıfoıxı\]\]\]

and (7) can be written as

∀xı\[po∨roıxı\]⊃\[po∨∀xıroıxı\]

We have thus derived a well known law of quantification theory. We illustrate one possible interpretation of the wff (7′) (which is closely related to Axiom 6) by considering a situation in which a rancher puts some horses in a corral and leaves for the night. Later, he cannot remember whether he closed the gate to the corral. While reflecting on the situation, he comes to a conclusion which can be expressed by (7′) if we take the horses to be the elements of type ı, interpret po to mean "the gate was closed", and interpret roı so that roıxı asserts "xı left the corral". With this interpretation, (7′) says

> If it is true of every horse that the gate was closed or that the horse left the corral, then the gate was closed or every horse left the corral.

To the axioms listed above we add the axioms below to obtain Church's type theory.

#### 1.3.3 Axioms of Extensionality

The axioms of boolean and functional extensionality are the following:

\[xo≡yo\]⊃xo\=yo∀xβ\[fαβxβ\=gαβxβ\]⊃fαβ\=gαβ

Church did not include Axiom 7o in his list of axioms in Church 1940, but he mentioned the possibility of including it. Henkin did include it in Henkin 1950.

#### 1.3.4 Descriptions

The expression

∃1xαAo

stands for

\[λpoα∃yα\[poαyα∧∀zα\[poαzα⊃zα\=yα\]\]\]\[λxαAo\]

For example,

∃1xαPoαxα

stands for

\[λpoα∃yα\[poαyα∧∀zα\[poαzα⊃zα\=yα\]\]\]\[λxαPoαxα\]

By λ-conversion, this is equivalent to

∃yα\[\[λxαPoαxα\]yα∧∀zα\[\[λxαPoαxα\]zα⊃zα\=yα\]\]

which reduces by λ-conversion to

∃yα\[Poαyα∧∀zα\[Poαzα⊃zα\=yα\]\]

This asserts that there is a unique element which has the property Poα. From this example we can see that in general, ∃1xαAo expresses the assertion that "there is a unique xα such that Ao".

When there is a unique such element xα, it is convenient to have the notation ιxαAo to represent the expression "the xα such that Ao". Russell showed in Whitehead & Russell 1927b how to provide contextual definitions for such notations in his formulation of type theory. In Church's type theory ιxαAo is defined as ια(oα)\[λxαAo\]. Thus, ι behaves like a variable-binding operator, but it is defined in terms of λ with the aid of the constant ια(oα). Thus, λ is still the only variable-binding operator that is needed.

Since Ao describes xα,ια(oα) is called a *description operator*. Associated with this notation is the following:

##### Axiom of Descriptions:

∃1xα\[poαxα\]⊃poα\[ια(oα)poα\]

This says that when the set poα has a unique member, then ια(oα)poα is in poα, and therefore is that unique member. Thus, this axiom asserts that ια(oα) maps one-element sets to their unique members.

If from certain hypotheses one can prove

∃1xαAo

then by using Axiom 8α one can derive

\[λxαAo\]\[ια(oα)\[λxαAo\]\]

which can also be written as

\[λxαAo\]\[ιxαAo\]

We illustrate the usefulness of the description operator with a small example. Suppose we have formalized the theory of real numbers, and our theory has constants 1ϱ and ×ϱϱϱ to represent the number 1 and the multiplication function, respectively. (Here ϱ is the type of real numbers.) To represent the multiplicative inverse function, we can define the wff INVϱϱ as

λzϱιxϱ\[×ϱϱϱzϱxϱ\=1ϱ\]

Of course, in traditional mathematical notation we would not write the type symbols, and we would write ×ϱϱϱzϱxϱ as z×x and write INVϱϱz as z−1. Thus z−1 is defined to be that *x* such that z×x\=1. When *Z* is provably not 0, we will be able to prove ∃1xϱ\[×ϱϱϱZ xϱ\=1ϱ\] and Z×Z−1\=1, but if we cannot establish that *Z* is not 0, nothing significant about Z−1 will be provable.

#### 1.3.5 Axiom of Choice

The Axiom of Choice can be expressed as follows in Church's type theory:

∃xαpoαxα⊃poα\[ια(oα)poα\]

(9α) says that the choice function ια(oα) chooses from every nonempty set poα an element, designated as ια(oα)poα, of that set. When this form of the Axiom of Choice is included in the list of axioms, ια(oα) is called a selection operator instead of a description operator, and ιxαAo means "an xα such that Ao" when there is some such element xα. These selection operators have the same meaning as Hilbert's ϵ\-operator (Hilbert 1928). However, we here provide one such operator for each type α.

It is natural to call ι a definite description operator in contexts where ιxαAo means "the xα such that Ao", and to call it an indefinite description operator in contexts where ιxαAo means "an xα such that Ao".

Clearly the Axiom of Choice implies the Axiom of Descriptions, but sometimes formulations of type theory are used which include the Axiom of Descriptions, but not the Axiom of Choice.

Another formulation of the Axiom of Choice simply asserts the existence of a choice function without explicitly naming it:

∃jα(oα)∀poα\[∃xαpoαxα⊃poα\[jα(oα)poα\]\]

Normally when one assumes the Axiom of Choice in type theory, one assumes it as an axiom schema, and asserts ACα for each type symbol α. A similar remark applies to the axioms for extensionality and description. However, modern proof systems for Church's type theory, which are, e.g., based on resolution, do in fact avoid the addition of such axiom schemata for reasons as further explained in [Sections 3.4][8] and [4][9] below. They work with more constrained, goal-directed proof rules instead.

Before proceeding, we need to introduce some terminology. Q0 is an alternative formulation of Church's type theory which will be described in [Section 1.4][10] and is equivalent to the system described above using Axioms (1)-(8). A type symbol is *propositional* if the only symbols which occur in it are o and parentheses.

Yasuhara (1975) defined the relation "≥" between types as the reflexive transitive closure of the minimal relation such that (αβ)≥α and (αβ)≥β. He established that:

-   If α≥β, then Q0⊢ ACα⊃ ACβ.
-   Given a set *S* of types, none of which is propositional, there is a model of Q0 in which ACα fails if and only if α≥β for some β in *S*.

The existence of a choice functions for "higher" types thus entails the existence of choice functions for "lower" types, the opposite is generally not the case though.

Büchi (1953) has shown that while the schemas expressing the Axiom of Choice and Zorn's Lemma can be derived from each other, the relationships between the particular types involved are complex.

#### 1.3.6 Axioms of Infinity

One can define the natural numbers (and therefore other basic mathematical structures such as the real and complex numbers) in type theory, but to prove that they have the required properties (such as Peano's Postulates), one needs an Axiom of Infinity. There are many viable possibilities for such an axiom, such as those discussed in Church 1940, section 57 of Church 1956, and section 60 of Andrews 2002.

### 1.4 A Formulation Based on Equality

In [Section 1.2.1][11], ∼(oo),∨((oo)o), and the Π(o(oα))'s were taken as primitive constants, and the wffs Qoαα which denote equality relations at type α were defined in terms of these. We now present an alternative formulation Q0 of Church's type theory in which there are primitive constants Qoαα denoting equality, and ∼(oo),∨((oo)o), and the Π(o(oα))'s are defined in terms of the Qoαα's.

Tarski (1923) noted that in the context of higher-order logic, one can define propositional connectives in terms of logical equivalence and quantifiers. Quine (1956) showed how both quantifiers and connectives can be defined in terms of equality and the abstraction operator λ in the context of Church's type theory. Henkin (1963) rediscovered these definitions, and developed a formulation of Church's type theory based on equality in which he restricted attention to propositional types. Andrews (1963) simplified the axioms for this system.

Q0 is based on these ideas, and can be shown to be equivalent to a formulation of Church's type theory using Axioms (1)-(8) of the preceding sections. This section thus provides an alternative to the material in the preceding Sections 1.2.1-1.3.4. More details about Q0 can be found in Andrews 2002.

#### 1.4.1 Definitions

-   Type symbols, improper symbols, and variables of Q0 are defined as in [Section 1.2.1][12].
-   The logical constants of Q0 are Q((oα)α) and ι(ı(oı)) (for each type symbol α).
-   Wffs of Q0 are defined as in [Section 1.2.1][13].

##### Abbreviations:

-   Aα\=Bα stands for QoααAαBα
-   Ao≡Bo stands for Qooo__AoB__o
-   To stands for Qooo\=Qooo
-   Fo stands for \[λxoTo\]\=\[λxoxo\]
-   Πo(oα) stands for Qo(oα)(oα)\[λxαTo\]
-   ∀xαA stands for Πo(oα)\[λxαA\]
-   ∧ooo stands for λxoλyo\[\[λgooo\[goooToTo\]\]\=\[λgooo\[goooxoyo\]\]\]
-   Ao∧Bo stands for ∧oooAoBo
-   ∼oo stands for QoooFo

To denotes truth. The meaning of Πo(oα) was discussed in [Section 1.1][14]. To see that this definition of Πo(oα) is appropriate, note that λxαT denotes the set of all elements of type α, and that Πo(oα)soα stands for Qo(oα)(oα)\[λxαT\]soα, respectively for \[λxαT\]\=soα. Therefore Πo(oα)soα asserts that soα is the set of all elements of type α, so soα contains all elements of type α. It can be seen that Fo can also be written as ∀xoxo, which asserts that everything is true. This is false, so Fo denotes falsehood. The expression λgooo\[goooxoyo\] can be used to represent the ordered pair ⟨xo,yo⟩, and the conjunction xo∧yo is true iff xo and yo are both true, i.e., iff ⟨To,To⟩\=⟨xo,yo⟩. Hence xo∧yo can be expressed by the formula \[λgooo\[goooToTo\]\]\=\[λgooo\[goooxoyo\]\].

Other propositional connectives and the existential quantifier are easily defined. By using ι(ı(oı)), one can define description operators ια(oα) for all types α.

#### 1.4.2 Axioms and Rules of Inference

Q0 has a single rule of inference.

__Rule R:__ From C and Aα\=Bα, to infer the result of replacing one occurrence of Aα in C by an occurrence of Bα, provided that the occurrence of Aα in C is not (an occurrence of a variable) immediately preceded by λ.

The *axioms for Q0* are the following:

\[gooTo∧gooFo\]\=∀xo\[gooxo\]\[xα\=yα\]⊃\[hoαxα\=hoαyα\]\[fαβ\=gαβ\]\=∀xβ\[fαβxβ\=gαβxβ\]\[λxαBβ\]Aα\=SubFree(Aα,xα,Bβ), provided Aα is free for x in Bβιı(oı)\[Qoııyı\]\=yı

## 2\. Semantics

It is natural to compare the semantics of type theory with the semantics of first-order logic, where the theorems are precisely the wffs which are valid in all interpretations. From an intuitive point of view, the natural interpretations of type theory are *standard models*, which are defined below. However, it is a consequence of Gödel's Incompleteness Theorem (Gödel 1931) that axioms (1)-(9) do not suffice to derive all wffs which are valid in all standard models, and there is no consistent recursively axiomatized extension of these axioms which suffices for this purpose. Nevertheless, experience shows that these axioms are sufficient for most purposes, and Leon Henkin considered the problem of clarifying in what sense they are complete. The definitions and theorem below constitute Henkin's (1950) solution to this problem, which is often referred to as *general semantics* or *Henkin semantics*.

A *frame* is a collection {Dα}α of nonempty domains (sets) Dα, one for each type symbol α, such that Do\={T,F} (where T represents truth and F represents falsehood), and Dαβ is some collection of functions mapping Dβ into Dα. The members of Dı are called *individuals*.

An *interpretation* ⟨{Dα}α,I⟩ consists of a frame and a function I which maps each constant *C* of type α to an appropriate element of Dα, which is called the *denotation of* *C*. The logical constants are given their standard denotations.

An *assignment* of values in the frame {Dα}α to variables is a function ϕ such that ϕxα∈Dα for each variable xα. (Notation: The assignment ϕ\[a/x\] maps variable *x* to value *a* and it is identical with ϕ for all other variable symbols different from *x*.)

An interpretation M\=⟨{Dα}α,I⟩ is a *general model* (aka *Henkin model*) iff there is a binary function V such that VϕAα∈Dα for each assignment ϕ and wff Aα, and the following conditions are satisfied for all assignments and all wffs:

-   Vϕxα\=ϕxα for each variable xα.
-   VϕAα\=IAα if Aα is a primitive constant.
-   Vϕ\[AαβBβ\]\=(VϕAαβ)(VϕBβ) (the value of a function VϕAαβ at the argument VϕBβ).
-   Vϕ\[λxαBβ\]\= that function from Dα into Dβ whose value for each argument z∈Dα is VψBβ, where ψ is that assignment such that ψxα\=z and ψyβ\=ϕyβ if yβ≠xα.

If an interpretation M is a general model, the function V is uniquely determined. VϕAα is called the *value* of Aα in M with respect to ϕ.

One can easily show that the following statements hold in all general models M for all assignments ϕ and all wffs A and B:

-   VϕTo\=T and VϕFo\=F
-   Vϕ\[∼ooAo\]\=T iff VϕAo\=F
-   Vϕ\[Ao∨Bo\]\=T iff VϕAo\=T or VϕBo\=T
-   Vϕ\[Ao∧Bo\]\=T iff VϕAo\=T and VϕBo\=T
-   Vϕ\[Ao⊃Bo\]\=T iff VϕAo\=F or VϕBo\=T
-   Vϕ\[Ao≡Bo\]\=T iff VϕAo\=VϕBo
-   Vϕ\[∀xαA\]\=T iff Vϕ\[a/x\]A\=T for all a∈Dα
-   Vϕ\[∃xαA\]\=T iff there exists an a∈Dα such that Vϕ\[a/x\]A\=T

The semantics of general models is thus as expected. However, there is a subtlety to note regarding the following condition for arbitrary types α:

-   \[equality\] Vϕ\[Aα\=Bα\]\=T iff VϕAα\=VϕBα

When the definitions of [Section 1.2.1][15] are employed, where equality has been defined in terms of Leibniz' principle, then this statement is not implied for all types α. It only holds if we additionally require that the domains Doα contain all the unit sets of objects of type α, or, alternatively, that the domains Doαα contain the respective identity relations on objects of type α (which entails the former). The need for this additional requirement, which is not included in the original work of Henkin (1950), has been demonstrated in Andrews 1972a.

When instead the alternative definitions of [Section 1.4][16] are employed, then this requirement is obviously met due to the presence of the logical constants Qoαα in the signature, which by definition denote the respective identity relations on the objects of type α and therefore trivially ensure their existence in each general model M. It is therefore a natural option to always assume primitive equality constants (for each type α) in a concrete choice of base system for Church's type theory, just as realized in Andrews' system Q0.

An interpretation ⟨{Dα}α,I⟩ is a *standard model* iff for all α and β,Dαβ is the set of all functions from Dβ into Dα. Clearly a standard model is a general model.

We say that a wff A is *valid* in a model M iff VϕA\=T for every assignment ϕ into M. A model for a set H of wffs is a model in which each wff of H is valid.

A wff A is *valid in the general* \[*standard*\] *sense* iff A is valid in every general \[standard\] model. Clearly a wff which is valid in the general sense is valid in the standard sense, but the converse of this statement is false.

__Completeness and Soundness Theorem (Henkin 1950):__ A wff is a theorem if and only if it is valid in the general sense.

Not all frames belong to interpretations, and not all interpretations are general models. In order to be a general model, an interpretation must have a frame satisfying certain closure conditions which are discussed further in Andrews 1972b. Basically, in a general model every wff must have a value with respect to each assignment.

A model is said to be *finite* iff its domain of individuals is finite. Every finite model for Q0 is standard (Andrews 2002, Theorem 5404), but every set of sentences of Q0 which has infinite models also has nonstandard models (Andrews2002, Theorem 5506).

An understanding of the distinction between standard and nonstandard models can clarify many phenomena. For example, it can be shown that there is a model M\=⟨{Dα}α,I⟩ in which Dı is infinite, and all the domains Dα are countable. Thus Dı and Doı are both countably infinite, so there must be a bijection *h* between them. However, Cantor's Theorem (which is provable in type theory and therefore valid in all models) says that Dı has more subsets than members. This seemingly paradoxical situation is called Skolem's Paradox. It can be resolved by looking carefully at Cantor's Theorem, i.e., ∼∃goıı∀foı∃jı\[goııjı\=foı\], and considering what it means in a model. The theorem says that there is no function g∈Doıı from Dı into Doı which has every set foı∈Doı in its range. The usual interpretation of the statement is that Doı is bigger (in cardinality) than Dı. However, what it actually means in this model is that *h* cannot be in Doıı. Of course, M must be nonstandard.

While the Axiom of Choice is presumably true in all standard models, there is a nonstandard model for Q0 in which ACı is false (Andrews 1972b). Thus, ACı is not provable in Q0.

Thus far, investigations of model theory for Church's type theory have been far less extensive than for first-order logic. Nevertheless, there has been some work on methods of constructing nonstandard models of type theory and models in which various forms of extensionality fail, models for theories with arbitrary (possibly incomplete) sets of logical constants, and on developing general methods of establishing completeness of various systems of axioms with respect to various classes of models. Relevant papers include Andrews 1971, 1972a,b, and Henkin 1975. Further related work can be found in Benzmüller et al. 2004, Brown 2004, 2007, and Muskens 2007.

### 3.1 Lambda-Conversion

The first three rules of inference in [Section 1.3.1][17] are called rules of λ-*conversion*. If D and E are wffs, we write D conv E to indicate that D can be converted to E by applications of these rules. This is an equivalence relation between wffs. A wff D is in β-*normal form* iff it has no well-formed parts of the form \[\[λxαBβ\]Aα\]. Every wff is convertible to one in β-normal form. Indeed, every sequence of contractions (applications of rule 2, combined as necessary with alphabetic changes of bound variables) of a wff is finite; obviously, if such a sequence cannot be extended, it terminates with a wff in β-normal form. (This is called the strong normalization theorem.) By the Church-Rosser Theorem, this wff in β-normal form is unique modulo alphabetic changes of bound variables. For each wff A we denote by ↓A the first wff (in some enumeration) in β-normal form such that A conv ↓A. Then D conv E if and only if ↓D\=↓E.

By using the Axiom of Extensionality one can obtain the following derived rule of inference:

> η\-*Contraction*. Replace a well-formed part \[λyβ\[Bαβyβ\]\] of a wff by Bαβ, provided yβ does not occur free in Bαβ.

This rule and its inverse (which is called η\-*Expansion*) are sometimes used as additional rules of λ-conversion. See Church 1941, Stenlund 1972, Barendregt 1984, and Barendregt et al. 2013 for more information about λ-conversion.

It is worth mentioning (again) that λ-abstraction replaces the need for comprehension axioms in Church's type theory.

### 3.2 Higher-Order Unification

The challenges in higher-order unification are outlined very briefly. More details on the topic are given in Dowek 2001; its utilization in higher-order theorem provers is also discussed in Benzmüller & Miller 2014.

__Definition.__ A *higher-order unifier* for a pair ⟨A,B⟩ of wffs is a substitution θ for free occurrences of variables such that θA and θB have the same β-normal form. A higher-order unifier for a set of pairs of wffs is a unifier for each of the pairs in the set.

Higher-order unification differs from first-order unification (Baader & Snyder 2001) in a number of important respects. In particular:

1.  Even when a unifier for a pair of wffs exists, there may be no most general unifier (Gould 1966).
2.  Higher-order unification is undecidable (Huet 1973b), even in the "second-order" case (Goldfarb 1981).

However, an algorithm has been devised (Huet 1975, Jensen & Pietrzykowski 1976), called *pre-unification*, which will find a unifier for a set of pairs of wffs if one exists. The pre-unifiers computed by Huet's procedure are substitutions that can reduce the original unification problem to one involving only so called *flex-flex* unification pairs. Flex-flex pairs have variable head symbols in both terms to be unified and they are known to always have a solution. The concrete computation of these solutions can thus be postponed or omitted. Pre-unification is utilized in all the resolution based theorem provers mentioned in [Section 4][18].

*Pattern unification* refers a small subset of unification problems, first studied by Miller 1991, whose identification has been important for the construction of practical systems. In a pattern unification problem every occurrence of an existentially quantified variable is applied to a list of arguments that are all distinct variables bound by either a λ-binder or a universal quantifier in the scope of the existential quantifier. Thus, existentially quantified variables cannot be applied to general terms but a very restricted set of bound variables. Pattern unification, like first-order unification, is decidable and most general unifiers exist for solvable problems. This is why pattern unification is preferably employed (when applicable) in some state-of-the-art theorem provers for Church's type theory.

### 3.3 A Unifying Principle

The *Unifying Principle* was introduced in Smullyan 1963 (see also Smullyan 1995) as a tool for deriving a number of basic metatheorems about first-order logic in a uniform way. The principle was extended to elementary type theory by Andrews (1971) and to extensional type theory, that is, Henkin's general semantics without description or choice, by Benzmüller, Brown and Kohlhase (2004). We outline these extensions in some more detail below.

#### 3.3.1 Elementary Type Theory

The Unifying Principle was extended to elementary type theory (the system T of [Section 1.3.2][19]) in Andrews 1971 by applying ideas in Takahashi 1967. This Unifying Principle for T has been used to establish cut-elimination for T in Andrews 1971 and completeness proofs for various systems of type theory in Huet 1973a, Kohlhase 1995, and Miller 1983. We first give a definition and then state the principle.

__Definition.__ A property Γ of finite sets of wffso is an *abstract consistency property* iff for all finite sets S of wffso, the following properties hold (for all wffs __A, B__):

1.  If Γ(S), then there is no atom A such that A∈S and \[∼A\]∈S.
2.  If Γ(S∪{A}), then Γ(S∪↓A}).
3.  If Γ(S∪{∼∼A}), then Γ(S∪{A}).
4.  If Γ(S∪{A∨B}), then Γ(S∪{A}) or Γ(S∪{B}).
5.  If Γ(S∪{∼\[A∨B\]}), then Γ(S∪{∼A,∼B}).
6.  If Γ(S∪{Πo(oα)Aoα}), then Γ(S∪{Πo(oα)Aoα,AoαBα}) for each wff Bα.
7.  If Γ(S∪{∼Πo(oα)Aoα}), then Γ(S∪{∼Aoαcα}), for any variable or parameter cα which does not occur free in Aoα or any wff in S.

Note that *consistency* is an abstract consistency property.

__Unifying Principle for T.__ If Γ is an abstract consistency property and Γ(S), then S is consistent in T.

Here is a typical application of the Unifying Principle. Suppose there is a procedure M which can be used to refute sets of sentences, and we wish to show it is complete for T. For any set of sentences, let Γ(S) mean that S is not refutable by M, and show that Γ is an abstract consistency property. Now suppose that A is a theorem of T. Then {∼A} is inconsistent in T, so by the Unifying Principle not Γ({∼A}), so {∼A} is refutable by M.

#### 3.3.2 Extensional Type Theory

Extensions of the above Unifying principle towards Church's type theory with general semantics were studied since the mid nineties. A primary motivation was to support (refutational) completeness investigations for the proof calculi underlying the emerging higher-order automated theorem provers (see [Section 4][20] below). The initial interest was on a fragment of Church's type theory, called *extensional type theory*, that includes the extensionality axioms, but excludes ι(α(oα)) and the axioms for it (description and choice were largely neglected in the automated theorem provers at the time). Analogous to before, a distinction has been made between extensional type theory with *defined equality* (as in [Section 1.2.1][21], where equality is defined via Leibniz' principle) and extensional type theory with *primitive equality* (e.g., system Q0 as in [Section 1.4][22], or, alternatively, a system based on logical constants ∼(oo),∨((oo)o), and the Π(o(oα))'s as in [Section 1.2.1][23], but with additional primitive logical constants \=oαα added).

A first attempt towards a Unifying Principle for extensional type theory with primitive equality is presented in Kohlhase 1993. The conditions given there, which are still incomplete\[[1][24]\], were subsequently modified and complemented as follows:

-   To obtain a Unifying Principle for extensional type theory with defined equality, Benzmüller & Kohlhase 1997 added the following conditions for boolean extensionality, functional extensionality and saturation to the above conditions 1.-7. for T (their presentation has been adapted here; for technical reasons, they also employ a slightly stronger variant for condition 2. based on β-conversion rather than β-normalization):
    
    8.  If Γ(S∪{Ao\=Bo}), then Γ(S∪{Ao,Bo}) or Γ(S∪{∼Ao,∼Bo})
    9.  If Γ(S∪{Aαβ\=Bαβ}), then Γ(S∪{Aαβcβ\=Bαβcβ}) for any parameter cβ which does not occur free in S.
    10.  Γ(S∪{Ao}) or Γ(S∪{∼Ao})
    
    The saturation condition 10. was required to properly establish the principle. However, since this condition is related to the proof theoretic notion of cut-elimination, it limits the utility of the principle in completeness proofs for machine-oriented calculi. The principle was nevertheless used in Benzmüller & Kohlhase 1998a and Benzmüller 1999a,b to obtain a completeness proof for a system of extensional higher-order resolution. The principle was also applied in Kohlhase 1998 to study completeness for a related extensional higher-order tableau calculus,\[[2][25]\] in which the extensionality rules for Leibniz equality were adapted from Benzmüller & Kohlhase 1998a, respectively Benzmüller 1997.
    
-   Different options for achieving a Unifying Principle for extensional type theory with primitive equality are presented in Benzmüller 1999a (in this work primitive logical constants \=oαα were used in addition to ∼(oo),∨((oo)o), and the Π(o(oα))'s; such a redundant choice of logical constants is not rare in higher-order theorem provers). One option is to introduce a reflexivity and substitutivity condition. An alternative is to combine a reflexivity condition with a condition connecting primitive with defined equality, so that the substitutivity condition follows. Note that introducing a defined notion of equality based on the Leibniz principle is, of course, still possible in this context (defined equality is denoted in the remainder of this section by ≐ to properly distinguish it from primitive equality \=):
    
    8.  Not Γ(S∪{∼\[Aα\=Aα\]})
    9.  If Γ(S∪{Aα\=Aα}), then Γ(S∪{Aα≐Aα})
    10.  Γ(S∪{Ao}) or Γ(S∪{∼Ao})
    
    The saturation condition 10. still has to be added independent of which option is considered. The principle was applied in Benzmüller 1999a,b to prove completeness for the extensional higher-order RUE-resolution\[[3][26]\] calculus underlying the higher-order automated theorem prover LEO and its successor LEO-II.
    
-   In Benzmüller et al. 2004 the principle is presented in a very general way which allows for various possibilities concerning the treatment of extensionality and equality in the range between elementary type theory and extensional type theory. The principle is applied to obtain completeness proofs for an associated range of natural deduction calculi. The saturation condition is still used in this work.
    
-   Based on insights from Brown's (2004, 2007) thesis, a solution for replacing the undesirable saturation condition by two weaker conditions is presented in Benzmüller, Brown, and Kohlhase 2009; this work also further studies the relation between saturation and cut-elimination. The two weaker conditions, termed mating and decomposition, are easier to demonstrate than saturation in completeness proofs for machine-oriented calculi. They are (omitting some type information in the second one and abusing notation):
    
    1.  If Γ(S∪{∼Ao,Bo}) for atoms Ao and Bo, then Γ(S∪{∼\[Ao≐Bo\]})
    2.  If Γ(S∪{∼\[h¯Anαn≐h¯Bnαn\]}), where head symbol hβ¯αn is a parameter, then there is an i (1≤i≤n) such that Γ(S∪{∼\[Aiαi≐Biαi\]}).
    
    The modified principle is applied in Benzmüller et al. 2009 to show completeness for a sequent calculus for extensional type theory with defined equality.
    
-   A further extended Unifying Principle for extensional type theory with primitive equality is presented and used in Backes & Brown 2011 to prove the completeness of a tableau calculus for type theory which incorporates the axiom of choice.
    
-   A closely related and further simplified principle has also been presented and studied in Steen 2018, where it was applied for showing completeness of the paramodulation calculus (Steen 2018) that is underlying the theorem prover Leo-III (Steen & Benzmüller 2018).
    

### 3.4 Cut-Elimination and Cut-Simulation

Cut-elimination proofs (see also the SEP entry on [proof theory][27]) for Church's type theory, which are often closely related to such proofs (Takahashi 1967, 1970; Prawitz 1968; Mints 1999) for other formulations of type theory, may be found in Andrews 1971, Dowek & Werner 2003, and Brown 2004. In Benzmüller et al. 2009 it is shown how certain wffso, such as axioms of extensionality, descriptions, choice (see [Sections 1.3.3][28] to [1.3.5][29]), and induction, can be used to justify cuts in cut-free sequent calculi for elementary type theory. Moreover, the notions of *cut-simulation* and *cut-strong axioms* are introduced in this work, and the need for omitting defined equality and for eliminating *cut-strong axioms* such as extensionality, description, choice and induction in machine-oriented calculi (e.g., by replacing them with more constrained, goal-directed rules) in order to reduce *cut-simulation* effects are discussed as a major challenge for higher-order automated theorem proving. In other words, including cut-strong axioms in a machine-oriented proof calculus for Church's type theory is essentially as bad as including a cut rule, since the cut rule can be mimicked by them.

### 3.5 Expansion Proofs

An *expansion proof* is a generalization of the notion of a Herbrand expansion of a theorem of first-order logic; it provides a very elegant, concise, and nonredundant representation of the relationship between the theorem and a tautology which can be obtained from it by appropriate instantiations of quantifiers and which underlies various proofs of the theorem. Miller (1987) proved that a wff A is a theorem of elementary type theory if and only if A has an expansion proof.

In Brown 2004 and 2007, this concept is generalized to that of an *extensional expansion proof* to obtain an analogous theorem involving type theory with extensionality.

### 3.6 The Decision Problem

Since type theory includes first-order logic, it is no surprise that most systems of type theory are undecidable. However, one may look for solvable special cases of the decision problem. For example, the system Q10 obtained by adding to Q0 the additional axiom ∀xı∀yı\[xı\=yı\] is decidable.

Although the system T of elementary type theory is analogous to first-order logic in certain respects, it is a considerably more complex language, and special cases of the decision problem for provability in T seem rather intractable for the most part. Information about some very special cases of this decision problem may be found in Andrews 1974, and we now summarize this.

A wff of the form ∃x1…∃xn\[A\=B\] is a theorem of T iff there is a substitution θ such that θA conv θB. In particular, ⊢A\=B iff A conv B, which solves the decision problem for wffs of the form \[A\=B\]. Naturally, the circumstance that only trivial equality formulas are provable in T changes drastically when axioms of extensionality are added to T. ⊢∃xβ\[A\=B\] iff there is a wff Eβ such that ⊢\[λxβ\[A\=B\]\]Eβ, but the decision problem for the class of wffs of the form ∃xβ\[A\=B\] is unsolvable.

A wff of the form ∀x1…∀xnC, where C is quantifier-free, is provable in T iff ↓C is tautologous. On the other hand, the decision problem for wffs of the form ∃zC, where C is quantifier-free, is unsolvable. (By contrast, the corresponding decision problem in first-order logic with function symbols is known to be solvable (Maslov 1967).) Since irrelevant or vacuous quantifiers can always be introduced, this shows that the only solvable classes of wffs of T in prenex normal form defined solely by the structure of the prefix are those in which no existential quantifiers occur.

## 4\. Automation

### 4.1 Machine-Oriented Proof Calculi

The development, respectively improvement, of machine-oriented proof calculi for Church's type theory is still a challenge research topic. Compared, e.g., to the theoretical and practical maturity achieved in first-order automated theorem proving, the area is still in its infancy. Obviously, the challenges are also much bigger than in first-order logic. The practically way more expressive nature of the term-language of Church's type theory causes a larger, bushier and more difficult to traverse proof search space than in first-order logic. Moreover, remember that unification, which constitutes a very important control and filter mechanism in first-order theorem proving, is undecidable (in general) in type theory; see [Section 3.2][30]. On the positive side, however, there is a chance to find significantly shorter proofs than in first-order logic. This is well illustrated with a small, concrete example in Boolos 1987. Clearly, much further progress is needed to further leverage the practical relevance of existing calculi for Church's type theory and their implementations (see [Section 4.3][31]). The challenges include

-   an appropriate handling of the impredicative nature of Church's type theory (some form of blind guessing cannot generally be avoided in a complete proof procedure, but must be intelligently guided),
-   the elimination/reduction of cut-simulation effects (see [Section 3.4][32]) caused by defined equality or cut-strong axioms (e.g., extensionality, description, choice, induction) in the search space,
-   the general undecidability of unification, rendering it a rather problematic filter mechanism for controlling proof search,
-   the invention of suitable heuristics for traversing the search space,
-   the provision of suitable term-orderings and their effective exploitation in term rewriting procedures,
-   and the development of efficient data structures in combination with strong technical support for essential operations such λ-conversion, substitution and rewriting.

It is planned that future editions of this article further elaborate on machine-oriented proof calculi for Church's type theory. For the time being, however, we provide only a selection of historical and more recent references for the interested reader (see also [Section 5][33] below):

-   __Sequent calculi:__ Schütte 1960; Takahashi 1970; Takeuti 1987; Mints 1999; Brown 2004, 2007; Benzmüller et al. 2009.
-   __Mating method:__ Andrews 1981; Bibel 1981; Bishop 1999.
-   __Resolution calculi:__ Andrews 1971; Huet 1973a; Jensen & Pietrzykowski 1976; Benzmüller 1997, 1999a; Benzmüller & Kohlhase 1998a.
-   __Tableau method:__ Kohlhase\[[4][34]\] 1995, 1998; Brown & Smolka 2010; Backes & Brown 2011.
-   __Paramodulation calculi:__ Benzmüller 1999a,b; Steen 2018.

### 4.2 Early Proof Assistants

Early computer systems for proving theorems of Church's type theory (or extensions of it) include HOL (Gordon 1988; Gordon & Melham 1993), TPS (Andrews et al. 1996; Andrews & Brown 2006), Isabelle (Paulson 1988, 1990), PVS (Owre et al. 1996; Shankar 2001), IMPS (Farmer et al. 1993), HOL Light (Harrison 1996), OMEGA (Siekmann et al. 2006), and λClam (Richardson et al. 1998). See [Other Internet References][35] section below for links to further info on these and other provers mentioned later.

The majority of the above systems focused (at least initially) on interactive proof and provided rather limited support for additional proof automation. Full proof automation was pioneered, in particular, by the TPS project. Progress was made in the nineties, when other projects started similar activities, respectively, enforced theirs. However, the resource investments and achievements were lacking much behind those seen in first-order theorem proving. Significant progress was fostered only later, in particular, through the development of a commonly supported syntax for Church's type theory, called TPTP THF (Sutcliffe & Benzmüller 2010), and the inclusion, from 2009 onwards, of a TPTP THF division in the yearly CASC competitions (kind of world championships for automated theorem proving; see Sutcliffe 2016 for further details).

### 4.3 Automated Theorem Provers

An selection of theorem provers for Church's type theory is presented. The focus is on systems that have successfully participated in TPTP THF CASC competitions in the past. The latest editions of most mentioned systems can be accessed online via the SystemOnTPTP infrastructure (Sutcliffe 2017). Nearly all mentioned systems produce verifiable proof certificates in the TPTP TSTP syntax. Further details on the automation of Church's type theory are given in Benzmüller & Miller 2014.

The TPS prover (Andrews et al. 1996, Andrews & Brown 2006) can be used to prove theorems of elementary type theory or extensional type theory automatically, interactively, or semi-automatically. When searching for a proof automatically, TPS first searches for an expansion proof (Miller 1987) or an extensional expansion proof (Brown 2004, 2007) of the theorem. Part of this process involves searching for acceptable matings (Andrews 1981, Bishop 1999). The behavior of TPS is controlled by sets of flags, also called modes. A simple scheduling mechanism is employed in the latest versions of TPS to sequentially run a about fifty modes for a limited amount of time. TPS was the winner of the first THF CASC competition in 2009.

The LEO-II prover (Benzmüller et al. 2015) is the successor of LEO (Benzmüller & Kohlhase 1998b, which was hardwired with the OMEGA proof assistant (LEO stands for Logical Engine of OMEGA). The provers are based on the RUE-resolution calculi developed in Benzmüller 1999a,b. LEO was the first prover to implement calculus rules for extensionality to avoid cut-simulation effects. LEO-II inherits and adapts them, and provides additional calculus rules for description and choice. The prover, which internally collaborates with first-order provers (preferably E) and SAT solvers, has pioneered cooperative higher-order/first-order proof automation. Since the prover is often too weak to find a refutation among the steadily growing set of clauses on its own, some of the clauses in LEO-II's search space attain a special status: they are first-order clauses modulo the application of an appropriate transformation function. Therefore, LEO-II progressively launches time limited calls with these clauses to a first-order theorem prover, and when the first-order prover reports a refutation, LEO-II also terminates. Parts of these ideas were already implemented in the predecessor LEO. Communication between LEO-II and the cooperating first-order theorem provers uses the TPTP language and standards. LEO-II was the winner of the second THF CASC competition in 2010.

The Satallax prover (Brown 2012) is based on a complete ground tableau calculus for Church's type theory with choice (Backes & Brown 2011). An initial tableau branch is formed from the assumptions of a conjecture and negation of its conclusion. From that point on, Satallax tries to determine unsatisfiability or satisfiability of this branch. Satallax progressively generates higher-order formulas and corresponding propositional clauses. Satallax uses the SAT solver MiniSat as an engine to test the current set of propositional clauses for unsatisfiability. If the clauses are unsatisfiable, the original branch is unsatisfiable. Satallax provides calculus rules for extensionality, description and choice. If there are no quantifiers at function types, the generation of higher-order formulas and corresponding clauses may terminate. In that case, if MiniSat reports the final set of clauses as satisfiable, then the original set of higher-order formulas is satisfiable (by a standard model in which all types are interpreted as finite sets). Satallax was the winner of the THF CASC competition in 2011 and since 2013.

The Isabelle/HOL system (Nipkow, Wenzel, & Paulson 2002) has originally been designed as an interactive prover. However, in order to ease user interaction several automatic proof tactics have been added over the years. By appropriately scheduling a subset of these proof tactics, some of which are quite powerful, Isabelle/HOL has since about 2011 been turned also into an automatic theorem prover for TPTP THF (and other TPTP syntax formats), that can be run from a command shell like other provers. The most powerful proof tactics that are scheduled by Isabelle/HOL include the Sledgehammer tool (Blanchette et al. 2013), which invokes a sequence of external first-order and higher-order theorem provers, the model finder *Nitpick* (Blanchette & Nipkow 2010), the equational reasoner *simp*, the untyped tableau prover *blast*, the simplifier and classical reasoners *auto*, *force*, and *fast*, and the best-first search procedure *best*. In contrast to all other automated theorem provers mentioned above, the TPTP incarnation of Isabelle/HOL does not yet output proof certificates. Isabelle/HOL was the winner of the THF CASC competition in 2012.

The agsyHOL prover is based on a generic lazy narrowing proof search algorithm. Backtracking is employed and a comparably small search state is maintained. The prover outputs proof terms in sequent style which can be verified in the Agda system.

coqATP implements (the non-inductive) part of the calculus of constructions (Bertot & Castéran 2004). The system outputs proof terms which are accepted as proofs (after the addition of a few definitions) by the Coq proof assistant. The prover employs axioms for functional extensionality, choice, and excluded middle. Boolean extensionality is not supported. In addition to axioms, a small library of basic lemmas is employed.

The Leo-III prover implements a paramodulation calculus for Church's type theory (Steen 2018). The system, which is a descendant of LEO and LEO-II, provides calculus rules for extensionality, description and choice. The system has put an emphasis on the implementation of an efficient set of underlying data structures, on simplification routines and on heuristic rewriting. In the tradition of its predecessors, Leo-III cooperates with first-order reasoning tools using translations to many-sorted first-order logic. The prover accepts every common TPTP syntax dialect and is thus very widely applicable. Recently, the prover has also been extended to natively supports almost every normal higher-order modal logic.

Zipperposition (Bentkamp et al. 2018) is new and inspiring higher-order theorem prover which, at the current state of development, is still working for a comparably weak fragment of Church's type theory, called *lambda-free higher-order logic* (a comprehension-free higher-order logic, which is nevertheless supporting λ-notation). The system, which is based on superposition calculi, is developed bottom up, and it is progressively extended towards stronger fragments of Church's type theory and to support other relevant extensions such datatypes, recursive functions and arithmetic.

Various so called *proof hammers*, in the spirit of Isabelle's Sledgehammer tool, have recently been developed and integrated with modern proof assistants. Prominent examples include HOL(y)Hammer (Kaliszyk & Urban 2015) for HOL Light and a similar hammer (Czaika & Kaliszyk 2018) for the proof assistant Coq.

### 4.4 (Counter-)Model Finding

Support for finding finite models or countermodels for formulas of Church's type theory was implemented already in the tableau-based prover HOT (Konrad 1998). Restricted (counter-)model finding capabilities are also implemented in the provers Satallax, LEO-II and LEO-III. The most advanced (finite) model finding support is currently realized in the systems Nitpick, Nunchaku and Refute. These tools have been integrated with the Isabelle proof assistant. Nitpick is also available as a standalone tool that accepts TPTP THF syntax. The systems are particularly valuable for exposing errors and misconceptions in problem encodings, and for revealing bugs in the THF theorem provers.

## 5\. Applications

### 5.1 Semantics of Natural Language

Church's type theory plays an important role in the study of the formal semantics of natural language. Pioneering work on this was done by Richard Montague. See his papers "English as a formal language", "Universal grammar", and "The proper treatment of quantification in ordinary English", which are reprinted in Montague 1974. A crucial component of Montague's analysis of natural language is the definition of a tensed intensional logic (Montague 1974: 256), which is an enhancement of Church's type theory. Montague Grammar had a huge impact, and has since been developed in many further directions, not least in Typelogical/Categorical Grammar. Further related work on intensional and higher-order modal logic is presented in Gallin 1975 and Muskens 2006.

### 5.2 Mathematics and Computer Science

Proof assistants based on Church's Type Theory, including Isabelle/HOL, HOL Light, HOL4, and PVS, have been successfully utilized in a broad range of application in computer science and mathematics.

Applications in computer science include the verification of hardware, software and security protocols. A prominent example is the L4.verified project in which Isabelle/HOL was used to formally prove that the seL4 operating system kernel implements an abstract, mathematical model specifying of what the kernel is supposed to do (Klein et al. 2018).

In mathematics proof assistants have been applied for the development of libraries mathematical theories and the verification of challenge theorems. An early example is the mathematical library that was developed since the eighties in the TPS project. A exemplary list of theorems that were proved automatically with TPS is given in Andrews et al. 1996. A very prominent recent example is Hales Flyspeck in which HOL Light was employed to develop a formal proof for Kepler's conjecture (Hales et al. 2017). An example that strongly exploits automation support in Isabelle/HOL with Sledgehammer and Nitpick is presented in Benzmüller & Scott forthcoming. In this work different axiom systems for category theory were explored and compared.

A solid overview on past and ongoing formalization projects can be obtained by consulting respective sources such as Isabelle's Archive of Formal Proofs, the Journal of Formalized Reasoning, or the THF entries in Sutcliffe's TPTP problem library.

Further improving proof automation within these proof assistants-based on proof hammering tools or on other forms of prover integration-is relevant for minimizing interaction effort in future applications.

### 5.3 Computational Metaphysics and Artificial Intelligence

Church's type theory is a Classical logic, but topical applications in philosophy and artificial intelligence often require expressive non-classical logics. In order to support such applications with reasoning tools for Church's type theory, the shallow semantical embedding technique (see also [Section 1.2.2][36]) has been developed that generalizes and extends the ideas underlying the well known standard translation of modal logics to first-order logic. The technique was applied for the assessment of modern variants of the ontological argument with a range of higher-order theorem provers, including LEO-II, Satallax, Nitpick and Isabelle/HOL. In the course of experiments, LEO-II detected an inconsistency in the premises of Gödel's argument, while the provers succeeded in automatically proving Scott's emendation of it and to confirm the consistency of the emended premises. More details on this work are presented in a related SEP entry on [automated reasoning][37] (see Section 4.6 on Logic and Philosophy). The semantical embedding approach has been adapted and further extended for a range of other non-classical logics and related applications. In philosophy this includes the encoding and formal assessment of ambitious ethical and metaphysical theories, and in artificial intelligence this includes the mechanization of deontic logics and normative reasoning as well as an automatic proof of the [muddy children puzzle (see Appendix B of dynamic epistemic logic][38]), which is a famous puzzle in epistemic reasoning, respectively dynamic epistemic reasoning.

[1]: https://plato.stanford.edu/entries/type-theory/
[2]: https://plato.stanford.edu/entries/type-theory-church/#Defi
[3]: https://plato.stanford.edu/entries/type-theory-church/#Desc
[4]: https://plato.stanford.edu/entries/type-theory-church/#Desc
[5]: https://plato.stanford.edu/entries/type-theory-church/#AxioChoi
[6]: https://plato.stanford.edu/entries/reasoning-automated/
[7]: https://plato.stanford.edu/entries/type-theory-church/#MathCompScie
[8]: https://plato.stanford.edu/entries/type-theory-church/#CutElimCutSimu
[9]: https://plato.stanford.edu/entries/type-theory-church/#Auto
[10]: https://plato.stanford.edu/entries/type-theory-church/#FormBaseEqua
[11]: https://plato.stanford.edu/entries/type-theory-church/#Defi
[12]: https://plato.stanford.edu/entries/type-theory-church/#Defi
[13]: https://plato.stanford.edu/entries/type-theory-church/#Defi
[14]: https://plato.stanford.edu/entries/type-theory-church/#FundIdea
[15]: https://plato.stanford.edu/entries/type-theory-church/#Defi
[16]: https://plato.stanford.edu/entries/type-theory-church/#FormBaseEqua
[17]: https://plato.stanford.edu/entries/type-theory-church/#RuleInfe
[18]: https://plato.stanford.edu/entries/type-theory-church/#Auto
[19]: https://plato.stanford.edu/entries/type-theory-church/#ElemTypeTheo
[20]: https://plato.stanford.edu/entries/type-theory-church/#Auto
[21]: https://plato.stanford.edu/entries/type-theory-church/#Defi
[22]: https://plato.stanford.edu/entries/type-theory-church/#FormBaseEqua
[23]: https://plato.stanford.edu/entries/type-theory-church/#Defi
[24]: https://plato.stanford.edu/entries/type-theory-church/notes.html#note-1
[25]: https://plato.stanford.edu/entries/type-theory-church/notes.html#note-2
[26]: https://plato.stanford.edu/entries/type-theory-church/notes.html#note-3
[27]: https://plato.stanford.edu/entries/proof-theory/
[28]: https://plato.stanford.edu/entries/type-theory-church/#AxioExte
[29]: https://plato.stanford.edu/entries/type-theory-church/#AxioChoi
[30]: https://plato.stanford.edu/entries/type-theory-church/#HighOrdeUnif
[31]: https://plato.stanford.edu/entries/type-theory-church/#AutoTheoProv
[32]: https://plato.stanford.edu/entries/type-theory-church/#CutElimCutSimu
[33]: https://plato.stanford.edu/entries/type-theory-church/#Appl
[34]: https://plato.stanford.edu/entries/type-theory-church/notes.html#note-4
[35]: https://plato.stanford.edu/entries/type-theory-church/#Oth
[36]: https://plato.stanford.edu/entries/type-theory-church/#Exam
[37]: https://plato.stanford.edu/entries/reasoning-automated/
[38]: https://plato.stanford.edu/entries/dynamic-epistemic/appendix-B-solutions.html
