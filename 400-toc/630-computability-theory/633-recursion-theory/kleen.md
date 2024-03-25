# Introduction to Metamathematics - Stephen Cole Kleen 1952

## Primitive recursive functions

To establish the lemma for Godel's theorem, we shall develop an intuitive theory about a certain class of number-theoretic functions and predicates, eventually showing that every predicate of the class is numeral-wise expressible in the formal system, and that the two predicates `A (a, b)` and `B (a, c)` of the lemma belong to the class. This will save us much of the labor of a step by step development within the formal system.

Except for the application just described, the theory of these functions and predicates will be developed independently of the formal system of the preceding chapters. In this theory, as in metamathematics, we shall use only finitary methods.

The series of the natural numbers generated from one primitive object `0` by means of one primitive operation (') representing the successor operation. This constitutes an inductive definition of the class of the natural numbers.

Proof by induction, as a method of proving a theorem `T(y)` for all natural numbers `y`, corresponds immediately to this mode of generating the numbers.

**Definition by induction** (not to be confused with an *inductive definition*, aka *recursive definition*) is the analogous method of defining a number theoretic function `φ(y)` or predicate `P(y)`.

First `φ(0)` or `P(0)` (the value of the function or predicate for 0 as arg) is given. Then, for any natural number `y`, `φ(y')` or `P(y')` (the successor of `y`) is expressed in terms of `y` and `φ(y)` or `P(y)` (the value for `y`).

Analogously, we can conclude that under these circumstances the value `φ(y)` or `P(y)` of the function or predicate is defined for every natural number `y`. 

For the two parts of the definition enable us, as we generate any natural number `y`, at the same time to determine the value `φ(y)` or `P(y)`.

To examine this in more detail, let us write the pair of equations

```hs
φ(0)  = q             (1)
φ(y') = χ(y, φ(y))    (2)


h    0  = q           (1)
h (S y) = g y (h y)   (2)

h 0 =                                          q
h 1 = h (S 0) = g 0 (h 0) =                g 0 q
h 2 = h (S 1) = g 1 (h 1) =           g 1 (g 0 q)
h 3 = h (S 2) = g 2 (h 2) =      g 2 (g 1 (g 0 q))
h 4 = h (S 3) = g 3 (h 3) = g 3 (g 2 (g 1 (g 0 q)))
```

to express the definition of a function `φ(y)` by induction on `y`, where `q` is a given natural number, and `χ` is a given number-theoretic function of two variables.

Then, for example, the value `h(4)` is determined thus: to generate 4, we generate successively 0,1,2,3,4. By (1), `h(0) = q`. And `h(1) = h(S 0)`, which, by (2), is `g 0 (h 0)`, and since `h 0 = q`, this is `g 0 q`, and so on until `h(4) = g 3 (g 2 (g 1 (g 0 q)))`.

Thus we have a process by which, to each natural number `y`, on the basis of the generation of `y` in the natural number sequence, a corresponding number `φ(y)` is determined. Since a number `φ(y)` is thus associated with `y`, for each `y`, a particular number-theoretic function `φ` is defined with these numbers `φ(y)` as its respective values.

This function `φ` satisfies the equations (1), when (1) are considered as functional equations in an unknown function `φ`, since every particular equation comprised in (1), namely, `φ(0) = q`, `φ(1) = g 0 q`, etc., is satisfied in the course of selecting the successive numbers φ(0), φ(1), etc.

Also this `φ` is the only function satisfying (1) as functional equations, since the process by which we determined the successive numbers, φ(0), φ(1), φ(2), etc., from the equations (1) can be interpreted as showing that any function `φ` satisfying the equations must have the values selected.

In other definitions by induction, the defined function `φ` depends on additional variables `x₁ … xₘ` called *parameters*, whose *values are fixed* throughout the induction on `y`.


>What number-theoretic functions are definable by induction?
To make this question precise, we must specify what functions are to be taken as known intially, and what operations, including what forms of definition by induction, are to be allowed in defining further functions.

We shall now select the specifications with a view to obtaining functions definable by induction in an elementary manner. These functions will be called **primitive recursive**.

Each of the following equations and systems of equations (1-5) defines a number theoretic function `φ` when
- `n,m,q ∈ ℕ`
- `i ∈ ℕ` such that `1 < i < n`
- `x₁ … xₘ` are naturals and fixed parameters, abbreviated as `x̅`
- `g`, `f` are given number-theoretic functions of indicated arity

1. successor      `φ(x) = x'`
2. constants      `φ(x₁, …, xₘ) = q`
3. projections    `φ(x₁, …, xₘ) = xᵢ`
4. composition    `φ(x₁, …, xₘ) = g(f₁(x̅), …, fₖ(x̅))`
5. multi-var PR   `φ(0, x₁, …, xₘ) = f(x₁, …, xₘ)`
                  `φ(y',x₁, …, xₘ) = g(y, φ(y, x₁, …, xₘ), x₁, …, xₘ)`
5. single var PR  `φ(0)  = q`
                  `φ(y') = g(y, φ(y))`


A function is primitive recursive, if it is definable by a series of applications of these 5 operations of definition.
