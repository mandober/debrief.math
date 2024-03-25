A First Course in: Mathematical Logic and Set Theory
Michael O'Leary, 2016

# First-Order Logic

TOC
- Language
  - Predicate
  - Alphabet
  - Term
  - Formula
- Substitution
  - of terms
  - free variables
  - of formulas
- Syntax
  - Quantifier negation
  - Proofs with universal formulas
  - Proofs with existential formulas
- Proof Methods
  - Universal Proofs
  - Existential Proofs
  - Multiple Quantifiers
  - Counterexamples
  - Direct Proof
  - Existence and Uniqueness
  - Indirect Proof
  - Biconditional Proof
  - Proof of Disunctions
  - Proof by Cases

## Language

The sentences of mathematics involve ideas that cannot be fully represented in propositional logic. These sentences are able to characterize objects, such as numbers or geometric figures, by describing properties of the objects, such as being even or being a rectangle, and the relationships between them, such as equality or congruence. Since propositional logic is not well suited to handle these ideas, we extend propositional logic to a richer system.

### Predicates

Consider the sentence "it is a real number". This sentence has no truth value because the meaning of the word "it" is undetermined. The word "it" is like a gap in the sentence. It is as if the sentence was written as "_ is a real number". However, that gap can be filled. Let us make some *substitutions* for it: 5, π, Fido, etc. With each replacement, the word that is undetermined is given meaning, and then the sentence has a truth value. In the substitutions, the first two propositions are true (5 and π), and the last pne is false.

Notice that the blank changes, whereas "is a real number" remains fixed. This is because these two parts of the sentence have different purposes: the first is a reference to an object, and the second is a property of the object. Depending on the result, these two parts are put together to form a sentence that either accurately or inaccurately affirms that a particular property is an attribute of an object. For example, the first sentence states that being a real number is a characteristic of 5, which is correct.

The *subject* of a sentence is the expression that refers to an object. The *predicate* of a sentence is the expression that ascribes a property to the object identified by the subject. Thus, 5, π, Fido are subjects that are substituted for "it", and "is a real number" is a predicate.

Substituting for the subject but not substituting for the predicate is a restriction that we make. We limit the extension of propositional logic this way because it is to be part of mathematical logic and this is what we do in mathematics. For example, take the *sentence*, "x + 2 = 7". On its own it has no truth value, but when we substitute x = 5 or x = 10, the sentence becomes a *proposition*. In this sense, "x + 2 = 7" is like "it is a real number". Both sentences have a gap that is assigned a meaning giving the sentence a truth value.

However, the mathematical sentence is different from the English sentence in that it is unclear as to what part is the subject. Is it "x" or "x + 2"? For our purposes, the answer is irrelevant. This is because in mathematical logic, the subject is replaced with a variable or, sometimes, with multiple variables. This change leads to a modification of what a predicate is.

>A predicate is an expression that ascribes a property to the objects identified by the variables of the sentence.

Therefore, the sentence "x + 2 = 7" is a predicate. 
It describes a characteristic of "x".

>When expressions are substituted for "x", the resulting sentence will be either a *proposition* (that affirms that the value added to 2 equals 5) or *another predicate*.

- if "x = 5" is substituted, the result is a *true proposition*, "5 + 2 = 7"
- if "x = 10" is substituted, the result is a *false proposition*, "10 + 2 = 7"

>In mathematics, it is also common to substitute with undetermined values.

For example
- if the substitution is "x = y", result is the predicate "y + 2 = 7"
- if the substitution is "x=sin θ", result is the predicate "sin θ + 2 = 7"

- Substituting "x = y + 2z²" yields "y + 2z² + 2 = 7", 
  a *predicate with multiple variables*.

- Substituting "x = y² * 7y" yields "y² * 7y + 2 = 7", 
  a *predicate with multiple occurrences of the same variable*.


#### Quantifiers

Assume that "x" represents a real number and consider the sentence:   

>"there exists x such that x + 2 = 7"     (2.1)

Although there is a variable with two occurrences, the sentence is a proposition, so in propositional logic, it is an atom and would be represented by P. This does not tell us much about the sentence, so we instead break the sentence into two parts:

```hs
there exists x such that x + 2 = 7
└─────┬───────┘          └──┬────┘
  quantifier             predicate
```

>A **quantifier** indicates how many objects satisfy the sentence.

