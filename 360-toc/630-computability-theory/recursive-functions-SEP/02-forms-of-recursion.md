# 2. Forms of Recursion

## TOC

- 2. Forms of Recursion
  - 2.1 The Primitive Recursive Functions (PR)
    - 2.1.1 Definitions
    - 2.1.2 Examples
    - 2.1.3 Additional closure properties of primitive recursive functions
  - 2.2 Partial Recursive Functions (PartREC) and Recursive Functions (REC)
    - 2.2.1 Definitions
    - 2.2.2 Normal Form Theorem


## Forms of Recursion

This section presents definitions of the major classes of recursively defined functions studied in computability theory. Of these the primitive recursive functions, `PR` and the partial recursive functions, `PartREC`, are the most fundamental.

The former are based on a formalization of the process of recursion and include virtually all number theoretic functions studied in ordinary mathematics.

The partial recursive functions are formed by closing the primitive recursive functions under the operation of *unbounded minimization*, i.e. that of searching for the smallest witness to a decidable predicate.

The class of recursive functions, `REC` - the partial recursive functions which are defined on all inputs - has traditionally been taken to correspond via Church's Thesis to those which can be effectively computed by an algorithm.

## Notional conventions

The following notional conventions are employed in the remainder of this entry:
- `ℕ`  denotes the set of natural numbers
- `ℕᵏ` denotes the cross product
- `n̅`  denotes a vector of fixed numbers `n₀, …, nₖ`
- `f,g,h,…` denote functions of type `ℕᵏ → ℕ` (for some `k`)
- for a fixed `j`, `f : ℕʲ → ℕ` expresses that `f` is `j`-ary function
- `x̅` denotes a vector of formal variables `x₀, …, xₖ` over ℕ for the purpose of indicating the argument of functions.
- `x,y,z,…` will also be used informally for arbitrary variables from this list
- X,Y,Z,… (or abbreviations like PR) will be used to denote classes of functions which are subsets of `⋃ {k ∈ ℕ} ℕᵏ → ℕ`
- Calligraphic letters F,G,H,… (or abbreviations like `Compʲₖ`) will be used to denote *functionals* on `ℕᵏ → ℕ`, i.e. operations which map one or more functions of type ℕ → ℕ (possibly of different arities) to other functions.
- Uppercase letters R,S,T,… will be used to denote relations, i.e. subsets of `ℕᵏ` with the range A,B,C,… reserved to denote unary relations, subsets of ℕ.
- The *characteristic function* of a relation `R ⊆ ℕᵏ` is denoted by `χR(x̅)`, i.e.

```hs
χR(x₀, x₁,...,xₖ) = 1     if  R(x₀, x₁,...,xₖ)
χR(x₀, x₁,...,xₖ) = 0     if ¬R(x₀, x₁,...,xₖ)
```

## 2.1 Primitive recursive functions

### 2.1.1 Definitions

A class `X` of recursively defined functions may be specified by giving a class of initial functions `Iₓ` which is then closed under one or more functionals from a class `Opₓ`.

It is in general possible to define a class in this manner on an arbitrary set of initial functions. However, all of the function classes considered in this entry will determine functions of type `ℕᵏ → ℕ`, i.e. they will take `k`-tuples of natural numbers as inputs and return a single natural number as output.

In the case of the primitive recursive functions PR, the initial functions include the nullary *zero function* which returns 0 for all inputs (and can thus be treated as a constant symbol), `S` denotes the unary *successor* function, and `πᵏᵢ` denotes the `k`-ary *projection* function on to the i-th argument, where `0 <= i < k`, that is `πᵏᵢ(x₀, x₁,...,xₖ) = xᵢ`.

This class of functions will be denoted by `Iᴘʀ = {Z, S, Proj}`. Note that since `projᵏᵢ`is a distinct function for each `i` and `k`, `Iᴘʀ` already contains infinitely many functions.

The functionals of `PR` are composition and primitive recursion.

Composition takes `j` functions $g_0, \ldots, g_{j-1}$ of arity $k$ and a single function $f$ of arity $j$ and returns their *composition*, i.e. the function

$$
h(x_0,\ldots,x_{k-1}) =  f(g_0(x_0,\ldots,x_{k-1}),\ldots,g_{j-1}(x_0,\ldots,x_{k-1}))
$$

of type $\mathbb{N}^k \rightarrow \mathbb{N}$. As an example, suppose that $f$ is the multiplication function $\textit{mult}(x,y)$, $g_0$ is the constant 3 function (which we may think of as implicitly taking a single argument), and $g_1(x)$ is the successor function $s(x)$. Then the composition of $f$ with $g_0$ and $g_1$ is the unary function $h(x) = f(g_0(x),g_1(x)) = mult(3, s(x))$ which we would conventionally denote by $3 \times (x+1)$.

The operation of composition may be understood as a class of functionals which for each $j,k \in \mathbb{N}$ takes as inputs $j$ functions $g_0, \ldots, g_{j-1}$ of arity $k$ and a single function $f$ of arity $j$ and returns as output the $k$-ary function $h$ which composes these functions in the manner just illustrated. This is described by the following scheme:

**Definition 2.1:** Suppose that $f:\mathbb{N}^j \rightarrow \mathbb{N}$ and $g_0, \ldots, g_{j-1} : \mathbb{N}^k \rightarrow \mathbb{N}$. Then the term $\mathcal{Comp}^j_k[f,g_0,\ldots,g_{j-1}]$ denotes the function

$$
f(g_0(x_0,\ldots,x_{k-1}),\ldots,g_{j-1}(x_0,\ldots,x_{k-1}))
$$

of type $\mathbb{N}^k \rightarrow \mathbb{N}.$

Primitive recursion is also a functional operation. In the simplest case, it operates by taking a single unary function $g(x)$ and a natural number $n \in \mathbb{N}$ and returns the unary function defined by

$$
\begin{align}
h(0) & =  n \label{prex1}\\ \nonumber
h(x+1) & =  g(h(x))
\end{align}
$$

In such a definition, the first clause (known as the *base case*) determines the value of $h$ at 0, while the second clause determines how its value at $x+1$ depends on its value at $x$. In this case it is easy to see that the value of $x$ determines how many times the function $g$ is *iterated* (i.e., applied to itself) in determining the value of $h$. For instance, if $n = 3$ and $g(x) = mult(x,x)$, then $h(x) = 3^{x+1}$-i.e., the $x+1$st iterate of the map $x \mapsto 3 \times x$.

The full primitive recursion scheme generalizes ($\ref{prex1}$) in two ways. First, it allows the value of the function $h$ at $x+1$ to depend not just on its own value at $x$, but also on the value of the variable $x$ itself. This leads to the scheme

$$
\begin{align} \label{prex2}
h(0) & =  n  \\ \nonumber
h(x+1) & =  g(x,h(x))
\end{align}
$$

