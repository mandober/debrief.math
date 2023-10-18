# Syllogism

https://en.wikipedia.org/wiki/Syllogism

A **syllogism** is a logical argument based on deductive reasoning that consists of 3 statements, two premises and a conclusion, that relate 3 terms.

The first premise is a more general statement called *major premise*, while the second premise is a more specific statement called *minor premise*.

The premises introduce and associate the 3 terms in a certain way, such that the conclusion makes the final association between the 3 terms and thus logically follows.

As long as the premises are true and the syllogism is correctly structured (the 3 terms are correctly associated/connected), the conclusion will be true.

Considering the most famous syllogism,
1. All man are mortal.
2. Socrates is a man.
3. Thus, Socrates is mortal.

First, the major premise introduces two terms (`A` for man, `B` for mortal) and relates them in a certain way, i.e. all `A`'s are `B`.

Second, the minor premise than introduces the third term (`C` for Socrates) and relates it with one of the previous terms (here with the term `A`) stating that `C` is `A`.

Finally, the conclusion makes the final association that follows logically from the associations made by premises - here it relates `C` and `B`, concluding that `C` is `B`.

A generally form of the syllogisms compatible with this example:
1. All A are B.       `g : r -> t`
2. All C are A.       `f : s -> r`
3. All C are B.   `g ∘ f : s -> t`

which is expressable as backward function composition, `g ∘ f`   

```js
// flipping the order of args doesn't change the conclusion:
(f : a -> b)          (g : b -> c)
(g : b -> c)          (f : a -> b)
----------------      ----------------
(g ∘ f : a -> c)      (g ∘ f : a -> c)


// form 1
all A = B
      ↖
all C = A
--- ↓ ---
all C = B

// form 2
all A = B
      ↙
all B = C
------- ↓
all A = C

```


In fact, the previous syllogism form is compatible with this one:
1. All A are B.       `g : a -> b`
2. All B are C.       `g : b -> c`
3. All A are C.  `f |> g : a -> c`

which is expressable as forward function composition, `f |> g`    
`(a -> b) -> (b -> c) -> (a -> c)`



Syllogisms were first described by Aristotle in "Prior Analytics", becoming the fundamental tool of logical reasoning and argumentation in the centuries since.



## Structure of syllogisms

Syllogisms can be represented using the 3-line structure, in which the sentences of a natural language have been replaced with letters, capturing the more general logical forms.

A, B, C stand for the different terms:
- all A are B
- all C are A   
∴ all C are B

Another way of representing this:
- if   A = B
- and  C = A
- then C = B

Since `A` functions as an intermediate term that connects the other two, an alternative way to denote this syllogisms is `C = A = B ∴ C = B`.

## Law of Syllogism

The Law of Syllogism states that if the premises are true, then we can derive a true conclusion:
1. if p then q (all p's are q's)
2. if q then r (all q's are r's)
3. if p then r (thus, all p's are r's)

## Types of syllogisms

There are 3 major types of syllogisms
- *conditional syllogism*: if A is true, then B is true (if A then B)
- *categorical syllogism*: if A is in C, then B is in C
- *disjunctive syllogism*: if A is true, then B is false (A or B)

Also of note for syllogisms is:
- Categorical propositions
- Enthymeme: a syllogism with an incomplete argument; have implicit premise(s)
- Modus Ponens: If X is true then Y is true. X is true. Therefore Y is true
- Modus Tollens: If X is true then Y is true. Y is false. Therefore X is false
- Set Theory: The basics of disjoint and overlapping sets/classes


## List of valid argument forms

https://en.wikipedia.org/wiki/List_of_valid_argument_forms

## Valid syllogistic forms

In syllogistic logic, there are 256 possible ways to construct categorical syllogisms using the A, E, I, and O statement forms in the square of opposition. Of the 256, only 24 are valid forms. Of the 24 valid forms, 15 are unconditionally valid, and 9 are conditionally valid.
