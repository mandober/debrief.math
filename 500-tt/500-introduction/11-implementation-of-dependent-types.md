# Type theory :: Introduction :: Implementation of dependent types

https://ice1000.org/2019/04-07-Reduction.html

Concepts:
- values
  - canonical value
  - neutral value
- reduction
  - reducible expression (redex)
  - evaluation (reduction down to a canonical value)
- context
  - context switch



An implementation of λ-calculus with dependent types involves having two ASTs: one is the surface syntax tree, representing unchecked or reducible expressions, and the other is a value tree, representing non-redexes.

Values can be divided into canonical values and neutral values. 

*Canonical values* are terms that cannot be reduced because they contain only constructor calls, record constructors, lambda abstractions, and similar, all of which are non-reducible by definition.

*Neutral values* are terms that cannot be reduced due to the presence of a variable abstraction, e.g. the `x` in `λx.x`. Applying a neutral value to an argument produces a new neutral value.

Examples:
- `f 1`     is a neutral value since `f` is a free variable
- `λf. f 1` is a canonical value (abs whose body is a neutral value)
- `(λx. x) 1` is a redex, which reduces to a canonical value 1 because applying the abs to 1 introduces a name binding `x := 1`; under the context that `x:=1`, the neutral value `x` reduces to a canonical value 1.
- `(λx. f x) 1` is a redex reducing to `f 1`, which is a neutral value due to the presence of a free variable, `f`.
- `λx. (λy. x) 1` since app binds tighter than abs, this is `(λx. (λy. x)) 1`, i.e. `(λx.λy.x) 1` and reduced to `λy.1`, which is a neutral value.
- `λx.((λy.x) 1)` is an abs. However, there's a redex in the body of the abs, which may or may not be reduced dependeing on the semantics. Most semantics do not allow reductions under lambdas. Thus, this exp is unclassified. But we'll call it a semi-redex for reference.

## Evaluation

A property of this λ-calculus model is that neutral values could be reduced to canonical values contextually - expanding the context may cause reduction of the current expression.

Expressions are manipulated by changing the contexts, which is caused by
- pattern matching: the motive is replaced with the pattern
- applications and let-bindings
- `rewrite` in proof assistants like Agda, although it may just be a syntax sugar for pattern matching.
- context-changing primitives are reflection and elaboration, `ltac` (in Coq)

This is the fundamental generic model because a large number of compiler-related programs can be modeled by this (redex - context - reduce - canonical - context - reduce - …) procedure.

## Partial Evaluation

An easy-to-understand compiler optimization is *constant folding*, where the compiler evaluates most redexes before compilation so these computations are completed in advance, saving runtime costs.

The AST can be thought of as a big redex, which should be reduced as much as possible before compilation. Side effects (memory allocations, prints, file IO, FFIs) can be treated as neutral values to avoid their evaluatation.

## Dependent Type Checker

In a world of dependent types, there is not only the current expression that depends on the context and can be reduced, but also the current expression's *expected type* (which may depend on an eariler argument's value).

While checking an expression against a certain type (which is also an expression - a type expression), these two can be considered redexes. The compiler will be responsible for reducing both of them at the same time, so the type-checking process can be customized by context-switches (pattern matching, rewriting, applying tactics) to persuade the compiler that a given expression really is of the expected type.

For example, the commutative laws od addition and multiplication are expressed as non-reducable type signatures:

```agda hs
+-comm : Set
+-comm = (a b : ℕ) → a + b ≡ b + a

*-comm : Set
*-comm = (a b : ℕ) → a * b ≡ b * a
```

However, we can extract the common parts into a function (the compiler is responsible to reduce it during type-checking), making the type signatures more friendly for reading and refactoring:

```agda hs
comm : (_<>_ : ℕ → ℕ → ℕ) → Set
comm _<>_ = (a b : ℕ) → a <> b ≡ b <> a

+-comm' : Set
+-comm' = comm (_+_)

*-comm' : Set
*-comm' = comm (_*_)
```

## Problems

Infinite loops will cause the type-checker and the partial evaluator to diverge. They are usually forbidden in dependently-typed languages, or type checkers can treat them as side-effects in partial evaluators.

Checking termination is undecidable, so a common approach is to only accept a subset of all terminating programs, requiring that each rcursive call is done on a structurally smaller argument.

