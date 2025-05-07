# Math :: Commons :: Mathematical Language

https://abstractmath.org/MM/MMSymLang.htm

## The symbolic language of mathematics

This is an introduction to the symbolic language of mathematics, excluding the text written in a natural language, like English. Mathematical articles written in English usually combine "mathematical English" (aka prose) with mathematical formulas written in symbolic language.

## Contents

- Symbolic expressions
- Reading symbolic expressions
- Images and metaphors for symbolic expressions
- Grammar of the symbolic language
- Variables and substitution
- Variable objects
- Alphabets
- Delimiters
- Other symbols

## Symbolic language

*The symbolic language of math* is a distinct, special-purpose language. It has its own rules that are quite different from those of English, but usually also different from the strict rules of a formal language. You can usually interpret mathematical expressions written in the symbolic language even though the enclosing article is written in a natural language you are not familiar with.

## Symbolic expressions

The symbolic language of math consists of expressions written in the way mathematicians have traditionally write them. A *symbolic expression* consists of symbols arranged according to specific rules. Every symbolic expression is one of two types: *symbolic assertion* or *symbolic term*.

## Symbolic statements

A symbolic statement, also called a *symbolic assertion*, is a complete *proposition* that stands alone as a formal sentence. Symbolic assertions play the same role in the symbolic language as assertions do in mathematical English.

One instance of symbolic statements are *algebraic equations* consisting of variables, parameters and constants arranged in *equality relation*. Such symbolic statements has a value but not a numerical one. Rather, it has a *truth value*, i.e. it is either true or false. It may be true for particular instantiations of variables, and false for others. We usually speak of true instantiations as being *solutions of the equation*, but, strictly, the overall value of a symbolic statement is a truth value. If the equation has no set of instantiations of variables that make it true, then the equality relation fails. Similar to equations are *inequations* expressing *inequalities*. That is, the equals sign (`=`) consitutes an equation, while other relational signs (`≠, ≤, <, >, ≥`) consitute inequations. However, inequations are also statements with a truth value.

## Manipulating expressions

Symbolic statements are true only if the equation is, or can be, *balanced*. The two sides of an equation are symbolic expressions which include constants (literal numbers) and variables combined with various operations and functions. Constants are literals such as 0, -1, -3/4, `π`, `e`, but also a class of expressions which, by convention, need not be further evaluated, such as `√2`, `√3/2`, `e²`, `π√5`. In fact, an equation is deemed balanced its sides are equal which may not necessarily mean they are evaluated all the way down to a constant. So, for example, `x = x` may already be considered a balanced eqution, without instantiating `x`, or `√3/2 = √3/2` without evaluting it all the way down. Usually, it is the particular set of instantiations that makes an equation true that is of interest, and not its truth value per se.

An equation (or inequation for that matter) remains balanced if both sides are manipulated in the same manner. For examople, adding or removing the same quantity to both sides. In general, applying the same function to both sides maintains the balance.

An **identity** is a special type of equation that is always true, regardless of instantiation. Identities are analogous to tautologies in logic. What is different about identities - compared to other manipulations which are always applied to both sides of in/equations - is that they are applied only to a single side of in/equations.

These rules of manipulations of equations are very similar to the rules of logic for manipulating formulas of e.g. FOL. In fact, the "offical" language of mathematics is FOL, although in a more relaxed form. However, if required it can take on a very strict - if not very friendly - form as well. The more relaxed and user friendly version actually mixes FOL with mathematical expressions, even though, strictly, FOL expressions should be separate from mathematical symbols. FOL has a minimalistic set of symbols so mathematical relations and notions would have to be expressed by predicates - therein lies the pain because the association of predicate symbols (letters) with their (mathematical) meaning is (in strict setting) given separately as a table of associations; for example,

predicate | meaning            | math symbol
----------|--------------------|-------------
EL(x,y)   | "is an element of" | ∈
EQ(x,y)   | "is equal to"      | =
NE(x,y)   | "is not equal to"  | ≠
LT(x,y)   | "is less then"     | <

For example, in the frienfdly version of FOL, the functional property may be expressed as the formula:

`∀x∀y((x ∈ A ∧ y ∈ A) ⇒ f(x) = f(y) ⇒ x = y)`

In the strict version, it would be expressed as something along these lines:

`∀x(∀y((EL(x,A) ∧ EL(y,A)) ⇒ (EQ(f(x),f(y)) ⇒ EQ(x,y))))`

…which, btw, is incorrect as function `f` wasn't bound anywhere. In fact, first-order logic doesn't allow quantification over functions or predicates, for that matter.

"First-order" means we can only quantify over individual domain elements (domain of discourse or DOD), not over their groups (sets), nor over functions (which yield DOD elements), nor over predicates (which yield truth values). Those things require second-order logic; which is not a sin, and SOL is indeed used in part of math where FOL is insufficient. However, a considerable effort is invested to make mathematics *first-orderizable* (using hacks like *axiom schemata*).


### Examples

- `π > 0` is a symbolic statement that is true
- `π = 3` is a symbolic assertion that is false
- `x > 0` is true when `x` is instantiated as a number larger then 0, and false when `x` is instantiated to 0 or any number smaller then 0. Here, the domain over which `x` ranges is not specified, so by default it is the set `ℝ`.
- `x² − x − 2 = 0` this symbolic assertion is true for x = −1 or 2,  and false for anything else.
- `x² − y² = (x−y)(x+y)` is an identity.
- `x² ≥ 0` is true for all real numbers, but not for all complex numbers. So the data type of a variable matters in determining whether an assertion containing the variable is always true or not.
- `x² < 0` is false for all real numbers.
- `x² − 6x + 4y > 0` is true for some values of x and y and false for others; e.g. it is false for x=1 and y=0 and true for x=1 and y=2.