##### Existential quantifier

In this case, the quantifier is the **existential quantifier**, making the sentence an **existential proposition**.

Such a proposition claims that there is *at least one* object that satisfies the predicate.

In particular, although other sentences mean the same as (2.1) assuming that "x" represents a real number, such as
- "there exists a real number x such that x + 2 = 7"
- "x + 2 = 7 for some real number x"
- "some real number x satisfies x + 2 = 7"

they all claim, along with (2.1), that there is a real number "x" such that "x + 2 = 7". This is true because 5 satisfies "x + 2 = 7".

There is at least one object that satisfies "x + 2 = 7". Therefore, there exists a real number "x" such that "x + 2 = 7" is true.

##### Universal quantifier

Again, assume that x is a real number. The sentence

>"for all x, x + 5 = 5 + x"         (2.2)

claims that "x + 5 = 5 + x" is true for every real number "x".

```hs
for all x, x + 5 = 5 + x
└───┬───┘  └──────┬────┘
quantifier    predicate
```

This quantifier is called the **universal quantifier**. It states that the predicate is satisfied by each and every object. Including propositions that have the same meaning as (2.2), such as
- for all real numbers x, x + 5 = 5 + x
- x + 5 = 5 + x for every real number x
(2.2) is true because each substitution of a real number for "x" satisfies the predicate. These are examples of **universal propositions**.

A proposition can have multiple quantifiers: take the equation y = 2x² + 1. 
"For every real number x, there exists a real number y, such that y = 2x² + 1". 
This is a universal proposition, and its predicate is: 
"there exists a real number y such that y = 2x² + 1".

In fact this proposition has multiple quantifiers; first the universal, then the existential. However, since the existential quantifier is within the subformula under the scope of the universal quantifier, the entire proposition is considered a universal proposition.

So, (2.3) is true because whenever "x" is replaced with *any* real number, *there is* a real number "y" that satisfies y = 2x² + 1.

### Alphabet

No matter what mathematical subject we study, whether it is algebra, number theory, or something else, we can write our conclusions as propositions. These sentences usually *involve mathematical symbols particular to the subject being studied*.

Symbolic logic consist of two types of symbols:
- Logic symbols
- Non-logic symbols or Theory symbols

Types of symbols
- Logic symbols
  - Variable symbols
  - Logical connectives (¬ ∧ ∨ ⇒ ⇔)
  - Quantifier symbols (∀, ∃)
  - Equality symbol (=)
  - Grouping or punctuation symbols
- Non-logic symbols or Theory symbols
  - Constant symbols
  - n-ary function symbols
  - n-ary relation symbols


*Variable symbols*: Sometimes simply referred to as *variables*, these symbols serve as placeholders. On their own, they are without meaning but can be replaced with symbols that do have meaning. A common example are the variable symbols in an algebraic equation. We denote the collection of variable symbols by `VAR`. Like constants and functions, vars yield objects in the DOD.

*Constant symbols*: These are used to represent important objects in the subject (i.e. in the DOD) that do not change. Examples are `0` and `ϵ`. Like variables and functions, constants yield objects in the DOD.

*N-ary function symbols*: these symbols represent functions. Such as unary functions that take one arg, like `cos`, or binary functions that take two args, like `+`. Functions, like variables and constants yield objects in the DOD.

*N-ary relation symbols*: These symbols are used to represent relations (predicates). Unary relation is usually called a property, e.g. `R` may represent a unary relation "is an even number". A binary relation is a predicate, e.g. `<` represents the binary relation "less than".


>It is not necessary to choose any theory symbols.
(since we can represent them using predicates, e.g. R(x) := x ∈ ℕ)

However, if there are any, the *selection of theory symbols* has precedence over the *selection of variable symbols*, i.e. these two collections must be disjoint.

Moreover, it is almost always assumed that the meaning of logic symbols (except for variables) will always remain the same (i.e. `∧` is always interpreted as conjunction). On the other hand, the interpretation of theory symbols varies across theories.

>The collection of logic symbols and theory symbols is called a **first-order alphabet** and denoted by `𝒜`.


>A **theory** is a collection of propositions comprising a particular subject.

Since different theories have different notation (think about how algebraic
notation differs from geometric notation), *alphabets change depending on the subject matter*.


We now consider a number of theories and their non-logical symbols. Each theory has a set of non-logical symbol with constants, functions and relations.

