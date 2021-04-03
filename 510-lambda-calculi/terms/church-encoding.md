# Church encoding

Church Booleans
Church numerals

Church encoding covers:
* Church Booleans
  * logical constants
    - true
    - false
  * logical connectives
    - not
    - and
    - or
  * predicates:
    - ifTrue, isFalse
* Natural numbers
  - zero
  - successor


predecessor
value container
inc
extract
const
division
signed numbers
plus and minus
multiply and divide
rational numbers
real numbers
predicates
Church pairs
List (two pairs as a list node, single pair as a list node, list as right fold)




The purpose of lambda calculus with regards to mathematics is similar to using other theories as the foundations of mathematics - such theory has to show how can it build various mathematical objects.

Taking a set theory under consideration, the author has to show how to, e.g. build the natural numbers. A common way to do it, is to start by declaring that the number zero is represented by the empty set, `0 := ∅`, and then give the definition of the successor in terms of set operations, e.g. `S(n) = n ∪ {n}`.

```
S(n) = n ∪ {n}
0 := ∅
1 = S(0) = 0 ∪ {0} = {0}                   = {∅ }
2 = S(1) = 1 ∪ {1} = {∅} ∪ {{∅}}           = {∅ , {∅} }
3 = S(2) = 2 ∪ {2} = {∅, {∅}} ∪ {{∅, {∅}}} = {∅ , {∅} , {∅,{∅}} }
4 = S(3) = 3 ∪ {3} = {∅ , {∅} , {∅,{∅}} , {∅,{∅},{∅,{∅}}} } = {0,1,2,3}
```

While set theory bases everything on the notion of a set, LC uses the notion of a function instead. However, no function comes predefined in LC since it just formalizes the concepts of function abstraction (how to make new function) and function application (how to apply a function) and leaves everything else unspecified and for users to decide. Thus, there are many ways to represent some mathematical object, with smaller or bigger differences between the approaches of various authors (and many a famous author and scientist has taken a shot at tackling the LC and discovering new approaches to many problems).

Naturally, the author of the LC, Church, has invented the most comprehensive set of definitions of how to encode many mathematical objects in the LC including Booleans, natural numbers, predicates, negative, rational, real numbers, and some data structures. Such a set of encodings have become known as the **encoding scheme**, and the one just mentioned is *the Church encoding*.
