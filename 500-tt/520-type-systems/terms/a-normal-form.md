# A-normal form

https://en.wikipedia.org/wiki/A-normal_form

**A-normal form (ANF)** is an intermediate representation of programs associated with FPL compilers. In ANF, all arguments to a function must be trivial, i.e. args may be either constants or variables. That is, evaluation of each argument must halt immediately.

Some of the advantages of using CPS as an intermediate representation are that optimizations are easier to perform on programs in CPS than in the source language, and it is also easier for compilers to generate machine code for programs in CPS. However, when Sabry and Felleisen introduced ANF in 1992, they showed how compilers could use ANF to achieve the same benefits with a single source-level transformation. In contrast, the CPS transformation realistically involves some additional phases.

This article shows ANF in terms of the λ-calculus with weak reduction and let-expressions, where the restriction is enforced by
- allowing only constants, variables, and λ-terms as args
- requiring that the result of a non-trivial expression be captured by a let-bound variable, or returned from a function

## Grammar

The BNF grammar of pure λ-calculus modified to support ANF

```lean bnf
exp := val
     | let var = val     in exp
     | let var = val val in exp

val := var
     | λ var . exp
```

Variants of ANF often allow constants, records, tuples, polyadic (multi-arg) functions, primitive operations and conditional expressions as well.

## Example

```hs
-- the expression
f (g x, h y)

-- in A-normal form
let a = g x   -- results of intermediate computations are required
    b = h y   -- to be either captured by a let-bound variable
in  f (a, b)  -- or returned from a function
```

## References

* "Reasoning about Programs in Continuation-Passing Style", 1992
  by Amr Sabry, Matthias Felleisen
  http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.22.7509

* "The Essence of Compiling with Continuations", 1993
  by Cormac Flanagan, Amr Sabry, Bruce Duba, Matthias Felleisen
  https://users.soe.ucsc.edu/~cormac/papers/pldi93.pdf