* SET THEORY is the study of collections of objects. The only theory symbol is `∈` representing a binary relation of set membership. The set of theory symbols of set theory is denoted `ST = { ∈ }`.

* NUMBER THEORY is the study of the natural numbers. The symbols `+` and `⨯` are binary function symbols that represent addition and multiplication, respectively. `0` and `1` are constant symbols. The set of theory symbols of number theory is denoted `NT = { +, ⨯, 0, 1 }`.

* PEANO ARITHMETIC is Peano's 1889's alternative approach to number theory. It studies the natural numbers under the Peano's axioms. `0` is a constant symbol. `S` is a unary function symbol. The set of theory symbols of Peano Arithmetic is denoted `PA = { 0, S }`.

* EXTENDED PEANO ARITHMETIC: Peano Arithmetic is sometimes extended to include symbols for addition, multiplication and less-than relation. The symbols `+` and `⨯` are binary function symbols that represent addition and multiplication, respectively. The symbol `<` represents the binary less-than relation. The set of theory symbols is denoted `AR = { 0, S, +, ⨯, < }`.

* GROUP THEORY is the study of groups. A group is a set with an operation that satisfies certain properties. Typically, the operation is denoted by the binary function symbol `∘`. The constant `ϵ` represents identity element. The set of theory symbols is denoted `GR = { ϵ, ∘ }`.

* RING THEORY is the study of rings. A ring is a set with two operations that satisfy certain properties. The operations are usually denoted by the binary function symbols `⊕` and `⊗`. The constant symbol is `○`. The set of theory symbols is denoted `RI = { ○, ⊕, ⊗ }`.

* FIELD THEORY is the study of fields. A field is a type of ring with extra properties, so the theory symbols of ring theory (RI) can also be used for fields. The set of theory symbols is denoted `FI = { ○, ⊕, ⊗ }`.

* ORDERED FIELD THEORY: However, if an order is defined on a field, a binary relation symbol is needed to denote that ordering relation. The set of theory symbols is denoted `OF = { ○, ⊕, ⊗, < }`.


Notice that collections of theory symbols in these examples have at most two constant symbols - this is typical since subjects of study usually have only a few objects that require special recognition.

However, there will be times when some extra constants are needed to reference objects that may or may not be named by the constant symbols. To handle these situations, we expand the symbols of a theory by adding new constant symbols.

>Let `𝒜` be a first-order alphabet with theory symbols `S`. When constant symbols not in `S` are combined with the symbols of `S`, the resulting collection of theory symbols is denoted by `S̅`. The number of new constant symbols varies depending on need.

### Terms

For a string to represent a proposition or a predicate from a particular theory, each nonlogic symbol of the string must be a theory symbol of that subject.

For example, "∀x(x ∈ A)" and "∀∈xA()" are strings for set theory. However, not all possible strings make sense. Those that do are determined by a grammar and called *well-formed* strings (sentences, formulas).

Because a predicate might have variables, the types of representations that we want to make are more complicated than those of propositional logic. Hence, the grammar also will be more complicated. We begin with the next inductive definition.

Let `𝒜` be a first-order alphabet with theory symbols `S`. 
An **S-term** is a string over 𝒜 which is
- a variable symbol from `𝒜`
- a constant symbol from `S`
- a function symbol from `S`, i.e. `f t₀, …, tₙ` where `tᵢ` are terms

We denote the collection of strings over 𝒜 that are S-terms by `TERMS(A)`.

Note that functions are defined in prefix position, so "+ a b" is writen; lest be so stringy we'll also write "a + b".

When writing about a general S-term where it is not important to mention S, we often just say **term**.

Examples of terms in some of the theories above. Assume `x`,`y`,`z₁` are vars.
- PA: `0` 
- NT: `+xy` i.e. `+ x y` i.e. `x + y`
- GR: `∘0z1` i.e. `0 ∘ z₁`
- If NT is expanded by adding the constants `c` and `d`, then `+cd` i.e. `c + d`, would also be an NT-term.

>The purpose of a term is to represent an object of study:
- A variable represents an undetermined object
- A constant represents an object that doesn't change, like a identity number
- A function is used to represent a particular object given another object

### Formulas

As propositional forms are used to represent propositions, we next give the grammar used to determine valid propositional forms and predicates. The definition is inductive.

