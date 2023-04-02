---
downloaded:       2021-11-05
author:           
page-url:         https://en.wikipedia.org/wiki/Let_expression#Rules_for_conversion_between_lambda_calculus_and_let_expressions
page-title:       Let expression - Wikipedia
article-title:    Let expression - Wikipedia
article-length:   12469
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Let expression - Wikipedia

In computer science, a "let" expression associates a function definition with a restricted scope.
In computer science, a __"let" expression__ associates a [function][1] definition with a restricted [scope][2].

The __"let" expression__ may also be defined in mathematics, where it associates a Boolean condition with a restricted scope.

The "let" expression may be considered as a [lambda abstraction][3] applied to a value. Within mathematics, a let expression may also be considered as a [conjunction][4] of expressions, within an [existential quantifier][5] which restricts the scope of the variable.

The let expression is present in many functional languages to allow the local definition of expression, for use in defining another expression. The let-expression is present in some functional languages in two forms; let or "let rec". Let rec is an extension of the simple let expression which uses the [fixed-point combinator][6] to implement [recursion][7].

## History\[[edit][8]\]

[Dana Scott][9]'s [LCF language][10][\[1\]][11] was a stage in the evolution of lambda calculus into modern functional languages. This language introduced the let expression, which has appeared in most functional languages since that time.

The languages [Scheme][12],[\[2\]][13] [ML][14], and more recently [Haskell][15][\[3\]][16] have inherited let expressions from LCF.

Stateful imperative languages such as [ALGOL][17] and [Pascal][18] essentially implement a let expression, to implement restricted scope of functions, in block structures.\[*[citation needed][19]*\]

A closely related "__where__" clause, together with its recursive variant "__where rec__", appeared already in [Peter Landin][20]'s *The mechanical evaluation of expressions*.[\[4\]][21]

## Description\[[edit][22]\]

A "let" expression defines a function or value for use in another expression. As well as being a construct used in many functional programming languages, it is a natural language construct often used in mathematical texts. It is an alternate syntactical construct for a where clause.

In both cases the whole construct is an expression whose value is 5. Like the [if-then-else][23] the type returned by the expression is not necessarily Boolean.

A let expression comes in 4 main forms,

In functional languages the *let* expression defines functions which may be called in the expression. The scope of the function name is limited to the let expression structure.

In mathematics, the let expression defines a condition, which is a constraint on the expression. The syntax may also support the declaration of existentially quantified variables local to the let expression.

The terminology, syntax and semantics vary from language to language. In [Scheme][24], *let* is used for the simple form and *let rec* for the recursive form. In ML *let* marks only the start of a block of declarations with *fun* marking the start of the function definition. In Haskell, *let* may be mutually recursive, with the compiler figuring out what is needed.

## Definition\[[edit][25]\]

A [lambda abstraction][26] represents a function without a name. This is a [source of the inconsistency][27] in the definition of a lambda abstraction. However lambda abstractions may be composed to represent a function with a name. In this form the inconsistency is removed. The lambda term,

