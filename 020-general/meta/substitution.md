# Substitution

Substitution just means replacing one expression with another. Substitution is an intrinsic process of rewriting systems.

Generally, substitution is denoted by B[x:=E], meaning that each occurrence of variable `x` within the scope of the overall sentence (expression, statement, formula) `B` is replaced by an expression `E`. The end result is that, within the expression `B`, all occurrences of `x` have been replaced with `(E)`. The parenthesis around `E` are often necessary to properly delineate `E` from the surrounding parts of the overall expression.

```hs
(x * y)[y:=z + w] --/-> x * z + w   -- WRONG! Watch out for precedence!
(x * y)[y:=z + w] ----> x * (z + w) -- Do parens
```

Strictly, the first step of the substitution process would be to replace the variable (target) with the parenthesized substitute, followed by the removal of redundant parenthesis. However, these are normally combined into a single step.

Parenthesizing the substitute is the primary and rudimentary means of protection against the accidental change of semantics of the overall expression; it should always be practiced, but it's not always sufficient.


Substitution usually resambles macro expansions in that a subexpression in a bigger expression is recognized as an abbreviation, so it gets replaced with its definition.

Naively performed (à la C), macro expansion can have unintended effects on the semantics, inadvertantly changing the meaning of the expression (program, code). One of the common problems is the "capture" of variables from the surrounding context, which can be best observed in LC.

In LC, applying a function to an argument is a β-reduction and it involves substitution (that must avoid name capture).

```hs
    (λa.λb.a)(λa.b)
=       λb.a[a:=λa.b]
≠ᵦ      λb.λa.b         -- Name captured! Free 'b' ended up being bound!

    (λa.λb.a)(λa.b)
=ₐ  (λa.λb.a){a:=z}     -- RIGHT! First rename dummy param 'a' to 'z'
=   (λz.λb.z)(λa.b)
=       λb.z[z:=λa.b]
=ᵦ      λb.λa.b
```

*Hygenic macros* involve macro expansion in a way that is mindful of the surrounding context, performing context-aware or context-sensitive substitution.

*Simultaneous substitution* is an extension of single substitution. It involves a map of key-value replacements, B[x:=z,y:=w], all of which are to be performed at the same time.

This is contrasted by *sequential substitution* where the substitutions are performed in sequence, such that the later substitutions can act on and affect the results of earlier substitutions. A near example of this can be seen in JS with default parameters, where the default parameters declared later can reference the earlier ones. Another bad example is found with dependent types, in a so-called telescope, where the types declared later may depend on the terms/values of types declared earlier, `a:A, b:B(a), c:C(a,b), d:D(a,b,c), …`.