Let `S` be the theory symbols from a first-order alphabet 𝒜. 
An **S-formula** is a string over 𝒜 such that:
- `t₀ = t₁`     if `t₀,t₁` are S-terms
- `R t₀, …, tₙ`  if `R` is relation symbol from S, and `tᵢ` are S-terms
- `¬p`          if `p` is S-formula
- `p ⨀ q`       if `p,q` are S-formulas, and `⨀` is one of `∧, ∨, ⇒, ⇔`
- `∀xp`, `∃xp`  if `p` is an S-formula, and `x` a variable from 𝒜.

A formula of the form `∀xp` is a *universal formula*, and 
a formula of the form `∃xp` is an *existential formula*. 


An alphabet combined with a grammar is called a **language**. The language given by two definitions (terms, formulas) above is known as a **first-order** language. A FOL formula is a **first-order formula**. All FOL formulas with theory symbols `S` are denoted by `L(S)`. Using a grammar, terms are defined, and then by extending the grammar, formulas are defined.


>But what makes a language first-order?
It is the definition of quantifiers which says that only `∀x` or `∃x` are permitted forms, where `x` must be a variable representing an object of study. Thus, we cannot quantify over functions or relations - for that we'd need a second-order language.

To create a *second-order alphabet*, augment the alphabet 𝒜 with function and relation symbols and then add:
- `∀ f p` and `∃ f p` are S-formulas 
   if 'p' is an S-formula and 'f' is a function symbol from 𝒜
- `∀ R p` and `∃ R p` are S-formulas 
  if 'p' is an S-formula and 'R' is a relation symbol from 𝒜

For example, if the first-order formula `∀x(x ∈ A ⇒ x ∈ B)` is intended to be true for any A and B, it can be written as the second-order formula
`∀A∀B∀x(Ax ⇒ Bx)`, where `Ax` represents the relation `x ∈ A` and `Bx` represents the relation `x ∈ B`.

```
Logic symbols     grammar              grammar
Theory symbols -------------> Terms -------------> Formulas
      ↑                         ↑                     ↑
  Alphabet              Represent objects      Object properties
```

## Substitution

There are times when a substitution will be made for a predicate's variable.

For example, in algebra: `x` 
in `f(x)     = 3x²    + x     + 1` may be substituted for:
-  `f(y)     = 3y²    + y     + 1`
-  `f(2)     = 3∙2²   + 2     + 1`
-  `f(sin x) = 3sin²x + sin x + 1`

>We can substitute with variables, constants, and functions' results.
To represent this in formulas, we can replace a variable with a term.

#### Substitution in Terms

We begin by defining what it means to substitute for a variable in a term. We use `⇔` because one string can be replaced with another string.

Let
- `S` be theory symbols from a first-order alphabet 𝒜
- `x` be a variable symbol from 𝒜
- `t` be an S-term
Notation `x ⟼ t` means that `x` is replaced by `t` at every occurrence of `x`.

For terms this means the following:
- if `y` is a *variable* symbol from 𝒜
  - y[x/t] ⇔ `t` if x = y
  - y[x/t] ⇔ `y` if x ≠ y

- if `c` is a *constant* symbol from S
  - c[x/t] ⇔ `c`

- if `f` is a *function* symbol, `sᵢ` are S-terms
  - (f sᵢ)[x/t] ⇔ f(s₀[x/t], s₁[x/t], …, sₙ[x/t])

>When a substitution of a term is made into a term, the result is another term.

-       x[x/y] ⇔ y
-       x[x/c] ⇔ c
-   y[x/f x z] ⇔ y
-       c[x/x] ⇔ c
-       d[x/c] ⇔ d
-     c[x/g x] ⇔ c
- (f x y)[y/c] ⇔ f x c
- (((z[x/c])[y/d])[z/c])[x/d]           ⇔ c
- ((f y z)[y/h c])[x/g y]               ⇔ f (h c) z
- ((((f x y)[x/c])[y/g x])[z/x])[x/g d] ⇔ f c (g (g d))


#### Free variables

Substitution for a variable in a formula is a bit more involved. This is because of the influence of any possible quantifiers. For example, take the formula `x = y ∨ x = f y` (2.4).

We can substitute `x` with a constants `c`, and `y` with `d` in the terms `x`, `y`, and `f y`. We expect that we should also be able to make this substitution into the formula resulting in `c = d ∨ c = f d`. However, in the formula (2.5), `∀x ∃y(x = y ∨ x = f y)` the situation is different because of the quantifiers.

