# Monomorphism vs polymorphism

In the STLC, types, `τ`, are **monomorphic**, since they are either
- *base types* (atomic type constants) like `Int`, `Bool`
- *function types over base types* of form `τ -> τ`, e.g. `Int -> Int`

Examples of monomorphic types:

```hs
-- Bool is a base type
True :: Bool

-- Int is a base type
3 :: Int

-- Function types over base types are also monomorphic types
-- (that is, function types without type variables):
odd :: Int -> Bool
add :: Int -> Int -> Int

-- Type application aspect of data ctors (over the base types)
-- also makes a monomorphic type
data Prod = Product Int Bool
-- the type of data ctor Product:
Product :: Int -> Bool -> Prod
-- it's an irreducable function type
-- or maybe it's an application (?), C τ … τ
```


Contrary to this, the untyped lambda calculus is insensitive to typing, so functions can be applied to any type of function arguments. The trivial example is the identity function, `λx.x`, that returns whatever arg it is applied to. Less trivial examples include parametric types like lists.

While polymorphism in general means that operations accept values of more than one type, the polymorphism used here is *parametric polymorphism*. One finds the notation of **type schemes** too, which emphasize the parametric nature of polymorphism. Additionally, constants may be typed with (quantified) type variables.

> **Polymorphic types** or **type schemes** become monomorphic by consistent substitution of their variables. Polymorphic types take additional args in the form of type at which they're instantiated.

Examples of polymorphic types (type schemes), and their instantiation at various types (so they become monomorphic):

```hs
-- type schemes (polymorphic functions):
id     :: forall a. a -> a
length :: forall a. [a] -> Int
const  :: forall a b . a -> b -> a
```

The function `const` is a polymorphic function, it has a polymorphic type. More precisely, `const` is a polymorphic function because it contains two type variables that are universally quantified. The `forall` quantifier means the `const` function works with any two types. When calling the `const` function, you need to pass it two args. Being `forall`'ed, `const` function actually expects 2 extra type args before the 2 regular term args. So, it expects 4 args total: first, 2 type arg, and only then 2 term args. "System F" is strict about this and insist that the user provides all 4 args explicitly.

It would seem that every occurance of a type variable leads to it being universally quantifed (which is, pretty much, the case), so it's hard to manufacture an example when the type vars wouldn't be generalized, especially at the top level. I've pulled a (dubious) example when they must not be generalized: when typing a nested function that references the type variables of the enclosing function (that has surely already forall'ed them), its type must not be generalized (at that moment these type vars are present in the type env).

```hs
-- outer function with forall type vars
map' :: forall a b. (a -> b) -> [a] -> [b]
map' f [] = []
map' f xs = aux xs
  where
  -- nested function must not "forall" the type vars it reference
  aux :: [a] -> [b]
  aux [] = []
  aux (x:xs) = f x : aux xs

  -- if it did forall'ed them, they'd be interpreted as some other type vars and not the ones declared in the outer function, which would be an error:
  aux :: forall a b. [a] -> [b]
  -- is interpreted as:
  aux :: forall a1 b1. [a1] -> [b1]
```


In Haskell, type vars are implicitly universally quantified. Haskell will also infer the types (at which to instantiate the forall type vars) from the types of the (term) args. If that is not possible (because, e.g. no term args are supplied), you can opt-in to use explicit instantiation with *visible type application* syntax.

```hs
-- calling a polymorphic function, like const, instantiates
-- it at a particular monomorphic types, usually implicitly:
const 42 True

-- but also explicitly if using visible type application syntax:
const @Int @Bool 42 True

-- making a polymorphic function monomorphic (i.e. fixing both types)
const @Int @Bool

-- fixing the first type var only:
const @Int

-- fixing the second type var, but keeping the first polymorphic:
const @_ @String
-- this results in a function that will still ignore its second arg,
-- nevertheless, that ignored arg now has to be a String
```

> Generally, types that contain type vars are *polymorphic*, while types without them are *monomorphic*.


Contrary to the type systems used, for example, in Pascal (1970) or C (1972), which only support monomorphic types, *HM is designed with emphasis on parametric polymorphism*. On the other hand, C++, instead focuses on a different form of polymorphism, namely *subtyping polymorphism* (in connection with OOP and overloading), which is incompatible with HM.
