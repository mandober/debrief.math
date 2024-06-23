# Value restriction

https://en.wikipedia.org/wiki/Type_inference
https://en.wikipedia.org/wiki/Hindley%E2%80%93Milner_type_system
https://en.wikipedia.org/wiki/Principal_type
https://en.wikipedia.org/wiki/Value_restriction

In programming languages with Hindley-Milner type inference and imperative features, in particular the ML programming language family, the **value restriction** means that declarations are only polymorphically generalized if they are *syntactic values* (also called *non-expansive*). The value restriction prevents reference cells from holding values of different types and preserves type safety.

## A Counter Example to Type Safety

In the Hindley-Milner type system, expressions can be given multiple types through parametric polymorphism. But naively giving multiple types to references breaks type safety. The following[1] are typing rules for references and related operators in ML-like languages.

```
ref : ∀α. α → (α ref)
  ! : ∀α. (α ref) → α
 := : ∀α. (α ref) → α → unit
```

The operators have the following semantics:
- `ref` takes a value and creates a reference containing that value
- `!` (dereference) takes a reference and reads the value in that reference
- `:=` (assignment) updates a reference to contain a new value and returns a value of the unit type. Given these, the following program unsoundly applies a function meant for integers to a Boolean value.

```ml
let val c = ref (fn x => x)
in  c := (fn x => x + 1);
     !c true
end
```

The above program type checks using Hindley-Milner because `c` is given the type `∀α.(α → α) ref`, which is then instantiated to be of the type `(int → int) ref` when typing the assignment `c := (fn x => x + 1)`, and `(bool → bool) ref ref` when typing the dereference `!c true`.

## The Value Restriction

Under the value restriction, the types of let-bound expressions are only generalized if the expressions are syntactic values.

In his paper,[1] Wright considers the following to be syntactic values:
- constants
- variables
- λ-expressions
- constructors applied to values

The function and operator applications are not considered values. In particular, applications of the `ref` operator are not generalized.

It is safe to generalize type variables of syntactic values because their evaluation cannot cause any side-effects such as writing to a reference.

The above example is rejected by the type checker under the value restriction as follows.

First, `c` is given the type `(α → α) ref`. This type is not generalized and `α` is a free variable in the typing context for the body of the let binding.
When the assignment is typed, the type of `c` is modified in the typing context to be of type `(int → int) ref` via unification. The dereference `!c` is typed as `int → int`, but is applied to a value of type `bool`, and the type checker rejects the program.

## Syntactic values

http://mlton.org/DefinitionOfStandardML

The Definition of Standard ML spells out precisely which expressions are syntactic values (it refers to such expressions as non-expansive).

An expression is a *syntactic value* if it is of one of the following forms:
- a constant (13, "foo", 13.0)
- a variable (x, y, …)
- a function (fn x => e)
- application of a constructor other than `ref` to a value (Foo v)
- a type constrained value (v: t)
- a tuple  in which each item is a value (v1, v2, …)
- a record in which each item is a value {l1 = v1, l2 = v2, …}
- a list   in which each item is a value [v1, v2, …]

## Value Restriction in MLton

The value restriction is a rule that governs when type inference is allowed to polymorphically generalize a value declaration. In short, the value restriction says that generalization can only occur if the right-hand side of an expression is syntactically a value. For example, in

```ml hs
val f = fn x => x
val _ = (f "foo"; f 13)
```

the expression `fn x => x` is syntactically a value, so `f` has polymorphic type `'a -> 'a` and both calls to `f` type check. On the other hand, in

```ml hs
val f = let in fn x => x end
val _ = (f "foo"; f 13)
```

the expression `let in fn x => x end` is not syntactically a value and so `f` can either have type `int -> int` or `string -> string`, but not `'a -> 'a`. Hence, the program does not type check.

## Why the value restriction exists

The value restriction prevents a ref cell (or an array) from holding values of different types, which would allow a value of one type to be cast to another and hence would break type safety. If the restriction were not in place, the following program would type check.

```ml hs
val r: 'a option ref = ref NONE
val r1: string option ref = r
val r2: int option ref = r
val () = r1 := SOME "foo"
val v: int = valOf (!r2)
```

The first line violates the value restriction because `ref NONE` is not a value. All other lines are type correct. By its last line, the program has cast the string "foo" to an integer. This breaks type safety, because now we can add a string to an integer with an expression like `v + 13`. We could even be more devious, by adding the following two lines, which allow us to treat the string "foo" as a function.

```ml hs
val r3: (int -> int) option ref = r
val v: int -> int = valOf (!r3)
```

Eliminating the explicit ref does nothing to fix the problem. For example, we could replace the declaration of `r` with the following.

```ml hs
val f: unit -> 'a option ref = fn () => ref NONE
val r: 'a option ref = f ()
```

The declaration of `f` is well typed, while the declaration of `r` violates the value restriction because `f ()` is not a value.


http://mlton.org/DefinitionOfStandardML
http://mlton.org/ValueRestriction

## References

[1]: 1995 `Simple imperative polymorphism`, Andrew K. Wright

- 1988 Mads Tofte, `Operational Semantics and Polymorphic Type Inference` (thesis)
- 1990 M. Tofte. `Type inference for polymorphic references`
- 1990 O'Toole. `Type Abstraction Rules for Reference: A Comparison of Four Which Have Achieved Notoriety`
- 1991 Xavier Leroy, Pierre Weis. `Polymorphic type inference and assignment`
- 1992 A. K. Wright. `Typing references by effect inference`
- 1993 My Hoang, John C. Mitchell, Ramesh Viswanathan. `Standard ML-NJ weak polymorphism and imperative constructs`
- 2004 Jacques Garrigue. `Relaxing the Value Restriction`

## External links

* Value Restriction - MLton
  http://mlton.org/ValueRestriction
* Notes on SML97's Value Restriction - Principles of Programming Languages.
  Geoffrey Smith, Florida University
  http://users.cis.fiu.edu/~smithg/cop4555/valrestr.html