Consider the corresponding occurrences in (2.4) and (2.5):
```
      x = y ∨ x = f y   (2.4)
      ↓   ↓   ↓   ↓ ↓
∀x ∃y(x = y ∨ x = f y)  (2.5)
```
Even though each occurrence of `x` and `y` in (2.4) can receive a substitution, each corresponding occurrence in (2.5) cannot because of the quantifiers.

Let
  S be theory symbols 
  tᵢ be S-terms 
  R be an n-ary relation symbol from S 
  P and Q be S-formulas. 
An **occurrence of a variable** in formula is **free** according to the rules:
- var occurrence in t₀ = t₁ and R tᵢ is free
- var occurrence in ¬P is free iff the corresponding occurrence in P is free
- var occurrence in P ∧ Q is free iff the corr. occurrence in P or Q is free
- an occurrence of x in ∀xp and ∃xp is not free
- an occur. of y ≠ x is free in ∀xp and ∃xp iff the cor. occ. of y is free in P

The set of free variabls relative to a formula `φ` is denoted `FV(φ)`.

If an occurrence of a variable is not free, it is **bound**.

All free occurrences of `x` in `P` are within the *scope* of the universal quantifier in ∀xp and the existential quantifier in ∃xp.

We need to know whether a formula has a free occurrence of some variable, so we make the next definition: a *free variable* of S-formula `P` is a variable that occurrs free in `P`.

#### Substitution in Formulas

We can now define what it means to make a substitution into a formula:   
Let S be theory symbols from a first-order alphabet A
    x and y be variable symbols of A
    R be an n-ary relation symbol from S
    p and q are S-formulas
    tᵢ are S-terms
- (t₀=t₁)[x/t] ⇔ (t₀[x/t] = t₁[x/t])
-  (R tᵢ)[x/t] ⇔ R(t₀[x/t], t₁[x/t], …, tₙ[x/t])
-    ¬p  [x/t] ⇔ ¬(p[x/t])
- (p ∧ q)[x/t] ⇔ p[x/t] ∧ q[x/t]                  same for ∨, ⇒, ⇔
-   (∀yp)[x/t] ⇔ ∀y(p[x/t])   if x ≠ y and y ∉ t
    (∀yp)[x/t] ⇔ ∀yp          otherwise           same for ∃


The condition on the term `t` (that `x ≠ y` and `y` is not a symbol of `t`) in the definition is important. Consider the formula `p := ∃y(x ⊕ y = ○)`. The usual interpretation of this formula is that *given* an `x` (x is free), there exists an number `y` such that `x + y = 0`. 

Let `f` be a unary function symbol and `z` be a variable symbol. Since `y` is not a symbol of `z` we can make the substitution   
`p(x/z) ⇔ ∃y(z ⊕ y = ○)`   
which has the same standard interpretation as `p`. 

Since `y` is not a symbol of `f z`, we can substitute to find that   
`p(x/f z) ⇔ ∃y(f z ⊕ y = ○)`

This is a reasonable substitution because it states that for the number given by `f z`, there is a number `y` that when added to `f z` gives `0`. This is very similar to the standard interpretation of `p`. Both of these substitutions work because the number of free occurrences is unchanged by the substitution.

However, if we allow the term to include `y` among its symbols, **name capture** would happend, changing the number of free varaibles in the formula before and after the substitution, and rendering the "after" formula incorrect.

*Simultaneous substitution* is equivalent to replacing all free occurrences of vars in a formula simultaneously (not in steps so a nmae capture can occur).

A formula without free variables is a type of formula of particular importance because it represents a proposition, it is in *propositional form*.

>An S-formula with no free variables is called an *S-sentence*.


Properly bracketing a formula shows the *scope of quantifiers* which may influence free and bound occurrences of variables:

```hs
   scope of ∃z
     ┌───┴───────┐
∀x(∃z(q x y ∧ r z)) ∨ ∃y(r y → s x)
  └─────┬─────────┘     └──┬──────┘
  scope of ∀x       scope of ∃y

  scope of ∀x
  ┌─────┴─────────────────────────┐
∀x(∃z(q x y ∧ r z) ∨ ∃y(r y → s x))
     └───┬───────┘     └──┬──────┘
   scope of ∃z      scope of ∃y
```

