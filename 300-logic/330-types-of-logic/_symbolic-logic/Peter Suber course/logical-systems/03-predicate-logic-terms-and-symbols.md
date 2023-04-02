---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990210111857/http://www.earlham.edu/~peters/courses/log/terms3.htm
article-title:    Peter Suber, "Predicate Logic Terms and Symbols"
---
# Peter Suber, "Predicate Logic Terms and Symbols"
The Wayback Machine - https://web.archive.org/web/19990210111857/http://www.earlham.edu:80/%7Epeters/courses/log/terms3.htm

In logic, as in grammar, a ***subject*** is what we make an assertion about, and a ***predicate*** is what we assert about the subject. We adopt the convention that subjects are symbolized by lower-case letters, and predicates by capitals. We also adopt the convention that predicates are put first and subjects second in our notational formulas. Hence, the proposition "Socrates is mortal" might be translated "Ms": "M" for the predicate "being mortal", and "s" for the subject "Socrates".

When the subject of the sentence is an individual object (like Socrates in "Socrates is mortal"), then we are using ***first order logic***. When the subject is another predicate (like being mortal in "Being mortal is tragic"), then we are using ***second order logic*** or higher order logic. This course and this hand-out are limited to first order logic.

Individual ***constants*** are symbolized by (lower-case) letters from the front of the alphabet: a, b, c, .... Individual ***variables*** are symbolized by (lower-case) letters from the end of the alphabet: ...x, y, z. Constants are short names or abbreviations for longer names; hence "s" is a constant when it is used to abbreviate "Socrates". Variables are placeholders that range over individual objects. Hence "x" in "Hx" is a variable because it specifies no individual on its own, but holds the place for an individual who could be Amy, Bilbo, Conan... (that is, a, b, c...).

***Quantifiers*** tell us of how many objects the predicate is asserted. If we want to assert a predicate of all objects, we use the ***universal quantifier***, "(x)". For example, "(x)Mx" says that, for all x, x is mortal; or more idiomatically, all things are mortal, everything is mortal. If we want to assert a predicate of some objects (at least one), we use the ***existential quantifier***, "(x)". For example, "(x)Mx" says that, for some (at least one) x, x is mortal; or idiomatically, something is mortal.

Hence, another name for predicate logic is ***quantification theory***. With the two quantifiers and negation, we can express the three quantities, *all*, *some*, and *none*.

(In first order logic, all variables range over individual objects; all predicate letters are constants; and all quantifiers use individual variables. In higher order logics, we introduce predicate variables and allow quantification over predicates.)

Quantifiers refer to the ***universe of discourse***, the background set of things we are talking about. By default, the universe of discourse contains everything whatsoever that can be referred to. This includes things that don't exist, like centaurs and square circles, since we sometimes want to talk about them. When we stipulate that the universe of discourse is some smaller set of things, e.g. the set of all human beings, then the quantifiers refer only to that set of things. For example, "(x)Mx" would then assert that all human beings are mortal, and "(x)Mx" would assert that at least one human being is mortal.

By convention, the existential quantifier has ***existential import***; that is, it asserts the existence of something. "(x)Mx" asserts the existence of something mortal. The universal quantifier lacks existential import; it is non-committal. So "(x)(Ax  Bx)" asserts that all A's —if any— are B's; it does not presuppose that any A's exist. These conventions are modern, due to George Boole. Aristotle held that both forms of quantification possess existential import.

In propositional logic we encountered a special set of statements all of whose substitution instances were true; we called them tautologies. In predicate logic, there are also statements all of whose substitution instances are true. But historically we do not call them tautologies; instead we call them simply ***logical truths*** (or logically valid formulas). All tautologies are logical truths, but not all logical truths are tautologies.

Quantifiers have ***scope***, namely, the first whole proposition, simple or compound, to their right. In this sense, they have the same scope as the negation sign. "Bx" is *inside* the scope of the quantifier in "(x)(Ax  Bx)" but *outside* in "(x)Ax  Bx".

Variables inside the scope of a quantifier are ***bound*** by that quantifier; otherwise they are ***free***. More precisely, a variable is only bound by a quantifier on the same letter; hence "x" is bound in "(x)Mx" but not in "(y)Mx", even though it is inside the scope of the quantifier in both cases.

When a variable is within the scopes of two or more quantifiers, then it is bound by the most local (least global) quantifier on the same letter, if any. Hence, "x" is bound by "(x)" in "(y)[(Ay  By)  (x)Cx]" and "(x)(Ax·(x)Bx)".

A variable may occur more than once in an expression, free in some occurrences and bound in others, for example, "x" in "(x)Ax  Bx". Hence it is imprecise to speak merely of free and bound variables. We must speak of free and bound ***occurrences*** of variables. In "(x)Ax  Bx", the first occurrence of "x" is bound, because it is within the scope of the quantifier, but the second occurrence is free because it is outside that scope.

