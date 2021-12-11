# Scott encoding

https://en.wikipedia.org/wiki/Mogensen-Scott_encoding

In an encoding, the data and operators form a mathematical structure which is embedded in the LC.

Scott encoding is a way to represent recursive data types in the LC. Whereas Church encoding starts with representations of the basic data types, and builds up from it, *Scott encoding* starts from the simplest method to compose algebraic data types (ADT).

Mogensen-Scott encoding extends and slightly modifies Scott encoding by applying the encoding to meta-programming. This encoding allows the representation of LC terms, as data, to be operated on by a meta program.

Scott encoding appears first in a set of unpublished lecture notes by Dana Scott whose first citation occurs in the book "Combinatorial Logic, Volume II".

Michel Parigot gave a logical interpretation of and strongly normalizing recursor for *Scott-encoded numerals*, referring to them as the "Stack type" representation of numbers. Torben Mogensen later extended Scott encoding for the encoding of Lambda terms as data.

## Definition

Let $$D$$ be a datatype with $$N$$ constructors, $$\{c_i\}_{i=1}^N$$, such that constructor $$c_{i}$$ has arity $$A_{i}$$.

### Scott encoding

The Scott encoding of constructor $$c_{i}$$ of the data type $$D$$ is

$$(\lambda x_1 \ldots x_{A_i} . \lambda c_1 \ldots c_N . c_i)\ x_1 \ldots x_{A_i}$$

### Mogensen-Scott encoding

Mogensen extends Scott encoding **to encode any untyped lambda term as data**.

This allows a lambda term to be represented as data, within a lambda calculus meta program. The meta function `mse` converts a lambda term into the corresponding data representation of the lambda term;

$$
\displaystyle {
\begin{aligned}
\operatorname {mse} [x]&=\lambda a,b,c.a\ x\\\operatorname {mse} [M\ N]&=\lambda a,b,c.b\ \operatorname {mse} [M]\ \operatorname {mse} [N]\\\operatorname {mse} [\lambda x.M]&=\lambda a,b,c.c\ (\lambda x.\operatorname {mse} [M])\\
\end{aligned}
}
$$



## Scott encoding Natural numbers

```js
0    := λz. λs. z
1    := λz. λs. s 0
2    := λz. λs. s 1
3    := λz. λs. s 2
pred := λn. n 0 (λx. x)
case := λn. λa. λf. n a f

// case is for pattern matching CASE_N
case: n a f
    | n == 0       ->  a
    | n == succ x  ->  f x

// with pattern matching, we can define the predecessor:
pred := λn. CASE_N n Z (λm. m)
```