For instance, the definition of the factorial function $\fact(x)$ defined in the introduction to this entry can be obtained via ($\ref{prex2}$) with $n = 1$ and $g(x_0,x_0) =
times(s(x_0),x_0)$.

A second possible generalization to ($\ref{prex1}$) results from allowing the value of $h$ to depend on a finite sequence of auxiliary variables known as *parameters* which may also be arguments to the base case. In the case of a single parameter $x$, this leads to the scheme

$$
\begin{align}  \label{prex3}
h(x,0) & =  f(x) \\ \nonumber
h(x,y+1) & =  g(x,h(x,y)) 
\end{align}
$$

The addition function $\textit{add}(x,y)$ may, for instance, be defined in this way by taking $f(x_0) = x_0$ and $g(x_0,x_1) =
s(x_1)$. This definition can also be thought of as specifying that the sum $x+y$ is the value obtained by iterating the application of the successor function $y$ times starting from the initial value $x$ in the manner of ($\ref{prex1}$). Similarly, $\textit{mult}(x,y)$ may be defined by taking $f(x_0) =
0$ and $g(x_0,x_1) = add(x_0,x_1)$. This defines the product $x
\times y$ as the value obtained by iterating the function which adds $x$ to its argument $y$ times starting from the initial value 0.

Such definitions may thus be understood to provide algorithms for computing the values of the functions so defined.<sup>[<a href="https://plato.stanford.edu/entries/recursive-functions/notes.html#note-20" id="ref-20">20</a>]</sup> For observe that each natural number $n$ is either equal to 0 or is of the form $m+1$ for some $m \in \mathbb{N}$. If we now introduce the abbreviation $\overline{n} = s(s(s \ldots
(s(\mathbf{0}))))$ $n$-times, the result of applying the successor function $s$ to a number denoted by $\overline{n}$ thus yields the number denoted by $\overline{n+1}$. We may thus compute the value of $x + y$ using the prior recursive definition of addition as follows:

$$
\begin{align}\label{prcalc2}
\textit{add}(\overline{2},\overline{3}) & = s(\textit{add}(\overline{2},\overline{2})) \\
& = s(s(add(\overline{2},\overline{1}))) \nonumber\\
& = s(s(s(\textit{add}(\overline{2},\overline{0})))) \nonumber\\
& = s(s(s(\overline{2}))) \nonumber\\
& = s(s(s(s(s(\mathbf{0}))))) \nonumber\\
& = \overline{5}\nonumber\\
\end{align}
$$

The full definition of the primitive recursion operation combines both generalizations of ($\ref{prex1}$) into a single scheme which takes as arguments a $k$-ary function $f$, a $k+2$-ary function $g$, and returns a $k+1$-ary function $h$ defined as follows

$$
\begin{align}  \label{prscheme}
h(x_0,\ldots,x_{k-1},0) & = f(x_0,\ldots,x_{k-1}) \\   \nonumber
h(x_0,\ldots,x_{k-1},y+1) & = g(x_0,\ldots,x_{k-1},y,h(x_0,\ldots,x_{k-1},y))
\end{align}
$$

Here the first $k$ arguments $x_0,\ldots,x_{k-1}$ to $g$ are the parameters, the $k+1$st argument $y$ is the *recursion variable*, and the $k+2$nd argument $h(x_0,\ldots,x_{k-1},y)$ gives the prior value of $h$. An elementary set theoretic argument shows that for each $k \in \mathbb{N}$, if $f$ is $k$-ary and $g$ is $k+2$-ary, then a there is a unique $k+1$-ary function $h$ satisfying ($\ref{prscheme}$)-see, e.g., (Moschovakis 1994, ch. 5).

It will again be useful to introduce a formal scheme for referring to functions defined in this manner:

**Definition 2.2:** Suppose that $f:\mathbb{N}^k
\rightarrow \mathbb{N}$ and $g: \mathbb{N}^{k+2} \rightarrow
\mathbb{N}$. Then the term $\mathcal{PrimRec}_k[f,g]$ denotes the unique function of type $\mathbb{N}^{k+1} \rightarrow \mathbb{N}$ satisfying ($\ref{prscheme}$).

We may now formally define the class $\mathbf{PR}$ of primitive recursive functions as follows:

**Definition 2.3:** The class of *primitive recursive functions* $\mathbf{PR}$ is the smallest class of functions containing the initial functions $I_{\mathbf{PR}} = \{\mathbf{0}, s, \pi^k_i\}$ and closed under the functionals

$$
Op_{\mathbf{PR}} = \{\mathcal{Comp}^i_j,
 \mathcal{PrimRec}_k\}.
$$

With the definition of $\mathbf{PR}$ in place, we may also define what it means for a relation $R \subseteq \mathbb{N}^k$ to be primitive recursive:

**Definition 2.4:** $R \subseteq \mathbb{N}^k$ is a *primitive recursive relation* just in case its characteristic function

$$
\chi_R(x_0,\ldots,x_{k-1}) = \begin{cases} 1 & \text{ if } R(x_0,\ldots,x_{k-1}) \\  0 & \text{ if } \neg R(x_0,\ldots,x_{k-1})
\end{cases}
$$

is a primitive recursive function.

[Definition 2.4][71] thus conventionalizes the characterization of a primitive recursive relation $R \subseteq \mathbb{N}^k$ as one for which there exists an algorithm similar to that illustrated above which returns the output 1 on input $\vec{n}$ if $R$ holds of $\vec{n}$ and the output 0 if $R$ does not hold of $\vec{n}$. As will become clear below, most sets and relations on the natural numbers which are considered in everyday mathematics-e.g., the set *PRIMES* of prime numbers or the relation

$$
\textit{DIV} = \{\langle n, m \rangle : n
\textit{ divides } m \textit{ without remainder}\}
$$

-are primitive recursive.

The foregoing definition specifies $\mathbf{PR}$ as the *minimal closure* of $I_{\mathbf{PR}}$ under the functions in $Op_{\mathbf{PR}}$. In other words, $\mathbf{PR}$ may be equivalently defined as the subclass of $\bigcup_{k \in \mathbb{N}}(\mathbb{N}^k
\rightarrow \mathbb{N})$ satisfying the following properties:

$$
\label{prmc}\begin{equation}\end{equation}
$$

i.

$I_{\mathbf{PR}} \subseteq \mathbf{PR}$

ii.

For all $j,k \in \mathbb{N}$ and $f,g_0,\ldots,g_{k-1} \in
\mathbf{PR}$, if $f$ is $j$-ary and $g_i$ is $k$-ary (for $1 \leq i \leq n$) then $\mathcal{Comp}^j_k[f,g_0,\ldots,g_{j-1}]
\in \mathbf{PR}$.

iii.

For all $k \in \mathbb{N}$ and $f,g \in \mathbf{PR}$, if $f$ is $k$-ary and $g$ is $k+2$-ary then $\mathcal{PrimRec}_k[f,g] \in \mathbf{PR}$.

iv.

No functions are members of $\mathbf{PR}$ unless they can be defined by i-iii.

