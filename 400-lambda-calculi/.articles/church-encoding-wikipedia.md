---
created: 2021-08-30T01:00:22 (UTC +02:00)
tags: []
source: https://en.wikipedia.org/wiki/Church_encoding#Represent_the_list_using_right_fold
author: 
---

# Church encoding - Wikipedia

> ## Excerpt
> In mathematics, Church encoding is a means of representing data and operators in the lambda calculus. The Church numerals are a representation of the natural numbers using lambda notation. The method is named for Alonzo Church, who first encoded data in the lambda calculus this way.

---
In [mathematics][1], **Church encoding** is a means of representing data and operators in the [lambda calculus][2]. The **Church numerals** are a representation of the natural numbers using lambda notation. The method is named for [Alonzo Church][3], who first encoded data in the lambda calculus this way.

Terms that are usually considered primitive in other notations (such as integers, booleans, pairs, lists, and tagged unions) are mapped to [higher-order functions][4] under Church encoding. The [Church-Turing thesis][5] asserts that any computable operator (and its operands) can be represented under Church encoding. In the [untyped lambda calculus][6] the only primitive data type is the function.

The Church encoding is not intended as a practical implementation of primitive data types. Its use is to show that other primitive data types are not required to represent any calculation. The completeness is representational. Additional functions are needed to translate the representation into common data types, for display to people. It is not possible in general to decide if two functions are [extensionally][7] equal due to the [undecidability of equivalence][8] from [Church's theorem][9]. The translation may apply the function in some way to retrieve the value it represents, or look up its value as a literal lambda term.

Lambda calculus is usually interpreted as using [intensional equality][10]. There are [potential problems][11] with the interpretation of results because of the difference between the intensional and extensional definition of equality.

## Church numerals\[[edit][12]\]

Church numerals are the representations of [natural numbers][13] under Church encoding. The [higher-order function][14] that represents natural number _n_ is a function that maps any function ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61) to its _n_\-fold [composition][15]. In simpler terms, the "value" of the numeral is equivalent to the number of times the function encapsulates its argument.