![(\lambda f.z)\ (\lambda x.y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e674b4dc5831b2d46dfcb4cfbaa3031ca30017)

is equivalent to defining the function ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61) by ![f\ x=y](https://wikimedia.org/api/rest_v1/media/math/render/svg/78219e3136424712bd999157856d4f3d9478744d) in the expression ![z](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf368e72c009decd9b6686ee84a375632e11de98), which may be written as the *let* expression;

![\operatorname {let}f\ x=y\operatorname {in}z](https://wikimedia.org/api/rest_v1/media/math/render/svg/10448aead2979f0636bb7f428bc4a2147c8969ad)

The let expression is understandable as a natural language expression. The let expression represents the substitution of a variable for a value. The substitution rule describes the implications of equality as substitution.

### Let definition in mathematics\[[edit][28]\]

In [mathematics][29] the *let* expression is described as the conjunction of expressions. In functional languages the let expression is also used to limit scope. In mathematics scope is described by quantifiers. The let expression is a conjunction within an existential quantifier.

![{\displaystyle (\exists xE\land F)\iff \operatorname {let} x:E\operatorname {in} F}](https://wikimedia.org/api/rest_v1/media/math/render/svg/84e8012d98c7e4b970ec2be01d6b9b148b7d4fa4)

where *E* and *F* are of type Boolean.

The *let* expression allows the substitution to be applied to another expression. This substitution may be applied within a restricted scope, to a sub expression. The natural use of the let expression is in application to a restricted scope (called [lambda dropping][30]). These rules define how the scope may be restricted;

![{\displaystyle {\begin{cases}x\not \in \operatorname {FV} (E)\land x\in \operatorname {FV} (F)\implies \operatorname {let} x:G\operatorname {in} E\ F=E\ (\operatorname {let} x:G\operatorname {in} F)\\x\in \operatorname {FV} (E)\land x\not \in \operatorname {FV} (F)\implies \operatorname {let} x:G\operatorname {in} E\ F=(\operatorname {let} x:G\operatorname {in} E)\ F\\x\not \in \operatorname {FV} (E)\land x\not \in \operatorname {FV} (F)\implies \operatorname {let} x:G\operatorname {in} E\ F=E\ F\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3b3df7a50a055a0935fd25bbfe0f606250570911)

where *F* is [not of type Boolean][31]. From this definition the following standard definition of a let expression, as used in a functional language may be derived.

![x\not \in \operatorname {FV}(y)\implies (\operatorname {let}x:x=y\operatorname {in}z)=z[x:=y]=(\lambda x.z)\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/f81eac6e91e95d921c9394ea1a0bf03c75fa04bc)

For simplicity the marker specifying the existential variable, ![x:](https://wikimedia.org/api/rest_v1/media/math/render/svg/a464b07701efcc30dd421d9a5c6f9d8a8612b23f), will be omitted from the expression where it is clear from the context.

![x\not \in \operatorname {FV}(y)\implies (\operatorname {let}x=y\operatorname {in}z)=z[x:=y]=(\lambda x.z)\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/57e111c0893f106c22e85dd1fe949354b3b0a348)

#### Derivation\[[edit][32]\]

To derive this result, first assume,

![x\not \in \operatorname {FV}(L)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ddd08a30a864c4264a729ca9b23d4d0937bdc23c)

then

![{\displaystyle {\begin{aligned}L\ (\operatorname {let} x:x=y\operatorname {in} z)&\iff (\operatorname {let} x:x=y\operatorname {in} L\ z)\\&\iff x=y\land L\ z\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1014301f9ffc2e2e60bdf1d5538daf4c309494cc)

Using the rule of substitution,

![{\displaystyle {\begin{aligned}&\iff x=y\land (L\ z)[x:=y]\\&\iff x=y\land (L[x:=y]\ z[x:=y])\\&\iff x=y\land L\ z[x:=y]\\&\implies L\ z[x:=y]\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6c7398de56fc1b42dbfb49d5a68ff2e1f7bac64c)

so for all *L*,

![L\operatorname {let}x:x=y\operatorname {in}z\implies L\ z[x:=y]](https://wikimedia.org/api/rest_v1/media/math/render/svg/d587c9dc81797c6072bff072d2423720fdf45b64)

Let ![L\ X=(X=K)](https://wikimedia.org/api/rest_v1/media/math/render/svg/155f099bd82cf965b4518b5c4f6156b12a8d24c0) where *K* is a new variable. then,

![(\operatorname {let}x:x=y\operatorname {in}z)=K\implies z[x:=y]=K](https://wikimedia.org/api/rest_v1/media/math/render/svg/f9daffc57101f507dedd3a3cc49b0f7821ace954)

So,

![\operatorname {let}x:x=y\operatorname {in}z=z[x:=y]](https://wikimedia.org/api/rest_v1/media/math/render/svg/b61107edd6e0ebf29b86f858071985c945ef019b)

But from the mathematical interpretation of a beta reduction,

![(\lambda x.z)\ y=z[x:=y]](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba408977fa51632f2ed9a40ad81da9ceb47adc14)

Here if y is a function of a variable x, it is not the same x as in z. Alpha renaming may be applied. So we must have,

![x\not \in \operatorname {FV}(y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e527e87d19f05c6025a558a7f8cec4060ac4d4a2)

so,

![x\not \in \operatorname {FV}(y)\implies \operatorname {let}x:x=y\operatorname {in}z=(\lambda x.z)\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/4daf48373a047a6c19839433b1f245d8d5706021)

This result is represented in a functional language in an abbreviated form, where the meaning is unambiguous;

![x\not \in \operatorname {FV}(y)\implies (\operatorname {let}x=y\operatorname {in}z)=z[x:=y]=(\lambda x.z)\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/57e111c0893f106c22e85dd1fe949354b3b0a348)

Here the variable *x* is implicitly recognised as both part of the equation defining x, and the variable in the existential quantifier.

#### No lifting from Boolean\[[edit][33]\]

A contradiction arises if E is defined by ![E=\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e9a88bba58158f8cb7dd6498168c00c5e0d0a58). In this case,

![{\displaystyle x\not \in \operatorname {FV} (E)\land x\in \operatorname {FV} (F)\implies \operatorname {let} x:G\operatorname {in} E\ F=E\ (\operatorname {let} x:G\operatorname {in} F)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3719a99dc62607cf8ec836290a331bb6c9a1c914)

becomes,

![\operatorname {let}x:G\operatorname {in}\neg F=\neg \ (\operatorname {let}x:G\operatorname {in}F)](https://wikimedia.org/api/rest_v1/media/math/render/svg/35fd56240763d3c56594191a2c8628c36652505e)

and using,

![{\displaystyle (\exists xE\land F)\iff \operatorname {let} x:E\operatorname {in} F}](https://wikimedia.org/api/rest_v1/media/math/render/svg/84e8012d98c7e4b970ec2be01d6b9b148b7d4fa4)

![{\displaystyle (\exists xG\land \neg F)=\neg \ (\exists xG\land F)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2f2e03fc113ac91ea6b70583360051f6bd52f171)

![{\displaystyle =(\exists x\neg G\lor \neg F)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf349e0d594e6ab299aada7f031a675ae3ff49c8)

This is false if G is false. To avoid this contradiction *F* is not allowed to be of type Boolean. For Boolean *F* the correct statement of the dropping rule uses implication instead of equality,

![{\displaystyle x\not \in \operatorname {FV} (E)\land x\in \operatorname {FV} (F)\implies (\operatorname {let} x:G\operatorname {in} E\ F\to E\ (\operatorname {let} x:G\operatorname {in} F))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/79f5bf1ae712a071db37cf49de9c265b2a8cb0c3)

It may appear strange that a different rule applies for Boolean than other types. The reason for this is that the rule,

![{\displaystyle (\exists xE\land F)\iff \operatorname {let} x:E\operatorname {in} F}](https://wikimedia.org/api/rest_v1/media/math/render/svg/84e8012d98c7e4b970ec2be01d6b9b148b7d4fa4)

only applies where *F* is Boolean. The combination of the two rules creates a contradiction, so where one rule holds, the other does not.

#### Joining let expressions\[[edit][34]\]

Let expressions may be defined with multiple variables,

![{\displaystyle (\exists v\cdots \exists w\exists xE\land F)\iff \operatorname {let} v,\ldots ,w,x:E\operatorname {in} F}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9de8632b2ca7251e76a8c2ee48d11fadaacc93eb)

then it can be derived,

![{\displaystyle x\not \in FV(E)\implies (\exists v\cdots \exists w\exists xE\land F)\iff (\exists v\cdots \exists w(E\land \exists xF))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4fdd78ef688080c00fb19248d29c926fb89533a)

so,

![{\displaystyle x\not \in FV(E)\implies (\operatorname {let} v,\ldots ,w,x:E\land F\operatorname {in} L\equiv \operatorname {let} v,\ldots ,w:E\operatorname {in} \operatorname {let} x:F\operatorname {in} L)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0fa961bf47607e0bd224233044791e2c67ec3763)

### Laws relating lambda calculus and let expressions\[[edit][35]\]

The [Eta reduction][36] gives a rule for describing lambda abstractions. This rule along with the two laws derived above define the relationship between lambda calculus and let expressions.

### Let definition defined from lambda calculus\[[edit][37]\]

To avoid the [potential problems][38] associated with the [mathematical definition][39], [Dana Scott][40] originally defined the *let* expression from lambda calculus. This may be considered as the bottom up, or constructive, definition of the *let* expression, in contrast to the top down, or axiomatic mathematical definition.

The simple, non recursive *let* expression was defined as being [syntactic sugar][41] for the lambda abstraction applied to a term. In that definition,

![(\operatorname {let}_{s}x=y\operatorname {in}z)\equiv (\lambda x.z)\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/bc72bb7d2b279e57f19f6dae957505de8a9aebd6)

The simple *let* expression definition was then extended to allow recursion using the [fixed-point combinator][42].

#### Fixed-point combinator\[[edit][43]\]

The [fixed-point combinator][44] may be represented by the expression,

![\lambda f.\operatorname {let} x=f\ x\operatorname {in} x](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e25fc97e7bf5afa669559f5da31dbcedb7279df)

This representation may be converted into a lambda term. A lambda abstraction does not support reference to the variable name, in the applied expression, so *x* must be passed in as a parameter to *x*.

![\lambda f.\operatorname {let}x\ x=f\ (x\ x)\operatorname {in}x\ x](https://wikimedia.org/api/rest_v1/media/math/render/svg/f1181dbf0aaa7f7b3ec88fe5f485913a855e75d2)

Using the eta reduction rule,

![f\ x=y\equiv f=\lambda x.y](https://wikimedia.org/api/rest_v1/media/math/render/svg/2df5a4e4f0762b8a59a3046a789cfee78801a770)

gives,

![\lambda f.\operatorname {let}x=\lambda x.f\ (x\ x)\operatorname {in}x\ x](https://wikimedia.org/api/rest_v1/media/math/render/svg/e21bd28b4b60240df99e012b05edf2c61bf62970)

A let expression may be expressed as a lambda abstraction using,

![n\not \in FV(E)\to (\operatorname {let} n=E\operatorname {in} L\equiv (\lambda n.L)\ E)](https://wikimedia.org/api/rest_v1/media/math/render/svg/047b4be24ef22146ac0862c981fe65b3a5aac285)

gives,

![\lambda f.(\lambda x.x\ x)\ (\lambda x.f\ (x\ x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/07f78731c5d68f4c763aa8bbd14f3df147cd8d9a)

This is possibly the simplest implementation of a fixed point combinator in lambda calculus. However one beta reduction gives the more symmetrical form of Curry's Y combinator.

![\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/6994f701f878c1c51973f1590f5cfc2f3265b19b)

#### Recursive let expression\[[edit][45]\]

The recursive *let* expression called "let rec" is defined using the Y combinator for recursive let expressions.

![(\operatorname {let\ rec}x=y\operatorname {in}z)\equiv (\lambda x.z)\ (Y\ (\lambda x.y))](https://wikimedia.org/api/rest_v1/media/math/render/svg/bf1325c4df0aea799da02b89a715f91dc44e3a4f)

#### Mutually recursive let expression\[[edit][46]\]

This approach is then generalized to support mutual recursion. A mutually recursive let expression may be composed by rearranging the expression to remove any and conditions. This is achieved by replacing multiple function definitions with a single function definition, which sets a list of variables equal to a list of expressions. A version of the Y combinator, called the *Y\** poly-variadic fix-point combinator [\[5\]][47] is then used to calculate fixed point of all the functions at the same time. The result is a mutually recursive implementation of the *let* expression.

## Multiple values\[[edit][48]\]

A let expression may be used to represent a value that is a member of a set,

![\operatorname {let}x\in X\operatorname {in}x](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b13b480fa5093f01ffcd164c5f87b7b38b8268a)

Under function application, of one let expression to another,

![{\displaystyle {\begin{aligned}&(\operatorname {let} x\in X\operatorname {in} x)\ (\operatorname {let} y\in Y\operatorname {in} y)\\&=\operatorname {let} x\in X\land y\in Y\operatorname {in} x\ y\\&=\operatorname {let} (x,y)\in X\times Y\operatorname {in} x\ y\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9067632249fa8678350eeafc28abfe1b150f6bb6)

But a different rule applies for applying the let expression to itself.

![{\displaystyle {\begin{aligned}&(\operatorname {let} x\in X\operatorname {in} x)\ (\operatorname {let} x\in X\operatorname {in} x)\\&=\operatorname {let} x\in X\operatorname {in} x\ x\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9f5f0c25c122a2d9d561792e238233b3aa1e2d9)

There appear no simple rule for combining values. What is required is a general form of expression that represents a variable whose value is a member of a set of values. The expression should be based on the variable and the set.

Function application applied to this form should give another expression in the same form. In this way any expression on functions of multiple values may be treated as if it had one value.

It is not sufficient for the form to represent only the set of values. Each value must have a condition that determines when the expression takes the value. The resulting construct is a set of pairs of conditions and values, called a "value set". See [narrowing of algebraic value sets][49].

## Rules for conversion between lambda calculus and let expressions\[[edit][50]\]

[Meta-functions][51] will be given that describe the conversion between *lambda* and *let* expressions. A meta-function is a function that takes a program as a parameter. The program is data for the meta-program. The program and the meta program are at different meta-levels.

The following conventions will be used to distinguish program from the meta program,

-   Square brackets \[\] will be used to represent function application in the meta program.
-   Capital letters will be used for variables in the meta program. Lower case letters represent variables in the program.
-   ![\equiv ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c5c34250859b6f6d2a77b4e8a2ceaa90638076d) will be used for equals in the meta program.

For simplicity the first rule given that matches will be applied. The rules also assume that the lambda expressions have been pre-processed so that each lambda abstraction has a unique name.

The substitution operator is also used. The expression ![L[G:=S]](https://wikimedia.org/api/rest_v1/media/math/render/svg/7716db852899ef7e3eb2a00dbbea76bc11279afb) means substitute every occurrence of *G* in *L* by *S* and return the expression. The definition used is extended to cover the substitution of expressions, from the definition given on the [Lambda calculus][52] page. The matching of expressions should compare expressions for alpha equivalence (renaming of variables).

### Conversion from lambda to let expressions\[[edit][53]\]

The following rules describe how to convert from a lambda expression to a *let* expression, without altering the structure.

1.  ![\operatorname {de-lambda}[V]\equiv V](https://wikimedia.org/api/rest_v1/media/math/render/svg/d0de3dc641d38384f918a819d631abebb34ecbaf)
2.  ![\operatorname {de-lambda}[M\ N]\equiv \operatorname {de-lambda}[M]\ \operatorname {de-lambda}[N]](https://wikimedia.org/api/rest_v1/media/math/render/svg/b5efb4a24f7d8e6b766adc58d0c70bfba8afaf5b)
3.  ![\operatorname {de-lambda}[F=\lambda P.E]\equiv \operatorname {de-lambda}[F\ P=E]](https://wikimedia.org/api/rest_v1/media/math/render/svg/e43437dbae7c4406b94f3a4e8ef1b53fcad6c9dc)
4.  ![\operatorname {de-lambda}[E=F]\equiv \operatorname {de-lambda}[E]=\operatorname {de-lambda}[F]](https://wikimedia.org/api/rest_v1/media/math/render/svg/a3cfbac0a8cd94ec34f53ba953dd3ec4ab880983)
5.  ![\operatorname {de-lambda}[(\lambda F.E)L]\equiv \operatorname {let-combine}[\operatorname {let}F:\operatorname {de-lambda}[F=L]\operatorname {in}E]](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e58135f7eeeed6d46554387e773918f06e75192)
6.  ![V\not \in \operatorname {FV}[\lambda F.E]\to \operatorname {de-lambda}[\lambda F.E]\equiv \operatorname {let-combine}[\operatorname {let}V:\operatorname {de-lambda}[V\ F=E]\operatorname {in}V]](https://wikimedia.org/api/rest_v1/media/math/render/svg/0783bf1eeef16742355b1604ac7c49f690df9899)
7.  ![{\displaystyle V\neq W\to \operatorname {let-combine} [\operatorname {let} V:E\operatorname {in} \operatorname {let} W:F\operatorname {in} G]\equiv \operatorname {let} V,W:E\land F\operatorname {in} G}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab5c94d973f7d9b8430c467eb6c85be0818bd406)
8.  ![\operatorname {let-combine}[\operatorname {let}V:E\operatorname {in}F]\equiv \operatorname {let}V:E\operatorname {in}F](https://wikimedia.org/api/rest_v1/media/math/render/svg/dcdf7a95bed9af991b9bf78be112f172ebae2744)

Rule 6 creates a unique variable V, as a name for the function.

#### Example\[[edit][54]\]

For example, the [Y combinator][55],

![\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x)) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6994f701f878c1c51973f1590f5cfc2f3265b19b)

is converted to,

![\operatorname {let}p:p\ f=\operatorname {let}x:x\ q=f\ (q\ q)\operatorname {in}f\ (x\ x)\operatorname {in}p](https://wikimedia.org/api/rest_v1/media/math/render/svg/4da95097fb760524ba07737688b913379dd0dea5)

### Conversion from let to lambda expressions\[[edit][56]\]

These rules reverse the conversion described above. They convert from a *let* expression to a lambda expression, without altering the structure. Not all let expressions may be converted using these rules. The rules assume that the expressions are already arranged as if they had been generated by *de-lambda*.

1.  ![\operatorname {get-lambda}[F,G\ V=E]=\operatorname {get-lambda}[F,G=\lambda V.E]](https://wikimedia.org/api/rest_v1/media/math/render/svg/4ebe7c990955401b0e7b09f2ce999efc2d3aa880)
2.  ![\operatorname {get-lambda}[F,F=E]=\operatorname {de-let}[E]](https://wikimedia.org/api/rest_v1/media/math/render/svg/cf2c34813e9a28ad6599cde30756f34399bb75aa)
3.  ![\operatorname {de-let}[\lambda V.E]\equiv \lambda V.\operatorname {de-let}[E]](https://wikimedia.org/api/rest_v1/media/math/render/svg/26d291dbf31803a054bd445a1066e8cbf4ae9bbc)
4.  ![\operatorname {de-let}[M\ N]\equiv \operatorname {de-let}[M]\ \operatorname {de-let}[N]](https://wikimedia.org/api/rest_v1/media/math/render/svg/5c876a5018468b6518441738d9e5203aba224f92)
5.  ![\operatorname {de-let}[V]\equiv V](https://wikimedia.org/api/rest_v1/media/math/render/svg/23c944cdb61bb1733806f6baf95a4cef7d406112)
6.  ![{\displaystyle V\not \in FV[\operatorname {get-lambda} [V,E]]\to \operatorname {de-let} [\operatorname {let} V:E\ \operatorname {in} V]\equiv \operatorname {get-lambda} [V,E]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3c24acfa12980073afc4f2a54ce80561396ca401)
7.  ![{\displaystyle V\not \in FV[\operatorname {get-lambda} [V,E]]\to \operatorname {de-let} [\operatorname {let} V:E\ \operatorname {in} L]\equiv (\lambda V.\operatorname {de-let} [L])\ \operatorname {get-lambda} [V,E]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e0a7613d63994c0a89b90abb14262845e30da74)
8.  ![{\displaystyle W\not \in \operatorname {FV} [\operatorname {get-lambda} [V,E]]\to \operatorname {de-let} [\operatorname {let} V,W:E\land F\ \operatorname {in} G]\equiv \operatorname {de-let} [\operatorname {let} V:E\ \operatorname {in} \operatorname {let} W:F\ \operatorname {in} G]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/63b3bb04975aee17d86003a77bb817c2e3d47090)
9.  ![{\displaystyle V\in \operatorname {FV} [\operatorname {get-lambda} [V,E]]\to \operatorname {de-let} [\operatorname {let} V:E\ \operatorname {in} L]\equiv \operatorname {de-let} [\operatorname {let} V:V\ V=\operatorname {get-lambda} [V,E][V:=V\ V]\ \operatorname {in} L[V:=V\ V]]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/33fd9a064d9680ba5a82296a94207a5820d8d92e)
10.  ![{\displaystyle W\in \operatorname {FV} [\operatorname {get-lambda} [V,E]]\to \operatorname {de-let} [\operatorname {let} V,W:E\land F\ \operatorname {in} L]\equiv \operatorname {de-let} [\operatorname {let} V:V\ W=\operatorname {get-lambda} [V,E][V:=V\ W]\ \operatorname {in} \operatorname {let} W:F[V:=V\ W]\ \operatorname {in} L[V:=V\ W]]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5eadaab087243563e90735087c573a09f4c0ecd1)

There is no exact structural equivalent in lambda calculus for *let* expressions that have free variables that are used recursively. In this case some addition of parameters is required. Rules 8 and 10 add these parameters.

Rules 8 and 10 are sufficient for two mutually recursive equations in the *let* expression. However they will not work for three or more mutually recursive equations. The general case needs an extra level of looping which makes the meta function a little more difficult. The rules that follow replace rules 8 and 10 in implementing the general case. Rules 8 and 10 have been left so that the simpler case may be studied first.

1.  *lambda-form* - Convert the expression into a conjunction of expressions, each of the form *variable* = *expression*.
    1.  ![\operatorname {lambda-form}[G\ V=E]=\operatorname {lambda-form}[G=\lambda V.E]](https://wikimedia.org/api/rest_v1/media/math/render/svg/a529daca5a067b288ced8e70265306e75c7c6f7d)
    2.  ![{\displaystyle \operatorname {lambda-form} [E\land F]=\operatorname {lambda-form} [E]\land \operatorname {lambda-form} [F]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/61282e56970fc6cecb987f58e6332b6ee5aed60e)
    3.  ![\operatorname {lambda-form}[V=E]=V=E](https://wikimedia.org/api/rest_v1/media/math/render/svg/f927ed1fe97c12be47fe988daacf7c07522bd987) ...... where *V* is a variable.
2.  *lift-vars* - Get the set of variables that need *X* as a parameter, because the expression has *X* as a free variable.
    1.  ![X\in \operatorname {FV}[E]\to \operatorname {lift-vars}[X,V=E]=\{V\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/781f4c031aa544d4609a24d1296e693a9200964b)
    2.  ![X\not \in \operatorname {FV}[E]\to \operatorname {lift-vars}[X,V=E]=\{\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2abd2c0de357d206d497fcba9fc1465840a3d468)
    3.  ![{\displaystyle \operatorname {lift-vars} [X,E\land F]=\operatorname {lift-vars} [X,E]\cup \operatorname {lift-vars} [X.F]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fef8f757579f1f0e70c9f3efc0771ebaf4cee899)
3.  *sub-vars* - For each variable in the set substitute it for the variable applied to X in the expression. This makes *X* a variable passed in as a parameter, instead of being a free variable in the right hand side of the equation.
    1.  ![\operatorname {sub-vars}[E,\{V\}\cup S,X]=\operatorname {sub-vars}[E[V:=V\ X],S,X]](https://wikimedia.org/api/rest_v1/media/math/render/svg/d65e0d873c3c7806828ca58dd88f821f21193c97)
    2.  ![\operatorname {sub-vars}[E,\{\},X]=E](https://wikimedia.org/api/rest_v1/media/math/render/svg/19c8d37c0478acf003ef19a2687b889a9f5c8a8b)
4.  *de-let* - [Lift][57] each condition in *E* so that *X* is not a free variable on the right hand side of the equation.
    1.  ![{\displaystyle {\begin{aligned}L&=\operatorname {lambda-form} [E]\land S=\operatorname {lift-vars} [X,L]\to \operatorname {de-let} [\operatorname {let} V\ldots W,X:E\land F\ \operatorname {in} G]\\&\equiv \operatorname {de-let} [\operatorname {let} V\ldots W:\operatorname {sub-vars} [L,S,X]\ \operatorname {in} \operatorname {let} \operatorname {sub-vars} [\operatorname {lambda-form} [F],S,X]\ \operatorname {in} \operatorname {sub-vars} [G,S,X]]\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dec69c81e23f469d3f6e09fbc140c95413643727)

#### Examples\[[edit][58]\]

For example, the *let* expression obtained from the [Y combinator][59],

![{\displaystyle \operatorname {let} p:p\ f=\operatorname {let} x:x\ q=f\ (q\ q)\ \operatorname {in} f\ (x\ x)\ \operatorname {in} p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/30c3acaec031d0a01ce230ae3108ddbdf4006975)

is converted to,

![\lambda f.(\lambda x.f\ (x\ x))\ (\lambda q.f\ (q\ q))](https://wikimedia.org/api/rest_v1/media/math/render/svg/1ed9635908d9634d6ee49191a53415d3e54726ce)

For a second example take the lifted version of the [Y combinator][60],

![{\displaystyle \operatorname {let} p,q:p\ f\ x=f\ (x\ x)\land q\ p\ f=(p\ f)\ (p\ f)\ \operatorname {in} q\ p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/66d33f8295235aaeb087b1c3b24024c066f18271)

is converted to,

![(\lambda p.(\lambda q.q\ p)\ \lambda p.\lambda f.(p\ f)\ (p\ f))\ \lambda f.\lambda x.f\ (x\ x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ed6db2ddc28ca2328fc2fe81b035e64e9f5df2b)

For a third example the translation of,

![{\displaystyle \operatorname {let} x:x\ f=f\ (x\ f)\ \operatorname {in} x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e749007a2db88bdc140753bb3ada585d41d7d9c)

is,

![(\lambda x.x\ x)\ (\lambda x.\lambda f.f\ (x\ x\ f))](https://wikimedia.org/api/rest_v1/media/math/render/svg/a23ed0d7025a094b5394b7dbe8b185eda01a2573)

## Key people\[[edit][61]\]

-   [Dana Scott][62]

## See also\[[edit][63]\]

-   [Scope (computer science)][64]
-   [Lambda lifting][65]
-   [Fixed-point combinator][66]
-   [Lambda calculus][67]
-   [Curry's paradox][68]
-   [Deductive lambda calculus][69]
-   [Constraint logic programming][70]
-   [Narrowing of algebraic value sets][71]

## References\[[edit][72]\]

[1]: https://en.wikipedia.org/wiki/Function_(computer_science) "Function (computer science)"
[2]: https://en.wikipedia.org/wiki/Scope_(computer_science) "Scope (computer science)"
[3]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[4]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[5]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[6]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[7]: https://en.wikipedia.org/wiki/Recursion_(computer_science) "Recursion (computer science)"
[8]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=1 "Edit section: History"
[9]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[10]: https://en.wikipedia.org/wiki/Programming_Computable_Functions "Programming Computable Functions"
[11]: https://en.wikipedia.org/wiki/Let_expression#cite_note-1
[12]: https://en.wikipedia.org/wiki/Scheme_(programming_language) "Scheme (programming language)"
[13]: https://en.wikipedia.org/wiki/Let_expression#cite_note-scheme-let-2
[14]: https://en.wikipedia.org/wiki/ML_(programming_language) "ML (programming language)"
[15]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[16]: https://en.wikipedia.org/wiki/Let_expression#cite_note-haskell-let-3
[17]: https://en.wikipedia.org/wiki/ALGOL "ALGOL"
[18]: https://en.wikipedia.org/wiki/Pascal_(programming_language) "Pascal (programming language)"
[19]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[20]: https://en.wikipedia.org/wiki/Peter_Landin "Peter Landin"
[21]: https://en.wikipedia.org/wiki/Let_expression#cite_note-4
[22]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=2 "Edit section: Description"
[23]: https://en.wikipedia.org/wiki/Conditional_(computer_programming) "Conditional (computer programming)"
[24]: https://en.wikipedia.org/wiki/Scheme_(programming_language) "Scheme (programming language)"
[25]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=3 "Edit section: Definition"
[26]: https://en.wikipedia.org/wiki/Lambda_calculus#lambda_terms "Lambda calculus"
[27]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus#Logical_inconsistency "Deductive lambda calculus"
[28]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=4 "Edit section: Let definition in mathematics"
[29]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[30]: https://en.wikipedia.org/wiki/Lambda_lifting#Lambda_dropping_in_lambda_calculus "Lambda lifting"
[31]: https://en.wikipedia.org/wiki/Let_expression#No_lifting_from_Boolean
[32]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=5 "Edit section: Derivation"
[33]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=6 "Edit section: No lifting from Boolean"
[34]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=7 "Edit section: Joining let expressions"
[35]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=8 "Edit section: Laws relating lambda calculus and let expressions"
[36]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus#Eta_reduction_as_mathematics "Deductive lambda calculus"
[37]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=9 "Edit section: Let definition defined from lambda calculus"
[38]: https://en.wikipedia.org/wiki/Let_expression#No_dropping_to_Boolean
[39]: https://en.wikipedia.org/wiki/Let_expression#Let_definition_in_mathematics
[40]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[41]: https://en.wikipedia.org/wiki/Syntactic_sugar "Syntactic sugar"
[42]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[43]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=10 "Edit section: Fixed-point combinator"
[44]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[45]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=11 "Edit section: Recursive let expression"
[46]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=12 "Edit section: Mutually recursive let expression"
[47]: https://en.wikipedia.org/wiki/Let_expression#cite_note-poly-variadic-5
[48]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=13 "Edit section: Multiple values"
[49]: https://en.wikipedia.org/wiki/Narrowing_of_algebraic_value_sets "Narrowing of algebraic value sets"
[50]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=14 "Edit section: Rules for conversion between lambda calculus and let expressions"
[51]: https://en.wikipedia.org/wiki/Metaprogramming "Metaprogramming"
[52]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[53]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=15 "Edit section: Conversion from lambda to let expressions"
[54]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=16 "Edit section: Example"
[55]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[56]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=17 "Edit section: Conversion from let to lambda expressions"
[57]: https://en.wikipedia.org/wiki/Lambda_lifting "Lambda lifting"
[58]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=18 "Edit section: Examples"
[59]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[60]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[61]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=19 "Edit section: Key people"
[62]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[63]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=20 "Edit section: See also"
[64]: https://en.wikipedia.org/wiki/Scope_(computer_science) "Scope (computer science)"
[65]: https://en.wikipedia.org/wiki/Lambda_lifting "Lambda lifting"
[66]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[67]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[68]: https://en.wikipedia.org/wiki/Curry%27s_paradox "Curry's paradox"
[69]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus "Deductive lambda calculus"
[70]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[71]: https://en.wikipedia.org/wiki/Narrowing_of_algebraic_value_sets "Narrowing of algebraic value sets"
[72]: https://en.wikipedia.org/w/index.php?title=Let_expression&action=edit&section=21 "Edit section: References"