Another consequence of [Definition 2.3][72] is thus that each function $f \in \mathbf{PR}$ possesses a specification which shows how it may be defined from the initial functions $I_{\mathbf{PR}}$ in terms of a finite number of applications of composition and primitive recursion. This process may be illustrated by further considering the definitions of the functions $\textit{add}(x,y)$ and $\textit{mult}(x,y)$ given above.

Note first that although the familiar recursive definitions of addition ($\ref{defnadd}$) and multiplication ($\ref{defnmult}$) fit the format of ($\ref{prex3}$), they do not fit the format of ($\ref{prscheme}$) which in this case requires that the argument $g$ to the primitive recursion scheme be a $3$-ary function. It is, however, possible to provide a definition of $\textit{add}(x,y)$ in the official form by taking $f(x_0) = \pi^1_0(x_0)$-i.e., the identity function-and $g(x_0,x_1,x_2) =
\mathcal{Comp}^1_3[s,\pi^3_1]$-i.e., the function which results from composing the successor function with the $3$-ary projection function on to its second argument. The expression $\mathcal{PrimRec}_1[\pi^1_0,\mathcal{Comp}^1_3[s,\pi^3_1]]$ may then be understood as a term which encodes the definition we have provided for addition. Multiplication can then be defined via ($\ref{prscheme}$) with $f = \mathbf{0}$ and $g(x_0,x_1,x_2) =
\mathcal{Comp}^2_3[add,\pi^3_0,\pi^3_2]$. Thus

$$
\mathcal{PrimRec}_1[\mathbf{0},\mathcal{Comp}^2_3[add,\pi^3_0,\pi^3_2]]
$$

-or in explicit form

$$
\mathcal{PrimRec}_1[\mathbf{0},\mathcal{Comp}^2_3[\mathcal{PrimRec}_1[\pi^1_0,\mathcal{Comp}^1_3[s,\pi^3_1]],\pi^3_0,\pi^3_2]]
$$

-can be taken as a similar term encoding the definition of multiplication we have abbreviated by $\textit{mult}(x,y)$.

These examples illustrate that the simpler recursion schemes which are employed in many informal recursive definitions may be assimilated to [Definition 2.3][73]-e.g., the function $h(x,y)$ defined in ($\ref{prex3}$) maybe obtained as $\mathcal{PrimRec}_1[f,\mathcal{Comp}^2_3[g,\pi^3_1,\pi^3_2]]$. Repeated use of this and similar observations will be made (generally without comment) in the examples provided in [Section 2.1.2][74].

Another consequence of the fact that *every* $f \in
\mathbf{PR}$ is defined by a term given in this manner by ($\ref{prmc}$) is the following:

**Proposition 2.1:** The class of functions $\mathbf{PR}$ is countable.

This can be demonstrated by showing that it is possible to enumerate $\mathbf{PR}$ as $f_0,f_1,f_2,\ldots$ by introducing a Gödel numbering of terms formed from the expressions $\mathbf{0},s,\pi^k_i,
\mathcal{Comp}^j_k$ and $\mathcal{PrimRec}_k$ in the manner described in [Section 1.3][75]. Since there are uncountably many functions of type $\mathbb{N}^k
\rightarrow \mathbb{N}$ for all $k > 0$, this observation also provides a non-constructive demonstration that there exist number theoretic functions which are not primitive recursive.

#### 2.1.2 Examples

Almost all number theoretic functions and relations encountered in ordinary mathematics can be shown to be primitive recursive. In order to illustrate the extent of this class, we will present here a standard sequence of definitions which can be traced historically to Skolem (1923). This can be used to show that the sequence coding $\langle \ldots \rangle$ and decoding $(\cdot)_i$ operations defined below are primitive recursive. This is in turn required for Gödel's arithmetization of syntax (see [Section 1.3][76]) as well as results like the Normal Form Theorem ([2.3][77]) which will be discussed below.

##### Constant functions

For each $k \in \mathbb{N}$ the constant $k$-function defined as $\const_k(x) = k$ is primitive recursive. This is because we can inductively define

$$
\begin{aligned}
 \const_0(x) & = \mathbf{0}\\
 \text{ and  }\\
 \const_{k+1}(x) & = \mathcal{Comp}^1_1[s,\const_k] \\
& =  s(s(s \ldots (s(\mathbf{0})))) \\
& =_{\textrm{df}} \overline{k+1} \end{aligned}
$$

##### Exponentiation, super-exponentiation, …

We have already seen that the addition function $\textit{add}(x,y)$ can be defined by primitive recursion in terms of repeated application of successor and that the multiplication function $\mathit{mult}(x,y)$ can be defined by primitive recursion in terms of repeated application of addition. We can continue this sequence by observing that the exponentiation function $x^y$ can be defined by primitive recursion in terms of repeated multiplication as follows:

$$
\begin{align}  \label{exp}
\textit{exp}(x,0) & =  \overline{1}\\ \nonumber
\textit{exp}(x+1,y) & =  \textit{mult}(x,\textit{exp}(x,y)) 
\end{align}
$$

The super-exponentiation function

$$
x \uarrow y = \underbrace{x^{x^{\udots^x}}}_{y \textrm{ times}}
$$

can be defined by primitive recursion in terms of repeated exponentiation as as follows:

$$
\begin{align}  \label{superexp}
\textit{supexp}(x,0) & =  \overline{1}\\ \nonumber
\textit{supexp}(x+1,y) & =  \textit{exp}(x,\textit{supexp}(x,y)) 
\end{align}
$$

The sequence of functions

$$
\begin{aligned}
\alpha_0(x,y) & = x + y, \\
\alpha_1(x,y) & = x \times y, \\
\alpha_2(x,y) & = x^y, \\
\alpha_3(x,y) & = x \uarrow y, \\
 &\vdots\\
\end{aligned}
$$

whose $i+1$st member is defined in terms of primitive recursion of the $i$th member form a hierarchy of functions whose values grow increasingly quickly in proportion to their inputs. While each function in this sequence is primitive recursive, we can also consider the function $\alpha(x,y)$ defined as $\alpha_x(y,y)$-a version of the so-called *Ackermann-Péter function* defined in [Section 1.4][78]-whose values are not bounded by any fixed function $\alpha_i$. As it can be shown that the values of $\alpha(x,y)$ are not bounded by any of the functions $\alpha_i(x,y)$, this shows that $\alpha(x,y)$ cannot be defined by any finite number of applications of the scheme $\mathcal{PrimRec}_1$. This provides a constructive proof that there exist functions of type $\mathbb{N}^2 \rightarrow \mathbb{N}$ which are not primitive recursive.

##### Predecessor and proper subtraction

The *proper predecessor* function is given by

$$
\textit{pred}(y) = \begin{cases} 0 & \text{ if } y = 0 \\ y - 1 & \text{otherwise} \end{cases}
$$

This function is primitive recursive since it may be defined as