![{\displaystyle f^{\circ n}=\underbrace {f\circ f\circ \cdots \circ f} _{n{\text{ times}}}.\,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7a80e7f479ee395850c19ec0a3be759a9f53d4dc)

All Church numerals are functions that take two parameters. Church numerals **0**, **1**, **2**, ..., are defined as follows in the [lambda calculus][16].

_Starting with_ **0** _not applying the function at all, proceed with_ **1** _applying the function once, **2**_ applying the function twice, **3** _applying the function three times, etc._:

![{\displaystyle {\begin{array}{r|l|l}{\text{Number}}&{\text{Function definition}}&{\text{Lambda expression}}\\\hline 0&0\ f\ x=x&0=\lambda f.\lambda x.x\\1&1\ f\ x=f\ x&1=\lambda f.\lambda x.f\ x\\2&2\ f\ x=f\ (f\ x)&2=\lambda f.\lambda x.f\ (f\ x)\\3&3\ f\ x=f\ (f\ (f\ x))&3=\lambda f.\lambda x.f\ (f\ (f\ x))\\\vdots &\vdots &\vdots \\n&n\ f\ x=f^{n}\ x&n=\lambda f.\lambda x.f^{\circ n}\ x\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4234d6babd69a13a183ee913a1efd0c3264da618)

The Church numeral **3** represents the action of applying any given function three times to a value. The supplied function is first applied to a supplied parameter and then successively to its own result. The end result is not the numeral 3 (unless the supplied parameter happens to be 0 and the function is a [successor function][17]). The function itself, and not its end result, is the Church numeral **3**. The Church numeral **3** means simply to do anything three times. It is an [ostensive][18] demonstration of what is meant by "three times".

### Calculation with Church numerals\[[edit][19]\]

[Arithmetic][20] operations on numbers may be represented by functions on Church numerals. These functions may be defined in [lambda calculus][21], or implemented in most functional programming languages (see [converting lambda expressions to functions][22]).

The addition function ![\operatorname{plus}(m, n)= m+n](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a7e570c6c1e7637d3d5d56a40d5263cc73cb283) uses the identity ![{\displaystyle f^{\circ (m+n)}(x)=f^{\circ m}(f^{\circ n}(x))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/28a1e15af00b7dd76e2ce966859216bfbd316e7a).

![\operatorname{plus} \equiv \lambda m.\lambda n.\lambda f.\lambda x. m\ f\ (n\ f\ x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/58758b6fa3ebc7f6adf7978262d9292514314018)

The successor function ![\operatorname{succ}(n)=n+1](https://wikimedia.org/api/rest_v1/media/math/render/svg/95efd954ffac3f51881898263e74d49ff0676664) is [β-equivalent][23] to ![(\operatorname{plus}\ 1)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba88e2dfbb0488466dfd249012794ed71bcd4a3e).

![\operatorname{succ} \equiv \lambda n.\lambda f.\lambda x. f\ (n\ f\ x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/58de484d980602d2415f8acc94677952f33b78cb)

The multiplication function ![\operatorname{mult}(m, n) = m*n](https://wikimedia.org/api/rest_v1/media/math/render/svg/51269fa75fdb6f02faaafcab2ea522ed14142e9f) uses the identity ![{\displaystyle f^{\circ (m*n)}(x)=(f^{\circ n})^{\circ m}(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/14a6bcfe4e5b4e99b1df7bcb3186ad94ab854644).

![{\displaystyle \operatorname {mult} \equiv \lambda m.\lambda n.\lambda f.\lambda x.m\ (n\ f)\ x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cd7b95a40139cfaaadd4d812f57f2d52f5fc2002)

The exponentiation function ![\operatorname{exp}(m, n) = m^n](https://wikimedia.org/api/rest_v1/media/math/render/svg/1f3198c93ebff4a8b855f24c214e72abf5803491) is given by the definition of Church numerals, ![{\displaystyle n\ h\ x=h^{n}\ x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f58c493a6a86918c26a3001572c2e7bb712fe49b). In the definition substitute ![{\displaystyle h\to m,x\to f}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5a8ea121cb26de91c667ad028abf07f4b473e9dc) to get ![n\ m\ f = m^n\ f ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9cd8aebfc82a0af4903c10d10c7e507db31f191c) and,

![\operatorname{exp}\ m\ n = m^n = n\ m ](https://wikimedia.org/api/rest_v1/media/math/render/svg/bfd0c64c928a00d12fd590fb06c30d044f9aac21)

which gives the lambda expression,

![\operatorname{exp} \equiv \lambda m.\lambda n. n\ m](https://wikimedia.org/api/rest_v1/media/math/render/svg/c2ee5188c3c4a8b7001609f83c035cea30c9d598)

The ![\operatorname{pred}(n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/cc7c43daf72dac334ebcba6835120653414e096a) function is more difficult to understand.

![\operatorname{pred} \equiv \lambda n.\lambda f.\lambda x. n\ (\lambda g.\lambda h. h\ (g\ f))\ (\lambda u. x)\ (\lambda u. u)](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e8fbc0ac6a7f712a0f47d06e59de9aa113f9f5b)

A Church numeral applies a function _n_ times. The predecessor function must return a function that applies its parameter _n - 1_ times. This is achieved by building a container around _f_ and _x_, which is initialized in a way that omits the application of the function the first time. See [predecessor][24] for a more detailed explanation.

The subtraction function can be written based on the predecessor function.

![\operatorname{minus} \equiv  \lambda m.\lambda n. (n \operatorname{pred})\ m](https://wikimedia.org/api/rest_v1/media/math/render/svg/f0c99c5f1f220a1c40885e1eae32b2be222fc3ef)

### Table of functions on Church numerals\[[edit][25]\]

\* Note that in the Church encoding,

### Derivation of predecessor function\[[edit][26]\]

The predecessor function used in the Church encoding is,

![\operatorname{pred}(n) = \begin{cases} 0 & \mbox{if }n=0, \\ n-1 & \mbox{otherwise}\end{cases}](https://wikimedia.org/api/rest_v1/media/math/render/svg/22a6f84572b2bd98ae772554c94b6fea7bfdf1b2).

To build the predecessor we need a way of applying the function 1 fewer time. A numeral n applies the function f n times to x. The predecessor function must use the numeral n to apply the function _n_\-1 times.

Before implementing the predecessor function, here is a scheme that wraps the value in a container function. We will define new functions to use in place of f and x, called inc and init. The container function is called value. The left hand side of the table shows a numeral n applied to inc and init.

![
\begin{array}{r|r|r}
\text{Number} & \text{Using init} & \text{Using const}
\\
\hline
0 &
\operatorname{init} = \operatorname{value}\ x &
\\
1 &
\operatorname{inc}\ \operatorname{init} = \operatorname{value}\ (f\ x) &
\operatorname{inc}\ \operatorname{const} = \operatorname{value}\ x 
\\
2 &
\operatorname{inc}\ (\operatorname{inc}\ \operatorname{init}) = \operatorname{value}\ (f\ (f\ x)) &
\operatorname{inc}\ (\operatorname{inc}\ \operatorname{const}) = \operatorname{value}\ (f\ x)
\\
3 &
\operatorname{inc}\ (\operatorname{inc}\ (\operatorname{inc}\ \operatorname{init})) = \operatorname{value}\ (f\ (f\ (f\ x))) &
\operatorname{inc}\ (\operatorname{inc}\ (\operatorname{inc}\ \operatorname{const})) = \operatorname{value}\ (f\ (f\ x))
\\
\vdots & \vdots & \vdots
\\
n &
n \operatorname{inc}\ \operatorname{init} = \operatorname{value}\ (f^n\ x) = \operatorname{value}\ (n\ f\ x) &
n \operatorname{inc}\ \operatorname{const} = \operatorname{value}\ (f^{n-1}\ x) = \operatorname{value}\ ((n-1)\ f\ x) \\
\end{array}
](https://wikimedia.org/api/rest_v1/media/math/render/svg/f0a8fa4d4450712b4bdf2b0d5d446313036b65dd)

The general recurrence rule is,

![ \operatorname{inc}\ (\operatorname{value}\ v) = \operatorname{value}\ (f\ v)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e886b3635401328c84071097e496f537f33452ce)

If there is also a function to retrieve the value from the container (called extract),

![ \operatorname{extract}\ (\operatorname{value}\ v) = v](https://wikimedia.org/api/rest_v1/media/math/render/svg/422c6f840a8e0eb7706581cc514c58188c327e1d)

Then extract may be used to define the samenum function as,

![\operatorname{samenum} = \lambda n.\lambda f.\lambda x.\operatorname{extract}\ (n \operatorname{inc} \operatorname{init})  = \lambda n.\lambda f.\lambda x.\operatorname{extract}\ (\operatorname{value}\ (n\ f\ x)) = \lambda n.\lambda f.\lambda x.n\ f\ x = \lambda n.n](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ea51765971ac69a676b5408aa957b454b3d6872)

The samenum function is not intrinsically useful. However, as inc delegates calling of f to its container argument, we can arrange that on the first application inc receives a special container that ignores its argument allowing to skip the first application of f. Call this new initial container const. The right hand side of the above table shows the expansions of n inc const. Then by replacing init with const in the expression for the same function we get the predecessor function,

![\operatorname{pred} = \lambda n.\lambda f.\lambda x.\operatorname{extract}\ (n \operatorname{inc} \operatorname{const}) = \lambda n.\lambda f.\lambda x.\operatorname{extract}\ (\operatorname{value}\ ((n-1)\ f\ x)) = \lambda n.\lambda f.\lambda x.(n-1)\ f\ x = \lambda n.(n-1)](https://wikimedia.org/api/rest_v1/media/math/render/svg/7f7c4c9afdf30a845f6f03a72366e2f22414d68c)

As explained below the functions inc, init, const, value and extract may be defined as,

![\begin{align}
\operatorname{value} &= \lambda v.(\lambda h.h\ v) \\
\operatorname{extract} k &= k\ \lambda u.u \\
\operatorname{inc} &= \lambda g.\lambda h.h\ (g\ f) \\
\operatorname{init} &= \lambda h.h\ x \\
\operatorname{const} &= \lambda u.x 
\end{align}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f8a082481237c7c95a7fb1d70155b4c859ce9d9a)

Which gives the lambda expression for pred as,

![\operatorname{pred} = \lambda n.\lambda f.\lambda x.n\ (\lambda g.\lambda h.h\ (g\ f))\ (\lambda u.x)\ (\lambda u.u) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/577c98ece78f9ea7acf051d345afce813767caf4)

#### Another way of defining pred\[[edit][27]\]

Pred may also be defined using pairs:

![{\displaystyle {\begin{aligned}\operatorname {f} =&\ \lambda p.\ \operatorname {pair} \ (\operatorname {second} \ p)\ (\operatorname {succ} \ (\operatorname {second} \ p))\\\operatorname {zero} =&\ (\lambda f.\lambda x.\ x)\\\operatorname {pc0} =&\ \operatorname {pair} \ \operatorname {zero} \ \operatorname {zero} \\\operatorname {pred} =&\ \lambda n.\ \operatorname {first} \ (n\ \operatorname {f} \ \operatorname {pc0} )\\\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b68441c5fd16462aa205c3dc80b7d64f584b9fdc)

This is a simpler definition, but leads to a more complex expression for pred. The expansion for ![{\displaystyle \operatorname {pred} \operatorname {three} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb8e66cbd053ff8ccd78ab38ba2c5175f51b7bf4):

![{\displaystyle {\begin{aligned}\operatorname {pred} \operatorname {three} =&\ \operatorname {first} \ (\operatorname {f} \ (\operatorname {f} \ (\operatorname {f} \ (\operatorname {pair} \ \operatorname {zero} \ \operatorname {zero} ))))\\=&\ \operatorname {first} \ (\operatorname {f} \ (\operatorname {f} \ (\operatorname {pair} \ \operatorname {zero} \ \operatorname {one} )))\\=&\ \operatorname {first} \ (\operatorname {f} \ (\operatorname {pair} \ \operatorname {one} \ \operatorname {two} ))\\=&\ \operatorname {first} \ (\operatorname {pair} \ \operatorname {two} \ \operatorname {three} )\\=&\ \operatorname {two} \end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3f41ba4b30f4180fc2a5f839161526d11550a7c7)

### Division\[[edit][28]\]

[Division][29] of natural numbers may be implemented by,[\[2\]][30]

![{\displaystyle n/m=\operatorname {if} \ n\geq m\ \operatorname {then} \ 1+(n-m)/m\ \operatorname {else} \ 0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ed372cc30e5079bcc6fb23e8d30738b10a5a033b)

Calculating ![n-m](https://wikimedia.org/api/rest_v1/media/math/render/svg/3a9677b812ea9ee4d4538767f9aef960c69aca59) takes many beta reductions. Unless doing the reduction by hand, this doesn't matter that much, but it is preferable to not have to do this calculation twice. The simplest predicate for testing numbers is _IsZero_ so consider the condition.

![ \operatorname{IsZero}\ (\operatorname{minus}\ n\ m) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/2e50410a6ade27f0719b9f2fc863545efa2f2a28)

But this condition is equivalent to ![{\displaystyle n\leq m}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1be80a749be067190db51891139a12d4886fc054), not ![{\displaystyle n<m}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5cff096773597d7223f9d90162eb2d780dfc18dc). If this expression is used then the mathematical definition of division given above is translated into function on Church numerals as,

![ \operatorname{divide1}\ n\ m\ f\ x = (\lambda d.\operatorname{IsZero}\ d\ (0\ f\ x)\ (f\ (\operatorname{divide1}\ d\ m\ f\ x)))\ (\operatorname{minus}\ n\ m) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d71db547eae214fe79bb6ba7399e8bedf6aa92cb)

As desired, this definition has a single call to ![ \operatorname{minus}\ n\ m ](https://wikimedia.org/api/rest_v1/media/math/render/svg/dd6752ba2f35b6bb117414c86a8e54b52cc5ff3d). However the result is that this formula gives the value of ![(n-1)/ m](https://wikimedia.org/api/rest_v1/media/math/render/svg/c2503ae079658383f112eda3813ebdf612579605).

This problem may be corrected by adding 1 to _n_ before calling _divide_. The definition of _divide_ is then,

![ \operatorname{divide}\ n = \operatorname{divide1}\ (\operatorname{succ}\ n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3fb26928c830538b603dd4b0268462be30075a3)

_divide1_ is a recursive definition. The [Y combinator][31] may be used to implement the recursion. Create a new function called _div_ by;

to get,

![ \operatorname{div} = \lambda c.\lambda n.\lambda m.\lambda f.\lambda x.(\lambda d.\operatorname{IsZero}\ d\ (0\ f\ x)\ (f\ (c\ d\ m\ f\ x)))\ (\operatorname{minus}\ n\ m) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6e57208acfcc292d0b50a5975eec4aa54c73ac28)

Then,

![ \operatorname{divide} = \lambda n.\operatorname{divide1}\ (\operatorname{succ}\ n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7897298aa0f87ba2fbe70635f94d37dbf6c25b27)

where,

![{\displaystyle {\begin{aligned}\operatorname {divide1} &=Y\ \operatorname {div} \\\operatorname {succ} &=\lambda n.\lambda f.\lambda x.f\ (n\ f\ x)\\Y&=\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x))\\0&=\lambda f.\lambda x.x\\\operatorname {IsZero} &=\lambda n.n\ (\lambda x.\operatorname {false} )\ \operatorname {true} \end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8fc6dd9dfcf2e01e934ae3038393bb761e2e9da)

![{\displaystyle {\begin{aligned}\operatorname {true} &\equiv \lambda a.\lambda b.a\\\operatorname {false} &\equiv \lambda a.\lambda b.b\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d39bc19720586d643dd1923cd9e054b1614725f9)

![{\displaystyle {\begin{aligned}\operatorname {minus} &=\lambda m.\lambda n.n\operatorname {pred} m\\\operatorname {pred} &=\lambda n.\lambda f.\lambda x.n\ (\lambda g.\lambda h.h\ (g\ f))\ (\lambda u.x)\ (\lambda u.u)\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8256791d68d145ea9fb99662b8030da448eaa0aa)

Gives,

![{\displaystyle \scriptstyle \operatorname {divide} =\lambda n.((\lambda f.(\lambda x.x\ x)\ (\lambda x.f\ (x\ x)))\ (\lambda c.\lambda n.\lambda m.\lambda f.\lambda x.(\lambda d.(\lambda n.n\ (\lambda x.(\lambda a.\lambda b.b))\ (\lambda a.\lambda b.a))\ d\ ((\lambda f.\lambda x.x)\ f\ x)\ (f\ (c\ d\ m\ f\ x)))\ ((\lambda m.\lambda n.n(\lambda n.\lambda f.\lambda x.n\ (\lambda g.\lambda h.h\ (g\ f))\ (\lambda u.x)\ (\lambda u.u))m)\ n\ m)))\ ((\lambda n.\lambda f.\lambda x.f\ (n\ f\ x))\ n)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/481d17bf51a11fb45e0c8dc1f8bbccb2ab1ff1de)

Or as text, using \\ for λ,

divide = (\\n.((\\f.(\\x.x x) (\\x.f (x x))) (\\c.\\n.\\m.\\f.\\x.(\\d.(\\n.n (\\x.(\\a.\\b.b)) (\\a.\\b.a)) d ((\\f.\\x.x) f x) (f (c d m f x))) ((\\m.\\n.n (\\n.\\f.\\x.n (\\g.\\h.h (g f)) (\\u.x) (\\u.u)) m) n m))) ((\\n.\\f.\\x. f (n f x)) n))

For example, 9/3 is represented by

divide (\\f.\\x.f (f (f (f (f (f (f (f (f x))))))))) (\\f.\\x.f (f (f x)))

Using a lambda calculus calculator, the above expression reduces to 3, using normal order.

\\f.\\x.f (f (f (x)))

### Signed numbers\[[edit][32]\]

One simple approach for extending Church Numerals to [signed numbers][33] is to use a Church pair, containing Church numerals representing a positive and a negative value.[\[3\]][34] The integer value is the difference between the two Church numerals.

A natural number is converted to a signed number by,

![\operatorname{convert}_s = \lambda x.\operatorname{pair}\ x\ 0 ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff7252f5290e1b2a017f1b77a818e79635fc1b88)

Negation is performed by swapping the values.

![\operatorname{neg}_s = \lambda x.\operatorname{pair}\ (\operatorname{second}\ x)\ (\operatorname{first}\ x) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/dc12867792d12bab4622295a06a22eb98ff1de60)

The integer value is more naturally represented if one of the pair is zero. The _OneZero_ function achieves this condition,

![\operatorname{OneZero} = \lambda x.\operatorname{IsZero}\ (\operatorname{first}\ x)\ x\ (\operatorname{IsZero}\ (\operatorname{second}\ x)\ x\ (\operatorname{OneZero}\ \operatorname{pair}\ (\operatorname{pred}\ (\operatorname{first}\ x))\ (\operatorname{pred}\ (\operatorname{second}\ x))))](https://wikimedia.org/api/rest_v1/media/math/render/svg/35c73b2fc3aad1875ec4fae250c053df25daf342)

The recursion may be implemented using the Y combinator,

![\operatorname{OneZ} = \lambda c.\lambda x.\operatorname{IsZero}\ (\operatorname{first}\ x)\ x\ (\operatorname{IsZero}\ (\operatorname{second}\ x)\ x\ (c\ \operatorname{pair}\ (\operatorname{pred}\ (\operatorname{first}\ x))\ (\operatorname{pred}\ (\operatorname{second}\ x))))](https://wikimedia.org/api/rest_v1/media/math/render/svg/f17317337da6f4aa0cf18d3d0cbf3c8e595e0241)

![\operatorname{OneZero} = Y \operatorname{OneZ}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97ddb9de38a6efad13783dcdeacde6914863ee5b)

### Plus and minus\[[edit][35]\]

Addition is defined mathematically on the pair by,

![x + y = [x_p, x_n] + [y_p, y_n] = x_p - x_n + y_p - y_n = (x_p + y_p) - (x_n + y_n) = [x_p + y_p, x_n + y_n] ](https://wikimedia.org/api/rest_v1/media/math/render/svg/724b32508d430b8bf7fd7cb05d5077473e842952)

The last expression is translated into lambda calculus as,

![\operatorname{plus}_s = \lambda x.\lambda y.\operatorname{OneZero}\ (\operatorname{pair}\ (\operatorname{plus}\ (\operatorname{first}\ x)\ (\operatorname{first}\ y))\ (\operatorname{plus}\ (\operatorname{second}\ x)\ (\operatorname{second}\ y))) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/bcccb69fc34e0465e318844fecdd2f3c48423be0)

Similarly subtraction is defined,

![x - y = [x_p, x_n] - [y_p, y_n] = x_p - x_n - y_p + y_n = (x_p + y_n) - (x_n + y_p) = [x_p + y_n, x_n + y_p] ](https://wikimedia.org/api/rest_v1/media/math/render/svg/28d52c9fc0c41fe5d8b8b6e6b25607cea881fe25)

giving,

![\operatorname{minus}_s = \lambda x.\lambda y.\operatorname{OneZero}\ (\operatorname{pair}\ (\operatorname{plus}\ (\operatorname{first}\ x)\ (\operatorname{second}\ y))\ (\operatorname{plus}\ (\operatorname{second}\ x)\ (\operatorname{first}\ y))) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/34eb7d12f12afadda5085e00695b1c5424b4e7b6)

### Multiply and divide\[[edit][36]\]

Multiplication may be defined by,

![x*y = [x_p, x_n]*[y_p, y_n] =(x_p - x_n)*(y_p - y_n) = (x_p*y_p + x_n*y_n) - (x_p*y_n + x_n*y_p) = [x_p*y_p + x_n*y_n, x_p*y_n + x_n*y_p]](https://wikimedia.org/api/rest_v1/media/math/render/svg/f89b32d72e0682b6dd2be8ad2333f7b2b9833db9)

The last expression is translated into lambda calculus as,

![\operatorname{mult}_s = \lambda x.\lambda y.\operatorname{pair}\ 
(\operatorname{plus}\ 
(\operatorname{mult}\ (\operatorname{first}\ x)\ (\operatorname{first}\ y))\ 
(\operatorname{mult}\ (\operatorname{second}\ x)\ (\operatorname{second}\ y)))\ 
(\operatorname{plus}\ 
(\operatorname{mult}\ (\operatorname{first}\ x)\ (\operatorname{second}\ y))\ 
(\operatorname{mult}\ (\operatorname{second}\ x)\ (\operatorname{first}\ y))) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/37a910b6bd661d5dcb93529bdd1a9caf42192050)

A similar definition is given here for division, except in this definition, one value in each pair must be zero (see _OneZero_ above). The _divZ_ function allows us to ignore the value that has a zero component.

![\operatorname{divZ} = \lambda x.\lambda y.\operatorname{IsZero}\ y\ 0 \ (\operatorname{divide}\ x\ y) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4378dbd52a1eff399c20edb33473c55f9dabecc)

_divZ_ is then used in the following formula, which is the same as for multiplication, but with _mult_ replaced by _divZ_.

![\operatorname{divide}_s = \lambda x.\lambda y.\operatorname{pair}\ 
(\operatorname{plus}\ 
(\operatorname{divZ}\ (\operatorname{first}\ x)\ (\operatorname{first}\ y))\ 
(\operatorname{divZ}\ (\operatorname{second}\ x)\ (\operatorname{second}\ y)))\ 
(\operatorname{plus}\ 
(\operatorname{divZ}\ (\operatorname{first}\ x)\ (\operatorname{second}\ y))\ 
(\operatorname{divZ}\ (\operatorname{second}\ x)\ (\operatorname{first}\ y))) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64287c918aeec2d5ac9ab0d0eb46a8b6ef59add4)

### Rational and real numbers\[[edit][37]\]

Rational and computable real numbers may also be encoded in lambda calculus. Rational numbers may be encoded as a pair of signed numbers. Computable real numbers may be encoded by a limiting process that guarantees that the difference from the real value differs by a number which may be made as small as we need.[\[4\]][38] [\[5\]][39] The references given describe software that could, in theory, be translated into lambda calculus. Once real numbers are defined, complex numbers are naturally encoded as a pair of real numbers.

The data types and functions described above demonstrate that any data type or calculation may be encoded in lambda calculus. This is the [Church-Turing thesis][40].

### Translation with other representations\[[edit][41]\]

Most real-world languages have support for machine-native integers; the _church_ and _unchurch_ functions convert between nonnegative integers and their corresponding Church numerals. The functions are given here in [Haskell][42], where the `\` corresponds to the λ of Lambda calculus. Implementations in other languages are similar.

type Church a \= (a \-> a) \-> a \-> a

church :: Integer \-> Church Integer
church 0 \= \\f \-> \\x \-> x
church n \= \\f \-> \\x \-> f (church (n\-1) f x)

unchurch :: Church Integer \-> Integer
unchurch cn \= cn (+ 1) 0

## Church Booleans\[[edit][43]\]

_Church Booleans_ are the Church encoding of the Boolean values _true_ and _false._ Some programming languages use these as an implementation model for Boolean arithmetic; examples are [Smalltalk][44] and [Pico][45].

Boolean logic may be considered as a choice. The Church encoding of _true_ and _false_ are functions of two parameters:

-   _true_ chooses the first parameter.
-   _false_ chooses the second parameter.

The two definitions are known as Church Booleans:

![{\displaystyle {\begin{aligned}\operatorname {true} &\equiv \lambda a.\lambda b.a\\\operatorname {false} &\equiv \lambda a.\lambda b.b\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d39bc19720586d643dd1923cd9e054b1614725f9)

This definition allows predicates (i.e. functions returning [logical values][46]) to directly act as if-clauses. A function returning a Boolean, which is then applied to two parameters, returns either the first or the second parameter:

![{\displaystyle \operatorname {predicate-} x\ \operatorname {then-clause} \ \operatorname {else-clause} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/40bae3d89eee7730341cd81773860b9971024c18)

evaluates to _then-clause_ if _predicate-x_ evaluates to _true_, and to _else-clause_ if _predicate-x_ evaluates to _false_.

Because _true_ and _false_ choose the first or second parameter they may be combined to provide logic operators. Note that there are multiple possible implementations of _not_.

![{\displaystyle {\begin{aligned}\operatorname {and} &=\lambda p.\lambda q.p\ q\ p\\\operatorname {or} &=\lambda p.\lambda q.p\ p\ q\\\operatorname {not} _{1}&=\lambda p.\lambda a.\lambda b.p\ b\ a\\\operatorname {not} _{2}&=\lambda p.p\ (\lambda a.\lambda b.b)\ (\lambda a.\lambda b.a)=\lambda p.p\operatorname {false} \operatorname {true} \\\operatorname {xor} &=\lambda a.\lambda b.a\ (\operatorname {not} \ b)\ b\\\operatorname {if} &=\lambda p.\lambda a.\lambda b.p\ a\ b\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5d83df88b47549da4c1e2ec1f43d79fc1d40efa1)

Some examples:

![{\displaystyle {\begin{aligned}\operatorname {and} \operatorname {true} \operatorname {false} &=(\lambda p.\lambda q.p\ q\ p)\ \operatorname {true} \ \operatorname {false} =\operatorname {true} \operatorname {false} \operatorname {true} =(\lambda a.\lambda b.a)\operatorname {false} \operatorname {true} =\operatorname {false} \\\operatorname {or} \operatorname {true} \operatorname {false} &=(\lambda p.\lambda q.p\ p\ q)\ (\lambda a.\lambda b.a)\ (\lambda a.\lambda b.b)=(\lambda a.\lambda b.a)\ (\lambda a.\lambda b.a)\ (\lambda a.\lambda b.b)=(\lambda a.\lambda b.a)=\operatorname {true} \\\operatorname {not} _{1}\ \operatorname {true} &=(\lambda p.\lambda a.\lambda b.p\ b\ a)(\lambda a.\lambda b.a)=\lambda a.\lambda b.(\lambda a.\lambda b.a)\ b\ a=\lambda a.\lambda b.(\lambda c.b)\ a=\lambda a.\lambda b.b=\operatorname {false} \\\operatorname {not} _{2}\ \operatorname {true} &=(\lambda p.p\ (\lambda a.\lambda b.b)(\lambda a.\lambda b.a))(\lambda a.\lambda b.a)=(\lambda a.\lambda b.a)(\lambda a.\lambda b.b)(\lambda a.\lambda b.a)=(\lambda b.(\lambda a.\lambda b.b))\ (\lambda a.\lambda b.a)=\lambda a.\lambda b.b=\operatorname {false} \end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a36161f4e76c5ef328c080d27810bb395713209e)

## Predicates\[[edit][47]\]

A _predicate_ is a function that returns a Boolean value. The most fundamental predicate is ![\operatorname{IsZero}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5f709697842cf3570b825bca28a60e944eb2d30), which returns ![\operatorname{true}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a07a936997571bc12ab787780f1297f027b62d17) if its argument is the Church numeral ![{\displaystyle 0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2aae8864a3c1fec9585261791a809ddec1489950), and ![\operatorname{false}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ebe7ab984a6fbcc84fdf934e6ba79acb02e286f3) if its argument is any other Church numeral:

![\operatorname{IsZero} = \lambda n.n\ (\lambda x.\operatorname{false})\ \operatorname{true}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9116fab6e6d980cf590c8049c682812bdb020cab)

The following predicate tests whether the first argument is less-than-or-equal-to the second:

![\operatorname{LEQ} = \lambda m.\lambda n.\operatorname{IsZero}\ (\operatorname{minus}\ m\ n)](https://wikimedia.org/api/rest_v1/media/math/render/svg/8a73f72a8db91a2013be09463c729d0d23f78485),

Because of the identity,

![{\displaystyle x=y\equiv (x\leq y\land y\leq x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bcaae2c6f4c9d75d3efc656826195c78856263dd)

The test for equality may be implemented as,

![\operatorname{EQ} = \lambda m.\lambda n.\operatorname{and}\ (\operatorname{LEQ}\ m\ n)\ (\operatorname{LEQ}\ n\ m) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/dec6112978637d91f8a46fb1b8d107e62b9fe873)

## Church pairs\[[edit][48]\]

Church pairs are the Church encoding of the [pair][49] (two-tuple) type. The pair is represented as a function that takes a function argument. When given its argument it will apply the argument to the two components of the pair. The definition in [lambda calculus][50] is,

![\begin{align}
\operatorname{pair} &\equiv \lambda x.\lambda y.\lambda z.z\ x\ y \\
\operatorname{first} &\equiv \lambda p.p\ (\lambda x.\lambda y.x) \\
\operatorname{second} &\equiv \lambda p.p\ (\lambda x.\lambda y.y) 
\end{align}
](https://wikimedia.org/api/rest_v1/media/math/render/svg/e52b2f227ded8fbfedd0c472cf65ca2caf2b505c)

For example,

![\begin{align}
& \operatorname{first}\ (\operatorname{pair}\ a\ b) \\
= & (\lambda p.p\ (\lambda x.\lambda y.x))\ ((\lambda x.\lambda y.\lambda z.z\ x\ y)\ a\ b) \\
= & (\lambda p.p\ (\lambda x.\lambda y.x))\ (\lambda z.z\ a\ b) \\
= & (\lambda z.z\ a\ b)\ (\lambda x.\lambda y.x) \\
= & (\lambda x.\lambda y.x)\ a\ b = a 
\end{align}
](https://wikimedia.org/api/rest_v1/media/math/render/svg/714f3714cb2889fed96c07421e0968f8671de87f)

## List encodings\[[edit][51]\]

An ([immutable][52]) [list][53] is constructed from list nodes. The basic operations on the list are;

We give four different representations of lists below:

-   Build each list node from two pairs (to allow for empty lists).
-   Build each list node from one pair.
-   Represent the list using the [right fold function][54].
-   Represent the list using Scott's encoding that takes cases of match expression as arguments

### Two pairs as a list node\[[edit][55]\]

A nonempty list can be implemented by a Church pair;

-   _First_ contains the head.
-   _Second_ contains the tail.

However this does not give a representation of the empty list, because there is no "null" pointer. To represent null, the pair may be wrapped in another pair, giving free values,

-   _First_ - Is the null pointer (empty list).
-   _Second.First_ contains the head.
-   _Second.Second_ contains the tail.

Using this idea the basic list operations can be defined like this:[\[6\]][56]

In a _nil_ node _second_ is never accessed, provided that **head** and **tail** are only applied to nonempty lists.

### One pair as a list node\[[edit][57]\]

Alternatively, define[\[7\]][58]

![{\displaystyle {\begin{aligned}\operatorname {cons} &\equiv \operatorname {pair} \\\operatorname {head} &\equiv \operatorname {first} \\\operatorname {tail} &\equiv \operatorname {second} \\\operatorname {nil} &\equiv \operatorname {false} \\\operatorname {isnil} &\equiv \lambda l.l(\lambda h.\lambda t.\lambda d.\operatorname {false} )\operatorname {true} \end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/09458bfc6099a2d16d7dbf2c08564ee7f16ecb51)

where the last definition is a special case of the general

![\operatorname{process-list} \equiv \lambda l.l (\lambda h.\lambda t.\lambda d. \operatorname{head-and-tail-clause}) \operatorname{nil-clause}  ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5c78d447d6e1137839abcc5647618b562c871f11)

### Represent the list using _right fold_\[[edit][59]\]

As an alternative to the encoding using Church pairs, a list can be encoded by identifying it with its [right fold function][60]. For example, a list of three elements x, y and z can be encoded by a higher-order function that when applied to a combinator c and a value n returns c x (c y (c z n)).

![{\displaystyle {\begin{aligned}\operatorname {nil} &\equiv \lambda c.\lambda n.n\\\operatorname {isnil} &\equiv \lambda l.l\ (\lambda h.\lambda t.\operatorname {false} )\ \operatorname {true} \\\operatorname {cons} &\equiv \lambda h.\lambda t.\lambda c.\lambda n.c\ h\ (t\ c\ n)\\\operatorname {head} &\equiv \lambda l.l\ (\lambda h.\lambda t.h)\ \operatorname {false} \\\operatorname {tail} &\equiv \lambda l.\lambda c.\lambda n.l\ (\lambda h.\lambda t.\lambda g.g\ h\ (t\ c))\ (\lambda t.n)\ (\lambda h.\lambda t.t)\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3adb47c4c022128fdf083d0c01197be20bbcb15a)

This list representation can be given type in [System F][61].

### Represent the list using Scott encoding\[[edit][62]\]

An alternative representation is Scott encoding, which uses the idea of [continuations][63] and can lead to simpler code.[\[8\]][64] (see also [Mogensen–Scott encoding][65]).

In this approach, we use the fact that lists can be observed using pattern matching expression. For example, using [Scala][66] notation, if `list` denotes a value of type `List` with empty list `Nil` and constructor `Cons(h, t)` we can inspect the list and compute `nilCode` in case the list is empty and `consCode(h, t)` when the list is not empty:

list match {
  case Nil        \=> nilCode
  case Cons(h, t) \=> consCode(h,t)
}

The 'list' is given by how it acts upon 'nilCode' and 'consCode'. We therefore define a list as a function that accepts such 'nilCode' and 'consCode' as arguments, so that instead of the above pattern match we may simply write:

![{\displaystyle \operatorname {list} \ \operatorname {nilCode} \ (\operatorname {consCode} \ h\ t)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e608e0ac2032d8882b241d4f2d925d63fac1bca4)

Let us denote by 'n' the parameter corresponding to 'nilCode' and by 'c' the parameter corresponding to 'consCode'. The empty list is the one that returns the nil argument:

![{\displaystyle \operatorname {nil} \equiv \lambda n.\lambda c.\ n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/061977d5c1ff321964e23272b8f6975482432a9b)

The non-empty list with head 'h' and tail 't' is given by

![{\displaystyle \operatorname {cons} \ h\ t\ \ \equiv \ \ \lambda n.\lambda c.\ c\ h\ t}](https://wikimedia.org/api/rest_v1/media/math/render/svg/029fdcc34b5e31c2b40ed4e96261d22394e4e823)

More generally, an [algebraic data type][67] with ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc) alternatives becomes a function with ![m](https://wikimedia.org/api/rest_v1/media/math/render/svg/0a07d98bb302f3856cbabc47b2b9016692e3f7bc) parameters. When the ![i](https://wikimedia.org/api/rest_v1/media/math/render/svg/add78d8608ad86e54951b8c8bd6c8d8416533d20)th constructor has ![n_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/57f87f905ba5a4d8c691ccaecd65fc47bd007ba4) arguments, the corresponding parameter of the encoding takes ![n_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/57f87f905ba5a4d8c691ccaecd65fc47bd007ba4) arguments as well.

Scott encoding can be done in untyped lambda calculus, whereas its use with types requires a type system with recursion and type polymorphism. A list with element type E in this representation that is used to compute values of type C would have the following recursive type definition, where '=>' denotes function type:

type List \= 
  C \=>                    // nil argument
  (E \=> List \=> C) \=>     // cons argument
  C                       // result of pattern matching

A list that can be used to compute arbitrary types would have a type that quantifies over `C`. A list generic\[_[clarification needed][68]_\] in `E` would also take `E` as the type argument.

## See also\[[edit][69]\]

-   [Lambda calculus][70]
-   [System F][71] for Church numerals in a typed calculus
-   [Mogensen–Scott encoding][72]
-   [Von Neumann definition of ordinals][73] — another way to encode natural numbers: as sets

## Notes\[[edit][74]\]

1.  **[^][75]** This formula is the definition of a Church numeral n with f -> m, x -> f.
2.  **[^][76]** Allison, Lloyd. ["Lambda Calculus Integers"][77].
3.  **[^][78]** Bauer, Andrej. ["Andrej's answer to a question; "Representing negative and complex numbers using lambda calculus""][79].
4.  **[^][80]** ["Exact real arithmetic"][81]. _Haskell_.
5.  **[^][82]** Bauer, Andrej. ["Real number computational software"][83].
6.  **[^][84]** [Pierce, Benjamin C.][85] (2002). _[Types and Programming Languages][86]_. [MIT Press][87]. p. 500. [ISBN][88] [978-0-262-16209-8][89].
7.  **[^][90]** Tromp, John (2007). "14. Binary Lambda Calculus and Combinatory Logic". In Calude, Cristian S (ed.). [_Randomness And Complexity, From Leibniz To Chaitin_][91]. World Scientific. pp. 237–262. [ISBN][92] [978-981-4474-39-9][93].  
    As PDF: Tromp, John (14 May 2014). ["Binary Lambda Calculus and Combinatory Logic"][94] (PDF). Retrieved 2017-11-24.
8.  **[^][95]** Jansen, Jan Martin (2013). "Programming in the λ-Calculus: From Church to Scott and Back". _LNCS_. **8106**: 168–180. [doi][96]:[10.1007/978-3-642-40355-2\_12][97].

## References\[[edit][98]\]

-   [Directly Reﬂective Meta-Programming][99]
-   [Church numerals and booleans explained][100] by Robert Cartwright at [Rice University][101]
-   [Theoretical Foundations For Practical 'Totally Functional Programming'][102] (Chapters 2 and 5) All about Church and other similar encodings, including how to derive them and operations on them, from first principles
-   [Some interactive examples of Church numerals][103]
-   [Lambda Calculus Live Tutorial: Boolean Algebra][104]

[1]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[2]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[3]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[4]: https://en.wikipedia.org/wiki/Higher-order_function "Higher-order function"
[5]: https://en.wikipedia.org/wiki/Church-Turing_thesis "Church-Turing thesis"
[6]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[7]: https://en.wikipedia.org/wiki/Extensionality "Extensionality"
[8]: https://en.wikipedia.org/wiki/Lambda_calculus#Undecidability_of_equivalence "Lambda calculus"
[9]: https://en.wikipedia.org/wiki/Church%27s_theorem "Church's theorem"
[10]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus#Intensional_versus_extensional_equality "Deductive lambda calculus"
[11]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus#Intensional_versus_extensional_equality "Deductive lambda calculus"
[12]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=1 "Edit section: Church numerals"
[13]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[14]: https://en.wikipedia.org/wiki/Higher-order_function "Higher-order function"
[15]: https://en.wikipedia.org/wiki/Function_composition "Function composition"
[16]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[17]: https://en.wikipedia.org/wiki/Successor_function "Successor function"
[18]: https://en.wikipedia.org/wiki/Ostensive_definition "Ostensive definition"
[19]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=2 "Edit section: Calculation with Church numerals"
[20]: https://en.wikipedia.org/wiki/Arithmetic "Arithmetic"
[21]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[22]: https://en.wikipedia.org/wiki/Lambda_lifting#Conversion_without_lifting "Lambda lifting"
[23]: https://en.wikipedia.org/wiki/Beta_reduction#.CE.B2-reduction "Beta reduction"
[24]: https://en.wikipedia.org/wiki/Church_encoding#Derivation_of_predecessor_function
[25]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=3 "Edit section: Table of functions on Church numerals"
[26]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=4 "Edit section: Derivation of predecessor function"
[27]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=9 "Edit section: Another way of defining pred"
[28]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=10 "Edit section: Division"
[29]: https://en.wikipedia.org/wiki/Division_(mathematics) "Division (mathematics)"
[30]: https://en.wikipedia.org/wiki/Church_encoding#cite_note-2
[31]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[32]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=11 "Edit section: Signed numbers"
[33]: https://en.wikipedia.org/wiki/Integer "Integer"
[34]: https://en.wikipedia.org/wiki/Church_encoding#cite_note-3
[35]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=12 "Edit section: Plus and minus"
[36]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=13 "Edit section: Multiply and divide"
[37]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=14 "Edit section: Rational and real numbers"
[38]: https://en.wikipedia.org/wiki/Church_encoding#cite_note-4
[39]: https://en.wikipedia.org/wiki/Church_encoding#cite_note-5
[40]: https://en.wikipedia.org/wiki/Church-Turing_thesis "Church-Turing thesis"
[41]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=15 "Edit section: Translation with other representations"
[42]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[43]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=16 "Edit section: Church Booleans"
[44]: https://en.wikipedia.org/wiki/Smalltalk "Smalltalk"
[45]: https://en.wikipedia.org/wiki/Pico_(programming_language) "Pico (programming language)"
[46]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[47]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=17 "Edit section: Predicates"
[48]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=18 "Edit section: Church pairs"
[49]: https://en.wikipedia.org/wiki/Cons "Cons"
[50]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[51]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=19 "Edit section: List encodings"
[52]: https://en.wikipedia.org/wiki/Immutable_object "Immutable object"
[53]: https://en.wikipedia.org/wiki/List_(computing) "List (computing)"
[54]: https://en.wikipedia.org/wiki/Fold_(higher-order_function) "Fold (higher-order function)"
[55]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=20 "Edit section: Two pairs as a list node"
[56]: https://en.wikipedia.org/wiki/Church_encoding#cite_note-6
[57]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=21 "Edit section: One pair as a list node"
[58]: https://en.wikipedia.org/wiki/Church_encoding#cite_note-7
[59]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=22 "Edit section: Represent the list using right fold"
[60]: https://en.wikipedia.org/wiki/Fold_(higher-order_function) "Fold (higher-order function)"
[61]: https://en.wikipedia.org/wiki/System_F "System F"
[62]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=23 "Edit section: Represent the list using Scott encoding"
[63]: https://en.wikipedia.org/wiki/Continuation "Continuation"
[64]: https://en.wikipedia.org/wiki/Church_encoding#cite_note-8
[65]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding "Mogensen–Scott encoding"
[66]: https://en.wikipedia.org/wiki/Scala_(programming_language) "Scala (programming language)"
[67]: https://en.wikipedia.org/wiki/Algebraic_data_type "Algebraic data type"
[68]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[69]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=24 "Edit section: See also"
[70]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[71]: https://en.wikipedia.org/wiki/System_F "System F"
[72]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding "Mogensen–Scott encoding"
[73]: https://en.wikipedia.org/wiki/Ordinal_number#Von_Neumann_definition_of_ordinals "Ordinal number"
[74]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=25 "Edit section: Notes"
[75]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-Church_numeral_definition_1-0 "Jump up"
[76]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-2 "Jump up"
[77]: http://www.csse.monash.edu.au/~lloyd/tildeFP/Lambda/Examples/const-int/
[78]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-3 "Jump up"
[79]: https://cs.stackexchange.com/q/2272
[80]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-4 "Jump up"
[81]: https://wiki.haskell.org/Exact_real_arithmetic
[82]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-5 "Jump up"
[83]: https://github.com/andrejbauer/marshall
[84]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-6 "Jump up"
[85]: https://en.wikipedia.org/wiki/Benjamin_C._Pierce "Benjamin C. Pierce"
[86]: https://en.wikipedia.org/wiki/Types_and_Programming_Languages "Types and Programming Languages"
[87]: https://en.wikipedia.org/wiki/MIT_Press "MIT Press"
[88]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[89]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-262-16209-8 "Special:BookSources/978-0-262-16209-8"
[90]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-7 "Jump up"
[91]: https://books.google.com/books?id=flPICgAAQBAJ&pg=PP1
[92]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[93]: https://en.wikipedia.org/wiki/Special:BookSources/978-981-4474-39-9 "Special:BookSources/978-981-4474-39-9"
[94]: https://tromp.github.io/cl/LC.pdf
[95]: https://en.wikipedia.org/wiki/Church_encoding#cite_ref-8 "Jump up"
[96]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[97]: https://doi.org/10.1007%2F978-3-642-40355-2_12
[98]: https://en.wikipedia.org/w/index.php?title=Church_encoding&action=edit&section=26 "Edit section: References"
[99]: http://www.cs.uiowa.edu/~astump/papers/archon.pdf
[100]: http://www.cs.rice.edu/~javaplt/311/Readings/supplemental.pdf
[101]: https://en.wikipedia.org/wiki/Rice_University "Rice University"
[102]: https://archive.org/download/TheoreticalFoundationsForPracticaltotallyFunctionalProgramming/33429551_PHD_totalthesis.pdf
[103]: http://www.csse.monash.edu.au/~lloyd/tildeFP/Lambda/Examples/const-int/
[104]: http://blog.klipse.tech/lambda/2016/07/24/lambda-calculus-2.html
