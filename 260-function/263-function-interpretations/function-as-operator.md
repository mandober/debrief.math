# Function as operator

An **operator** is a function with a symbolic name and certain fixity.

What distinguishes operators from regular functions the most is their name, which is composed of symbolic characters, as opposed to alphabetical (or alphanumerical) only characters used for forming the names of the latter.

In CS, in almost all PLs, the name of a function belongs to the grammatical category of *identifiers*, used to uniquely identify a language item (especially expressions and functions, but the other language items as well, like literals, data types, data structures, type classes, type and data constructors, etc.). It may be said that an identifier names a language item, so its definition can be more easily located in e.g. a symbols table. Majority of PLs have the same rule for naming items: a name must begin with a alphabetic character or underscore, followed by a number of alphanumerical characters and underscores; expressed as a regex `[_a-zA-Z][_a-zA-Z]`, with some PLs also having restrictions over the letter casing.

Although it is allowed to be more liberal with naming, similar naming scheme is used in mathematics. After all, the naming scheme was derived from the function names used in mathematics.


Apart form names, another property that distinguishes operators from regular functions goes by the term popularized in FP, the so-called **fixity**.



characteristic property of opertors


that has a certain fixity properties.

a preferred position for application, and .

specific notion of fixity.




While function application prefers prefix position, the application of an operator, with regard to its arguments, may be in prefix, infix and suffic positions. An operator that supports different application positions is sometime called a *mixfix operator*.

(sometimes called

 takes place in different positions

Besides name, another characteristic property is that operators are applied in various positions with regards to their arguments, as opposed to functions which prefer the prefix position.

```hs
-- function application takes a prefix position:
succ 5
```


of operators is that they are applied 

is that operators are used in various positions, as opposed to the prefix position preferred by functions.

multifix used infix


Some very well-known operators are `+`, `⨯` (arithmetic), `¬`,`→` (logic), `≤`, `>` (relational), `∘` (function composition), and numerous others.


Operators are used both in mathematics and CS where they are proliferated across various PLs.