$$
\begin{align}  \label{pred}
\textit{pred}(y) & = 0\\ \nonumber
\textit{pred}(y+1) & = y
\end{align}
$$

Note that the second clause of ($\ref{pred}$) does not depend on the prior value of $\textit{pred}(y)$. But this definition can still be conformed to the scheme ($\ref{prscheme}$) by taking $f(x_0) = \mathbf{0}$ and $g(x_0,x_1,x_2) = \pi^3_1$.

The *proper subtraction* function is given by

$$
x \dotminus y = \begin{cases} x - y & \text{ if } y \leq x \\ 0 & \text{otherwise} \end{cases}
$$

This function is also primitive recursive since it may be defined as

$$
\begin{align} \label{dotminus}
x \dotminus 0 & = x \\ \nonumber
x \dotminus (y+1) & = \textit{pred}(x \dotminus y)
\end{align}
$$

##### Absolute difference, signum, minimum, and maximum

The absolute difference function is defined as

$$
|x - y| = \begin{cases} x - y & \text{ if } y \leq x \\ y - x & \text{otherwise} \end{cases}
$$

$|x - y|$ may be defined by composition as $(x \dotminus y) + (y
\dotminus x)$ and is hence primitive recursive since $\dotminus$ is.

The *signum* function is defined as

$$
\textit{sg}(x) = \begin{cases} 1 & \text{ if } x \neq 0 \\ 0 & \text{otherwise} \end{cases}
$$

This function may be defined by composition as $\textit{sg}(x) = 1
\dotminus (1 \dotminus x)$ and is hence primitive recursive as is the *inverted signum* function defined by $\overline{\textit{sg}}(x) = 1 \dotminus \textit{sg}(y)$ which returns 1 if $x = 0$ and 1 otherwise.

The minimum and maximum functions may be similarly defined by composition from functions previously seen to be primitive recursive as follows:

$$
\begin{aligned}
\min(x,y) & = \overline{\textit{sg}}(x \dotminus y) \times x + \overline{\textit{sg}}(y \dotminus x) \times y\\
\max(x,y) & = \textit{sg}(x \dotminus y) \times x + \textit{sg}(y \dotminus x) \times y\end{aligned}
$$

##### Order and identity

The characteristic functions of the *less than* relation ($<$) and *equality* relation ($=$) on the natural numbers are definable as follows:

$$
\begin{aligned}
\chi_<(x,y) & = \textit{sg}(y \dotminus x) \\ \nonumber
\chi_=(x,y) & =  1 \dotminus (\textit{sg}(x \dotminus y) + \textit{sg}(y \dotminus x))\end{aligned}
$$

These relations are hence primitive recursive.

As the *less than or equal to* relation ($\leq$) is logically equivalent to $x < y \vee x = y$ it will follow from the next set of observations that this relation is also primitive recursive. The is additionally true of $x > y$, $x \geq y$ and $x \neq
y$.

##### Closure under propositional operations

The set of primitive recursive relations is *closed under boolean operations*. In other words, if $P(\vec{x})$ and $Q(\vec{x})$ are primitive recursive, then so are $\neg P(\vec{x})$, $P(\vec{x})
\wedge Q(\vec{x})$, $P(\vec{x}) \vee Q(\vec{x})$, $P(\vec{x})
\rightarrow Q(\vec{x}),$ and $P(\vec{x}) \leftrightarrow
Q(\vec{x})$.

Given the interdefinability of the classical connectives, this follows upon noting the following:

$$
\begin{align*}
\chi_{\neg P}(\vec{x}) & = 1 \dotminus \chi_{P}(\vec{x}) \\ 
\chi_{P \wedge Q}(\vec{x}) & = \chi_{P}(\vec{x}) \times \chi_{Q}(\vec{x})
\end{align*}
$$

##### Bounded sums and products

Suppose that $f(\vec{x},z)$ is primitive recursive. Then the *bounded sum* $g(\vec{x},y) = \Sigma_{i=0}^y f(\vec{x},i)$ and the *bounded product* $h(\vec{x},y) = \Pi_{i=0}^y
f(\vec{x},i)$ are both primitive recursive as they may be respectively defined as follows:

$$
\begin{aligned}
g(\vec{x},0) & =  f(\vec{x},0) \\ \nonumber
g(\vec{x},y+1) & = g(\vec{x},y) + f(\vec{x},y+1) \\  \nonumber
h(\vec{x},0) & =  f(\vec{x},0) \\ \nonumber 
h(\vec{x},y+1) & = g(\vec{x},y) \times f(\vec{x},y+1) \end{aligned}
$$

##### Closure under bounded quantification

The set of primitive recursive relations is also closed under *bounded quantification*-i.e., if $R(\vec{x},z)$ is a primitive recursive relation, then so are the relations $\forall z
\leq y R(\vec{x},z)$ and $\exists z \leq y R(\vec{x},z)$. These may be respectively defined as follows as follows:

$$
\begin{aligned}
u_R(\vec{x},y) & =_{\textrm{df}} \chi_{\forall z \leq y R(\vec{x},z)}(\vec{x}) = \Pi_{i=0}^y \chi_R(\vec{x},i) \\ \nonumber
e_R(\vec{x},y)  & =_{\textrm{df}} \chi_{\exists z \leq R(\vec{x},z)}(\vec{x}) = sg\left(\Sigma_{i=0}^y \chi_R(\vec{x},i)\right)\end{aligned}
$$

##### Closure under bounded minimization

The set of primitive recursive relations is also closed under *bounded minimization*. This is to say that if $R(\vec{x},z)$ is a primitive recursive relation, then so is the function $m_R(\vec{x},y)$ which returns the least $z$ less than or equal to $y$ such that $R(\vec{x},z)$ holds if such a $z$ exists and $y+1$ otherwise-i.e.,

$$
\begin{align} \label{boundedmin}
 m_R(\vec{x},y) = 
\begin{cases}
\text{the least $z \leq y$ such that $R(\vec{x},z)$} & \text{ if such a $z$ exists} \\
y + 1 & \text{ otherwise}
\end{cases}\end{align}
$$

To see this, observe that if $R(\vec{x},z)$ is primitive recursive, then so is $\forall z \leq y \neg R(\vec{x},z)$. It is then not difficult to verify that

$$
m_R(\vec{x},y) = \Sigma_{i=0}^y \chi_{\forall z \leq y \neg R(\vec{x},z)}(\vec{x},i).
$$

##### Divisibility and primality

A natural number $y$ is said to be *divisible* by $x$ just in case there exists a $z$ such that $x \times z = y$-i.e., $x$ divides $y$ without remainder. In this case we write $x
\divides y$. Note that if $x \divides y$ holds, then this must be witnessed by a divisor $z \leq y$ such that $x \times z = y$. We may thus define $x \divides y$ in the following manner which shows that it is primitive recursive:

$$
x \divides y \Longleftrightarrow \exists z \leq y(x \times z = y)
$$