## Syntax

The inference rules of propositional logic do not involve quantification, so we need new rules to deal with universal and existential formulas. We need rules covering not only negations, but also rules that enable the *instantiation* (elimination) and *generalization* (introduction) of quantifiers.

Negation of "all P are Q" is "some P are not Q", `¬∀xp ⇔ ∃x¬p` 
(i.e. flip the quantifier and pull negation in). 
Negation of "some P are Q" is "all P are not Q", `¬∃xp ⇔ ∀x¬p`.


Negate a formula should result in a formula where the negation sign is not immediately to the left of any quantifier; using replacement rules, the negation should be pulled in toward the predicate. Such a formula is said to be in **positive form**.

### Proofs with Universal Formulas

#### Universal Instantiation

Consider the sentence "all multiples of 4 are even". This implies, for instance, that 8, 100, and -16 are even.

To generalize this reasoning to formulas means that whenever we have `∀xPx`, we also have `Pa`, where `a` might be either a constant symbol such as 8, 100, and -16 or a randomly chosen constant symbol. This gives the first inference rule that involves a quantifier. 
>We introduce it as an axiom.

**Universal Instantiation (UI)**: If `Px` is an S-formula, then for every constant symbol `a` from S̅, then `∀xPx ⇒ Pa`.


Two observations about UI
- Since the resulting formula is to be part of a proof, the substitution must yield a sentence, so `a` must be a *constant* symbol.
- We use the notation `Px` to represent the formula (instead of just `P`) because `∀xPx` will be part of a proof, which means, again, that it must be a sentence. Writing `Px` limits the formula to have only `x` as a possible free variable, so `∀xPx` is a sentence. If the formula `P` had free variables other than `x`, then `∀xP` would not be a sentence and not suitable for a proof.

Examples
- ∀x(Px ⇒ Qx)   -->> Pa ⇒ Qa
- ∀x(Px ∨ ∀yQy) -->> Pa ∨ ∀yQy
- ∀x(Px ∨ ∀xQx) -->> ∀x(Px ∨ ∀zQz) -->> Pa ∨ ∀zQz
- ∀x∀y(Qx ∨ Ry) -->> ∀y(Qa ∨ Ry)   -->> Qa ∨ Ra
- ∀x∀y(Qx ∨ Ry) -->> ∀y(Qa ∨ Ry)   -->> Qa ∨ Rb
- ∃x∀y(Qx ∨ Ry) -->> ∀y(Qa ∨ Ry)   -->> Qa ∨ Rb


Universally bound variable can be instantiated with any symbol whatsoever. Existentially bound variable must be instantiated with a fresh symbol (var, const), different from all the existing names in the formula. So, as a rule, first instantiate existential variables if possible because their names are forced on us; then instantiate universal vars because we get to choose the names.

#### Universal Generalization

Before we can write formal proofs, we need a rule that will attach a universal quantifier. It will be different from universal instantiation, for it requires a criterion on the constant.

Let `a` be a *constant* symbol introduced into a formal proof by a substitution. If the first occurrence of `a` is in a sentence that follows by UI, then `a` is called **arbitrary**. Otherwise, `a` is called **particular**, denoted by `â` to remind us of that fact.

The idea behind this definition is that if a constant symbol `a` is arbitrary, it *represents a randomly selected object*, but if `a` is particular, then it *represents an object with at least one known property*. This property can be identified by a formula `Px` so that we have `Pa`.

Example: The constant symbol `a` in the following is not arbitrary (but particular) because its first occurrence on line 1 is not the result of UI.
1. Pa       (assuption, givens)
2. Pa ∨ Qa  (∨I, addition)
Therefore, we should write it as `â`:
1. Pâ       (as)
2. Pâ ∨ Qâ  (∨I)
However, in the following, `a` is arbitrary because its first occurrence is on line 2, where it follows by UI on line 1
1. ∀xPx     (as)
2. Pa       (UI)
3. Pa ∨ Qa  (∨I)


We can now introduce the rule of inference that allows us to attach universal quantifiers to formulas. 
>We introduce it as an axiom:


**Universal Generalization (UG)**: if `Px` is an S-formula with *no particular constant symbols*, `a` is an *arbitrary constant symbol* from S̅, `Pa ⇒ ∀xPx`.


