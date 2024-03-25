
## Function signature
The signature of a function includes
- the name of the function, `f`
- the domain of the function, `A`
- the codomain of the function, `B`
- the number of inputs, i.e. function's arity
- the number of output values (if allowed, which is unusual)

A signature may be denoted by `f: Aⁿ → Bᵐ`, where `n` specifies the function's arity, and `m` the number of output values (although it is rare that functions return more than one output). However, this signature is not the most general one because it restricts all inputs to the same domain `A`.

For example, a ternary function with the same domains (all 3 inputs come form the same set `A`) has the signature `f: A³ → B`, i.e. `f: A×A×A → B`. The product of the domains means the function takes 3 inputs - all 3 from the same set `A` - in the form a triple, `(a₀, a₁, a₂)`. On the other hand, if it had distinct domains, the signature would change to `f: A×B×C → D` to denote such a quaternary function. This suggests it is impossible to come up with a most general (generic) signature when domains are heterogeneous.

Although it is rare that functions return more than one output, that single input can sometimes be a compund value. However, in such cases, the signature also has to change to reflect it. Functions that return a collection of elements do not have a standard or even uniform notation. Some authors annotate a function that returns a list of Booleans as `f : 𝔹 → 𝔹*`, while others would use `f : 𝔹 → [𝔹]`. Functions that return a set are sporadically denoted as `f : ℕ → 𝒫(ℕ)`, `f : ℕ → ℤ ∖ {0}` and similar, using braces in the codomain to suggest set-valued functions.


## Function signature
The signature of a function should (and usually does) include 
- the name of the function, `f`
- the domain of the function, `A`
- the codomain of the function, `B`
- the number of inputs, i.e. function's arity
- the number of output values, usually assumed to be a single value

For example, a unary Boolean function has signature `f : 𝔹 → 𝔹`, which immediately informs us that there is a single input Boolean value as input and a single Boolean output.

However, functions may have any number of input values, and each input value may come form a distinct domain set which is difficult to express in general. If there are 3 domain sets, then we can denote the signature of such ternary functions generically as `f : A × B × C → D`.


, in general, when these inputs come form different domain sets. 


In the most common case of unary functions between two sets A and B, the signature is usually expressed as `f : A → B`.


the signature of a function is most commonly expressed as `f: Aⁿ → Bᵐ` in the most general case.

The signature of a function is most commonly expressed as `f: Aⁿ → Bᵐ` in the most general case.


The superscript `n` on `A` actually restricts the input domains () of

marks the number of input values (arity), and `m` on `B` specifies the number of output values, although most commonly, there is only one output.

and assuming that the mutliple outputs 

The signature of a binary function is usually expressed as `f: Aⁿ → B`. 

More generally, an n-ary function has the signature `f: Aⁿ → B`. In rare occasions when mutliple outputs values are allowed, the signature is `f: Aⁿ → Bᵐ`. 

Mutliple outputs, however, more commonly occur as a compound (single) value, but ion that case the signaure of the function also undegoes appropriate change.

For example, a binary Boolean function `f: 𝔹 × 𝔹 → 𝔹`




A single output means a single element of the codomain is the value of the function - which is what the signature `f: Aⁿ → B` specifies. On the other hand, compound values are understood as a single output

a function that returns 


 i.e. there is 
`y ∈ B` is the value of `f` at some input `x ∈ A`, that is, `f(x) = y`
