# Lambda Calculus: Summary

* Lambda calculus is concerned with objects called *lambda terms*, represented in these 3 forms, `T ::= v | λv.T | T₁ T₂`

* The lowercase names, like `v`, are used for object-language variable names (of which there is an infinite supply), while the uppercase names denote meta-variables that range over the lambda terms. Strictly speaking, since we are dealing only with functions, variables are in fact formal parameters.

* A lambda term of the form `λv.T` is called an *abstraction*, and it corresponds to a *function definition*. It consists of the two regions: the *head* is demarcated by the binder symbol (λ) and the dot (.) from the *body*, which extendes as far to the right as possible, minding only the parenthesis. The head is a place to declare a formal parameter, which is then the param's binding context, and that specific occurrence of the param is its *binding occurence*. A param can appear any number of times in the body and these are its *applied occurrences*. If that count is zero, a param is said to be *dropped*. From the context of the body, a param is *bound* by the nearest binder (that contains the binding occurrence of that param); if more than one binding site exists, then the nearest one *shadows* those further away. The scope of an abstraction, `λv.T`, is exactly `T`; 



`λp.B` represents the function which, applied to an argument, binds the formal parameter `p` to the argument and then computes the resulting value of `B`, that is, it returns `B` with every occurrence of `p` replaced by the argument.


[p:=A]B,