We may also define the *non-divisibility* relations $x
\notdivides y$ as $\neg(x \divides y)$ which shows that it too is primitive recursive.

Next recall that a natural number $x$ is *prime* just in case it is greater than 1 and is divisible by only 1 and itself. We may thus define the relation $\textit{Prime}(x)$ in the following manner which shows that it is primitive recursive:

$$
\begin{aligned}
\textit{Prime}(x) \Longleftrightarrow \overline{1} < x \wedge \forall z \leq x(z \divides x \rightarrow (z = \overline{1} \vee z = x))\end{aligned}
$$

The primes form a familiar infinite sequence $p_0 = 2,$ $p_1 = 3,$ $p_2 = 5,$ $p_3 = 7,$ $p_4 = 11,$…. Let $p(x) =
p_x$-i.e., the function which returns the $x$th prime number. $p(x)$ can be defined by primitive recursion relative to the function $\nextPrime(x)$ which returns the least $y > x$ such that $y$ is prime as follows:

$$
\begin{aligned}
p(0) & = \overline{2} \\ \nonumber
p(x+1) & = \nextPrime(p(x))\end{aligned}
$$

Recall that Euclid's Theorem states that there is always a prime number between $x$ and $x! + 1$ and also that $x! = \fact(x)$ is primitive recursive. It thus follows that $\nextPrime(x)$ can be defined via bounded minimization as follows:

$$
\begin{aligned}
\nextPrime(x) = m_{x < z \ \wedge \ \textit{Prime}(z)}(x,\fact(x)+1)\end{aligned}
$$

It thus follows that $p(x)$ is primitive recursive.

##### Sequences and coding

The foregoing sequence of definitions provides some evidence for the robustness of the class of primitive recursive relations and functions. Further evidence is provided by the fact that it is possible to develop the machinery for coding and decoding finite sequences of natural numbers and for performing various combinatorial operations on sequences-e.g., adjunction of an element, concatenation, extracting a subsequence, substituting one element for another, etc. The primitive recursiveness of these operations underpins Gödel's arithmetization of syntax as described in [Section 1.3][79]. We present here only the basic definitions required to demonstrate the primitive recursiveness of the $k$-tupling and projection functions which are required for results in computability theory such as the Normal Form Theorem ([2.3][80]) discussed below.

Given a finite sequence of natural numbers $n_0,n_1,\ldots,n_{k-1}$ we define its *code* to be the number

$$
\begin{align}
 \label{primecode}
p_0^{n_0 + 1} \times p_1^{n_1 + 1} \times p_2^{n_2 + 1} \times \ldots \times p_{k-1}^{n_{k-1}+1}
\end{align}
$$

where $p_i$ is the $i$th prime number as defined above. In other words, the code of $n_0,n_1,\ldots,n_{k-1}$ is the natural number resulting from taking the product of the numbers $p_i^{n_i +
1}$ for $0 \leq i \leq k-1$. This will be denote by $\langle
n_0,n_1,\ldots,n_{k-1} \rangle$-e.g.,

$$
\begin{aligned}
\langle 3,1,4,1,5 \rangle & = 2^{4} \times 3^{2} \times 5^{5} \times 7^{2} \times 11^{6} \\
& = 39062920050000.\\
\end{aligned}
$$

(Note that 1 is added to each exponent so that, e.g., 3, 1, 4, 1, 5 has a distinct code from that of 3, 1, 4, 1, 5, 0, etc.-i.e., so that the coding operation is *injective*.)

The operation which takes a sequence of arbitrary length to its code does not have a fixed arity and hence is not given by a single primitive recursive function. But it is not hard to see that if we restrict attention to sequences of given length $k$, then $\langle n_0,n_1,\ldots,n_{k-1} \rangle : \mathbb{N}^k \rightarrow
\mathbb{N}$ is primitive recursive as it is simply the bounded product given by ($\ref{primecode}$). Consider next the function $\textit{element}(s,i) = n_i$ where $s = \langle
n_0,n_1,\ldots,n_{k-1} \rangle$ and $0 \leq i \leq k-1$ and which returns 0 when $i$ is not in this range or $s = 0$ or 1 (and thus not a code of a sequence). In order to see that $\textit{element}(s,i)$ is also primitive recursive, first observe that it is possible to recover $\textit{len}(s)$-i.e., the *length* of the sequence coded by $s$-by searching for the least $i < s$ such that $p_i \divides s$ and $p_{i+1}
\notdivides s$. Since $s$ also bounds all the primes $p_i$ which divide it we may define

$$
\begin{aligned}
len(s) = \begin{cases} 0 & \text{ if $s = 0$ or $s = 1$} \\
1 + m_{p_z \divides s \wedge p_{z+1} \notdivides s}(s,s) & \text{ otherwise} \end{cases}\end{aligned}
$$

It is straightforward to see that a function defined by cases with primitive recursive conditions is primitive recursive. So $\textit{len}(s)$ is primitive recursive as well.

Finally observe that $\textit{element}(s,i)$ is equal to the smallest exponent $n$ such that $p_i^{n+1} \divides s$ but $p_i^{n+2} \notdivides s$ and that such an exponent is also bounded by $s$. We may thus provide a primitive recursive definition of $\textit{element}(s,i)$ as follows:

$$
\begin{aligned}
\textit{element}(s,i) = \begin{cases} 0 & \text{ if  $len(s) \leq i$ or $s = 0$ or $s = 1$}\\
m_{p_i^{z+1} \divides s \wedge p_i^{z+2} \notdivides s}(s,s) \dotminus 1 & \text{ otherwise} \end{cases}\end{aligned}
$$

The conventional abbreviation $(s)_i = \textit{element}(s,i)$ will be employed for this function below.

#### 2.1.3 Additional closure properties of the primitive recursive functions

The primitive recursive functions and relations encompass a broad class including virtually all those encountered in ordinary mathematics outside of logic or computability theory. This is illustrated in part by the fact that $\mathbf{PR}$ contains functions such as $supexp(x,y)$ which grow far faster than those whose values we can feasibly compute in practice in the sense studied in [computational complexity theory][81]. But the robustness of the class $\mathbf{PR}$ is also attested to by the fact that its definition is invariant with respect to a variety of modifications-e.g., with respect to the classes of initial functions $I_{\mathbf{PR}}$ and functionals $Op_{\mathbf{PR}}$ on which its definition is based.

As an initial illustration, consider the following scheme of so-called *pure iteration*:

$$
\begin{align} \label{pureiter}
h(0,y) & =  y \\ \nonumber
h(x+1,y) & = g(h(x,y))
\end{align}
$$

It is easy to see that the function $h$ defined by ($\ref{pureiter}$) from $g$ in this manner is the $x^{\mathrm{th}}$-iterate of $g$- i.e., $g^{x}(y)=_{\mathrm{df}} g(g(\ldots g(y)))$ $x$-times with the convention that $g^0(y) = y$. We will denote this functional by $\mathcal{Iter}[g,x]$. The scheme ($\ref{pureiter}$) thus generalizes ($\ref{prex1}$) by making the value of base case an argument to $h$. But it is an apparent restriction of ($\ref{prscheme}$) in the sense that $h$ cannot depend on either the recursion variable or additional parameters.

