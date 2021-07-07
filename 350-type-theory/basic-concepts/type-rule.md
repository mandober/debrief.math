# Type rule

https://en.wikipedia.org/wiki/Type_rule

A **typing (type) rule**, a form of inference rules, describes how a particular type system assigns types to various syntactic constructions in a formal language.

In PLT, typing rules are applied by a type system to check whether the source code of a PL is well-typed, and in the case it is, to determine (or verify if the types were user-annotated) the types of all expressions and values.



A canonical example of the use of type rules is in defining type inference in the simply typed lambda calculus (which is the internal language of Cartesian closed categories).

```txt
Γ₁ |- e₁: τ₁ ... Γₙ |- eₙ: τₙ
-------------------------
      Γ |- e: τ
```
An expression, `e`, of type `τ` is written `e : τ` and read "the term `e` has the type `τ`". The typing environment is denoted with `Γ`. Typing rules of inference are usually denoted using a sequent.

$$\displaystyle\frac{\Gamma_1 \vdash e_1\!:\!\tau_1
\quad \cdots \quad \Gamma_n \vdash e_n\!:\!\tau_n}
{\Gamma \vdash e\!:\!\tau}$$

The sequents above the line are the premises that must be fulfilled for the rule to be applied, yielding the conclusion, i.e. the sequents below the line. This can be read as: if the expression $$e_{i}$$ has the type $$\tau_{i}$$ in the context (typing environment) $$\Gamma _{i}$$, for all $$i=1..n$$, then the expression $$e$$ will have the type $$\tau$$ in the $$\Gamma$$ context.


For example, a simple language to perform arithmetic calculations on real numbers may have the following rules:

$${
\displaystyle {
  \frac {
  \Gamma \vdash e_{1}\!:\!real \quad
  \Gamma \vdash e_{2}\!:\!real
  }{
    \Gamma \vdash e_{1}+e_{2}\!:\!real
    }
  } \qquad {
    \frac {
    \Gamma \vdash e_{1}\!:\!integer \quad
    \Gamma \vdash e_{2}:integer
    }{
      \Gamma \vdash e_{1}+e_{2}\!:\!integer
    }
  } \qquad \cdots
}
$$


A type rule may have no premises, and usually the line is omitted in these cases. A type rule may also change an environment by adding new variables to a previous environment; for example, a declaration may have the following type rule, where a new variable $$id$$, with type $$\tau '$$, is added to $$\Gamma$$

$${\displaystyle {\frac {\Gamma \vdash e'\!:\!\tau '\quad \Gamma ,id\!:\!\tau '\vdash e\!:\!\tau }{\Gamma \vdash {\text{let id = }}e'{\text{ in }}e{\text{ end}}:\!\tau }}}$$

Here the syntax of the let expression is that of Standard ML. Thus type rules can be used to derive the types of composed expressions, much like in natural deduction.
