# Let-polymorphism

When extending the type inference for the STLC towards polymorphism, one has to *define when it is admissible to derive an instance of a value*.

Ideally, this would be *allowed with any use of a bound variable*, as in the next example where the `f` parameter would be instantiated once at `Int` and once at `String`:

```hs
(λf. (f 3, f "abc")) (λx.x)
= ((λx.x) 3, (λx.x) "abc")
= (3, "abc")
```

We have a lambda abstraction, `(λf. (f 3, f "abc"))`, applied to an arg `(λx.x)` (really, the `id` fucntion). The arg gets bound to the formal param `f` that occurs twice in the lambda's body, both times in a position of application, but each time to a distinct type; first to `3 :: Int`, then to `"abc" :: String`.

In Haskell, we'd expect this work, but it doesn't! It would work if both args are of the same type, but since they are not, this fails. The reasone is that *the type inference is undecidable in a polymorphic λ-calculus*. This means we can make this work by adding the approapraite type annotation ourselves:

```hs
-- params in the lambda abstractions are treated
-- as being monomorphic, so this isn't allowed:
(\f -> (f 3, f "abc")) (\x -> x) -- ERROR

-- to fix it, we must add the correct type signature:
ps :: (forall a. a -> a) -> (Int, String)
ps f = (f 3, f "abc") -- (3, "abc")
```

This signature makes `ps` a Rank-2 function because `forall` appears in the parens on the LHS of the second, outer (->). This means that *the caller of this function must pass in a (function) arg that can be applied to any type at all*; the caller doesn't choose the type (as usual), but the author of the `ps` function does.

> In polymorphic λ-calculus type inference is undecidable.


Hindley-Milner type system goes around this problem by providing a special form that allows polymorphism, viz. a *let-expression*. The let-expression (let-binding, let-clause) is a language construct that allows polymorphism, and so it is called **let-polymorphism** (first introduced in ML).

As we've seen, ML doesn't allow polymorphic binding in a lambda abstraction. This is (probably) because a lambda abstraction is merely a function definition, not necessarily followed by an argument; without immediately knowing the type of the arg, not much can be infered about a function. This is unlike the let-expression, which is equavalent to a lambda abstraction with an arg present.

```hs
-- a lambda abstraction with an arg…
(\x -> x + x) 3
-- …is the same as a let-expr
let x = 3 in x + x
```

ML has restricted the binding mechanism by introducing a special form of expression in the language syntax, called let-expression, in which a polymorphic binding is allowed (unline a lambda abstraction, where it's not).

```hs
-- let-polymorphism
let f = λx. x
in  (f 3, f "abc")
-- (3, "abc")
```

> Only values bound in a `let` construct are subject to instantiation, i.e. are polymorphic (so `f` is polymorphic). On the other hand, the parameters in lambda-abstractions are treated as being monomorphic.