Suppose we now consider an alternative class of initial functions $In_{\mathbf{IT}}$ containing $s,\pi^k_i$, the binary coding function $\langle x,y \rangle$, and the decoding functions $(x)_0$ and $(x)_1$ defined at the end of [Section 2.1.2][82]. (Note that these operate analogously to the first and second production functions $\pi^2_0$ and $\pi^2_1$ operating on *codes* of ordered pairs.) Now define $\mathbf{IT}$ to be the smallest class of functions containing $In_{\mathbf{IT}}$ and closed under the functionals $Op_{\mathbf{IT}} =
\{\mathcal{Comp}^i_j,\mathcal{Iter}\}$.

**Theorem 2.1** (Robinson 1947): The class $\mathbf{IT}$ is equal to the class $\mathbf{PR}$ of primitive recursive functions.

This illustrates that if we slightly enlarge the class of initial functions, it is still possible to obtain the entire class $\mathbf{PR}$ via a scheme of functional iteration which at first appears less general than primitive recursion. See Odifreddi (1989, ch. I.5) for an account of further improvements which can be obtained in this direction.

Other results show that the class $\mathbf{PR}$ also remains stable if primitive recursion is replaced with other schemes which may initially appear more general. The most familiar of these is the scheme of *course of values recursion* which is traditionally illustrated using the so-called *Fibonacci function* $\fib(x)$ which was briefly discussed at the beginning of [Section 1][83]. This may be defined as follows:

$$
\begin{align} \label{fibdefn}
fib(0) & = 0\\ \nonumber
fib(1) & = 1\\ \nonumber
fib(y+1) & = fib(y) + fib(y-1)
\end{align}
$$

This definition can readily be used to calculate the values of $\fib(x)$ in a recursive manner-e.g.,

$$
\begin{aligned} 
\fib(4) &= \fib(3) + \fib(2) \\ 
  &= (\fib(2) + \fib(1)) + (\fib(1)+\fib(0))  \\ 
  &= ((\fib(1) + \fib(0)) + 1) + (1 + 1) \\ 
  &= ((1 + 1) + 1) + (1 + 1) \\ 
& = 5
\end{aligned}
$$

This gives rises to the familiar sequence 0, 1, 1, 2, 5, 8, 13, 21, 34, 55, 89, 144,… wherein $F_0 =0,$ $F_1 = 1,$ and $F_{i+2} = F_{i+1} + F_i.$ Note, however, the definition ($\ref{fibdefn}$) cannot be directly assimilated to the primitive recursion scheme ($\ref{prscheme}$) since the third clause defines the value of $\fib(y+1)$ in terms of *both* $\fib(y)$ and $\fib(y-1)$. It is, however, still possible to show that $\fib \in
\mathbf{PR}$. One means of doing this is to again make use of the binary coding and projection functions to first define an auxiliary function $g(0) = \langle 0,1 \rangle$ and

$$
g(y+1) = \langle (g(y))_1,(g(y))_0 + (g(y))_1 \rangle
$$

which enumerates the pairs $\langle F_0,F_1 \rangle$, $\langle F_1,
F_2 \rangle, \ldots$ It is then easy to see that $\fib(y) =
(g(y))_0$.

($\ref{fibdefn}$) is thus an instance where the value of the function $h$ at $y$ depends on the values $h(y-1)$ and $h(y-2)$ of its graph (for $y \geq 2$). It is, of course, also possible to consider cases where $h(y)$ depends on an arbitrary number of its preceding values $h(0), \ldots, h(y-1)$. To this end, suppose we are given $h(\vec{x},y)$ and then define

$$
\begin{align*}
\widetilde{h}(\vec{x},y) &= \Pi_{i = 0}^y p_i^{h(\vec{x},i)+1} \\
& = \langle h(\vec{x},0), \ldots, h(\vec{x},y) \rangle.\\
\end{align*}
$$

We then say that $h(\vec{x},y)$ is defined by *course of values recursion* from $f(\vec{x})$ and $g(\vec{x},y,z)$ if

$$
\begin{aligned}
h(\vec{x},0) & = f(\vec{x}) \\ \nonumber
h(\vec{x},y + 1) & = g(\vec{x},y,\widetilde{h}(\vec{x},y))\end{aligned}
$$

Suppose that we now let $\mathcal{CV}_k[f,g]$ denote the corresponding functional operation and let $\mathbf{CV}$ be the smallest class of functions containing $In_{\mathbf{PR}}$ and closed under $\mathcal{Comp}^j_k$ and $\mathcal{CV}_k$. Then since it is easy to see that $\widetilde{h}(\vec{x},y)$ is primitive recursive if $h(\vec{x},y)$ is, we also have the following:

**Theorem 2.2** (Péter 1935): The class $\mathbf{CV}$ is equal to the class $\mathbf{PR}$ of primitive recursive functions.

Since course of values recursion is occasionally used in mathematical practice, it is significant that it does not lead outside the class of primitive recursive functions. There are, however, a number of other possible ways in which the scheme ($\ref{prscheme}$) might also be generalized, including what are known as *double recursion* and *nested recursion*. The definition of the Ackermann-Péter function $\pi(x,y)$ in [Section 1.4][84] exhibits the former since its value at $x,y$ depends on its value at *both* $x-1$ and $y-1$ and also the latter since the occurrence of the defined function $\pi(x,y)$ is "nested" within itself (rather than an auxiliary function) on the righthand side of the third clause. Although such definitions arise less often in practice, they are important historically due to their occurrence in Hilbert's original discussion of recursion (see [Section 1.3][85]). Such schemes were considered systematically by Péter (1967) who showed that unnested double recursion on its own also does not lead outside the class of primitive recursive functions.

### 2.2 The Partial Recursive Functions (**PartREC**) and the Recursive Functions (**REC**)

We have now seen two ways of showing that there exist number theoretic functions which are not primitive recursive-i.e., by observing that while there are only countably many primitive recursive functions there are uncountably many functions of type $\mathbb{N}^k
\rightarrow \mathbb{N}$ ($k > 0$) and also by constructing a function such as $\alpha(x,y) = \alpha_x(y,y)$ which grows faster than any primitive recursive function. A third proof-originally due to Hilbert & Bernays (1934, ch. 7)-is based on the observation that it is possible to enumerate the class $\mathbf{PR}$ as $g_0(x),g_1(x),g_2(x), \ldots$-e.g., by Gödel numbering the sorts of definitions considered at the end of [Section 2.1.1][86]. If we then consider the modified diagonal function

$$
\begin{aligned}
\delta(x) = g_x(x) + 1\end{aligned}
$$

