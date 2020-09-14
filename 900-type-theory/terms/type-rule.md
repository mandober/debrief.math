# Type rule

https://en.wikipedia.org/wiki/Type_rule

In type theory, a **type (typing) rule** is an inference rule that describes how a type system assigns a type to a syntactic construction.

These rules may be applied by the type system to determine if a program is well typed and what type the expressions have.

A prototypical example of the use of type rules is in defining type inference in the simply typed lambda calculus, which is the internal language of *Cartesian closed categories*.

An expression, $$e$$ of type $$\tau$$ is written as $$e\!:\!\tau$$ ($$e$$ has the type $$\tau$$). The typing environment is written as $$\Gamma$$. The notation for inference is the usual one for *sequents* and inference rules, and has the general form:

$$
\displaystyle
\frac{
  \Gamma_1 \vdash e_1\!:\!\tau_1 
  \quad \cdots \quad 
  \Gamma_n \vdash e_n\!:\!\tau_n
  }{
    \Gamma \vdash e\!:\!\tau
  }
$$

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