## Metavariables

Type inference in face of dependent types

A metavariable is an expression whose value is inferred contextually. Since type inference is generally synthesizing a type from the context, in a type system where there is no distinction between types and values, synthesizing a type is like synthesizing a value. In the end we'll have a more powerful inference that can infer both types and values.

The type-checker is responsible for figuring out a value that can make the program well-typed after replacing the metavariable with it. That value is called a solution to a metavariable, and the process of figuring out this value is called solving a metavariable.

Usually, metavariables are denoted by an underscore (appearing in the place of a type in an appliaction).

```agda hs
id : (A : Set) → A → A
id A x = x
-- the type A must be explicitly supplied
-- although we could have made it implicit by {A : Set}

x y : ℕ
x = id ℕ 1 -- explitly passing in the type
y = id _ 1 -- using underscore
--     ↑ metavariable
```

A common implementation of a dependent type checker is bidirectional: it checks an expression against a type by applying rules, but falls back to type inference comparing the inferred type with the expected type.

This process can be expressed like this:

```hs
-- | Infer the type of an expression, may fail
infer :: Expr -> Monad Expr

-- | expression, expected type
check :: Expr -> Expr -> Monad ()
check (Lam bla) (PiType rua) = do blabla
check (CaseSplit bla) (PiType rua) = do blabla
check (Pair bla) (SigmaType rua) = do blabla

-- | here's the important fallback part!
check expr ty = do
  inferred <- infer expr
  inferred `compareTerm` ty
```

As we can see there's a fallback case, which happens when checking against a complex expression such as application.

We need a function that compares if two terms are equivalent, which means that if we can solve the metas here, it is gonna be a function like:

```hs
compareTerm :: Expr -> Expr -> Monad ()
```

And thus we can have some meta-solving clauses like this:

```hs
compareTerm Meta Meta = throwError CannotSolveMeta
compareTerm Meta a = solveMeta a
compareTerm a Meta = solveMeta a
```

But how to implement `solveMeta`? Especially since it implies that we're gonna need to modify the `Meta` terms (we hope our AST to be immutable).

A simple solution is to let `compareTerm` return the two terms if equal:

```hs
compareTerm Meta a = pure (a, a)
compareTerm a Meta = pure (a, a)
```

And then `compareTerm` becomes an AST mapper. 
While this is possible it is not nice enough.

A case when this goes wrong is a `Meta` whose current solution is invalidated by later type checks.

For instance, a meta required to be equal to `Int` and `Bool` at the same time is unsolvable. If we use the "`compareTerm` as AST mapper" strategy, the error message will be something like "Int is not equal to Bool", which is misleading (because we first solve the meta to be `Int` and then required this "solved" `Int` to be equal to the `Bool`) since the user did not write nor expects this `Int`. Furthermore, we can have one meta used in many places, such as `(\ a -> e) _`, where `a` occurrs multiple times in expression `e`. We can't mutate the other occurrences of the inlined `a`. This is bad.

## Meta references

With meta references, metavariables become global references, referring to something in the context, and when we solve a meta, we mutate the context. When we compare two terms, with one already being a solved meta, we need to compare the referenced solution in the context with the other term.

```hs
compareTerm (Meta id) a = solveMeta id a
compareTerm a (Meta id) = solveMeta id a

solveMeta :: MetaId -> Expr -> Monad ()
solveMeta id a = do
  ctx <- get
  case lookupSolution ctx id of
    Just solution -> solution `compareTerm` a
    Nothing -> do
      put $ updateSolution ctx a
      pure ()
```

A meta solver!





## Refs

* Implementing dependent types
  https://ice1000.org/2019/04-07-Reduction.html
  https://ice1000.org/2019/06-20-SolveMeta.html

* `Type checking in the presence of metavariables`   
  by Ulf Norell and Catarina Coquand   
  http://www.cse.chalmers.se/~ulfn/papers/meta-variables.pdf

* Elaboration ZOO
  https://github.com/AndrasKovacs/elaboration-zoo/
  `elabzoo-holes`
  https://github.com/AndrasKovacs/elaboration-zoo/tree/master/03-holes
  Minimal implementation of an elaborator with holes and pattern unification. Extensive comments are included in the implementation. `Main.hs` contains the implementation with explanations, while a formal description is in the file pattern-unification.txt.
