# 3. Expressions and definitional equality

Theory of expressions, abbreviations and definitional equality.

The theory was developed by Per Martin-Lof, who also presented it for the first time at the Brouwer symposium in Holland, 1981; further development of the theory was presented by Martin-Lof in Siena in 1983. The theory is not limited to type theoretic expressions but offers a general theory of expressions in mathematics and computer science.

## 3.1 Application

- application `f x`, in general `e e₀ … eₙ`
- application binds to the left, a b c d ≡ ((a b) c) d

The standard analysis of expressions in Computing Science is to use syntax trees, i.e. to consider expressions being built up from n-ary constants using application. A problem with that approach is the treatment of bound variables.

## 3.2 Abstraction

- abstraction, `λf. λx. f x`
- abstraction binds to the right, λabc.abc ≡ λa.(λb.(λc.(a b c)))
- abstraction has precedence to application, λa.b c ≡ (λa.b)c != λa.(b c)

It's possible to express an object by different syntactical forms. An object which syntactically could be expressed by the expression `M` could equally well be expressed by `(λx.M)x` ≡ `M`, where `x ∈ FV M`.

In general, `(λp.M)a` ≡ `[p ⟼ a]M` ≡ `let p = a in M`.

When two expressions are syntactical synonyms, we say that they are definitionally, or intensionally, equal, and we will use the symbol `≡` (or `=`) for definitional (intensional) equality between expressions.

The definitional equality between the expressions above is thus written
`M ≡ (λx.M)x`, or just `M = (λx.M)x`.

*Definitional equality* is a syntactical notion and that it has nothing to do with the meaning (semantics) of the syntactical entities.

## 3.3 Combination

In the prefix notation, e.g. +(4,2,8), the operator `+` may be interpeted to mean that it is repeated, as in "4 + 2 + 8". (what else?)... A third way, and this is the way we shall follow in this book, is to see the combination of expressions as a separate syntactical operation just as application and abstraction. So if `e₁`, `e₂`, … and `eₙ` are expressions, we may form the expression `e₁, e₂, … , eₙ`, which we call the *combination* of the individual expressions `eᵢ`. (wtf?! is this a list, a sequence of args? a tuple? a tuple without parens?!).

Besides its obvious use in connection with functions of several arguments (what's wrong with currying?), the combination operation is also used for forming combined objects such as orderings `(A, ≤)`, where `A` is a set and `≤` is a reflexive, antisymmetric and transitive relation on `A`; and finite state machines, `(S, s₀, Σ, δ)`. (yup, it's a weird tuple).

## 3.4 Selection

Given a combination, we'll use the syntactical operation of selection to retrieve its components. (mean projection?). If `e` is a combination with `n` components, then `(e).i` denotes the projection of the ith component, provided `1 ≤ i ≤ n` (1-based, oh dear).

The defining equation is `(e₁, …, eₙ).i` ≡ `eᵢ` for `1 ≤ i ≤ n`

(so now it is a tuple? it got them parens alright. maybe this book is shite?)

## 3.5 Combinations with named components

(...)

"We will not need combinations with named components in this monograph
and will not explore them further."


## 3.6 Arities

From the examples above, it seems perhaps natural to let expressions in general be built up from variables and primitive constants by means of abstraction, application, selection and combination without any restrictions. This is also the analysis, *apart from combination*, made by Church and Curry and their followers in combinatory logic.
