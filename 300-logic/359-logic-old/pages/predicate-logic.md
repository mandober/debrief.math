# Predicate logic

https://en.wikipedia.org/wiki/Predicate_logic

Lecture 14: Introduction to predicate calculus
https://www.youtube.com/playlist?list=PLzVTusWerVcKx3crsij5wrRfIqWp3UXc7

Propositional logic lets us only discuss the truth value of the whole statements, not the parts of statement. We can translate atomic sentences from a natural language into atomic statements in the language of propositional logic. And just like the sentences in a natural language are joined with connectives, we can join atomic statements in the language of propositional logic with logical connectives. However, this system is not strong enough to express everything.

On the other hand, predicate logic lets us look into the parts of the sentences. A language of predicate logic has two components to it: *objects* (e.g. man, Socrates) and their *properties* (e.g. mortal). By breaking the statements into objects and their properies we can get more insight into their truth value.

The properties are usually thought of as expressing the properties of a single object, i.e. as unary predicates. Binary predicates are relations and they can express properties that apply to a group of objects. Predicates include properties and relations.

Predicate logic is strong enough to express most mathematical statements. Languages of predicate logic are a big family of languages, however, they share common elements:
- logical symbols
  - constant symbols (often considered as nullary symbols)
  - relation symbols with corresponding arities
    - equality (usually considered a binary relation)
  - function symbols with corresponding arities
- propositional connectives
- quantifiers


## Example language

We examine 3 languages of predicate logic and compare their terms:
- a language of number theory
- a language of set theory
- a minimal language with equality only

### A language to discuss number theory

For example, a language of predicate logic that lets us discuss *number theory* could include these concrete elements:
* constant symbols: a,b,… (0,1,…)
* relation symbols: f,g   (`+`, `⨯`)
* function symbols: R     (`<=`)

Then we can express that `x` is a prime number:    
`φ(x) = ∀y∀z(g(y,z) = x -> y = x ⋁ z = x)` ≡    
`φ(x) = ∀y∀z( y ⨯ z = x -> y = x ⋁ z = x)`

We can express that `x` is an even number:   
`ψ(x) = ∃z(f(z,z) = x)` ≡ `∃z( z + z = x)`

i.e. `x` is an even number if there is a number `z` such that `z + z = x`; in other words, if `x` is evenly divisible by 2.

The statement "there are infinitely many prime numbers":    
`∀x∃y(R(x,y) ⋀ φ(y))`

where
- `φ(y)` refers to the previous statement that `y` is a prime number
- `R(x,y)` means `x <= y`


### A language to discuss set theory

To discuss **set theory** we only need one relation symbol, `∈`:
- `R(x,y)` used infix as `x ∈ y`

To state that there is an empty set:    
`φ(x) = ∀y(¬(R(y,x))` ≡ `∀y(y ∉ x))`

To state there is only one empty set:    
`∀x∀y(φ(x) ⋀ φ(y) -> x = y)`

To state that `x` is a subset of `y`, i.e. `ψ(x,y) = x ⊆ y`:    
`∀z(R(z,x) -> R(z,y))`


### A minimal language with equality only

A minimal language of predicate logic that has nothing but the equality still let's us express some things about the universe of discorse.
* There is only 1 element in the universe: `∀x∀y(x = y)`
* There are more than 2 elements in the universe:    
`∃x∃y∃y(¬(x = y) ⋀ ¬(y = z) ⋀ ¬(x = z))`
* There are at most 2 elements in the universe:    
`∀x∀y∀z(x = y ⋁ x = z ⋁ y = z)`

The equality is considered a relation symbol, i.e. `R(x,y)` ≡ `x = y`


## A languages of predicate logic, step 1: Defining the terms

However, a language of predicate logic usually has more things; there are constants, function and relation symbols.

We can fix a language by declaring:
- propositional connectives
- quantifiers
- equality
- logical symbols
  - constant symbols, `a₁, a₂, …`
  - function symbols and arity, `f₁¹`, `f₂¹`, `f₃³`, …
  - relation symbols and arity, `R₁¹`, `R₂¹`, `R₃²`, …

Since this language distinguishes objects and properties, in order to define _wffs_, we first need to define the collection of all legal "words" that denote objects, i.e. terms.

>Step 1: Defining the set of terms

The set of **terms** is defined as `I(A,P)`, where `A` is the set of all constant symbols and all variable symbols, `x₁, x₂, …`. So, the atomic symbols that denote objects are ether constants or variables. The set `P` is the set of all operations, P = { O𝟋 : f |> a function symbol }. The operation `O(f)` takes terms and returns functions, e.g. O(f)(t₁, t₂) = f(t₁,t₂).

### Defining a language to discuss number theory

The examples of terms in an example language that discusses *number theory*:
- a, b, …, x₁, x₂, … (atomic terms, e.g. a=0, b=1, …)
- f(a,b) (e.g. representing +)
- g(a,b) (e.g. representing ⨯)
- g(x,a), g(x,y)
- f(g(x,a), y)
- etc.

So now we can express thing like:
- `2x` ⟼ `g(f(b,b), x)`, with b = 1 and g = (⨯)
- `x + 0 <= 2y` ⟼ `R (f(a,x), g(f(b,b),y))`
- `x² + 3y` ⟼ `f(g(x,x), g(f(f(b,b),b),y))`