For example, consider this argument:
- All squares are rectangles.
- All rectangles are quadrilaterals.
- Therefore, all squares are quadrilaterals.

```hs
0 ∀x(Sx ⇒ Qx)         goal
-----------------------------------------
1 ∀x(Sx ⇒ Rx)         assumption 1
2 ∀x(Rx ⇒ Qx)         assumption 2
-----------------------------------------
3 Sa ⇒ Ra             UI 1
4 Ra ⇒ Qa             UI 2
5 Sa ⇒ Qa             HS 3,4 (hypothetical syllogism)
6 ∀x(Sx ⇒ Qx)         UG 5
----------------------------------------- QED
```

Since `a` was for the first time introduced on line 3 by UI, it is an *arbitrary constant symbol*. Additionally, `Sa ⇒ Qa` (the source line for UG) contains *no particular constant symbols* that appeared in the proof by substitution. Hence, the application of UG on line 6 is legal.

Basically, UG can only quantify the same symbol obtained earlier through UI. Or, UG can only generalize particular symbols, not arbitrary ones.

### Proofs with Existential Formulas

Since 4 + 5 = 9, we conclude that there exists x such that x + 5 = 9. Since we can construct an isosceles triangle, we conclude that isosceles triangles exist. This motivates the next inference rule.

#### Existential Generalization

**Existential Generalization (EG)**: 
If `Px` is an S-formula, 
and `a` is a constant symbol from S̅: 
`Pa => ∃xPx`.

EG is not introduced as an axiom (like UG and UI were), so we need to prove it.

Proof:
- assume `Pa`
- assume `∀x¬Px`
- by UI we have that `¬Pa`
- thus, `¬∀x¬Px` by IP
- from which `∃xPx` follows by QN

```
1 | Pa            premise
2 | | ∀x¬Px       assumption
3 | | ¬Pa         UI 2
4 | | ⊥           RAA 1,3
5 | ¬∀x¬Px        IP 2-4
6 | ∃xPx          QN 5
7 Pa ⇒ ∃xPx      ⇒I 1,6
```

If there's some particular constant for which P holds, then there exists some x for which the P holds.


#### Existential Instantiation

This inference rule allows us to detach existential quantifiers, introduced not as axiom but as definition/theorem that needs a proof.

**Existential Instantiation (EI)**: 
If Px is an S-formula:   
`∃xPx ==> Pâ`   
where `a` is a constant symbol from S̅ 
that doesn't occur in the proof prior to `Pâ` (fresh name).

Proof:
- assume `∃xPx` does not infer `Pb` for any constant symbol `b`
- suppose `∃xPx`
- combined with the assumption, this implies that `¬Pb` 
  for every constant symbol `b` by LEM and DS
- that is, `¬Pa` for an arbitrary constant symbol `a`
- thus, `∀x¬Px` by UG
- so `¬∃xPx` by QN
- which is a contradiction!
- thus, `∃xPx ⇒ Pa` for some constant symbol `a` and this `a` is particular.

```
1  | ¬(∃xPx ⇒ Pb)       ass
2  | ¬(¬∃xPx ∨ Pb)      QN 1
3  | ¬(∀x¬Px ∨ Pb)      QN 2
4  | ¬∀x¬Px ∧ ¬Pb       DM 3
5  | ∃x¬¬Px ∧ ¬Pb       QN 4
6  | ∃xPx ∧ ¬Pb         DN 5
7  | ∃xPx               Simp 6
8  | ¬Pb                Simp 6
9  | ∀x¬Px              UG 8
10 | ¬∃xPx              contradiction 7,9; ass was wrong, it is in fact:
11 ∃xPx ⇒ Pb
```


The constant symbol `â` obtained by EI is called a **witness** of `∃xPx`.

The reason that the constant symbol `a` must have no prior occurrence in a proof when applying EI is because a used symbol already represents some object, so if `a` had appeared in an earlier line, we would have no reason to assume that we could write `Pa` from `∃xPx`.

For example, given
- ∃x(x + 4 = 5)       (A)
- ∃x(x + 2 = 13)      (B)
By EI and (A), we write a + 4 = 5  for some constant symbol `a`. 
By EI and (B), we write b + 2 = 13 for some constant symbol `b`. 
However, inferring that a + 2 = 13 is invalid because `a ≠ b`.


An S-formula is in **prenex normal form** if all quantifiers are in prefix position.
