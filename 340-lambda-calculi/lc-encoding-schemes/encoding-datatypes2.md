# Encoding of Data Types in the λ-calculus

`Comprehensive Encoding of Data Types and Algorithms in the λ-Calculus`
Jan Martin Jansen, Rinus Plasmeijer, Pieter Koopman, 2010

Containers can be expressed in the l-calculus by using closures (partial application).

Consider Algebraic Data Type (ADT) definitions in a language like Haskell, we see that a type consists of one or more alternatives and each alternative consist of a name, possibly followed by a number of arguments.

```hs
data Boolean = True | False
data Tuple a b = Tuple a b
data Temperature = Fahrenheit Int | Celsius Int
data Maybe a = Nothing | Just a
data Nat = Zero | Suc Nat
data List t = Nil | Cons t (list t)
```

## Pair

A pair is the simplest example of a pure container type. If we group data into a container type, we also need constructions to get data out of the container (the so-called projection functions). For a pair, this can be realized by *pattern matching* or by using the *selector* functions `fst` and `snd`.

A pair is an function that accepts 3 args, but if we supply only two, we have a closure, which is the actual representation of a pair. The closure can later take the third arg, a binary function that will be applied to the first two args in order to select and return one (we cannot return both at once). Due to this, such function is called a selector. The final arg can also be seen as a *continuation*, that is, a function that steers the computation further (maybe just return the result, maybe do something else with it).

```js λc
pair := λabs.sab
fst  := λp.p(λab.a)
snd  := λp.p(λab.b)
```

## Expressing General Multi Case Types

Consider the function `warm` that takes a `Temperature` as an arg, where the `Temperature` can be either of the `Fahrenheit Int` or `Celsius Int`. In Haskell, we'd use pattern matching to idetify which is it, but we'd account both contigencies:

```hs
data Temperature = Fahrenheit Int | Celsius Int

warm :: Temperature -> Boolean
warm (Fahrenheit f) = f > 90
warm (Celsius    c) = c > 30
```

We have to find encodings for (Fahrenheit f) and (Celsius c). We should have a binary fn that returns the first arg for Fahrenheit and the second arg for Celsius. We should also feed the arg of Fahrenheit or Celsius to a continuation function.

Combining these, it turns out both Fahrenheit and Celsius require 3 args: the first to be used for the closure, the second and third as continuation args. Fahrenheit should choose the first continuation arg and apply it to its first arg, and Celsius should do the same with the second continuation arg.

```js λc
Fahrenheit  := λf a b . a f
Celsius     := λc a b . b c

warm := λt. t (λf. f > 90) (λc. c > 30)
```

If we apply this strategy to the types `Nat` and `List` we get the following definitions for the constructors:

```js λc
Zero := λ  f g . f
Succ := λn f g . g n

Nil  := λ     f g . f
Cons := λx xs f g . g x xs
```

The fact that these data types are recursive is immaterial to these definitions.

Functions like `pred`, `head` and `tail` can now easily be defined:

```js λc
pred := λn  . n  undef (λm . m)
head := λxs . xs undef (λx xs . x)
tail := λxs . xs undef (λx xs . xs)
```

The `pred` and `tail` above are O(1), constant time functions, while in the Church encoding they are, O(n), linear in the size of the list (n).

In the partial functions `pred`, `head`, `tail`, we use *undef* to indicate the part of the function that is not defined.


## General case

In general, the mapping of an ADT to λ-expressions is defined as follows. 
If the following ADT definition is given in Haskell

```hs
data TypeName t₁ t₂ ... tₖ
    = C₁ t₁₁ ... t₁ₙ
    | C₂ t₂₁ ... t₂ₙ
    | ...
    | Cₘ tₘ₁ ... tₘₙ

k number of TPs declared
m number of data ctors each taking
n number of TPs
```

then these `m` ctors can be mapped to `m` λ-expressions:

```js λc
C₁ := (λx₁ ...λxₙ . λs. s x₁ ... xₙ)) (v₁ ... vₙ) f
...
Cₘ := (λxₘ₁...λxₘₙ . λs. s x₁ ... xₙ)) (v₁ ... vₙ) f
```