it is easy to see that this function also cannot be primitive recursive. For if $\delta(x)$ coincided with some function $g_j(x)$ in the enumeration, then we would have $g_j(j) = \delta(j) = g_j(j) + 1$, a contradiction. Note that this also shows that relative to such an enumeration the *universal function* $u_1(i,x) =
g_i(\vec{x})$ for unary primitive recursive functions cannot itself be primitive recursive as we could otherwise define $\delta(x)$ as $u_1(x,x) + 1$. Hilbert & Bernays (1939, ch. 5) would later discuss this observation in regard to what has become known as their *denotational paradox*-see, e.g., (Priest 1997).

On the other hand, there are intuitively effective procedures for computing each of these functions. For instance, in the case of $\delta(x)$ we can proceed as follows:

1.  use $x$ to construct the definition of $g_x(y)$;
2.  compute the value of $g_x(x)$ by performing the corresponding primitive recursive calculation;
3.  add 1 and halt.

This illustrates that although $\alpha(x,y)$, $\delta(x)$, and $u_1(i,x)$ are not primitive recursive, they are still *effectively computable* in the sense discussed in [Section 1.6][87]. There is thus a natural motivation for seeking to expand the definition of the class $\mathbf{PR}$ so as to encompass such intuitively computable functions.

One means by which this can be accomplished builds on the observation that the bounded minimization operation $m_R(\vec{x},y)$ admits to a straightforward algorithmic characterization-i.e., to compute the value of $m_R(\vec{x},y)$ successively check $R(\vec{x},0),$ $R(\vec{x},1),$ …, $R(\vec{x},z),$… giving output $z$ and halting as soon as $R(\vec{x},z)$ holds and $y+1$ if no positive instance is found before $z = y$. This can be generalized to the so-called *unbounded search* operation. In particular, given a relation $R(\vec{x},y)$ we can define the operation $\mu_R(\vec{x},z)$ which returns the least $z$ such that $R(\vec{x},z)$ if such a $z$ exists and is undefined otherwise. Note that if $R(\vec{x},y)$ is primitive recursive, then it is still possible to effectively search for the value of $\mu_R(\vec{x},y)$ by successively checking $R(\vec{x},0),$ $R(\vec{x},1),$…. But since no upper bound is specified in advance, we are not guaranteed that this procedure will always terminate. In particular, if there is no $z \in \mathbb{N}$ such that $R(\vec{x},z)$ holds, then the procedure will continue indefinitely. In this case, we stipulate that $\mu_R(\vec{x},y)$ is *undefined*, from which it follows that $\mu_R(\vec{x},y)$ will correspond to what is known as a *partial function*-a notion which is made precise by the following sequence of definitions.

#### 2.2.1 Definitions

The class of so-called *partial recursive functions* is obtained from our prior definition of $\mathbf{PR}$ by closing under an operation similar to $\mu_R(\vec{x},z)$ which is applied to functions rather than relations. In order to define this class, we first introduce the following conventions regarding *partial functions* which extends those given at the beginning of [Section 2][88]:

-   A function $f:\mathbb{N}^k \rightarrow \mathbb{N}$ is called *total* if $f(\vec{n})$ is defined for all $\vec{n} \in
    \mathbb{N}^k$. Otherwise $f(\vec{x})$ is called *partial*.
    
-   We write $f(\vec{n})\darrow$ to express that $f(\vec{x})$ is defined at $\vec{n}$ and additionally $f(\vec{n})\darrow = m$ if $f(\vec{n})$ is defined at $\vec{n}$ and equal to $m$. Otherwise we write $f(\vec{n})\uarrow$ to express that $f(\vec{x})$ is undefined at $\vec{n}.$
    
-   The *domain* of $f(\vec{n})$ is the set $\textrm{dom}(f) =
    \{\vec{n} \in \mathbb{N}^k : f(\vec{n}) \darrow\}$.
    
-   We write $f(\vec{x}) \simeq g(\vec{x})$ just in case for all $\vec{n} \in \mathbb{N}$, either $f(\vec{n})$ and $g(\vec{n})$ are both undefined or are both defined and equal.
    

Suppose we are given a partial function $f(x_0,\ldots,x_{k-1},y)$. We now introduce terms of the form $\mu y f(x_0,\ldots,x_{k-1},y)$ defined as follows:

$$
\begin{align} \label{murec}
\mu y f(x_0,\ldots,x_{k-1},y) 
  = \begin{cases} z & \text{if } z \text{ is such that } \\
    &\:\: f(x_0,\ldots,x_{k-1},z) = 0 \text{ and } \\
    &\:\: \forall w < z(f(x_0,\ldots,x_1,w)\darrow \neq 0) \\
\uarrow & \text{otherwise}
\end{cases}\end{align}
$$

In other words, $\mu y f(\vec{n},y)$ is equal to the least $m$ such that $f(\vec{n},m) = 0$ provided that such an $m$ exists and also that $f(\vec{n},i)$ is defined but not equal to 0 for all $0
\leq i < m$. On the other hand, $\mu y f(\vec{n},y)$ is undefined just in case either there is no $m$ such that $f(\vec{n},m) = 0$ or there is such a $m$ but $f(\vec{n},i)$ is undefined for some $i < m$.

Since this definition determines $\mu yf(\vec{x},y)$ uniquely, ($\ref{murec}$) can also be regarded as defining a functional $\mathcal{Min}_k$ which maps $k+1$-ary partial functions into $k$-ary partial functions. We now define the classes of functions $\mathbf{PartREC}$ and $\mathbf{REC}$ as follow:

**Definition 2.5:** The class of *partial recursive functions* $\mathbf{PartREC}$ (also known as the *$\mu$-recursive functions*) is the smallest class of partial functions of type $\mathbb{N}^k \rightarrow \mathbb{N}$ containing the initial functions $I_{\mathbf{PR}} = \{\mathbf{0},s,\pi^i_k\}$ and closed under the functionals

$$
Op_{\mathbf{PartREC}} = \{\mathcal{Comp}^i_j,\mathcal{PrimRec}_k,\mathcal{Min}_k\}.
$$

We say that a function $f:\mathbb{N}^k \rightarrow \mathbb{N}$ is *partial recursive* if $f \in \mathbf{PartREC}$. Additionally we say that $f$ is *recursive* if $f \in \mathbf{PartREC}$ and $f$ is total. The set of recursive functions will be denoted by $\mathbf{REC}$.

Note that despite its name, *the class of partial recursive functions contains total functions*. In particular, a *recursive function* is, by definition, one which is *partial recursive while also being total*. We will see in [Section 3.2][89], there also exist partial recursive functions which are genuinely partial and total functions which are not recursive.

