# Values

## Reduction vs Evaluation

Reduction just reduces terms to other terms, but evaluation reduces terms to values. Thus, to speak about evaluation, we must first establish what the values in a language are. Nevertheless, in a loose setting, these two names are often used interchangibly.

## Forms

LC has 3 basic forms, the 3 *lambda terms* Var, App, Abs. *Lambda expression* is any arbitrary expression; even though any expression, considered as a tree, will necessarily be rooted as one of the 3 basic nodes. Thus, in case of LC, we can use the two phrases interchangibly.

*Value* is a named form of a lambda expressions that, viewed as a tree, is rooted at the Abs node. That is, in LC, abstractions are values, and the only kind of values are abstractions. A variable cannot be at the top-level (the root of the tree) expression because it would be undefined. An App can be a top-level expression, but it is bound for reduction. Only an Abs makes sense as a top-level expression, especially when it represents some encoded data.



A **closed term** is a lambda expression withour free varaibles.