```js
+ ⨯       ⨯ + + 1 1   1
│ │       │ │ │ │ │   │
f(g[x,x], g[f(f(b,b), b), y])

thus:

= f( g[x,x] , g( f[f(b,b), b], y) )
= f( ⨯[x,x] , g( f[+(1,1), 1], y) )
= f( x ⨯ x  , g( f[(1+1) , 1], y) )
= f( x²     , g( +[(1+1) , 1], y) )
= f( x²     , g( +[2,1]      , y) )
= f( x²     , g( 3           , y) )
= f( x²     , ⨯( 3           , y) )
= +( x², 3⨯y)
= x² + 3y
```


We see that in the language of number theory every term actually denotes a polynomial. We are not able to express anything other than polynomials with the terms we can build. The terms are actually a clumsey way to write polynomials. We still don't have any statement that we can say whether it is true or false. We can only talk about the objects.

### Defining a language to discuss set theory

In the language of set theory we have defined above, we had no constants and no function symbols, we only has one relation symbol (∈).

The terms of the language of set theory:
- since there are no function symbols,th e set of operations, `P`, is empty
- thus `I(A, P) = A`
- so the only terms are variables (there are no constant symbols)

### The terms of the minimal language with equality only

In the minimal language of predicate logic (we have mentioned above), the language was empty except for equality. The terms of this language are going to be only variables, just like in the previous language of set theory.

## A languages of predicate logic, step 2: 

Given a language, i.e. given a vocabulary and a set of specific symbols for the language, we can talk about the terms of the language; in the worst case, i.e. in the the case of the minimal language, the terms are just variable symbols. Once we admit functions, we'll have infinitely many terms.

Now, that we have defined the language in as much that we can see what are the terms of the language, the next step is to use these terms to build formulas that can means something, i.e. that will have a truth value.

>Step 1: Defining the set of terms

(done above)

>Step 2: Defining the set of atomic formulas

Before defining the set of wffs, we need to defined the set of atomic formulas.

The set of atomic formulas is `{R(t₁ … tₖ)}` where
- `R` is a k-ary relation symbol
- `tᵢ` are terms

We had the definition of terms which allowed us to talk about the objects, and now we have defined atomic formulas as relations applied to terms.

Examples of atomic formulas in our language of number theory:
- `R(a,b)`, that is, 0 <= 1
- `R(f(a,x), g(f(b,b), y))`, that is, x + 0 <= 2y

```js
<=  +        ⨯ +
│   │        │ │
R ( f(a,x) , g(f(b,b),y) )
    └─┬──┘   └───┬─────┘
    term1       term2
```

Examples of atomic formulas in our language of set theory:
- atomic formulas are only trivial things, like `x = y`, and `x ∈ y`
- we cannot express `x ⋂ y` as `R(x,y) ⋀ R(x,z)` and call it atomic formula because it uses the conjunction logical connective

In summary, with atomic formulas specified, we can now make statements that have a truth value (e.g. is it true or false that x+0=2y? x=y? x∈y?)


>Step 3: Defining the set of wffs

We can now finally define the set of wffs in a given language (wffs are language specific).

**The set of wffs** in a given language `L` is `I(A,P)`, where `A` is the set of atomic formulas (that we got from generating terms and applying relations to the them), and `P` is the set `{¬, ⋀, ⋁, ⟶, Op∀, Op∃}`, that is, it consists of
- propositional connectives: `¬`, `⋀`, `⋁`, `⟶`
- quantifiers: universal `∀`, existential `∃`

In fact, `Op∀` and `Op∃` are not the direct (immediate) quantifiers, but the corresponding *operations*, where each operation takes a formula (predicate) `φ` and a variable `x`, and returns a quantified formula, `Qxφ`, where `Q` is either `∀` or `∃`.

```js
φ, x           φ, x
----- = Op∀    ----- = Op∃
∀xφ            ∃xφ
```

__DANG__ Not an atomic operation! This operation is not entirely correct because it takes a forumla (φ) *and* a variable (x), which is O∃(φ,x), which is, again, non-atomic! To save it somehow, we can redefine these two operations, i.e. make them atomic, by partially applying a variable! So there will be a pair of these operations for each variable. So, it's not `O∀`, but `OpQα` instead, where `α` stands for variables (x, y, z, …) and `Q` stands for the two quantifiers (∀,∃).

```js
φ                φ
--- = Op∀x      ----- = Op∃x
∀xφ             ∃xφ
```

The above is a pair of instances of the definitions for the two quantifier- related operations (`Op∀` and `Op∃`) in terms of the variable `x`. It is only one such pair of infinitely many definitions, that is, there should be as many of these concrete definitions as there are variables.

It is important to distinguish terms from formulas. For example, `2x+y²` is a not a formula but a term, `∀x(2x+y²)` has no meaning because quantifiers apply only to formulas and not terms, `∀x(x=y)` is a legal wff but it makes no sense, `2x+y²=x` is an atomic formula consisting of two terms in the relation '=', and so `∀x(2x+y²)` is a wff, but a non-atomic formula, whose truth value (the question of semantics) is to be determined following the specification of the DoD.
