---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Material_implication_(rule_of_inference)
page-title:       Material implication (rule of inference) - Wikipedia
article-title:    Material implication (rule of inference) - Wikipedia
---
# Material implication (rule of inference) - Wikipedia

In propositional logic, material implication[1][2] is a valid rule of replacement that allows for a conditional statement to be replaced by a disjunction in which the antecedent is negated. The rule states that P implies Q is logically equivalent to not- or  (i.e. either  must be true, or  must not be true) and that either form can replace the other in logical proofs.
In [propositional logic][1], __material implication__[\[1\]][2][\[2\]][3] is a [valid][4] [rule of replacement][5] that allows for a [conditional statement][6] to be replaced by a [disjunction][7] in which the [antecedent][8] is [negated][9]. The rule states that *P implies Q* is [logically equivalent][10] to *not-![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) or ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed)* (i.e. either ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) must be true, or ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) must not be true) and that either form can replace the other in [logical proofs][11].

![{\displaystyle P\to Q\Leftrightarrow \neg P\lor Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a007bf0f949c7e02c4fc3a46be1264199cb01256)

Where "![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)" is a [metalogical][12] [symbol][13] representing "can be replaced in a proof with," and P and Q are any given logical [statements][14].

## Partial proof\[[edit][15]\]

Suppose we are given that ![P\to Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7cad5b2c2991ae1dbded560c5d875fbf49fe8ea). Then, we have ![{\displaystyle \neg P\lor P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5054c40695b09a14edb3f0d7236b09aece11af4) by the [law of excluded middle][16] (i.e. either ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) must be true, or ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) must not be true).

Subsequently, since ![P\to Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7cad5b2c2991ae1dbded560c5d875fbf49fe8ea), ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) can be replaced by ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) in the statement, and thus it follows that ![{\displaystyle \neg P\lor Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ac1671e840e1ccd6af46246ab7439802c090daab) (i.e. either ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) must be true, or ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) must not be true).

Suppose, conversely, we are given ![{\displaystyle \neg P\lor Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ac1671e840e1ccd6af46246ab7439802c090daab). Then if ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is true that rules out the first disjunct, so we have ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed). In short, ![P\to Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7cad5b2c2991ae1dbded560c5d875fbf49fe8ea).[\[3\]][17] However if ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is false, then this entailment fails, because the first disjunct ![\neg P](https://wikimedia.org/api/rest_v1/media/math/render/svg/5eb0d6c8752f8c7256d69c62e77dfe4c466dbe58) is true which puts no constraint on the second disjunct ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed). Hence, nothing can be said about ![P\to Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/d7cad5b2c2991ae1dbded560c5d875fbf49fe8ea). In sum, the equivalence in the case of false ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is only conventional, and hence the formal proof of equivalence is only partial.

This can also be expressed with a [truth table][18]:

P

Q

¬P

P→Q

¬P ∨ Q

T

T

F

T

T

T

F

F

F

F

F

T

T

T

T

F

F

T

T

T

## Example\[[edit][19]\]

An example is:

We are given the conditional fact that if it is a bear, then it can swim. Then all 4 possibilities in the truth table are compared to that fact.

1st: If it is a bear, then it can swim — T

2nd: If it is a bear, then it can not swim — F

3rd: If it is not a bear, then it can swim — T because it doesn’t contradict our initial fact.

4th: If it is not a bear, then it can not swim — T (as above)

Thus, the conditional fact can be converted to ![\neg P \vee Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/3dee89c718438f069ff81a0425b2ee722bbb2861), which is "it is not a bear" or "it can swim", where ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is the statement "it is a bear" and ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) is the statement "it can swim".

## References\[[edit][20]\]

[1]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[2]: https://en.wikipedia.org/wiki/Material_implication_(rule_of_inference)#cite_note-Hurley2011-1
[3]: https://en.wikipedia.org/wiki/Material_implication_(rule_of_inference)#cite_note-2
[4]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[5]: https://en.wikipedia.org/wiki/Rule_of_replacement "Rule of replacement"
[6]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[7]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[8]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[9]: https://en.wikipedia.org/wiki/Negation "Negation"
[10]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[11]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[12]: https://en.wikipedia.org/wiki/Metalogic "Metalogic"
[13]: https://en.wikipedia.org/wiki/Symbol_(formal) "Symbol (formal)"
[14]: https://en.wikipedia.org/wiki/Statement_(logic) "Statement (logic)"
[15]: https://en.wikipedia.org/w/index.php?title=Material_implication_(rule_of_inference)&action=edit&section=1 "Edit section: Partial proof"
[16]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[17]: https://en.wikipedia.org/wiki/Material_implication_(rule_of_inference)#cite_note-3
[18]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[19]: https://en.wikipedia.org/w/index.php?title=Material_implication_(rule_of_inference)&action=edit&section=2 "Edit section: Example"
[20]: https://en.wikipedia.org/w/index.php?title=Material_implication_(rule_of_inference)&action=edit&section=3 "Edit section: References"
