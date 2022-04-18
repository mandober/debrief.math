# Ordered pair

https://en.wikipedia.org/wiki/Ordered_pair

A set doesn't have a notion of element order, and thus `{a,b} = {b,a}`, with both elements `a` and `b` having the same status order-wise. The desire to make this distinction and to have a structure where one element has more precedence (is more "important", comes before) than the other, has given rise to the notion of ordered pairs.

Fundamentally, an ordered pair is a two-element set together with an ordering (normally, together with a precedence relation `≺`).

Let set A = {a,b}. The set A is also called a (unordered) pair. But the set A together with a precedence relation `≺`, i.e. a tuple `(A, ≺)`, constitutes a general ordered pair structure. To make it specific we must also specify how the two elements are related regarding the `≺` relation. This specification is necessary, otherwise (assuming `a ≠ b`) we couldn't tell which of the two possible ordered pairs, `(a,b)` or `(b,a)`, is represented by it. We can say that the precedence relation itself forces `a ≠ b`.



By stating that `a ≺ b`, the tuple `(A, ≺)` becomes `({a,b}, a ≺ b)` and it represents the ordered pair that is the same as the usual denotation `(a,b)`.

- ordered pair, `P = (A, ≺)`
- ({a,b}, a ≺ b) = (a,b)
- ({a,b}, b ≺ a) = (b,a)



`(a,a), (a,b), (b,a), (b,b)`


An ordere
(A, <=) 

({a,b}, <=)

In other words, one of the elements is distinguished above the other - it comes first.

Such a structure is written: (a,b) and it means: first a, then b.



An ordered pair `(a,b)` is a pair of objects. The order in which the objects appear in the pair is significant: the ordered pair `(a,b)` is different from the ordered pair `(b,a)` unless `a = b`.

Ordered pairs are also called 2-tuples or sequences of length 2.

The entries of an ordered pair can be other ordered pairs, enabling the recursive definition of ordered `n`-tuples (ordered lists of `n` objects). For example, the ordered triple `(a,b,c)` can be defined as `(a,(b,c))`, i.e. as one pair nested in another.

* Defined as a set of ordered pairs
  - Cartesian product
  - disjoint union
  - relation
  - function

In the ordered pair `(a,b)`, the object `a` is called *the first component*, and the object `b` *the second component* (also called entries, coordinates or projections).

* TOC
  - Generalities
  - Informal and formal definitions
  - Defining the ordered pair using set theory
    - Wiener's definition
    - Hausdorff's definition
    - Kuratowski's definition
      - Variants
      - Proving that definitions satisfy the characteristic property
    - Quine-Rosser definition
    - Cantor-Frege definition
    - Morse definition
    - Axiomatic definition
  - Category theory


## Generalities

The characteristic or defining property of ordered pair is:

`(a,b) = (x,y)` ⟺ `a = x ⋀ b = y`

The set of all ordered pairs whose first entry is in set `A` and whose second entry is in set `B` is called the Cartesian product of A and B, and written `A×B`. A binary relation between sets A and B is a subset of A×B.

When additional clarification is required, an ordered pair may be denoted by the variant notation `⟨a,b⟩`, although even this notation has other uses.

The left projection of a pair `p` is usually denoted by `π₁(p)`.    
The right projection of a pair `p` is usually denoted by `π₂(p)`.   
In the context of n-tuples, `πⁿᵢ(t)` is a common notation for the i-th projection of an n-tuple `t`.


## Informal and formal definitions

In some introductory mathematics textbooks an informal definition of ordered pair is given, such as

  For any two objects `a` and `b`, the ordered pair `(a,b)` is a notation specifying the two objects `a` and `b`, in that order.

This "definition" is unsatisfactory because it is only descriptive and is based on an intuitive understanding of order. However, as is sometimes pointed out, no harm will come from relying on this description and almost everyone thinks of ordered pairs in this manner.

A more satisfactory approach is to observe that the characteristic property of ordered pairs is all that's required to understand the role of ordered pairs in mathematics. Hence the ordered pair can be taken as a primitive notion, whose associated axiom is the characteristic property. However, this approach also has its drawbacks as both the existence of ordered pairs and their characteristic property must be axiomatically assumed.

Another way to rigorously deal with ordered pairs is to define them formally in the context of set theory. This can be done in several ways and has the advantage that existence and the characteristic property can be proven from the axioms that define the set theory. One of the most cited versions of this definition is due to Kuratowski.

## Ordered pair in set theory

If we hold that set theory is the foundation of mathematics, then all the mathematical objects should be derivable from sets. That is, an object like ordered pair may be introduced as a primitive (or with an axiom), or, preferably, as a definition in terms of sets. A set theory that manages to do the latter is deemed more elegant than a set theory that chooses the former (elegant theories live on, inelegant risk oblivion).

Hence, if the ordered pair is not taken as primitive, it must be defined in terms of sets. Several set-theoretic definitions have been given over the years, but the Kuratowski's definition seems to be the most accepted one.

