# Uniqueness type

https://en.wikipedia.org/wiki/Uniqueness_type

In a type system that supports *uniqueness typing* discipline, an object that has a *unique type* is guaranteed to be used in a single-threaded way, with at most one reference to it. A value that has a unique type can be updated in-place because the changes to it cannot be observed. This can greatly improve the efficiency of FP code while maintaining referential transparency.

Clean is a pure and lazy functional programming language with support for uniqueness types. Types prefix with a `*` are qualified as unique types. Clean manages I/O side-effects using the `*World` type that represents the entire external environment (the entire world), similarly to Haskell's `IO` type.

The `IO a` data type is a function that implicitly takes the current state of the world (World₀), and returns a pair made of the value of interest (represented by the type variable `a`) and a new state of the world (World₁), different from the original in exactly those things changed by side-effects.

More concretely, getting the input from the user is modeled by the `IO String` type: a function like `getText` implicitly takes the current state of the world, returning the string entered by the user, along with the new state of the world, i.e. the signature `World -> (String, World)`. However, this signature, and especially the `World` type, is hidden and exposed only as the the type-wrap `IO String`, i.e. a string forever confined in the `IO` monad (the context it can never escape from).

```hs
type IO a      = World -> (a     , World)
-- e.g.
type IO ()     = World -> (()    , World)
type IO String = World -> (String, World)

putText :: String -> IO () -- expands to:
putText :: String -> World -> ((), World)

getText :: IO String -- expands to:
getText :: World -> (String, World)
```

Actually, the `IO` type represents actions - functions take in and return particular actions; and because the same action is returned (every time) for the same input, the functions remain pure. Haskell remains pure throughout, delegating its RTS to deal with the dirty deeds dirt cheap.

## Introduction

Uniqueness typing is best explained using an example. Consider a function `readLine` that reads the next line of text from a given file:

```hs
readLine :: File -> String
readLine f = line
  where
  line = foreign readLineSys f :: String
```

Now `readLineSys` reads the next line from the file using an OS-level system call which has the side effect of changing the current position in the file. This violates referential transparency because calling it multiple times with the same argument returns different results each time, as the file's seek position moves. This in turn makes `readLine` violate referential transparency because it is defined in terms of `readLineSys`.

However, using uniqueness typing, we can construct a new version of `readLine` that is referentially transparent even though it's built on top of a function that's not referentially transparent:

```hs
-- type IO String = World -> (World, String)
readLine :: unique File -> (unique File, String)
readLine f = (differentF, line)
  where
  line       = readLineSys f             :: String
  differentF = newFileFromExistingFile f :: File
```

The `unique` qualifier makes the type unique, which means that the param `f` may never be referred to again by the caller of `readLine` after it returns, and this restriction is enforced by the type system. And since `readLine` does not return `f` itself, but rather a new, different file object (`differentF`), it is impossible for `readLine` to be called with `f` arg ever again; thus, the referential transparency is preserved while permitting side effects to occur.


Uniqueness types are implemented in FPLs Clean, Mercury, SAC, Idris. They are used in lieu of monads for doing I/O. A compiler extension has been developed for the Scala programming language which uses annotations to handle uniqueness in the context of message passing between actors.

https://en.wikipedia.org/wiki/Linear_type
https://en.wikipedia.org/wiki/Linear_logic
