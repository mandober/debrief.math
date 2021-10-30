# Introduction

- functions in mathematics
- functions in programming languages
- lambda calculus as a formalization of functions
- lambda calculus as a programming language


> Lambda calculus is merely a notational form, a set of very loose rules prescribing the allowed syntactical forms for defining and applying functions.

As a notational form, it is similar to a notational form of a logic, which imposes a set of legal syntactical elements and forms (defining what logical constants, logical connectives, predicates, quantifiers, functions, etc. are allowed), along with a set of rules governing thier interaction (however, the general interaction rules are usually fixed, but the choice of syntactic elements may vary greatly).

For example, we can define a form of propositional logic and say that we only allow logical connectives of conjunction (⋀) and negation (¬), both logical constants (⟙, ⟘), and logical variables (p, q, …), along with the usual set of rules governing their interaction. We could then derive valid formulas using this notation. Perhaps, we'd try translating some formulas that use more logical connectives into our restricted set.

`p ⋁ q := ¬(¬p ⋀ ¬q)`


## Lambda calculus as a formalization of function

Lambda calculus may be considered as a formalization of the mathematical concept of function.

As an initial introduction, lambda calculus can be thought of as a **formalization of the mathematical concept of function**.

It concerns itself with the minimal set of elements needed to study the essence of the mathematical notion of function, which includes the rules of how a function is defined and how a function is applied to its arguments.

The fact that the functions are mathematical functions means the notion of a function is exactly how it is represented in mathematics, not how it is represented in programming languages. This means that, unlike in PLs, functions are honest, pure, free of side-effects.



It concerns itself with the minimal set of elements needed to study the essence of the mathematical notion of function, which includes the rules of how a function is defined and how a function is applied to its arguments.

The fact that the functions are mathematical functions means the notion of a function is exactly how it is represented in mathematics, not how it is represented in programming languages. This means that, unlike in PLs, functions are honest, pure, free of side-effects.

## Lambda calculus as a minimal programming language.