* Ordered pair definitions:
  - Wiener       `(a,b) := { {{a},∅}, {{b}} }`
  - Hausdorff    `(a,b) := { {{a},❉}, {{b},❋} }`
  - Kuratowski   `(a,b) := { {a}, {a,b} }`
  - Quine-Rosser `(A,B) := φ[A] ⋃ ψ[B] = {φ(a). a ∈ A} ⋃ {ψ(b). b ∈ B}`
  - Frege        `(a,b) := { a, {b} }`
  - Cantor-Frege
  - Morse
  - Axiomatic
  


### Wiener's definition

Norbert Wiener proposed the first set theoretical definition of the ordered pair in 1914:

`(a,b) := { {{a},∅}, {{b}} }`


```js
// def. ordered pair
(X,Y) := { {{X},∅}, {{Y}} } === { {{X}} ⋃ {∅}} ⋃ {{{Y}}}

(X,Y) :=
= { {{X},∅}, {{Y}} }          // 2-set
= { {{X}} ⋃ {∅}  ,  {{Y}} }   // fst as a union
= { {{X}} ⋃ {∅}} ⋃ {{{Y}}}   // union: {A ⋃ B} ⋃ C

a =  {X}
A = {{X}} = {a}
b =  {Y}
B = {{Y}} = {b}
E =  {∅}

= {  A  ⋃  E  } ⋃ { B }
= { {a} ⋃ {e} } ⋃ { B }
= {  A  ⋃ {∅} } ⋃ { B }



(X,Y) :=
= { {{X},∅}, {{Y}} }
= { {{X}  ,  ∅}  , {{Y}} }
= { {{X} }⋃{ ∅}  , {{Y}} }
= { {{X}} ⋃ {∅}  ,  {{Y}} }
= { {{X}} ⋃ {∅} }⋃{ {{Y}} }
= { {{X}} ⋃ {∅}} ⋃ {{{Y}}}

// unionize
=  { {{X} , ∅} ,   {{Y}} }                  // REPL "," WITH "}⋃{"
=  { {{X}}⋃{∅}}⋃{ {{Y}} }                  // spread out
=  { {{X}} ⋃ {∅} }  ⋃  { {{Y}} }
// {             }  ⋃  {       }
// { {...} ⋃ {.} }  ⋃  {.......}
=  { {{X}} ⋃ {∅} }  ⋃  { {{Y}} }

=   { {{X}} ⋃ {∅} }   ==   {{{X},∅}}
  ⋃ { {{Y}}       }   == ⋃ {{{Y}}}

{{{X},∅}} ⋃ {{{Y}}} =
{{{X},∅} }⋃{ {{Y}}} =
{{{X},∅} , {{Y}}} =
{{{X},∅}, {{Y}}}
=
{ {{X},∅}, {{Y}} }




= {
    {{X}}
    ⋃
    {{∅}}
  }
  ⋃
  {
    {{Y}}
  }

  { {X}, ∅ }
= { {X}    ,    ∅ }
= { {X}   }⋃{   ∅ }
= {{X}} ⋃ {∅}

{{X}} ⋃ {∅} = {{X},∅}




// original definition
(X,Y) := ι (υX ⋃ ιΛ) ⋃ υυY

// modern definition
(X,Y) := { {{X},∅}, {{Y}} }

// legend
ι(A) = {A}
ι Λ = ∅
υ X = {X}
⋃ = ,

// original -> modern
(X,Y) := ι (υX ⋃ ιΛ) ⋃ υυY
(X,Y) := { {{X},∅}, {{Y}} }

========================

(X,Y) := { {{X},∅}, {{Y}} }


(X,Y) := ι ( υX  ⋃ ιΛ ) ⋃ υυY
(X,Y) := { { {X} ,  ∅ } , {{Y}} }


ι(A) = { {A} }
ι(υX ⋃ ιΛ) = 

```

Wiener observed that this definition made it possible to define the types of Principia Mathematica as sets. Principia Mathematica had taken types, and hence relations of all arities, as primitive.

```js
(a,b)
:= { {{a},∅}, {{b}} }
:= { {{a},∅}
   , {{b}}
   }
:= { { {a}, ∅ }
   , { {b}    }
   }
```

Wiener used `{{b}}` instead of just `{b}` to make the definition compatible with type theory where all elements in a class must be of the same "type"; with `b` nested within an additional set, its type is equal to the type of `{{a},∅}`.


### Hausdorff's definition




### Kuratowski's definition



#### Variants



#### Proving that definitions satisfy the characteristic property




### Quine-Rosser definition



### Cantor-Frege definition



### Morse definition


### Axiomatic definition


## Set-Theoretical Representations of Ordered Pairs

(from "Set-Theoretical Representations of Ordered Pairs and Their Adequacy for the Logic of Relations" by Randall Dipert, 1982)

### Frege definition

`(a,b) := { a, {b} }`

This would fail since distinct ordered pairs `({{c}}, c)` and `({c}, {c})` would both become `{{{c}}, {c}}`.

However, the problem is that there's no simple way to translate Frege's definition into set theory because one of his crucial notions is defined using functions. And since functions are relations, Frege cannot be said to have succeeded or even attempted to reduce relations to sets.

## Category theory
