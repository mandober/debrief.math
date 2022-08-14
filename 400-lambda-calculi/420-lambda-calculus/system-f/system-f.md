# System F

http://rubrication.blogspot.com/2010/05/system-f-is-amazing.html

System F has a complicated enough typing system to be interesting, without having the full insanity of dependent types. Types like sums, products and recursive types can be encoded directly in System F.

System F allows taking types as arguments as well as terms.

The basic idea is that we can apply a function like   
`(Λ X . λ f : X → X, x : X . f x)`    
to types and terms and evaluate it    
in a way analogous to the λ-Calculus:    
`(Λ X . λ f : X → X, x : X . f x) [T] g t ⇒ g t`

```hs
-- term in System F: typing is merged with terms
h : Λ X . λ f : X → X, x : X . f x

-- similar term in Haskell where the type is given separatly
h :: (a -> a) -> a -> a
h = λ f x -> f x  -- or:
h f x = f x       -- moving the args to the lhs
```

In fact, In Haskell this function has the explicit type below, meaning the first arg is actually a type, even though it is not given explicitly since it can be inferred from the corresponding term.

```hs
h :: forall a. (a -> a) -> a -> a
h f x = f x

-- passing in the type (Nat) explicitly partially
-- applies that type, specializing the function
h′ = h @Nat
```