Note finally that if $f(\vec{x})$ is recursive it may be defined via some finite number of applications of composition, primitive recursion, and unbounded minimization in a manner which preserves the totality of intermediate functions in its definition. Thus although the specification of $f(\vec{x})$ may involve one or more applications of unbounded search, each search required to compute its value is guaranteed to terminate in a finite number of steps. It thus follows that all of functions in $\mathbf{REC}$ are computable by an algorithm (despite the fact that we will soon see that this class contains functions which are not primitive recursive). This constitutes part of the evidence for *Church's Thesis*-i.e., the claim that $\mathbf{REC}$ coincides with the class of effectively computable functions-which was surveyed in [Section 1.6][90].

#### 2.2.2 The Normal Form Theorem

A question which naturally arises at this stage is whether more than one application of unbounded minimization is required to obtain all partial recursive functions. The fact that a single application is sufficient is a consequence of the *Kleene Normal Form Theorem*. In order to formulate this result, it is convenient to officially extend the application of the $\mu$-operator to relations in the manner discussed at the beginning of this section-i.e.,

$$
\begin{align} \label{unboundedminrel}
\mu y R(\vec{x},y) = 
\begin{cases}
\text{the least $y$ such that $R(\vec{x},y)$} & \text{ if such a $y$ exists} \\
\uarrow & \text{ otherwise}
\end{cases}\end{align}
$$

**Theorem 2.3:** For all $k \in \mathbb{N}$ there exists a $k$+2-ary primitive recursive relation $T_k(e,\vec{x},s)$-the so-called *Kleene $T$-predicate*-and a primitive recursive function $u(x)$ (not depending on $k$) satisfying the following condition: for all $k$-ary partial recursive functions $f(\vec{x})$ there exists $e \in \mathbb{N}$ such that for all $\vec{n} \in \mathbb{N}^k$

$$
f(\vec{n}) \simeq u(\mu s T_k(e,\vec{n},s))
$$

Since $\mu y R(\vec{x},y) \simeq \mu y \chi_{\neg R}(\vec{x},y)$, it is easy to see that the class $\mathbf{PartREC}$ can also be obtained by closing the primitive recursive functions under the operation defined by ($\ref{unboundedminrel}$). One consequence of [Theorem 2.3][91] is thus that it is indeed possible to define any $k$-ary partial recursive function $f(\vec{x})$ by a single application of unbounded search applied to the relation $T_k(e,\vec{x},s)$ for an appropriate choice of $e$. More generally, the Normal Form Theorem illustrates how any such function may be defined from a *single* relation $T_k(e,\vec{x},s)$ wherein the value of $e$ serves as a description of the manner in which $f(\vec{x})$ is defined in terms of the basis functions $I_{\mathbf{PR}}$ and the operations $Op_{\mathbf{PartRec}}$. Such an $e$ is known as an *index* for $f(\vec{x})$. As we will see in [Section 3][92], the availability of such indices is one of the central features of the partial recursive functions which allows them to provide the basis for a general theory of computability and non-computability.

The complete details of the proof of [Theorem 2.3][93] are involved. But the basic idea may be summarized as follows:

1.  Every partial recursive function $f(\vec{x})$ is defined by a term $\tau$ over the language
    
    $$
    \mathbf{0},s,\pi^i_j,\mathcal{Comp}^j_k,\mathcal{PrimRec}_k,\mathcal{Min}_k
    $$
    
    \urcorner$ described in [Section 1.3][95] and then employing the coding machinery described at the end of [Section 2.1.2][96], it is then possible to associate $\tau$ with a natural number $\ulcorner \tau \urcorner = e$ which can serve as an index for $f(\vec{x})$.
    in the manner which extends the notation scheme for partial recursive function introduced at the end of [Section 2.1.1][94]. By associating the atomic expressions of this language with natural numbers in the manner of Gödel numbering $\ulcorner \cdot
    
2.  The definition of $T_k(e,\vec{n},s)$ can now be constructed by formalizing the following decision algorithm:
    
    1.  on input $e,\vec{n},s$ construct a term $\tau$ defining $f(\vec{x})$ from $e$;
    2.  understanding $s$ as a potential code for a sequence of intermediate computational steps similar to that exemplified by the calculation ($\ref{prcalc2}$), check whether the result of carrying out the computation described by $\tau$ on input $\vec{n}$ for $\textit{len}(s)$ steps corresponds to $s$;
    3.  if so, accept-i.e., $T_k(e,\vec{n},s)$ holds-and if not reject-i.e., $\neg T_k(e,\vec{n},s)$ holds.
3.  By performing an unbounded search over codes of computation sequences in this manner, we achieve the dual purposes of both determining if the computation described by $\tau$ on input $\vec{n}$ halts after a finite number of steps and, if so, also finding a code $s$ of a computation sequence which witnesses this fact. The function $u(s)$ can then be defined by formalizing the operation which extracts the output of the computation from the last step $(s)_{\textit{len}(s)-1}$ of the sequence encoded by $s$. In the case that $T_k(e,\vec{n},s)$ holds, $u(s)$ will thus correspond to the value $f(\vec{n})$. Since the foregoing steps require only performing bounded search and checking the local combinatorial properties of finite sequences, it can additionally be shown that $T_k(e,\vec{n},s)$ and $u(x)$ are primitive recursive.
    

The techniques used in this proof can also be used to show that $\alpha(x,y)$, the universal $k$-ary primitive recursive evaluation function $u_k(i,\vec{x})$, and the modified diagonal function $\delta(x)$ are all recursive (despite the fact that we have seen above that they are *not* primitive recursive). For instance note that the coding of definitions of $k$-ary partial recursive functions described above also allows us to uniformly enumerate all primitive recursive functions $g_0(\vec{x}),g_1(\vec{x}),\ldots$ by considering the codes of terms not containing $\mathcal{Min}_k$. We can define in this manner a primitive recursive function $r(i)$ enumerating the indices for these functions such that we can obtain the universal function for $k$-ary primitive recursive function as $u_k(i,\vec{x}) = u(\mu s T_1(r(i),\vec{x},s)) = g_i(\vec{x})$. But note that since $g_i(\vec{x})$ is always defined, $u_1(i,\vec{x})$ is not only partial recursive but also total, and hence recursive.

Taking into account the equivalences between models of computation summarized in [Section 1.6][97], it is also possible to formulate a version of [Theorem 2.3][98] for each of the models of computation mentioned there. For instance, in the case of the Turing Machine model $\mathbf{T}$, the analogous version of the Normal Form Theorem can be used to show that there is a single [*universal Turing machine* (see entry on Turing machines)][99] $U$ such that every partial recursive function $f(\vec{x})$ corresponds to that computed by $U(e,\vec{x})$ for some $e \in
\mathbb{N}$. Complete proofs of this sort were given by Turing (1937, sec. 6) for $\mathbf{T}$, by Kleene (1936a, sec. 2) for the general recursive functions $\mathbf{GR}$ (see also Kleene 1952, sec. 58), by Shoenfield (1967, ch. 7.4) for the class $\mathbf{F}_{\mathsf{PA}}$ of functions representable in Peano Arithmetic, and by Cutland (1980, ch. 5) for the Unlimited Register Machine model $\mathbf{U}$.
