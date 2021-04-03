# Mogensen-Scott encoding

https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding

*Scott encoding* is a way to represent (recursive) data types in the LC. In an encoding, the data and operators form a mathematical structure which is embedded in the LC. But, whereas Church encoding starts with representations of the basic data types, and builds up from it, Scott encoding starts from the simplest method to compose algebraic data types (ADT).

**Mogensen-Scott encoding** extends and slightly modifies Scott encoding by applying the encoding to meta-programming. This encoding allows the representation of LC terms, as data, to be operated on by a meta program.


Lambda calculus allows data to be stored as parameters to a function that does not yet have all the parameters required for application. For example,

$$
{\displaystyle ((\lambda x_{1}\ldots x_{n}.\lambda c.c\ x_{1}\ldots x_{n})\ v_{1}\ldots v_{n})\ f}
$$

May be thought of as a record where the fields $$x_1 \ldots x_n$$ have been initialized with the values $$v_1 \ldots v_n$$. These values may then be accessed by applying the term to a function $$f$$, which reduces to
$$f\ v_1 \ldots v_n$$.

$$c$$ may represent a constructor for an algebraic data type in functional languages such as Haskell. Now suppose there are N constructors, each with $$A_i$$ arguments:

$$
{\displaystyle {\begin{array}{c|c|c}{\text{Constructor}}&{\text{Given arguments}}&{\text{Result}}\\\hline ((\lambda x_{1}\ldots x_{A_{1}}.\lambda c_{1}\ldots c_{N}.c_{1}\ x_{1}\ldots x_{A_{1}})\ v_{1}\ldots v_{A_{1}})&f_{1}\ldots f_{N}&f_{1}\ v_{1}\ldots v_{A_{1}}\\((\lambda x_{1}\ldots x_{A_{2}}.\lambda c_{1}\ldots c_{N}.c_{2}\ x_{1}\ldots x_{A_{2}})\ v_{1}\ldots v_{A_{2}})&f_{1}\ldots f_{N}&f_{2}\ v_{1}\ldots v_{A_{2}}\\\vdots &\vdots &\vdots \\((\lambda x_{1}\ldots x_{A_{N}}.\lambda c_{1}\ldots c_{N}.c_{N}\ x_{1}\ldots x_{A_{N}})\ v_{1}\ldots v_{A_{N}})&f_{1}\ldots f_{N}&f_{N}\ v_{1}\ldots v_{A_{N}}\end{array}}}
$$

* Each ctor selects a different fn from the fn params $$f_1 \ldots f_N$$
* which provides branching in the process flow, based on the ctor.
* Each ctor may have a different arity.
* If the ctors have no params, then they acts like an enumeration.
* If the ctors have params, recursive data structures may be constructed.


## Definition

Let D be a datatype with N constructors, $$\{c_i\} _{i=1} ^N$$, such that constructor $$c_i$$ has arity $$A_i$$.

### Scott encoding

The Scott encoding of constructor $$c_i$$ of the data type D is

$$\lambda x_1 \ldots x _{A_i}\ .\ \lambda c_1 \ldots c_N\ .\ c_i\ x_1 \ldots x_{A_i}$$

### Mogensen-Scott encoding

Mogensen extends Scott encoding to encode any untyped lambda term as data. This allows a lambda term to be represented as data, within a LC meta-program. The meta function `mse` converts a lambda term into the corresponding data representation of the lambda term;

$$
{\displaystyle {\begin{aligned}\operatorname {mse} [x]&=\lambda a,b,c.a\ x\\\operatorname {mse} [M\ N]&=\lambda a,b,c.b\ \operatorname {mse} [M]\ \operatorname {mse} [N]\\\operatorname {mse} [\lambda x.M]&=\lambda a,b,c.c\ (\lambda x.\operatorname {mse} [M])\\\end{aligned}}}
$$

The "lambda term" is represented as a tagged union with 3 cases:
* Constructor a - a variable (arity 1, not recursive)
* Constructor b - function application (arity 2, recursive in both arguments),
* Constructor c - lambda-abstraction (arity 1, recursive).