A variable may also occur freely with respect to one quantifier and bound with respect to another. For example, in "(x)Ax  (x)Bx" the "x" in "Bx" is free with respect to the universal quantifier, bound with respect to the existential quantifier. So we must speak of free and bound occurrences of variables ***with respect to*** a given quantifier.

A quantifier that binds no variables is ***vacuous***. For example, the universal quantifier is vacuous in "(x)Mz" and "(x)Ma" but not in "(x)Mx".

A ***general*** proposition is one with a quantifier; it can be existential or universal. A ***singular*** proposition lacks a quantifier and variables, and uses only constants, for example, "Ms". Singular and general propositions with no free variables are genuine ***propositions*** in the sense that they possess truth-values. By contrast, a ***propositional function*** has at least one free occurrence of a variable, for example "Hx". Therefore, propositional functions lack a truth-value; we can't tell whether the unfilled form " (blank) is human" is true or false until the blank (or free variable) is bound by a quantifier or replaced by a constant, that is, until the propositional function converted to a genuine proposition.

(Now that we know what a propositional function is, we can define quantifier scope more precisely: a quantifier's scope is the first whole proposition *or propositional function* to its right.)

One of the components of "(x)(Ax  Bx)" is "Bx", which is a propositional function without truth-value. Hence we cannot determine the truth-value of the general proposition "(x)(Ax  Bx)" using only the truth-values of the components. Hence, in predicate logic we give up truth-functionality. Hence, we give up methods for testing validity which depend on truth-functional propositions, such as truth tables.

There are two ways to convert a propositional function (like "Hx") into a proposition. First, the free variables may be bound by quantifiers; this is called ***generalization***. Second, the free variables may be replaced by constants; this is called ***instantiation***.

We will introduce four rules of inference for predicate logic. ***Universal generalization*** allows us to add the universal quantifier. ***Existential generalization*** allows us to add the existential quantifier. ***Universal instantiation*** allows us to remove the universal quantifier and (if we like) to replace the variables it formerly bound with constants. ***Existential instantiation*** allows us to remove the existential quantifier.

We will also introduce ***quantifier negation*** rules which allow us to exchange either quantifier for the other (adding or subtracting negation signs as needed), or to add and subtract negation signs on quantifiers (changing the quantifier as needed).

***Singly-general*** propositions are those with just one quantifier. ***Multiply-general*** propositions have two or more quantifiers.

Sometimes the subject is called an ***argument*** of the predicate, by analogy to the arguments of a function in mathematics. (The same analogy to functions explains why in our notation predicate letters come first and the subject letters second.)

***Monadic*** predicate logic uses predicates (called ***one-place predicates***) that take just one argument. ***Polyadic*** predicate logic uses predicates (called ***many-place predicates***) that take two or more arguments. For example, "x is mortal" or "Mx" is a one-place predicate, while "x loves y" or "Lxy" is a two-place predicate and "x lies between y and z" or "Bxyz" is a three-place predicate.

Grammatically, the argument to a one-place predicate is the subject of the sentence. The arguments to a many-place predicate are the subject of the sentence and objects of the verb.

One-place predicates assert that their objects have some property or attribute. Many-place predicates assert that their objects stand in some kind of relation. Hence, monadic predicate logic is sometimes called the ***logic of attributes***, and polyadic predicate logic is sometimes called the ***logic of relations***.

It may seem that monadic and polyadic predicate logic are not very different, or that monadic logic is just the 'limiting case' of polyadic logic. But in monadic logic, we have infallible methods for testing the validity of every argument; in polyadic logic we don't. Hence, monadic predicate logic is ***decidable***, while polyadic predicate logic is not.

A common two-place predicate is ***identity***, asserting that its two arguments are identical. So "x is identical to y" could be symbolized "Ixy". This is predicate logic notation for what in mathematics we would write as "x = y". If we introduce the "=" symbol to abbreviate the two-place predicate of identity, and if we give the symbol the customary meaning of identity, then the logics enhanced in this way are said to be ***with identity***. Until explicitly enhanced, however, our logics are ***without identity***. In logics without identity, the symbol "=" is undefined; moreover, "Ixy" is not special and could mean "x is independent of y" or "x is ill-treated by y".

Once we introduce identity into polyadic predicate logic, we can express far more than the three quantities, *all*, *some*, and *none*. In fact we can express all the quantities denoted by the natural numbers, 0, 1, 2, 3.... For example, we can say "at least three things are stooges", "at most three things are stooges", and "exactly three things are stooges". Until we do so in class, I leave it as a challenge to you to figure out how. (If you can't wait, see the [end][1] of the [Translation Tips][2] hand-out.)

For more terms, see my [Glossary][3] of first order logic.

[1]: https://web.archive.org/web/19990210111857/http://www.earlham.edu/~peters/courses/log/transtip.htm#numbers
[2]: https://web.archive.org/web/19990210111857/http://www.earlham.edu/~peters/courses/log/transtip.htm
[3]: https://web.archive.org/web/19990210111857/http://www.earlham.edu/~peters/courses/logsys/glossary.htm
